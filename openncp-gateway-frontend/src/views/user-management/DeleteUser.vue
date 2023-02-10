<template>
  <v-content>
    <v-container class="fill-height">
      <v-row class="justify-center">
        <v-card>
          <v-card-text>
            <v-form ref="form">
    <form>
    <h3>Reset Password</h3><br/>

    <div class="form-group" style="width: 300px">
      <label>Password</label>
      <input type="password" class="form-control" style="background: white; color: black" v-model="password" placeholder="Password"/>
    </div><br/>

      <div class="form-group" style="width: 300px">
      <label>Password Confirm</label>
      <input type="password" class="form-control" style="background: white; color: black" v-model="password_confirm" placeholder="Password Confirm"/>
    </div><br/>

    <!--button class="btn btn-primary btn-block" style="background-color: cadetblue">Submit</button-->
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
  name: 'Reset',
  data () {
    return {
      password: '',
      password_confirm: ''
    }
  },
  methods: {
    async handleSubmit () {
      const response = await axios.post(process.env.VUE_APP_SERVER_URL + '/api/user/reset-password/finish', {
        password: this.password,
        password_confirm: this.password_confirm,
        token: this.$route.params.token
      })
      console.log(response)
      this.$router.push('/login')
    }
  }
}
</script>
