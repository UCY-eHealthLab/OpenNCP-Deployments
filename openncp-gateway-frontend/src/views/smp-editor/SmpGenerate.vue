<template>
  <v-container>
    <v-row>
      <v-col cols="6">
        <div class="wrapper">
          <v-row>
            <v-combobox
              v-model="dataset.type"
              :items="smpTypes"
              @change="setSmpType"
              label="Type of file"
            ></v-combobox>
          </v-row>
          <v-row v-if="fields.length > 0">
            <h2>Endpoint</h2>
          </v-row>
          <form @keydown="validate" @mousedown="validate" ref="form">
            <v-row v-if="fields.length > 0">
              <v-col>
                <VueCtkDateTimePicker
                  v-model="dataset['serviceActivationDate']"
                  :max-date="dataset['serviceExpirationDate']"
                  label="Service activation date time "
                  dark
                  format="YYYY-MM-DD HH:mm"
                />
              </v-col>
            </v-row>
            <v-row v-if="fields.length > 0">
              <v-col>
                <VueCtkDateTimePicker
                  v-model="dataset['serviceExpirationDate']"
                  label="Service expiration date time "
                  :min-date="dataset['serviceActivationDate']"
                  format="YYYY-MM-DD HH:mm"
                  dark
                />
              </v-col>
            </v-row>
            <v-row v-for="item in fields" :key="item.id">
              <v-text-field
                :label="item.name"
                v-model="dataset[item.id]"
                :id="item.id"
                :type="item.type"
                @change="validate"
                :rules="item.rules"
                :mandatory="item.mandatory"
              >
                <template v-slot:prepend>
                  <v-tooltip bottom>
                    <template v-slot:activator="{ on }">
                      <v-icon v-on="on"> mdi-help-circle-outline </v-icon>
                    </template>
                    {{ item.tooltip }}
                  </v-tooltip>
                </template>
              </v-text-field>
            </v-row>
          </form>
          <v-row>
            <v-btn
              color="blue"
              class="ma-2 white--text"
              @click="submit"
              :disabled="!valid"
            >
              Submit
              <v-icon right dark> mdi-send </v-icon>
            </v-btn>
          </v-row>
        </div>
      </v-col>
      <v-col cols="6">
        <div class="wrapper">
          <v-row v-if="showXml">
            <h3>The following XML has been generated</h3>
          </v-row>
          <v-row v-if="showXml">
            <v-btn color="blue" class="ma-2 white--text" @click="download(xml)">
              Download XML File
              <v-icon right dark> mdi-download </v-icon>
            </v-btn>
            <v-btn color="blue" class="ma-2 white--text" @click="sign">
              Sign It
              <v-icon right dark> mdi-certificate </v-icon>
            </v-btn>
            >
          </v-row>
          <v-row v-if="showSignedXml">
            <h3>The XML is now signed</h3>
          </v-row>
          <v-row v-if="showSignedXml">
            <v-btn
              color="blue"
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
        </div>
      </v-col>
    </v-row>
    <v-snackbar v-model="snackbar" :color="snackbarMod" top>
      {{ snackbarText }}
      <template>
        <v-btn text v-bind="attrs" @click="snackbar = false"> Close </v-btn>
      </template>
    </v-snackbar>
  </v-container>
</template>

<script>
import axios from 'axios'
import _ from 'lodash'
import { fields } from './fields'
import Vue from 'vue'
import VueCtkDateTimePicker from 'vue-ctk-date-time-picker'
import 'vue-ctk-date-time-picker/dist/vue-ctk-date-time-picker.css'
Vue.component('VueCtkDateTimePicker', VueCtkDateTimePicker)
function toTextValue (data) {
  return _.map(data, (key, value) => {
    return { text: key, value: value }
  })
}
function readFile (file = {}, method = 'readAsText') {
  const reader = new FileReader()
  return new Promise((resolve, reject) => {
    reader[method](file)
    reader.onload = () => {
      resolve(reader)
    }
    reader.onerror = (error) => reject(error)
  })
}

function toUTCDate (d) {
  const date = new Date(d)
  console.log(date)
  return Date.UTC(
    date.getUTCFullYear(),
    date.getUTCMonth(),
    date.getUTCDate(),
    date.getUTCHours(),
    date.getUTCMinutes(),
    date.getUTCSeconds()
  )
}

export default {
  data () {
    return {
      form: null,
      snackbar: false,
      snackbarText: '',
      snackbarMod: 'success',
      rangeDate: null,
      showXml: false,
      valid: false,
      showSignedXml: false,
      smpTypes: [],
      self: this,
      xml: null,
      signedXml: null,
      fields: [],
      loading: false,
      dataset: {},
      validation: _.cloneDeep(fields)
    }
  },
  mounted () {
    this.loading = true
    this.boundThis()
    axios
      .get(process.env.VUE_APP_SERVER_URL + '/api/smpeditor/generate/smptypes')
      .then((response) => {
        this.smpTypes = toTextValue(response.data)
        this.loading = false
      })
  },
  methods: {
    boundThis () {
      const self = this
      for (const k in this.validation) {
        const a = this.validation[k].rules
        this.validation[k].rules = _.map(a, (r) => {
          return _.partial(r, self)
        })
      }
      return fields
    },
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
    async submit () {
      const dataset = _.cloneDeep(this.dataset)
      dataset.country = this.$store.getters.country.toLowerCase()
      dataset.type = dataset.type.value
      dataset.serviceActivationDate = toUTCDate(dataset.serviceActivationDate)
      dataset.serviceExpirationDate = toUTCDate(dataset.serviceExpirationDate)
      const files = document.getElementById('extension')?.files
      if (files?.length > 0) {
        const extension = await readFile(files[0])
        dataset.extension = extension.result
      }
      this.loading = true
      axios
        .post(
          process.env.VUE_APP_SERVER_URL + '/api/smpeditor/generate/smpfile',
          dataset
        )
        .then((response) => {
          this.xml = response.data
          this.$store.commit('smpData', response.data)
          this.success('SMP File was successfully generated')
          this.loading = false
          this.dataset = {}
        })
        .catch((err) => {
          this.showXml = false
          this.error(
            'An error occurs. The operations is not completed! ' +
              err.response.data
          )
        })
      this.showXml = true
      this.showSignedXml = false
    },
    validate () {
      this.valid = this.$refs.form.checkValidity()
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
                .catch((err) => {
                  this.error(
                    'An error occurs. The operations is not completed! ',
                    err
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
          const filename = this.xml.generatedFile.split('/').slice(-1)[0]
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
            .catch((err) => {
              this.error(
                'An error occurs. The operations is not completed! ',
                err
              )
            })
        })
    },
    setSmpType (smpType) {
      // const self = this
      axios
        .get(
          process.env.VUE_APP_SERVER_URL +
            '/api/smpeditor/generate/smpfields?smpType=' +
            smpType.value
        )
        .then((response) => {
          this.fields = _.map(response.data, (item, key) => {
            item.id = key
            if (item.mandatory) {
              item.name = item.name + '*'
            }

            item = Object.assign(this.validation[item.id], item)
            item.dataset = this.dataset
            return item
          }).filter((item) => {
            return (
              item.display === true &&
              item.id !== 'serviceActivationDate' &&
              item.id !== 'serviceExpirationDate'
            )
          })
          this.loading = false
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
<style>
input::-webkit-calendar-picker-indicator {
  filter: invert(1) !important;
}
input::file-selector-button {
  background: transparent;
  border: none;
  color: white;
  font-weight: bold;
}
</style>
