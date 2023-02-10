<template>
  <v-content>
    <v-container class="fill-height">
      <v-row class="justify-center">
        <v-card width="400">
          <v-card-text>
            <form ref="form">
              <h3>Reset Password</h3>
              <br />

              <v-text-field
                v-model="password"
                type="password"
                :rules="pwdRules"
                label="New Password"
                required
              ></v-text-field>
              <v-text-field
                v-model="confirmPwd"
                type="password"
                :rules="pwdRules2"
                label="Confirm New Password"
                required
              ></v-text-field>
            </form>
          </v-card-text>
          <v-card-actions class="justify-center">
            <v-btn @click="handleSubmit" color="indigo"> Submit </v-btn>
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
      confirmPwd: '',

      pwdRules: [
        (v) => !!v || 'Password is required',
        (v) => v.length <= 30 || '30 Characters max',
        (v) =>
          /^(?=.*[a-z])(?=.*[A-Z])[a-zA-Z\d]{8,30}$/.test(v) ||
          'Password must be more than 8 characters and one Uppercase letter. '
      ],
      pwdRules2: [
        (v) => {
          return this.password === this.confirmPwd || "Passwords don't match"
        }
      ]
    }
  },
  methods: {
    async handleSubmit () {
      await axios
        .post(
          process.env.VUE_APP_SERVER_URL + '/api/user/reset-password/finish',
          {
            password: this.password,
            token: this.$route.query.key
          }
        )
        .then(() => {
          this.$router.push('/login')
        })
        .catch((e) => {
          console.log('mince')
        })
    }
  }
}
</script>
