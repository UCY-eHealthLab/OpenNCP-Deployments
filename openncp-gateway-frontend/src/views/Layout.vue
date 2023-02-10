<template>
  <div>
    <v-navigation-drawer app clipped v-model="drawer">
      <v-list dense>
        <!-- <v-list-item link to="/dashboard">
          <v-list-item-action>
            <v-icon>mdi-view-dashboard</v-icon>
          </v-list-item-action>
          <v-list-item-content>
            <v-list-item-title>Dashboard</v-list-item-title>
          </v-list-item-content>
        </v-list-item> -->
        <v-list-group v-if="checkRoles('GTW_ATNA_ADMIN')">
          <template v-slot:activator>
            <v-list-item-action>
              <v-icon>mdi-file-code</v-icon>
            </v-list-item-action>
            <v-list-item-title>ATNA Viewer</v-list-item-title>
          </template>
          <v-list-item link to="/atna-viewer/audit-messages">
            <v-list-item-content>
              <v-list-item-title>Audit Messages</v-list-item-title>
            </v-list-item-content>
          </v-list-item>
          <v-list-item link to="/atna-viewer/error-messages">
            <v-list-item-content>
              <v-list-item-title>Error Messages</v-list-item-title>
            </v-list-item-content>
          </v-list-item>
        </v-list-group>
        <v-list-group v-if="checkRoles('GTW_EADC_ADMIN')">
          <template v-slot:activator>
            <v-list-item-action>
              <v-icon>mdi-file-chart</v-icon>
            </v-list-item-action>
            <v-list-item-title>eADC Viewer</v-list-item-title>
          </template>
          <v-list-item link to="/eadc-viewer/transaction-messages">
            <v-list-item-content>
              <v-list-item-title>Transactions</v-list-item-title>
            </v-list-item-content>
          </v-list-item>
        </v-list-group>
        <v-list-item
          link
          to="/openncp-properties"
          v-if="checkRoles('GTW_NCP_ADMIN')"
        >
          <v-list-item-action>
            <v-icon>mdi-cog</v-icon>
          </v-list-item-action>
          <v-list-item-content>
            <v-list-item-title>OpenNCP Properties</v-list-item-title>
          </v-list-item-content>
        </v-list-item>
        <v-list-item link to="/smp-editor" v-if="checkRoles('GTW_SMP_ADMIN')">
          <v-list-item-action>
            <v-icon>mdi-file-document-edit</v-icon>
          </v-list-item-action>
          <v-list-item-content>
            <v-list-item-title>SMP Editor</v-list-item-title>
          </v-list-item-content>
        </v-list-item>
        <v-list-item link to="/user-management" v-if="checkRoles('GTW_ADMIN')">
          <v-list-item-action>
            <v-icon>mdi-account-group</v-icon>
          </v-list-item-action>
          <v-list-item-content>
            <v-list-item-title>User Management</v-list-item-title>
          </v-list-item-content>
        </v-list-item>
      </v-list>
    </v-navigation-drawer>
    <v-app-bar app clipped-left color="indigo">
      <v-app-bar-nav-icon @click.stop="drawer = !drawer" />
      <v-toolbar-title>
        <span class="title">OpenNCP Gateway Portal</span>
      </v-toolbar-title>
      <v-spacer />

      <v-menu offset-y>
        <template v-slot:activator="{ on, attrs }">
          <v-btn color="primary" dark v-bind="attrs" v-on="on">
            <v-icon>mdi-account</v-icon>
            {{ authenticatedUser.username }}
          </v-btn>
        </template>
        <v-list>
          <v-list-item
            v-for="(item, index) in items"
            :key="index"
            @click="onDropdownClick"
          >
            <v-list-item-title>{{ item.title }}</v-list-item-title>
          </v-list-item>
        </v-list>
      </v-menu>
      <v-btn icon @click="logout">
        <v-icon>mdi-power</v-icon>
      </v-btn>
    </v-app-bar>
    <v-content>
      <router-view />
    </v-content>
    <v-dialog v-model="changePasswordDialog" width="500">
      <!-- <template v-slot:activator="{ on, attrs }">
        <v-btn color="red lighten-2" dark v-bind="attrs" v-on="on">
          Click Me
        </v-btn>
      </template> -->

      <v-card>
        <v-card-title class="text-h5"> Choose a new password </v-card-title>

        <v-divider></v-divider>
        <v-form ref="form" v-model="valid" lazy-validation>
          <div class="wrapper">
            <v-text-field
              v-model="oldPwd"
              type="password"
              :rules="pwdRules"
              label="Current Password"
              required
            ></v-text-field>
            <v-text-field
              v-model="pwd"
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
          </div>
        </v-form>

        <v-card-actions>
          <v-spacer></v-spacer>
          <v-btn color="" text @click="changePasswordDialog = false">
            Cancel
          </v-btn>
          <v-btn
            color="primary"
            text
            @click="changePassword"
            :disabled="!valid"
          >
            Change
          </v-btn>
        </v-card-actions>
      </v-card>
    </v-dialog>

    <v-snackbar v-model="snackbar" :color="snackbarMod" top>
      {{ snackbarText }}
      <template>
        <v-btn text v-bind="attrs" @click="snackbar = false"> Close </v-btn>
      </template>
    </v-snackbar>
  </div>
