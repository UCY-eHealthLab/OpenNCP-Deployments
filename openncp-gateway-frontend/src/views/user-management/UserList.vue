<template>
  <v-container fluid>
    <v-card>
      <v-card-title>
        <v-btn color="indigo" @click="showNewDialog()"> New user </v-btn>
        <v-spacer />
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
        :items="users"
        :search="search"
        :loading="loading"
      >
        <template v-slot:[`item.roles`]="{ item }">
          <v-chip
            v-for="role in item.roles"
            :key="role.id"
            label
            small
            class="ma-sm-1"
            color="green darken-1"
            dark
          >
            {{ role.name }}
          </v-chip>
        </template>

        <template v-slot:[`item.actions`]="{ item }">
          <v-btn small color="indigo" @click="showEditDialog(item)">
            Edit
          </v-btn>

          &nbsp;
          <v-btn small color="indigo" @click="resetPassword(item)">
            Reset Password
          </v-btn>

          <span v-if="authenticatedUser.username != item.username">
            &nbsp;
            <v-btn small color="indigo" @click="showConfirmationDialog(item)">
              Delete
            </v-btn>
          </span>
        </template>
      </v-data-table>
    </v-card>

    <v-dialog v-model="dialogNew" max-width="500px">
      <form @keydown="validate" ref="form">
        <v-card>
          <v-card-title>
            <span>Create a new user</span>
            <!--span v-if="itemSelected.id">Edit user</span>
          <span v-else>Create</span-->
          </v-card-title>
          <v-card-text>
            <v-row>
              <v-col cols="12" sm="4">
                <v-text-field
                  v-model="itemSelected.username"
                  label="Name"
                  :rules="usernameRules"
                  required
                ></v-text-field>
              </v-col>
              <v-col cols="12" sm="8">
                <v-text-field
                  v-model="itemSelected.email"
                  label="Email"
                  type="email"
                  :rules="emailRules"
                ></v-text-field>
              </v-col>
              <v-col cols="12" sm="12">
                <v-text-field
                  v-model="itemSelected.password"
                  @keydown="event.charCode != 32"
                  label="Password"
                  required
                  :rules="passwordRules"
                  minlength="5"
                ></v-text-field>
              </v-col>
              <v-col cols="12" sm="12">
                <v-checkbox v-model="itemSelected.enabled" label="Enabled"
                  >Enabled</v-checkbox
                >
              </v-col>
              <v-col cols="12" sm="6">
                <v-select
                  return-object
                  v-model="itemSelected.roles"
                  :items="roles"
                  label="Select"
                  :rules="rolesRules"
                  @change="validate"
                  multiple
                  chips
                  hint="Roles"
                  persistent-hint
                  item-text="name"
                >
                </v-select>
              </v-col>
            </v-row>
          </v-card-text>
          <v-card-actions>
            <v-spacer></v-spacer>
            <v-btn color="blue darken-1" text @click="showNewDialog()"
              >Cancel</v-btn
            >
            <v-btn
              color="blue darken-1"
              text
              :disabled="!valid"
              @click="registerUser(itemSelected)"
              >Save</v-btn
            >
          </v-card-actions>
        </v-card>
      </form>
    </v-dialog>

    <v-dialog v-model="dialogEdit" max-width="500px">
      <form @keydown="validate" ref="form">
        <v-card>
          <v-card-title>
            <span>Edit user</span>
            <!--span v-if="itemSelected.id">Edit user</span>
          <span v-else>Create</span-->
          </v-card-title>
          <v-card-text>
            <v-row>
              <v-col cols="12" sm="4">
                <v-text-field
                  v-model="itemSelected.id"
                  label="Id"
                  disabled
                ></v-text-field>
              </v-col>
            </v-row>
            <v-row>
              <v-col cols="12" sm="4">
                <v-text-field
                  v-model="itemSelected.username"
                  label="Name"
                  :rules="usernameRules"
                ></v-text-field>
              </v-col>
              <v-col cols="12" sm="8">
                <v-text-field
                  v-model="itemSelected.email"
                  label="Email"
                  :rules="emailRules"
                ></v-text-field>
              </v-col>
              <v-col cols="12" sm="12">
                <v-checkbox v-model="itemSelected.enabled" label="Enabled"
                  >Enabled</v-checkbox
                >
              </v-col>
              <v-col cols="12" sm="6">
                <v-select
                  return-object
                  v-model="itemSelected.roles"
                  :items="roles"
                  label="Select"
                  multiple
                  chips
                  hint="Roles"
                  persistent-hint
                  :rules="rolesRules"
                  @change="validate"
                  item-text="name"
                >
                </v-select>
              </v-col>
            </v-row>
          </v-card-text>
          <v-card-actions>
            <v-spacer></v-spacer>
            <v-btn color="blue darken-1" text @click="showEditDialog()"
              >Cancel</v-btn
            >
            <v-btn
              color="blue darken-1"
              text
              @click="updateItem(itemSelected)"
              :disabled="!valid"
              >Save</v-btn
            >
          </v-card-actions>
        </v-card>
      </form>
    </v-dialog>

    <v-dialog v-model="dialogConfirm">
      <v-card>
        <v-card-title class="indigo"> Confirmation </v-card-title>
        <v-card-text> Are you sure? </v-card-text>
        <v-divider></v-divider>
        <v-card-actions>
          <v-spacer></v-spacer>
          <v-btn text color="primary" @click="dialogConfirm = false"
            >Cancel</v-btn
          >
          <v-btn text @click="deleteItem(itemSelected)"> Confirm </v-btn>
        </v-card-actions>
      </v-card>
    </v-dialog>
    <v-dialog v-model="resetPwdSuccessful" width="500">
      <v-card>
        <v-card-title class="text-h5"> Reset password </v-card-title>

        <v-card-text>
          If a mail server is set on the backend, a mail has been sent to the
          user to finish this process.
          <br />
          Otherwise, please send the link below to the user.
          <pre v-html="resetPasswordMessage"></pre>
        </v-card-text>

        <v-divider></v-divider>

        <v-card-actions>
          <v-spacer></v-spacer>
          <v-btn color="primary" text @click="resetPwdSuccessful = false"
            >Close
          </v-btn>
        </v-card-actions>
      </v-card>
    </v-dialog>
  </v-container>
