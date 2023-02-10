<template>
  <v-container fluid>
    <v-card class="" tile>
      <v-list-item
        two-line
        v-for="item in files"
        :key="item.id"
        class="list-item"
      >
        <v-list-item-content>
          <v-list-item-title>{{ item.smpType }}</v-list-item-title>
          <v-list-item-subtitle>
            <a
              :href="item.reference"
              target="_blank"
              @click="openFile(item, $event)"
            >
              <v-icon>mdi-eye</v-icon>
              {{ item.smpType }}</a
            >
            <v-btn text color="primary" @click="confirmDelete(item)">
              <v-icon>mdi-delete</v-icon>
              Delete</v-btn
            >
          </v-list-item-subtitle>
        </v-list-item-content>
      </v-list-item>
    </v-card>

    <v-snackbar v-model="snackbar" :color="snackbarMod" top>
      {{ snackbarText }}
      <template>
        <v-btn text v-bind="attrs" @click="snackbar = false"> Close </v-btn>
      </template>
    </v-snackbar>
    <v-dialog v-model="dialogConfirm" width="500">
      <v-card>
        <v-card-title class="indigo"> Confirmation </v-card-title>
        <v-card-text> Are you sure to delete this file? </v-card-text>
        <v-divider></v-divider>
        <v-card-actions>
          <v-spacer></v-spacer>
          <v-btn text color="primary" @click="dialogConfirm = false"
            >Cancel</v-btn
          >
          <v-btn text @click="deleteFile(itemSelected)"> Confirm </v-btn>
        </v-card-actions>
      </v-card>
    </v-dialog>
  </v-container>
</template>

<script>
import axios from 'axios'

export default {
  data () {
    return {
      snackbar: false,
      snackbarText: '',
      dialogConfirm: false,
      itemSelected: null,
      snackbarMod: 'success',
      loading: false,
      files: []
    }
  },
  mounted () {
    axios
      .get(process.env.VUE_APP_SERVER_URL + '/api/smpeditor/smpfileinfo', {
        params: { countryName: this.$store.getters.country.toUpperCase() }
      })
      .then((response) => {
        this.files = response.data
      })
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
    confirmDelete (item) {
      this.itemSelected = item
      this.dialogConfirm = true
    },
    openFile (item, evt) {
      evt.stopPropagation()
    },
    deleteFile (item) {
      axios
        .post(
          process.env.VUE_APP_SERVER_URL + '/api/smpeditor/deleteSmpFile',
          item
        )
        .then((response) => {
          this.loading = false
          this.success('SMP File has been deleted')
          axios
            .get(
              process.env.VUE_APP_SERVER_URL + '/api/smpeditor/smpfileinfo',
              {
                params: {
                  countryName: this.$store.getters.country.toUpperCase()
                }
              }
            )
            .then((response) => {
              this.files = response.data
            })
          this.loading = true
        })
    }
  }
}
</script>
<style scoped>
a {
  text-decoration: none;
}
a i {
  display: inline-block;
  margin-right: 1rem;
  color: #2196f3 !important;
}
a:hover {
  color: white !important;
  transition: color 0.25s;
}
a:hover i {
  color: white !important;
  transition: color 0.25s;
}
.list-item:hover {
  background: #555;
}
a:hover {
  color: white !important;
  transition: color 0.25s;
}
button {
  float: right;
}
</style>