</template>

<script>
import axios from 'axios'
export default {
  data () {
    return {
      pwd: '',
      confirmPwd: '',
      oldPwd: '',
      drawer: true,
      valid: false,
      snackbar: false,
      snackbarText: '',
      snackbarMod: 'success',
      changePasswordDialog: false,

      pwdRules: [
        (v) => !!v || 'Password is required',
        (v) => v.length <= 30 || '30 Characters max',
        (v) =>
          /^(?=.*[a-z])(?=.*[A-Z])[a-zA-Z\d]{8,30}$/.test(v) ||
          'Password must be more than 8 characters and one Uppercase letter. '
      ],
      pwdRules2: [
        (v) => {
          return this.pwd === this.confirmPwd || "Passwords don't match"
        }
      ],
      items: [{ title: 'Change password' }]
    }
  },
  computed: {
    authenticatedUser () {
      // console.log(this.$store.state.authenticatedUser.roles)
      return this.$store.state.authenticatedUser
    }
  },
  mounted () {
    this.$store.dispatch('authenticatedUser')
  },
  methods: {
    snack (text, color) {
      this.snackbar = true
      this.snackbarText = text
      this.snackbarMod = color
    },
    error (text) {
      this.snack(text, 'error')
    },
    success (text) {
      this.snack(text, 'success')
    },
    validate (evt) {
      this.valid = this.$refs.form.checkValidity()
    },
    changePassword () {
      this.loading = true
      axios
        .post(process.env.VUE_APP_SERVER_URL + '/api/user/change-password', {
          oldPassword: this.oldPwd,
          password: this.pwd,
          password_confirm: this.confirmPwd
        })
        .then((response) => {
          this.changePasswordDialog = false
          this.success('Password has been successfully changed')
          this.loading = false
        })
        .catch((err) => {
          this.error('An error occurs. The operations is not completed! ', err)
        })
    },
    onDropdownClick (evt) {
      this.changePasswordDialog = true
    },
    checkRoles (role) {
      if (this.authenticatedUser.roles) {
        return (
          this.authenticatedUser.roles.includes('GTW_ADMIN') ||
          this.authenticatedUser.roles.includes('SMP_ADMIN') ||
          this.authenticatedUser.roles.includes(role)
        )
      } else {
        return false
      }
    },
    logout () {
      this.$store.dispatch('logout').then(() => {
        this.$router.push('/login')
      })
    }
  }
}
</script>
<style scoped>
.wrapper {
  padding: 1rem;
}
</style>
