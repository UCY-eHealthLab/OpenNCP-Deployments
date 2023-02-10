<template>
  <v-container fluid>
    <div>
      <v-breadcrumbs :items="items">
        <template v-slot:divider>
          <v-icon>mdi-forward</v-icon>
        </template>
      </v-breadcrumbs>
    </div>
    <v-tabs v-model="tab">
      <v-tab href="#tab-transaction-identification"
        >Transaction Identification</v-tab
      >
      <v-tab href="#tab-home-snd-receiving">Home / Sender / Receiver</v-tab>
      <v-tab
        href="#transaction-details"
        v-if="message.transactionData && message.transactionData.length > 0"
        >Transaction details</v-tab
      >
    </v-tabs>
    <div v-if="message">
      <v-tabs-items v-model="tab">
        <v-tab-item value="tab-transaction-identification">
          <v-container fluid>
            <v-row>
              <v-col>
                <v-text-field
                  label="id"
                  outlined
                  :value="message.id"
                  disabled
                  hide-details="auto"
                />
              </v-col>
              <v-col>
                <v-text-field
                  label="Direction"
                  outlined
                  :value="message.direction"
                  disabled
                  hide-details="auto"
                />
              </v-col>
            </v-row>
            <v-row>
              <v-col>
                <v-text-field
                  label="Request Action"
                  outlined
                  :value="message.requestAction"
                  disabled
                  hide-details="auto"
                />
              </v-col>
              <v-col>
                <v-text-field
                  label="Response Action"
                  outlined
                  :value="message.responseAction"
                  disabled
                  hide-details="auto"
                />
              </v-col>
            </v-row>
            <v-row>
              <v-col>
                <v-text-field
                  label="Service Name"
                  outlined
                  :value="message.serviceName"
                  disabled
                  hide-details="auto"
                />
              </v-col>
              <v-col>
                <v-text-field
                  label="Service Type"
                  outlined
                  :value="message.serviceType"
                  disabled
                  hide-details="auto"
                />
              </v-col>
            </v-row>
            <v-row>
              <v-col>
                <v-text-field
                  label="Start Time"
                  outlined
                  :value="message.startTime"
                  disabled
                  hide-details="auto"
                />
              </v-col>
              <v-col>
                <v-text-field
                  label="End Time"
                  outlined
                  :value="message.endTime"
                  disabled
                  hide-details="auto"
                />
              </v-col>
            </v-row>
          </v-container>
        </v-tab-item>
        <v-tab-item value="tab-home-snd-receiving">
          <v-row>
            <v-col><h2>Home</h2></v-col>
          </v-row>
          <v-row>
            <v-col>
              <v-text-field
                label="Home ISO"
                outlined
                :value="message.homeISO"
                disabled
                hide-details="auto"
              />
            </v-col>
            <v-col>
              <v-text-field
                label="Home NCP OID"
                outlined
                :value="message.homeOID"
                disabled
                hide-details="auto"
              />
            </v-col>
            <v-col>
              <v-text-field
                label="Home Host"
                outlined
                :value="message.homeHost"
                disabled
                hide-details="auto"
              />
            </v-col>
            <v-col>
              <v-text-field
                label="Home Address"
                outlined
                :value="message.homeAddress"
                disabled
                hide-details="auto"
              />
            </v-col>
          </v-row>
          <v-row>
            <v-col><h2>Sender</h2></v-col>
          </v-row>
          <v-row>
            <v-col>
              <v-text-field
                label="Sender ISO"
                outlined
                :value="message.sndISO"
                disabled
                hide-details="auto"
              />
            </v-col>
            <v-col>
              <v-text-field
                label="Sender NCP OID"
                outlined
                :value="message.sndOID"
                disabled
                hide-details="auto"
              />
            </v-col>
            <v-col>
              <v-text-field
                label="Sender Msg ID"
                outlined
                :value="message.sndMsgID"
                disabled
                hide-details="auto"
              />
            </v-col>
          </v-row>
          <v-row>
            <v-col>
              <h2>Receiver</h2>
            </v-col>
          </v-row>
          <v-row>
            <v-col>
              <v-text-field
                label="Receiver ISO"
                outlined
                :value="message.receivingISO"
                disabled
                hide-details="auto"
              />
            </v-col>
            <v-col>
              <v-text-field
                label="Receiver NCP_OID"
                outlined
                :value="message.receivingOID"
                disabled
                hide-details="auto"
              />
            </v-col>
            <v-col>
              <v-text-field
                label="Receiver Msg ID"
                outlined
                :value="message.receivingMsgID"
                disabled
                hide-details="auto"
              />
            </v-col>
          </v-row>
          <v-row>
            <v-col>
              <v-text-field
                label="Receiver Host"
                outlined
                :value="message.receivingHost"
                disabled
                hide-details="auto"
              />
            </v-col>
            <v-col>
              <v-text-field
                label="Receiver Address"
                outlined
                :value="message.receivingAddr"
                disabled
                hide-details="auto"
              />
            </v-col>
          </v-row>
        </v-tab-item>
        <v-tab-item
          value="transaction-details"
          v-if="message.transactionData && message.transactionData.length > 0"
        >
          <div
            v-for="(item, i) in message.transactionData"
            :key="`transaction-data-${i}`"
            style="margin: 1rem 0"
          >
            <v-row>
              <v-col>
                <h2>Details</h2>
              </v-col>
            </v-row>
            <v-row>
              <v-col>
                <v-text-field
                  label="Type"
                  outlined
                  :value="item.dataType"
                  disabled
                  hide-details="auto"
                />
              </v-col>
              <v-col>
                <v-text-field
                  label="Type Name"
                  outlined
                  :value="item.dataTypeName"
                  disabled
                  hide-details="auto"
                />
              </v-col>
            </v-row>
            <v-row>
              <v-col>
                <v-text-field
                  label="Data Value"
                  outlined
                  :value="item.dataValue"
                  disabled
                  hide-details="auto"
                />
              </v-col>
              <v-col>
                <v-text-field
                  label="Value Display"
                  outlined
                  :value="item.valueDisplay"
                  disabled
                  hide-details="auto"
                />
              </v-col>
            </v-row>
          </div>
        </v-tab-item>
      </v-tabs-items>
    </div>
  </v-container>
