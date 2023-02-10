<template>
  <v-container fluid>
    <div>
      <v-breadcrumbs :items="items">
        <template v-slot:divider>
          <v-icon>mdi-forward</v-icon>
        </template>
      </v-breadcrumbs>
    </div>
    <v-card>
      <v-card-title>
        <v-dialog v-model="dialog" width="500">
          <template v-slot:activator="{ on }">
            <v-btn color="indigo" v-on="on">Export</v-btn>
          </template>
          <template>
            <v-card>
              <v-card-title>Export transactions</v-card-title>
              <v-card-text>
                <v-form>
                  <v-combobox
                    v-model="quarter"
                    :items="quarters"
                    label="Quarter"
                  ></v-combobox>
                  <v-combobox
                    v-model="year"
                    :items="years"
                    label="Year"
                  ></v-combobox>
                </v-form>
              </v-card-text>
              <v-card-actions>
                <v-btn text @click="exportTransactions">Export</v-btn>
              </v-card-actions>
            </v-card>
          </template>
        </v-dialog>
      </v-card-title>
      <v-card-text>
        <v-data-table
          :headers="headers"
          :items="transactions"
          :loading="loading"
        >
          <template v-slot:[`item.actions`]="{ item }">
            <v-btn
              fab
              x-small
              color="indigo"
              :to="{ name: 'transaction-details', params: { id: item.id } }"
            >
              <v-icon>mdi-eye</v-icon>
            </v-btn>
          </template>
        </v-data-table>
      </v-card-text>
    </v-card>
  </v-container>
</template>

<script>
import axios from 'axios'

export default {
  data () {
    return {
      dialog: false,
      quarter: null,
      quarters: ['Q1', 'Q2', 'Q3', 'Q4'],
      quarterTable: [
        { text: 'Q1', begin: '01-01', end: '03-31' },
        { text: 'Q2', begin: '04-01', end: '06-30' },
        { text: 'Q3', begin: '07-01', end: '09-30' },
        { text: 'Q4', begin: '10-01', end: '12-31' }
      ],
      year: null,
      years: ['2020', '2021'],
      headers: [
        { text: 'Service Type', value: 'serviceType' },
        { text: 'Direction', value: 'direction' },
        { text: 'Home ISO', value: 'homeISO' },
        { text: 'Sender ISO', value: 'sndISO' },
        { text: 'Receiving ISO', value: 'receivingISO' },
        { text: 'startTime', value: 'startTime' },
        { text: 'endTime', value: 'endTime' },
        { value: 'actions', sortable: false }
      ],
      transactions: [],
      loading: true,
      items: [
        {
          text: 'EADC Viewer',
          disabled: true
        },
        {
          text: 'Transactions list',
          disabled: true
        }
      ]
    }
  },
  mounted () {
    axios
      .get(process.env.VUE_APP_SERVER_URL + '/api/eadc/transactions')
      .then((response) => {
        this.transactions = response.data
        this.loading = false
      })
  },

  methods: {
    exportTransactions: function () {
      this.dialog = false

      let fromDate = this.year + '-'
      let toDate = this.year + '-'

      for (const q in this.quarterTable) {
        if (this.quarterTable[q].text === this.quarter) {
          fromDate += this.quarterTable[q].begin
          toDate += this.quarterTable[q].end
        }
      }

      axios
        .get(
          process.env.VUE_APP_SERVER_URL +
            '/api/eadc/transactions/exportFromTo',
          {
            responseType: 'blob',
            params: {
              fromDate: fromDate,
              toDate: toDate
            }
          }
        )
        .then((response) => {
          const fileURL = window.URL.createObjectURL(new Blob([response.data]))
          const fileLink = document.createElement('a')
          fileLink.href = fileURL
          fileLink.setAttribute('download', 'export.xlsx')
          document.body.appendChild(fileLink)
          fileLink.click()
        })
    }
  }
}
</script>
