<template>
  <v-content>
    <v-container class="fill-height">
      <v-row class="justify-center">
        <v-card>
          <v-card-text>
            <v-form ref="form">
              <v-text-field
                v-model="username"
                label="Username"
                prepend-icon="mdi-account"
                type="text"
                :rules="[(v) => !!v || 'Username is required']"
              />
              <v-text-field
                v-model="password"
                label="Password"
                prepend-icon="mdi-lock"
                type="password"
                :rules="[(v) => !!v || 'Password is required']"
                @keypress.enter="login"
              />
            </v-form>
          </v-card-text>
          <v-card-actions class="justify-center">
            <v-btn @click="login" color="indigo"> Login </v-btn>
          </v-card-actions>
        </v-card>
      </v-row>
      <v-snackbar v-model="authenticationFailed" color="error" top>
        Authentication failed.
        <v-btn dark text @click="authenticationFailed = false"> Close </v-btn>
      </v-snackbar>
    </v-container>
  </v-content>
</template>

<script>
export default {
  data: () => ({
    username: '',
    password: '',
    authenticationFailed: false
  }),
  methods: {
    login () {
      if (this.$refs.form.validate()) {
        this.$store
          .dispatch('login', {
            username: this.username,
            password: this.password
          })
          .then(() => {
            this.$router.push('/')
          })
          .catch(() => {
            this.authenticationFailed = true
          })
      }
    }
  }
}
</script>