</template>

<script>
// import axios from 'axios'

export default {
  props: ['id'],
  data () {
    return {
      tab: 'tab-transaction-identification',
      loading: false,
      message: {},
      transactionData: []
    }
  },
  mounted () {
    this.loading = true
    // axios
    //   .get(process.env.VUE_APP_SERVER_URL + `/api/eadc/transactions/${this.id}`)
    //   .then((response) => {
    //     this.message = response.data
    //     console.log(response)
    //     console.log(this.message)
    //     console.log(this.message.transactionData)
    //     this.loading = false
    //   })

    fetch(process.env.VUE_APP_SERVER_URL + `/api/eadc/transactions/${this.id}`)
      .then((response) => response.json())
      .then((data) => {
        this.message = data
        console.log(this.message)
        console.log(this.message.transationData)
        this.transactionData = data.transactionData
        this.loading = false
      })
  },
  computed: {
    items () {
      const p = this.$router.currentRoute.path.split('/')
      p.pop()
      return [
        {
          text: 'EADC Viewer',
          disabled: true
        },
        {
          text: 'Transactions list',
          disabled: false,
          exact: true,
          to: { name: 'transactions' }
        },
        {
          text: 'Transation detail',
          disabled: true
        }
      ]
    }
  },
  methods: {
    back () {
      this.$router.go(-1)
    }
  }
}
</script>

<style scoped>
pre.xml {
  font-size: 0.75em;
  overflow-x: auto;
}
</style>
