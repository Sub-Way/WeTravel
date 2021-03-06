import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './vuex/store'

import axios from 'axios'

Vue.prototype.$axios = axios
Vue.config.productionTip = false

/* eslint-disable no-new */
new Vue({
  el: '#app',
  router, 
  store,
  components: { App }, 
  template: '<App/>'
})
 