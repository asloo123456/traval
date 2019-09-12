import Vue from 'vue'
import Router from 'vue-router'
import HelloContainer from "./components/HelloWorld.vue"
// import Home from "./components/weixin/Home.vue"

import message from "./components/text/message.vue"
//引入登入
import login from "./components/shutterbug/login.vue"

Vue.use(Router)

export default new Router({
  routes: [
    // {path:'/Home',component:Home},
    {path:'/',component:HelloContainer},
    {path:'/msg',component:message},
    {path:'/login',component:login},
  ]
})
