import Vue from 'vue'
import Router from 'vue-router'
import HelloContainer from "./components/HelloWorld.vue"
// import Home from "./components/weixin/Home.vue"


//引入登入
import login from "./components/shutterbug/login.vue"
//中间
//import lndexs from "./components/indexs/lndexs.vue"
//底部
import footer from "./components/footer/footer.vue"

// 引入中间部分
import Indexs from "./components/pat/Indexs.vue"
Vue.use(Router)

export default new Router({
  routes: [
    // {path:'/Home',component:Home},
    {path:'/',component:HelloContainer},

    {path:'/login',component:login},
<<<<<<< HEAD

    {path:'/Indexs',component:Indexs},
=======
    //中间
    //{path:'/lndexs',component:lndexs},
>>>>>>> 5aab782c08771bcd6c13261177ce3d1141c33345
    //底部
    {path:'/footer',component:footer}, 
  ]
})
