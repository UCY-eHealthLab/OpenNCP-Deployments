<template>
  <v-container fluid>
    <div class="wrapper">
      <v-row>
        <v-col>
          <v-file-input
            chips
            counter
            show-size
            truncate-length="15"
            label="SMP FILE"
            small-chips
            v-model="file"
          ></v-file-input>
        </v-col>
        <v-col>
          <v-btn color="blue" class="ma-2 white--text" @click="submitFile">
            Load
            <v-icon right dark> mdi-upload </v-icon>
          </v-btn>
        </v-col>
      </v-row>
      <v-row>
        <v-col> </v-col>
      </v-row>
      <v-row v-if="uploaded">
        <v-col cols="6">
          <v-row v-for="item in fields" :key="item.id">
            <v-text-field
              :label="item.name"
              v-model="dataset[item.id]"
              dense
              type="text"
              :mandatory="item.mandatory"
            >
              <template v-slot:prepend>
                <v-tooltip bottom>
                  <template v-slot:activator="{ on }">
                    <v-icon v-on="on"> mdi-help-circle-outline </v-icon>
                  </template>
                  I'm a tooltip
                </v-tooltip>
              </template>
            </v-text-field>
          </v-row>
          <v-row>
            <v-btn color="blue" class="ma-2 white--text" @click="update">
              Update
              <v-icon right dark> mdi-send </v-icon>
            </v-btn>
          </v-row>
        </v-col>
        <v-col cols="6">
          <div v-if="showXml">
            <h3>The following XML has been generated</h3>
          </div>
          <div v-if="showXml">
            <v-btn
              color="green"
              class="ma-2 white--text"
              @click="download(xml)"
            >
              Download XML File
              <v-icon right dark> mdi-download </v-icon>
            </v-btn>
            <v-btn color="blue" class="ma-2 white--text" @click="sign">
              Sign It
              <v-icon right dark> mdi-certificate </v-icon>
            </v-btn>
          </div>
          <v-divider v-if="showSignedXml"></v-divider>
          <div v-if="showSignedXml">
            <h3>The XML is now signed</h3>
          </div>
          <div v-if="showSignedXml">
            <v-btn
              color="green"
              class="ma-2 white--text"
              @click="download(signedXml)"
            >
              Download Signed XML File
              <v-icon right dark> mdi-download </v-icon>
            </v-btn>
            <v-btn color="blue" class="ma-2 white--text" @click="upload">
              Upload It to the SMP Server
              <v-icon right dark> mdi-cloud-upload </v-icon>
            </v-btn>
          </div>
          <v-divider v-if="signedXmluploaded"></v-divider>
          <div v-if="signedXmluploaded">
            <h3>The Signed XML file has been uploaded to the server</h3>
          </div>
        </v-col>
      </v-row>

      <v-snackbar v-model="snackbar" :color="snackbarMod" top>
        {{ snackbarText }}
        <template>
          <v-btn text v-bind="attrs" @click="snackbar = false"> Close </v-btn>
        </template>
      </v-snackbar>
    </div>
  </v-container>
</template>

<script>
import axios from 'axios'
import _ from 'lodash'

export default {
  data () {
    return {
      loading: false,
      snackbar: false,
      snackbarText: '',
      dataset: {},
      snackbarMod: 'success',
      data: null,
      fields: null,
      uploaded: false,
      signedXmluploaded: false,
      file: '',
      showXml: null,
      showSignedXml: null,
      uploadedFile: null
    }
  },
  mounted () {
    this.loading = true
  },
  methods: {
    snack (text, color) {
      this.snackbar = true
      this.snackbarText = text
      this.snackbarMod = color
    },
    error (text) {
      this.snack(text, 'error')
    },
    success (text) {
      this.snack(text, 'success')
    },
    handleFileUpload (e) {
      this.file = this.$refs.file.files[0]
    },
    submitFile () {
      const formData = new FormData()
      formData.append('multipartFile', this.file)
      axios
        .post(
          process.env.VUE_APP_SERVER_URL +
            '/api/smpeditor/updater/setSmpFileToUpdate',
          formData,
          {
            headers: {
              'Content-Type': 'multipart/form-data'
            }
          }
        )
        .then((response) => {
          this.data = response.data
          this.fields = _.map(response.data.fields, (item, key) => {
            item.id = key
            this.dataset[item.id] = item.currValue
            return item
          }).filter((item) => {
            return item.enable === true
          })
          this.showXml = false
          this.showSignedXml = false
          this.uploaded = true
        })
    },
    update () {
      this.dataset.country = this.$store.getters.country.toLowerCase()
      this.dataset.type = this.data.smpFileTypeId
      this.loading = true
      axios
        .post(
          process.env.VUE_APP_SERVER_URL + '/api/smpeditor/generate/smpfile',
          this.dataset
        )
        .then((response) => {
          this.xml = response.data
          this.$store.commit('smpData', response.data)
          this.success('SMP File was successfully generated')
          this.loading = false
        })
        .catch((_) => {
          this.error('An error occurs. The operations is not completed! ')
        })
      this.showXml = true
      this.showSignedXml = false
    },
    sign () {
      this.loading = true
      axios
        .post(
          process.env.VUE_APP_SERVER_URL + '/api/smpeditor/sign/fromSmpFile',
          this.xml
        )
        .then((response) => {
          axios
            .post(
              process.env.VUE_APP_SERVER_URL +
                '/api/smpeditor/sign/generateSmpFileOpsData',
              response.data
            )
            .then((response) => {
              axios
                .post(
                  process.env.VUE_APP_SERVER_URL + '/api/smpeditor/sign/sign',
                  response.data
                )
                .then((response) => {
                  this.success('SMP File is now signed')
                  this.signedXml = response.data
                  this.showSignedXml = true
                  this.loading = false
                })
                .catch((_) => {
                  this.error(
                    'An error occurs. The operations is not completed! '
                  )
                })
            })
          // this.xml = response.data
        })
    },
    download (xml) {
      axios
        .post(
          process.env.VUE_APP_SERVER_URL + '/api/smpeditor/generate/download',
          xml
        )
        .then((response) => {
          const filename = xml.generatedFile.split('/').slice(-1)[0]
          const url = window.URL.createObjectURL(new Blob([response.data]))
          const link = document.createElement('a')
          link.href = url
          link.setAttribute('download', filename)
          document.body.appendChild(link)
          link.click()
          this.loading = false
        })
    },
    upload () {
      this.loading = true
      axios
        .post(
          process.env.VUE_APP_SERVER_URL +
            '/api/smpeditor/uploader/fromSmpFileOps',
          this.signedXml
        )
        .then((response) => {
          axios
            .post(
              process.env.VUE_APP_SERVER_URL + '/api/smpeditor/uploader/upload',
              response.data
            )
            .then((response) => {
              if (response.data.statusCode === 200) {
                this.signedXmluploaded = true
                this.success('Upload is done ')
              } else {
                this.error('An error occurs. The operations is not completed! ')
              }
              this.loading = false
            })
            .catch((_) => {
              this.error('An error occurs. The operations is not completed! ')
            })
        })
    }
  }
}
</script>

<style scoped>
.wrapper {
  padding: 2rem;
}
</style>
