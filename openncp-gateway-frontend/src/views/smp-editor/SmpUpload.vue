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
      file: '',
      snackbar: false,
      snackbarText: '',
      snackbarMod: 'success',
      uploaded: null
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
            '/api/smpeditor/uploader/fileToUpload',
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
    }
  }
}
</script>
<style scoped>
.wrapper {
  padding: 2rem;
}
</style>
