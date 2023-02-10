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
      <v-card-text>
        <v-card-title>
          <v-row>
            <v-col>
              <v-text-field
                v-model="searchEventId"
                clearable
                label="Event ID Code"
                single-line
                hide-details
              ></v-text-field>
            </v-col>

            <v-col>
              <v-text-field
                v-model="activeParticipantId"
                clearable
                label="Active Participant ID"
                single-line
                hide-details
              ></v-text-field>
            </v-col>

            <v-col>
              <v-text-field
                v-model="activeTypeCode"
                clearable
                label="Participant Type Code"
                single-line
                hide-details
              ></v-text-field>
            </v-col>
            <v-col>
              <v-menu
                v-model="searchStartDateMenu"
                :close-on-content-click="false"
                max-width="290"
              >
                <template v-slot:activator="{ on, attrs }">
                  <v-text-field
                    clearable
                    readonly
                    :value="searchEventStartDate"
                    label="Start Date"
                    v-bind="attrs"
                    v-on="on"
                    @click:clear="searchEventStartDate = null"
                  ></v-text-field>
                </template>
                <v-spacer></v-spacer>
                <v-date-picker
                  v-model="searchEventStartDate"
                  @change="searchStartDateMenu = false"
                ></v-date-picker>
              </v-menu>
            </v-col>
            <v-col>
              <v-menu
                v-model="searchEndDateMenu"
                :close-on-content-click="false"
                max-width="290"
              >
                <template v-slot:activator="{ on, attrs }">
                  <v-text-field
                    :value="searchEventEndDate"
                    clearable
                    readonly
                    label="End Date"
                    v-bind="attrs"
                    v-on="on"
                    @click:clear="searchEventEndDate = null"
                  ></v-text-field>
                </template>
                <v-spacer></v-spacer>
                <v-date-picker
                  :min="searchEventStartDate"
                  v-model="searchEventEndDate"
                  @change="searchEndDateMenu = false"
                ></v-date-picker>
              </v-menu>
            </v-col>
            <v-col><v-btn block @click="getDataFromApi"> Search </v-btn></v-col>
          </v-row>
        </v-card-title>
        <v-data-table
          :headers="headers"
          :items="messages"
          :disable-items-per-page="true"
          :footer-props="{
            'items-per-page-options': [10]
          }"
          :options.sync="options"
          :server-items-length="totalMessages"
          :loading="loading"
        >
          <template v-slot:[`item.actions`]="{ item }">
            <v-btn
              fab
              x-small
              color="indigo"
              :to="{ name: 'audit-details', params: { id: item.id } }"
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
      headers: [
        { text: '#', value: 'id', sortable: false },
        {
          text: 'Event Action Code',
          value: 'eventActionCode',
          sortable: false
        },
        { text: 'Event ID Code', value: 'eventId', sortable: false },
        { text: 'Event Type Codes', value: 'eventTypes', sortable: false },
        { text: 'Event Date Time', value: 'eventDateTime', sortable: false },
        {
          text: 'Event Outcome Indicator',
          value: 'eventOutcome',
          sortable: false
        },
        { value: 'actions', sortable: false }
      ],
      messages: [],
      totalMessages: 0,
      options: { page: 1, itemsPerPage: 10 },
      loading: false,
      searchEventId: '',
      activeParticipantId: '',
      activeTypeCode: '',
      searchEventStartDate: '',
      searchEventEndDate: '',
      searchStartDateMenu: false,
      searchEndDateMenu: false,
      items: [
        {
          text: 'ATNA Viewer',
          disabled: true
        },
        {
          text: 'Audit messages list',
          disabled: true
        }
      ]
    }
  },
  mounted () {
    // this.getDataFromApi()
  },
  watch: {
    options: {
      handler () {
        this.getDataFromApi()
      },
      page: 1,
      itemsPerPage: 10
    }
  },
  computed: {
    minDate () {
      console.log('typeof', typeof this.searchEventStartDate)
      if (this.searchEventStartDate) {
        const d = new Date(this.searchEventStartDate)
        return d.setHours(23, 59, 59, 999)
      } else {
        return ''
      }
    }
  },
  methods: {
    getDataFromApi () {
      if (!this.loading) {
        this.loading = true
        this.apiCall().then((data) => {
          this.messages = data.data.content
          this.totalMessages = data.data.totalElements
          this.options.page = data.data.number + 1
          this.loading = false
        })
      }
    },
    apiCall () {
      let endDate
      if (this.searchEventEndDate) {
        endDate = new Date(this.searchEventEndDate).setHours(23, 59, 59, 999)
        endDate = new Date(endDate)
        endDate = endDate.toISOString()
      } else {
        endDate = ''
      }
      return axios.get(process.env.VUE_APP_SERVER_URL + '/api/atna/messages', {
        params: {
          pageNumber: this.options.page - 1,
          size: this.options.itemsPerPage,
          searchEventId: this.searchEventId,
          activeParticipantId: this.activeParticipantId,
          activeTypeCode: this.activeTypeCode,
          searchEventStartDate: this.searchEventStartDate
            ? new Date(this.searchEventStartDate).toISOString()
            : '',
          searchEventEndDate: endDate
        }
      })
    }
  }
}
</script>
