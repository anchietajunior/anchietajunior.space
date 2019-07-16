import Vue from 'vue/dist/vue.esm'
import Router from 'vue-router'
import Index from './views/Index.vue'
import Reading from './views/Reading.vue'

Vue.use(Router)

export default new Router({
  base: process.env.BASE_URL,
  routes: [
    {
      path: '/',
      name: 'index',
      component: Index
    },
    {
      path: '/reading',
      name: 'reading',
      component: Reading
    }
  ]
})