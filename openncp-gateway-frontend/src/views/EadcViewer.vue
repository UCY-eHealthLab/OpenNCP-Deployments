<template>
  <v-container fluid>
    <v-data-table
      :headers="headers"
      :items="transactions"
      :items-per-page="10"
      :loading="loading"
    >
      <template v-slot:[`item.direction`]="{ item }">
        <v-chip
          label
          small
          color="grey darken-1"
          dark
        >
          {{ item.direction }}
        </v-chip>
      </template>
      <template v-slot:[`item.actions`]="{}">
        <v-btn
          small
          color="indigo"
        >
          View
        </v-btn>
      </template>
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
          text: 'Sender',
          value: 'sndISO'
        },
        {
          text: 'Receiver',
          value: 'receivingISO'
        },
        {
          text: 'Service Type',
          value: 'serviceType'
        },
        {
          text: 'Direction',
          value: 'direction'
        },
        {
          text: 'Start Time',
          value: 'startTime'
        },
        {
          text: 'EndT ime',
          value: 'endTime'
        },
        {
          value: 'actions'
        }
      ],
      transactions: []
    }
  },
  mounted () {
    this.loading = false
    axios
      .get(process.env.VUE_APP_SERVER_URL + '/api/transactions')
      .then(response => {
        this.transactions = response.data
        this.loading = false
      })
  }
}
</script>

<style scoped>

</style>
