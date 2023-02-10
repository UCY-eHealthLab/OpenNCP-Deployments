<template>
  <v-content>
    <v-container class="fill-height">
      <v-row class="justify-center">
        <v-card>
          <v-card-text>
            <v-form ref="form">
              <form>
                <h3>Forgot Password</h3>
                  <p></p>
                  <div class="form-group">
                    <label>Email: </label>
                    <input type="email" class="form-control" style="background: white; color: black" v-model="email" placeholder="email@domain.com"/>
                  </div>
                <!--button class="btn btn-primary btn-block">Submit</button-->
              </form>
            </v-form>
          </v-card-text>
          <v-card-actions class="justify-center">
            <v-btn
              @click="handleSubmit"
              color="indigo"
            >
              Submit
            </v-btn>
          </v-card-actions>
        </v-card>
      </v-row>
    </v-container>
  </v-content>
</template>

<script>
import axios from 'axios'
export default {
  name: 'Forgot',
  data () {
    return {
      email: ''
    }
  },
  methods: {
    async handleSubmit () {
      await axios.post(process.env.VUE_APP_SERVER_URL + '/api/user/reset-password/init', {
        email: this.email
      })
      this.$router.push('/forgotmailsent')
    }
  }
}
</script>
