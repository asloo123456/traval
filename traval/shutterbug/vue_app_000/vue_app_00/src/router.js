import Vue from 'vue'
import Router from 'vue-router'
import HelloContainer from "./components/HelloWorld.vue"
// import Home from "./components/weixin/Home.vue"


//引入登入
import login from "./components/shutterbug/login.vue"

//底部
import footer from "./components/footer/footer.vue"

// 引入中间部分
import Indexss from "./components/pat/Indexss.vue"
import career from "./components/pat/career.vue"

Vue.use(Router)
export default new Router({
  routes: [
    // {path:'/Home',component:Home},
    {path:'/',component:HelloContainer},

    {path:'/login',component:login},
// 中间
    {path:'/Indexss',component:Indexss},
    {path:'/career',component:career},
    //底部
    {path:'/footer',component:footer}, 
  ]
})