</template>

<script>
import axios from 'axios'
export default {
  name: 'UserList',
  data () {
    return {
      form: null,
      valid: false,
      itemSelected: {},
      dialogConfirm: false,
      dialogNew: false,
      dialogEdit: false,
      show: false,
      roles: [],
      resetPwdSuccessful: false,
      resetPasswordMessage: '',
      conditions: [],
      rolesRules: [(v) => v.length > 0 || 'At least one role must be check'],
      passwordRules: [
        (v) => !!v || 'Password is required',
        (v) => v.length <= 30 || '30 Characters max',
        (v) =>
          /^(?=.*[a-z])(?=.*[A-Z])[a-zA-Z\d]{8,30}$/.test(v) ||
          'Password must be more than 8 characters and one Uppercase letter. '
      ],
      emailRules: [
        (v) => !v || /.+@.+\..+/.test(v) || 'E-mail must be valid'
      ],
      usernameRules: [
        (v) => !!v || 'Username is required',
        (v) => (v && v.length >= 5) || 'Username must be more than 5 characters'
      ],
      search: '',
      loading: false,
      activeItems: [],
      headers: [
        {
          text: 'Username',
          value: 'username'
        },
        {
          text: 'Roles',
          value: 'roles'
        },
        {
          text: '',
          value: 'actions'
        }
      ],
      users: []
    }
  },
  computed: {
    authenticatedUser () {
      return this.$store.state.authenticatedUser
    }
  },
  mounted () {
    this.$store.dispatch('authenticatedUser')
    this.loading = true
    axios
      .get(process.env.VUE_APP_SERVER_URL + '/api/users')
      .then((response) => {
        console.log(response.data)
        this.users = response.data
      })
    axios
      .get(process.env.VUE_APP_SERVER_URL + '/api/roles')
      .then((response) => {
        this.roles = response.data
      })
    this.itemSelected = {}
    this.loading = false
  },
  methods: {
    validate (evt) {
      console.log(this.$refs.form.checkValidity())
      this.valid =
        this.$refs.form.checkValidity() && this.itemSelected.roles.length > 0
    },
    getRoles () {
      axios
        .get(process.env.VUE_APP_SERVER_URL + '/api/roles')
        .then((response) => {
          this.roles = response.data
          this.loading = false
        })
    },
    showNewDialog () {
      this.itemSelected = {
        email: '',
        enabled: false,
        password: '',
        roles: [],
        username: ''
      }

      this.dialogNew = !this.dialogNew
      axios
        .get(process.env.VUE_APP_SERVER_URL + '/api/users')
        .then((response) => {
          this.users = response.data
          this.loading = false
        })
    },
    showEditDialog (item) {
      this.itemSelected = item || {}
      this.dialogEdit = !this.dialogEdit
      axios
        .get(process.env.VUE_APP_SERVER_URL + '/api/users')
        .then((response) => {
          this.users = response.data
          this.loading = false
        })
    },
    showConfirmationDialog (item) {
      this.itemSelected = item || {}
      this.dialogConfirm = !this.dialogConfirm
    },
    updateItem: function (user) {
      this.dialogEdit = false
      this.loading = false
      axios
        .post(process.env.VUE_APP_SERVER_URL + '/api/user/update', user)
        .then((response) => {
          axios
            .get(process.env.VUE_APP_SERVER_URL + '/api/users')
            .then((response) => {
              this.users = response.data
              this.loading = false
            })
        })
    },
    registerUser: function (user) {
      this.dialogNew = false
      this.loading = false
      // if (Object.keys(user.password).length === 0) {
      //   user.password = 'password'
      // }
      // console.log(user)
      axios
        .post(process.env.VUE_APP_SERVER_URL + '/api/user/register', user)
        .then((response) => {
          axios
            .get(process.env.VUE_APP_SERVER_URL + '/api/users')
            .then((response) => {
              this.users = response.data
              this.loading = false
            })
        })
    },
    deleteItem: function (user) {
      // this.$emit('deleteItem', item)
      this.dialogConfirm = false
      this.loading = false
      axios
        .delete(
          process.env.VUE_APP_SERVER_URL + '/api/user/delete?user=' + user.id
        )
        .then((response) => {
          axios
            .get(process.env.VUE_APP_SERVER_URL + '/api/users')
            .then((response) => {
              this.users = response.data
              this.loading = false
            })
        })
    },
    async resetPassword (user) {
      await axios
        .post(
          process.env.VUE_APP_SERVER_URL + '/api/user/reset-password/init',
          {
            email: user.email
          }
        )
        .then((res) => {
          this.resetPwdSuccessful = true
          const msg = res.data
          this.resetPasswordMessage =
            /<a\s+(?:[^>]*?\s+)?href=(["'])(.*?)\1/g.exec(msg)[2]
        })
        .catch(() => {
          this.resetPwdSuccessful = false
        })
    }
  },
  changeColor () {
    this.isLoading = !this.isLoading
  },
  toggleActive (idx) {
    const pos = this.activeItems.indexOf(idx)
    pos === -1 ? this.activeItems.push(idx) : this.activeItems.splice(pos, 1)
  }
}
</script>

<style scoped>
pre {
  font-size: 0.7rem;
  white-space: pre-wrap;
}
</style>
