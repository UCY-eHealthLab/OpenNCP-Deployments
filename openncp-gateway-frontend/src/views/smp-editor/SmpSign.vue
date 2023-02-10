<template>
  <v-container fluid
    ><div class="wrapper">
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
            Sign
            <v-icon right dark> mdi-upload </v-icon>
          </v-btn>
        </v-col>
      </v-row>
      <v-row v-if="showSignedXml">
        <h3>The XML is now signed</h3>
      </v-row>
      <v-row v-if="showSignedXml">
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
      </v-row>
      <v-row v-if="uploaded">
        <h3>The Signed XML file has been uploaded to the server</h3>
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

export default {
  data () {
    return {
      loading: false,
      snackbar: false,
      showSignedXml: false,
      snackbarText: '',
      snackbarMod: 'success',
      signedXml: null,
      file: '',
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
                this.uploaded = true
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
    },
    submitFile () {
      const formData = new FormData()
      formData.append('multipartFile', this.file)
      axios
        .post(
          process.env.VUE_APP_SERVER_URL + '/api/smpeditor/sign/upload',
          formData,
          {
            headers: {
              'Content-Type': 'multipart/form-data'
            }
          }
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
