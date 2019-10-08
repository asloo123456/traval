import Vue from 'vue'
import Router from 'vue-router'
import HelloContainer from "./components/HelloWorld.vue"
// import Home from "./components/weixin/Home.vue"

//引入登入
import login from "./components/shutterbug/login.vue"
//引入登入1
import login1 from "./components/shutterbug/login1.vue"

// 引入中间部分
import Indexss from "./components/pat/Indexss.vue"
// 评论
import career from "./components/pat/career.vue"


//手风琴
import souFen from "./components/souFen.vue"
//购物车
import shopping from "./components/shoppingCart/shopping.vue"
//商品列表
import product from  "./components/product/product.vue"
//点击返回到上一个页面
import back from "./components/back/back.vue"

Vue.use(Router)
export default new Router({
  routes: [
    // {path:'/Home',component:Home},
    {path:'/',component:HelloContainer},

    {path:'/login',component:login},
    {path:'/login1',component:login1},
    // 中间
    {path:'/Indexss',component:Indexss},
    // 评论
    {path:'/career',component:career},
	  //手风琴
    {path:'/souFen',component:souFen},
    //购物车
    {path:'/shopping',component:shopping},
    //商品列表
    {path:'/product',component:product},
    //点击返回到上一个页面
    {path:'/back',component:back},
    
  ]
})
