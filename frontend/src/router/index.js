import Vue from 'vue'
import Router from 'vue-router'
import {BootstrapVue, IconsPlugin} from 'bootstrap-vue'
import VeeValidate from 'vee-validate'
import 'bootstrap/dist/css/bootstrap.css'
import 'bootstrap-vue/dist/bootstrap-vue.css'
import Carousel3d from 'vue-carousel-3d'
import store from '../vuex/store'


// fontawesome
import { library } from '@fortawesome/fontawesome-svg-core'
import { fas } from '@fortawesome/free-solid-svg-icons'
import { faFacebook, faTwitter, faInstagram, faPinterest } from '@fortawesome/free-brands-svg-icons'
import { FontAwesomeIcon } from '@fortawesome/vue-fontawesome'

// vue-star-rating
import StarRating from 'vue-star-rating'


// vue-quill-editor
import VueQuillEditor from 'vue-quill-editor'
import 'quill/dist/quill.core.css'
import 'quill/dist/quill.snow.css'
import 'quill/dist/quill.bubble.css'
import { quillRedefine } from 'vue-quill-editor-upload'


// 유저
import join from '../page/user/Join.vue'
import forgotpassword from '../page/user/ForgotPassword.vue'
import profile from '../page/user/Profile.vue'

// 포스트
import mainpage from '../page/post/MainPage.vue'
import bestpage from '../page/post/BestPage.vue'
import provincepage from '../page/post/ProvincePage.vue'
import citypage from '../page/post/CityPage.vue'
import bookpage from '../page/post/BookPage.vue'
import articlepage from '../page/post/ArticlePage.vue'
import bookcreate from '../page/post/BookCreate.vue'
import articlecreate from '../page/post/ArticleCreate.vue'


library.add(fas)
library.add(faFacebook)
library.add(faInstagram)
library.add(faTwitter)
library.add(faPinterest)

Vue.use(Router) 
Vue.use(BootstrapVue)
Vue.use(IconsPlugin)
Vue.use(Carousel3d)
Vue.use(VeeValidate)
Vue.use(VueQuillEditor)
Vue.use(quillRedefine)

Vue.component('font-awesome-icon', FontAwesomeIcon)
Vue.component('star-rating', StarRating)



VeeValidate.Validator.extend('verify_password', {
  getMessage: field => `The password must contain at least: 1 uppercase letter, 1 lowercase letter, 1 number`,
        validate: value => {
            var strongRegex = new RegExp("^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])");
            return strongRegex.test(value);
          }
})


const requireAuth = () => (to, from, next) => {
  if (sessionStorage.getItem('jwt-auth-token')) {
    return next();
  }
  alert('로그인 후 이용 가능합니다')
  next('/');
}


export default new Router({
  mode: 'history',
  routes: [
    // 포스트
    { 
      path: '/',
      name: 'mainpage',
      component: mainpage,
    },
    {
      path:'/bookcreate',
      name: 'bookcreate',
      component: bookcreate,
      //beforeEnter: requireAuth()
    },
    {
      path:'/:bookno/articlecreate',
      name: 'articlecreate',
      component: articlecreate,
    },
    {
      path:'/best/:city',
      name: 'bestpage',
      component: bestpage,
    },
    {
      path:'/posts/:province',
      name: 'provincepage',
      component: provincepage,
    },
    {
      path: '/posts/:province/:city', 
      name: 'citypage',
      component: citypage,
    },
    {
      path: '/posts/:province/:city/:bookno',
      name: 'bookpage',
      component: bookpage,
    },
    {
      path: '/posts/:province/:city/:bookno/:articleno',
      name: 'articlepage',
      component: articlepage,
    },
    // 가입
    {
      path: '/join',
      name: 'join',
      component: join,
    },
    {
      path: '/forgotpassword',
      name: 'forgotpassword',
      component: forgotpassword,
    },
    {
      path: '/profile',
      name: 'profile',
      component: profile,
      beforeEnter: requireAuth()
    }
  ],
  // 페이지 이동 시 맨 위로 이동
  scrollBehavior (to, from, savedPosition) {
    return { x:0, y:0 }
  }
})
