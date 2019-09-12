import Vue from 'vue'
import Router from 'vue-router'
import HelloContainer from "./components/HelloWorld.vue"
// import Home from "./components/weixin/Home.vue"


//引入登入
import login from "./components/shutterbug/login.vue"
//中间
import lndexss from "./components/lndexss/lndexss.vue"
//底部
import footer from "./components/footer/footer.vue"

Vue.use(Router)

export default new Router({
  routes: [
    // {path:'/Home',component:Home},
    {path:'/',component:HelloContainer},

    {path:'/login',component:login},
    //中间
    {path:'/lndexss',component:lndexss},
    //底部
    {path:'/footer',component:footer},
  ]
})
