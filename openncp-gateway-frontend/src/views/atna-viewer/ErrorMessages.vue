<template>
  <v-container fluid>
    <div>
      <v-breadcrumbs :items="items">
        <template v-slot:divider>
          <v-icon>mdi-forward</v-icon>
        </template>
      </v-breadcrumbs>
    </div>
    <v-data-table :headers="headers" :items="errors" :loading="loading">
    </v-data-table>
  </v-container>
</template>

<script>
import axios from 'axios'

export default {
  data () {
    return {
      loading: false,
      headers: [
        {
          text: '#',
          value: 'id',
          sortable: false
        },
        {
          text: 'Error Timestamp',
          value: 'errorTimestamp'
        },
        {
          text: 'Error Message',
          value: 'errorMessage',
          sortable: false
        },
        {
          text: 'Source IP',
          value: 'sourceIp',
          sortable: false
        },
        {
          value: 'actions',
          sortable: false
        }
      ],
      errors: [],
      items: [
        {
          text: 'ATNA Viewer',
          disabled: true
        },
        {
          text: 'Error messages list',
          disabled: true
        }
      ]
    }
  },
  mounted () {
    this.loading = true
    axios
      .get(process.env.VUE_APP_SERVER_URL + '/api/atna/errors')
      .then((response) => {
        this.errors = response.data
        this.loading = false
      })
  }
}
</script>
