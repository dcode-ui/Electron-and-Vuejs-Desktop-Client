import Vue from 'vue'
import Router from 'vue-router'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/dashboard',
      name: 'dashboard',
      component: require('@/components/Dashboard').default
    },
    {
      path: '/farmers',
      name:'farmers',
      component: require('@/components/Farmers').default,
    },
    {
      path: '/farms',
      name:'/farms',
      component: require('@/components/Farms').default,
    },
    {
      path: '/cropyields',
      name:'/cropyields',
      component: require('@/components/Crop_Yield').default,
    },
    {
      path: '/farmview/:fmid',
      name:'/farmview',
      component: require('@/components/Farm_View').default,
    },
    {
      path: '/',
      name:'/login',
      component: require('@/components/Login').default,
    }
  ]
})
