<template>
  <v-container fluid>
    <v-card>
      <v-card-title>
        <v-spacer></v-spacer>
        <v-text-field
          v-model="search"
          append-icon="mdi-magnify"
          label="Search"
          single-line
          hide-details
        ></v-text-field>
      </v-card-title>
      <v-data-table
        :headers="headers"
        :items="properties"
        hide-default-footer
        disable-pagination
        :search="search"
        :loading="loading"
      >
        <template v-slot:[`item.smp`]="{ item }">
          <v-switch disabled :value="item.smp"></v-switch>
        </template>
      </v-data-table>
    </v-card>
  </v-container>
</template>

<script>
import axios from 'axios'

export default {
  data () {
    return {
      headers: [
        {
          text: 'Name',
          value: 'name'
        },
        {
          text: 'Value',
          value: 'value',
          sortable: false,
          filterable: false
        },
        {
          text: 'Is SMP',
          value: 'smp',
          sortable: false,
          filterable: false
        }
      ],
      search: '',
      properties: [],
      loading: false
    }
  },
  mounted () {
    this.loading = true
    axios
      .get(process.env.VUE_APP_SERVER_URL + '/api/properties')
      .then(response => {
        this.properties = response.data
        this.loading = false
      })
  }
}
</script>

<style scoped>

</style>
