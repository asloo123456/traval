<template>
    <div class="coniner">
            <header class="page-header">
                <div><span>商</span><span>店</span> </div>
            </header>
             <mt-button class="b_tt" @click="jumpCart" >查看购物车</mt-button> 
       
                <div class="ti">
                     <div class="tow"  v-for="(item,index) of list" :key="index" >
                    <div class="tow_todo">
                        <div class="post-inner" >
                            <a href="">
                                 <img class="imgtow"   :src="'http://127.0.0.1:8080/'+item.img"  alt="1" >
                            </a>
                           
                        </div> 
                        <h2 class="text_tow"><span>标题:</span>{{item.title}}</h2>
                         <div class="div_tow">
                             <span> 型号:</span>
                             <span>{{item.times}}</span>
                             <span >存储介质:</span>
                            <span>{{item.writer}}</span>
                         </div>
                         <div class="div_tow">
                             <span >名称:</span>
                             <span>{{item.lname}}</span>
                            <span >价格:</span>
                            <span >{{item.price}}</span>
                         </div>
                        <mt-button @click="addcart" :data-pid="item.pid"
                                :data-price="item.price"
                                :data-lname="item.lname"
                                :data-img="item.img"
                                 class="bu_tt" style="background:#5959; color:#fff;margin-top:0.5rem;border-radius:1.2rem; ">加入购物车
                        </mt-button> 
                    </div>  
                </div> 
                </div>
               

            
              


                    <div class="bu_tter">
                     <!-- 商品结束 -->
                     <!-- 商品结束 -->
                    <mt-button class="b_t"  size="large" @click="loadMore">加载更多</mt-button> 
                    
               
                    
                    
                </div>     
    </div>
</template>
<script>
export default {
    data(){
        return{
           list:[],
              pno:0  //保存服务器返回商品列表
        }
    },

    //当组件创建成功后，显示第一页数据  created()
    //当组件创建成功了，created调用
    created(){
         this.loadMore();
    },
    methods:{
        jumpCart(){
            //跳转到购物车组件
            this.$router.push("/shopping")
        },
        addcart(event){
            // 功能：将商品添加至购物车
            //1:获取购物车中数据pid,lname,price
            var pid=event.target.dataset.pid;
            var price=event.target.dataset.price;
            var lname=event.target.dataset.lname;
            // console.log(pid+"|"+lname+"|"+price);
            //2:创建url发送给服务器的地址
            var img=event.target.dataset.img;
            var url="addcart";
            var obj={pid,lname,price,img};
            //3：发送ajax请求获取
            //url是地址，params是一个固定的参数
            this.axios.get(url,{params:obj}).then(res=>{
                // console.log(res);   //服务器返回的数据res
                if(res.data.code==-1){
                    // MessageBox()功能显示一个消息对话框
                    this.$messagebox ("消息","请登陆")
                    //跳转登陆组件  $router是一个全局路由对象
                    .then(res=>{
                        this.$router.push("/login");
                    });
                    }else if(res.data.code==-2){
                        this.$messagebox("消息","添加失败");
                    }else{
                        this.$messagebox("消息","添加成功")
                    }
            })
            //4：获取服务器返回数据
            //5：-1  提示请先登陆
                // -2添加失败
                //1 添加成功
        },
        loadMore(){
            //功能一：当组件创建成功后获取第一页数据
           // 1：创建url地址
            var url="product";
            //1.1:将当前页码加一
       this.pno++;
      var obj = {pno:this.pno}
      //2:发送ajax请求获取第一页数据
       this.axios.get(url,{params:obj}).then(res=>{
        //3:将数据保存data中
        //console.log(res.data.data);
        //this.list = res.data.data;
        //数组拼接操作 
        var rows = this.list.concat(res.data.data);
       //赋值
        this.list = rows;
             })           
        }
    }
}
</script>
<style lang="scss" scoped>

