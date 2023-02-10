<template>
  <v-container fluid>
    <v-btn color="blue" class="ma-2 white--text" @click="synchronizeSearchMask">
      Synchronize Search Mask
      <v-icon right dark> mdi-cloud-check </v-icon>
    </v-btn>
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

export default {
  data () {
    return {
      snackbar: false,
      snackbarText: '',
      snackbarMod: 'success',
      loading: false
    }
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
    synchronizeSearchMask: function () {
      axios
        .get(
          process.env.VUE_APP_SERVER_URL +
            '/api/dynamicdiscovery/syncsearchmask'
        )
        .then((response) => {
          this.success('Synchronisation has been done!')
        })
        .catch((err) => {
          this.error('An error occurs. The operations is not completed! ', err)
        })
    }
  },
  mounted () {
    this.loading = true
  }
}
</script>
