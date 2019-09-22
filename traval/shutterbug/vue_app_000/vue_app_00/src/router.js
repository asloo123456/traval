import Vue from 'vue'
import Router from 'vue-router'
import HelloContainer from "./components/HelloWorld.vue"
// import Home from "./components/weixin/Home.vue"

//引入登入
import login from "./components/shutterbug/login.vue"

//头部
import top from "./components/top/top.vue"
//底部
import footer from "./components/footer/footer.vue"

// 引入中间部分
import Indexss from "./components/pat/Indexss.vue"
// 搜索
import Search from "./components/pat/Search.vue"
import Search_icon from "./components/pat/Search_icon.vue"
// 评论
import career from "./components/pat/career.vue"


// import sc_Check from "./components/pat/sc_Check.vue"




// import sc_Check from "./components/pat/sc_Check.vue"


//手风琴
import souFen from "./components/souFen.vue"
//购物车
import shopping from "./components/shoppingCart/shopping.vue"
//商品列表
import product from  "./components/product/product.vue"


Vue.use(Router)
export default new Router({
  routes: [
    // {path:'/Home',component:Home},
    {path:'/',component:HelloContainer},

    {path:'/login',component:login},
    // 中间
    {path:'/Indexss',component:Indexss},
    // 搜索
    {path:'/Search',component:Search},
    {path:'/Search_icon',component:Search_icon},
    // 评论
    {path:'/career',component:career},
    // {path:'/sc_Check',component:sc_Check},
    //头部
    {path:'/top',component:top}, 
    //底部
    {path:'/footer',component:footer}, 
	  //手风琴
    {path:'/souFen',component:souFen},
    //购物车
    {path:'/shopping',component:shopping},
    //商品列表
    {path:'/product',component:product},
    
  ]
})