//小屏幕↓↓↓↓↓↓↓↓↓↓↓↓
@media screen and (max-width:767px){
    
    .coniner{width:100%;/*align-items: center;position:relative;*/
     background:#111; color:#fff;
    .page-header{
      
        font-size:1rem; 
        text-align:center; margin-bottom:1rem;     
    font-style: normal;
    letter-spacing: 0;
        div{
            border-bottom:1px solid #ccc;
            padding-bottom: 0.5rem;
            
        }
    
    }

    .b_tt{
        position:fixed; z-index:10;width:0.55rem;height:2.1rem; right:0.1rem; background:#5959; color:#ccc; border-radius:7rem; font-size:0.25rem;
    }
    
        .tow{
            display:flex; 
       
        
            .tow_todo{ margin-top:2rem;
            display:flex;
                align-items:center;
            justify-content:center;
            width:100%;
            height:9rem;
            padding:0 .4rem;
            background:#111;
            opacity:0.9;
            flex-wrap:wrap;
           .imgtow{width:5.5rem;;height:4.5rem;margin:.8rem 0 0 0;}
           .text_tow{font-size:21px;color:#ddd;}
           .div_tow{
               display:flex;
                align-items:center;
               justify-content:space-between;
               width:6.5rem;
               height:.3rem;
               margin-bottom:0.15rem;
               span{font-size:.2rem;}
               :first-child{color:#5959;}
               :nth-child(2){color:#ccc;margin:0 -.7rem 0 .2rem; margin-left:-1rem;}
               :nth-child(3){color:#5959;}
               :nth-child(4){color:#595959;margin:0 .4rem 0 .2rem; }
               :last-child{color:#ccc;font-size:0.4rem;}
               }
            
            
           }
            .bu_tt{
                margin-bottom:1.5rem;

                
            }
        }
    
         
    .bt_tter{
        .b_t{
            background:#fff; color:#000; border-radius:1.2rem; padding: 0 7px;
        }
    }
            
    }
}
//大屏幕
@media screen and (min-width:1001px){
    .coniner{
        background:#111; color:#fff;
        display: flex;
        flex-direction: column;
        .page-header{
            font-size:1rem;
            text-align:center;  
            font-style: normal;
            letter-spacing: 0;
            padding-bottom:0.2rem;
            border-bottom:1px solid #ccc;
        }
        .b_tt{
        position:fixed; z-index:10;width:0.55rem;
        font-size:0.25rem;
        height:2.1rem; right:0.1rem; background:#5959; color:#ccc; border-radius:7rem; 
        }
    
        //中间内容
        .ti{ display: flex; 
        flex-wrap: wrap;
                margin-top:0.3rem;
                background:#111;
                
                .tow_todo{
                    display: flex;
               
                    flex-direction: column;
                    padding:0.2rem; 
                    margin:0.4rem;
                    // 图片
                    .post-inner{
                        display: flex;
                       
                        width:3.5rem; height:3.5rem;;
                        a{
                               width:100%;
                            height:100%;
                            .imgtow{
                            width:100%;
                            height:100%;
                        }
                        }
                        
                    }
                    // 文字
                    .text_tow{
                        font-size:0.2rem;color:#ddd;
                         width:350px;
                         span{
                                color:#5959;
                            }
                     }

                    .div_tow{
                        font-size:0.2rem;
                        display:flex;
                       
                        span{font:.1rem 'HanHei';margin:0}
                        :first-child{color:#5959;}
                        :nth-child(2){color:#ccc;margin:0 .1rem 0 .2rem;}
                        :nth-child(3){color:#5959;}
                        :nth-child(4){color:#595959;margin:0 .1rem 0 .1rem;}
                        :last-child{color:#ccc;}
                    }
                }
            } 
        }
         
        //底部内容
              // 底部内容
            .bu_tter{
                
                width:100%;
               margin-bottom:0.1rem;
               margin-left:6rem;
                .b_t{
                    
                    width:2rem;
                   background:rgba(10, 138, 110, 0.6);
                   color:#fff;
                   border-radius: 17px; 
                }
            }
    }

//中屏幕
@media screen and (min-width:768px) and (max-width:1000px){
     .coniner{
        background:#111; color:#fff;
       
        display: flex;
        flex-direction: column;
        // position: relative;
        .page-header{
            //  align-self: flex-start;
            font-size:1rem;
            text-align:center; ;     
            font-style: normal;
            letter-spacing: 0;
            z-index:6;
            border-bottom:1px solid #ccc;
            width:805;
        }

        .b_tt{
        position:fixed; z-index:10;width:0.50rem;height:1.5rem; right:0.1rem; background:#5959; color:#ccc; border-radius:7rem; 
        }
       
           //主页内容
        .ti{
            display: flex;
            flex-wrap: wrap;
            .tow{
                
                background:#111;
                display:flex; 
                .tow_todo{
                    display: flex;
                    justify-content: center;
                    flex-direction: column;
                    margin:0.6rem; 
                    // 图片
                    .post-inner{
                        display: flex;
                        justify-content: center;
                        margin:0;
                        width:3.3rem; height:3.3rem;
                        a{
                          width:100%;
                            height:100%;
                              .imgtow{
                            width:100%;
                            height:100%;
                        }  
                        }
                       
                    }
                    // 文字
                    .text_tow{
                        font-size:0.2rem;color:#ddd;
                         width:350px;
                         span{
                                color:#5959;
                            }
                     }

                    .div_tow{
                        font-size:0.2rem;
                        display:flex;
                        height:.2rem;
                        span{font:.1rem 'HanHei';margin:0}
                        :first-child{color:#5959;}
                        :nth-child(2){color:#ccc;margin:0 .1rem 0 .2rem;}
                        :nth-child(3){color:#5959;}
                        :nth-child(4){color:#595959;margin:0 .1rem 0 .1rem;}
                        :last-child{color:#ccc;}
                    }
                }
            }
        }
        // 底部内容
            .bu_tter{
                width:2rem;
               margin-bottom:0.1rem;
               margin-left:4rem;
                .b_t{
                   background:#5959;
                   color:#fff;
                   border-radius: 17px; 
                }
            }
        
           
    
     }
}
    
   
</style>