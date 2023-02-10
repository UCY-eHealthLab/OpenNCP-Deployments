import Vue from 'vue'
import VueRouter from 'vue-router'

import store from '../store/index'

import Login from '../views/Login'
import Error404 from '../views/Error404'
import Layout from '../views/Layout'
import Dashboard from '../views/Dashboard'
import AuditMessages from '../views/atna-viewer/AuditMessages'
import AuditMessageDetails from '../views/atna-viewer/AuditMessageDetails'
import Properties from '../views/Properties'
import UserList from '../views/user-management/UserList'
import ErrorMessages from '../views/atna-viewer/ErrorMessages'
import SmpEditor from '../views/smp-editor/SmpEditor'
import SmpGenerate from '../views/smp-editor/SmpGenerate'
// import SmpGenerated from '../views/smp-editor/SmpGenerated'
import SmpUpdate from '../views/smp-editor/SmpUpdate'
import SmpSign from '../views/smp-editor/SmpSign'
import SmpUpload from '../views/smp-editor/SmpUpload'
import SmpDelete from '../views/smp-editor/SmpDelete'
import SmpSynchronize from '../views/smp-editor/SmpSynchronize'
import TransactionMessages from '../views/eadc-viewer/TransactionMessages'
import TransactionMessageDetails from '../views/eadc-viewer/TransactionMessageDetails'
import Forgot from '../views/user-management/Forgot'
import ForgotMailSent from '../views/user-management/ForgotMailSent'
import Reset from '../views/user-management/Reset'

Vue.use(VueRouter)

const routes = [
  {
    path: '/login',
    name: 'Login',
    component: Login
  },
  {
    path: '/forgot',
    name: 'Forgot',
    component: Forgot
  },
  {
    path: '/forgotmailsent',
    name: 'ForgotMailSent',
    component: ForgotMailSent
  },
  {
    path: '/reset',
    name: 'Reset',
    component: Reset
  },
  {
    path: '/',
    component: Layout,
    children: [
      {
        path: '',
        redirect: 'dashboard'
      },
      {
        path: 'dashboard',
        name: 'Dashboard',
        component: Dashboard
      },
      {
        path: 'openncp-properties',
        name: 'Properties',
        component: Properties
      },
      {
        path: 'smp-editor',
        name: 'SmpEditor',
        component: SmpEditor,
        children: [
          {
            path: 'generate',
            name: 'SmpGenerate',
            component: SmpGenerate
          },
          {
            path: 'update',
            name: 'SmpUpdate',
            component: SmpUpdate
          },
          {
            path: 'sign',
            name: 'SmpSign',
            component: SmpSign
          },
          {
            path: 'upload',
            name: 'SmpUpload',
            component: SmpUpload
          },
          {
            path: 'delete',
            name: 'SmpDelete',
            component: SmpDelete
          },
          {
            path: 'synchronize',
            name: 'SmpSynchronize',
            component: SmpSynchronize
          }
        ]
      }
    ]
  },
  {
    path: '/atna-viewer',
    component: Layout,
    children: [
      {
        path: 'audit-messages',
        name: 'audits',
        component: AuditMessages
      },
      {
        path: 'audit-messages/:id',
        name: 'audit-details',
        component: AuditMessageDetails,
        props: true
      },
      {
        path: 'error-messages',
        name: 'ErrorMessages',
        component: ErrorMessages
      }
    ]
  },
  {
    path: '/eadc-viewer',
    component: Layout,
    children: [
      {
        path: 'transaction-messages',
        name: 'transactions',
        component: TransactionMessages
      },
      {
        path: 'transaction-messages/:id',
        name: 'transaction-details',
        component: TransactionMessageDetails,
        props: true
      }
    ]
  },
  {
    path: '/user-management',
    component: Layout,
    children: [
      {
        path: '',
        name: 'UserList',
        component: UserList
      }
    ]
  },
  {
    path: '*',
    component: Error404
  }
]

const router = new VueRouter({
  // mode: 'history',
  base: 'openncp-gateway/',
  routes
})

router.beforeEach((to, from, next) => {
  if (
    !to.path.startsWith('/login') &&
    !store.getters.isAuthenticated &&
    !to.path.startsWith('/forgot') &&
    !to.path.startsWith('/reset')
  ) {
    next('/login')
  } else {
    next()
  }
})

export default router
