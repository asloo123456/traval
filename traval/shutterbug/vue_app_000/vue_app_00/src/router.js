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
<<<<<<< HEAD
// import sc_Check from "./components/pat/sc_Check.vue"

=======
//手风琴
import souFen from "./components/souFen.vue"
//购物车
import shopping from "./components/shoppingCart/shopping.vue"
//商品列表
import product from  "./components/product/product.vue"
>>>>>>> f5473764dd936ab57cb99c98d4263f6c30487fc9
Vue.use(Router)
export default new Router({
  routes: [
    // {path:'/Home',component:Home},
    {path:'/',component:HelloContainer},

    {path:'/login',component:login},
// 中间
    {path:'/Indexss',component:Indexss},
    {path:'/career',component:career},
    // {path:'/sc_Check',component:sc_Check},
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
