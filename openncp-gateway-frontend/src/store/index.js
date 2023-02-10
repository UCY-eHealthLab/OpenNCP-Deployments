import Vue from 'vue'
import Vuex from 'vuex'
import axios from 'axios'

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    authenticatedUser: {},
    token: '',
    smpData: null,
    country: null
  },
  getters: {
    isAuthenticated: (state) => !!state.token,
    smpData: (state) => state.smpData,
    country: (state) => state.country
  },
  mutations: {
    authenticatedUser (state, user) {
      state.authenticatedUser = user
    },
    login (state, token) {
      state.token = token
    },
    logout (state) {
      state.token = ''
    },
    smpData (state, data) {
      state.smpData = data
    },
    country (state, data) {
      state.country = data
    }
  },
  actions: {
    authenticatedUser ({ commit }) {
      return new Promise((resolve, reject) => {
        axios
          .get(process.env.VUE_APP_SERVER_URL + '/account')
          .then((response) => {
            commit('authenticatedUser', response.data)
            resolve()
          })
          .catch((reason) => {
            reject(reason)
          })
      })
    },
    login ({ commit }, payload) {
      return new Promise((resolve, reject) => {
        axios
          .post(process.env.VUE_APP_SERVER_URL + '/authenticate', payload)
          .then((response) => {
            axios.defaults.headers.common.Authorization =
              'Bearer ' + response.data.idToken
            commit('login', response.data.idToken)
            resolve()
          })
          .catch((reason) => {
            reject(reason)
          })
      })
    },
    logout ({ commit }) {
      commit('logout')
    },
    forgot ({ commit }, payload) {
      console.log(payload)
      return new Promise((resolve, reject) => {
        axios
          .post(process.env.VUE_APP_SERVER_URL + '/api/user/reset-password/init', payload)
          .then((response) => {
            console.log(response)
          })
          .catch((reason) => {
            reject(reason)
          })
      })
    },
    reset ({ commit }, payload) {
      console.log(payload)
      return new Promise((resolve, reject) => {
        axios
          .post(process.env.VUE_APP_SERVER_URL + '/api/user/reset-password/finish', payload)
          .then((response) => {
            console.log(response)
          })
          .catch((reason) => {
            reject(reason)
          })
      })
    }
  },
  modules: {}
})
