import Vue from 'vue'
import Router from 'vue-router'
import {BootstrapVue, IconsPlugin} from 'bootstrap-vue'
import VeeValidate from 'vee-validate'
import 'bootstrap/dist/css/bootstrap.css'
import 'bootstrap-vue/dist/bootstrap-vue.css'
import Carousel3d from 'vue-carousel-3d'

// fontawesome
import { library } from '@fortawesome/fontawesome-svg-core'
import { fas } from '@fortawesome/free-solid-svg-icons'
import { faFacebook, faTwitter, faInstagram, faPinterest } from '@fortawesome/free-brands-svg-icons'
import { FontAwesomeIcon } from '@fortawesome/vue-fontawesome'

// 유저
import join from '../page/user/Join.vue'
import forgotpassword from '../page/user/ForgotPassword.vue'

// 포스트
import mainpage from '../page/post/MainPage.vue'
import besttravelpage from '../page/post/BestTravelPage.vue'

library.add(fas)
library.add(faFacebook)
library.add(faInstagram)
library.add(faTwitter)
library.add(faPinterest)

Vue.use(Router) 
Vue.use(BootstrapVue)
Vue.use(IconsPlugin)
Vue.use(VeeValidate)
Vue.use(Carousel3d)

Vue.component('font-awesome-icon', FontAwesomeIcon)


export default new Router({
  mode: 'history',
  routes: [
    // 포스트
    { 
      path: '/',
      component: mainpage,
    },
    {
      path:'/besttravelpage',
      component: besttravelpage,
    },
    // 가입
    {
      path: '/join',
      component: join,
    },
    {
      path: '/forgotpassword',
      component: forgotpassword,
    }
  ]
})
