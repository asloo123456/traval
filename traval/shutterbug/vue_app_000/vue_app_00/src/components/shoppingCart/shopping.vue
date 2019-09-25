<template>
<div class="app" style="background:#111;">
            <!-- 第一行返回标签 -->
          
            <div class="text_size">
              <!-- 第二行文字购物车 -->
              <div  class="text_i" >购物车
                <span style="color:#ccc;">共{{list.length}}种</span>
              </div>
            </div>
            <!-- 第三行内容 -->
            <div class="shoppingMain">
                <div class="shoppingItem" v-for="(item,index) of list" :key="index" @change="selectAll">
                  <!--列表项-->
                    <!-- 最左边图片 -->
                    <div class="shoppingImg">
                        <img :src="'http://127.0.0.1:8080/'+item.img">
                    </div>
                    <!-- 中间 -->
                    <div class="itemRight">
                        <div class="tit">
                            <!-- 标题 -->
                            <p class="title">{{item.lname}}</p>
                            <!-- 删除 -->
                            <div class="ri">
                                <a  @click="deleteItem" 
                                :data-id="item.id" ><img src="../../assets/img/sc.png" alt=""></a>
                            </div>       
                        </div>

                          <div class="numberControl">
                            <!-- 数量 -->
                            <div class="a_s" >
                                   <a class="btn" @click="item.count>0?item.count--:''">-</a>
                                  <input type="text" v-model="item.count" readonly="readonly">
                                  <a class="btn"  @click="item.count++">+</a>
                            </div>
                                
                          </div>
                            <!-- 价格 -->
                          <div class="jg"><span>价格:</span> ￥{{item.price}}</div>
                            <!-- 计算当个商品的价格 -->
                          <div  class="xj">
                               <div  class="pro">
                                 <span>小计:</span> ￥{{item.count*item.price}}
                               </div>
                                
                          </div>
                          
                          <!-- 中屏大屏单选 -->
                          <div  class="dx">
                                   <input  type="checkbox"  style="width:0.25rem; height:0.25rem;" 
                                    v-model="item.cb" v-bind:checked="item.cb" @click="item.cb=!item.cb"/>
                          </div>
                      </div>
                    </div>
            </div>           
             <!--底部固定栏-->
            <div class="bottomMain">    
              <div class="btn1">
                  <div class="selectCircle"><label><input type="checkbox" v-model="isCheck" @change="select(isSelectAll)"  v-bind:checked="isSelectAll"/> </label></div>
                  <a class="bottombtn2" @click="deleteItems"><img src="../../assets/img/ljt.png" alt=""></a> 
              </div>            
              <div class="btn2">
                  <div class="num2" >共<span style="color:#5959;">{{getTotal.totalNum}}</span>种</div>
                  <button class="bottombtn1" >结算￥{{getTotal.totalPrice}}&nbsp;</button>            
              </div>
              </div>
              
</div>

</template>
<script>
export default {
    data(){
        return{
            list:[],  //当前登陆用户购物车列表
            isCheck:false
        }
    },
    created(){
        //当前组件创建成功回调函数
        this.loadMore();
    },
    methods:{
      
       // 功能七：为全选按钮绑定按钮
        selectAll(){
            // 当全选按钮状态为checked=true
            // 所有商品列表 cb=true
            // 当全选annual状态为checked=false
            // 所有商品列表 cb=false
            
            // 1：获取单曲按钮状态 true
            // 2：创建循环遍历所有属性cb值与全选状态一致

            //单选 时的判断
            var bool=this.list.every(function(value){
              return value.cb
            })
            for(var item of this.list){
              if(bool){
                this.isCheck=true;
              }else{
                this.isCheck=false;
              }
               //把全选这个状态复制给所有'
            }

            
        },
        //全选时的判断
        select(){
          for(var item of this.list){
            if(this.isCheck){
              item.cb=this.isCheck;
            }else{
              item.cb=this.isCheck;
            }
          }
        },

   

        deleteItems(){
            // 功能六：删除用户删除中多个商品
            // 1：显示确认对话框
                // confirm() 方法用于显示一个带有指定消息和 OK 及取消按钮的对话框。
            this.$messagebox.confirm("是否删除指定数据").then(res=>{ 
            // 2：创建变量保存选中id值
            var id="";  //保存多个id，可以拼进去
            // 3：创建循环遍历数组中每个元素
            for(var item of this.list){
                // 4：判断当前元素属性cb是否等于true
                if(item.cb){
                    // 5：拼接id  2，3，
                  id+=item.id+",";
                 
                }
            }
            // 6：去除字符串中最后一个逗号
            // id="2,3,4,"
            id=id.slice(0,-1);
            console.log(id);
            // 7：判断用户是否选中商品，请选择需要删除商品
            if(id==""){
                this.$toast("请选择需要删除的商品");
                return;
            }
            
            // 8：创建url 创建obj  发送ajax请求
            var url="delItems";
            var obj={id}; 
            this.axios.get(url,{params:obj}).then
            (res=>{
                    // 9：获取服务器返回数据
                    console.log(res);
                // 10：判断删除多个商品是否成功
                if(res.data.code==-1){
                    this.$toast("删除失败");
                }else{
                    this.$toast("删除成功"); 
                    // 11：刷新操作  loadMore()
                    this.loadMore();
                }
                })
         })
        },
        
        //功能五:用户点击删除按钮完成删除指定商品任务
        deleteItem(event){
        //1为按钮绑定点击事件调用deleteItem 
        //2显示确认框如果用户选 确定
        this.$messagebox.confirm("是否删除指定数据").then(res=>{
       //(3)将当前商品id传递函数
       var id = event.target.dataset.id;
       //(4)发送ajax请示完成删除任务
       var url="delItem";
       var obj={id:id};
       this.axios.get(url,{
         params:obj
       }).then(res=>{
         this.$toast("删除成功");
         this.loadMore();//刷新
       }) 
        // 5：删除成功  提示”删除成功“
        }).catch(err=>{ })
        this.loadMore();//刷新
        },
        
        loadMore(){
      //功能四:获取当前用户购物车列表
      //1:创建url请求服务器地址
      var url = "carts";
      //2:发送ajax 请求(让服务器程序完成功能)
      this.axios.get(url).then(res=>{
        if(res.data.code == -1){
         //4:如果服务器返回-1 请登录
         this.$messagebox("消息","请登录").then(res=>{
          //回调函数（用户点击确认按钮后调用函数）
          this.$router.push("/login")
         })
        }else{
         //3:获取服务器返回数据
        //  this.list = res.data.data;
        // /。添加一个新功能：为数组添加属性cb
        // 3.1：出循环遍历res.data.data中数据(顺序)
        var rows=res.data.data;
        for(var item of rows){
            //3.2：为其添加属性cb值false(顺序)
             item.cb=false;
             //3.3;为新数据复制list(顺序)
             this.list=rows;
            
        }
        }
      })
    }
        
        
    },

    //计算属性
    computed:{
			//检测是否全选
            isSelectAll:function(){
                //如果productList中每一条数据的isSelect都为true，返回true，否则返回false;
                return this.list.every(function (val) { return val.isSelect});
            },
			getTotal:function(){
				var prolist = this.list.filter(function (val) { return val.cb}),
				totalPri = 0;
				for (var i = 0,len = prolist.length; i < len; i++) {
					totalPri+=prolist[i].price*prolist[i].count;
				}
        return {totalNum:prolist.length,totalPrice:totalPri}
           this.loadMore();//刷新
      },
   
		},

  
}
</script>
<style lang="scss" scoped>
//小屏幕↓↓↓↓↓↓↓↓↓↓↓↓
@media screen and (max-width:767px){
    .app{
          margin: 0;
          padding: 0;
          width: 100%;
          background: #111;
          color:#ccc;
          span{color:#4caf50;}
          .text_size{
            .text_i{
              font-size:0.8rem;
            text-align:center; padding-top:0.8rem; padding-bottom:0.4rem;
            span{font-size:0.4rem;}
            }
           
          }
         .shoppingMain{
                width: 100%;
                height: auto;
                margin-bottom: 1rem;
            .shoppingItem{
                width: 96%;
                margin-left: 2%;
                margin-bottom: 0.25rem;
                background: #fff; color:#111;
                display: flex;
                justify-content: space-between;
                .shoppingImg{
                width: 2.5rem;
                height: 2.5rem;
                padding: 0.2rem;
                  img{
                  height: 100%;
                  width: 100%;}
                  }
                
                .itemRight{
                font-size: 0.25rem;
                width: 4rem;
                display:flex;
                flex-direction: column;
                margin-left:0.3rem;
                line-height: 2.3;
                position: relative;
                  .tit{
                    display:flex;
                    justify-content: space-between;
                    

                    .title{
                    display: -webkit-box;
                    -webkit-line-clamp: 2;
                    -webkit-box-orient: vertical;
                    overflow: hidden;
                    }
                   
                    
                  }
                  
                 .numberControl{
                          .a_s{
                            display:flex;         
                          height:0.4rem;
                          
                            a{
                                width:0.4rem;
                              line-height: 0.4rem;
                             text-align: center;
                            
                            border:1px solid #ccc;
                            background: #fff;
                            }
                           
                            input{
                            width: 0.4rem;
                            border:1px solid #ccc;
                            text-align: center;                        
                            }

                          }
                      .xj{
                        display: flex;
                        justify-content: space-between;
                      }


                      
                       //单选
                        .dx{
                          input{margin:0;  padding:0;   margin-left:0rem;   width:0.3rem; height:0.5rem; 
                        position: absolute; right:5rem;}
                        }
                    }
                    
                }
            }
            }

            //底部固定栏
      .bottomMain{
              position: fixed;
              
                width: 100%;
                height: auto;
                border: 1px #a7a5a5 solid;
                padding:0.2rem;
                bottom: 0;
                left: 0;
                background: #fff;
           
                display: flex;
              justify-content: space-between;
              height:1rem;
                .btn1{
                  display: flex;
                  justify-content: space-around;
                  border-radius: 0.1rem;
                  line-height: 1rem;
                  .bottombtn2{
                  line-height: 1rem;
                  margin-top:-0.22rem; padding-left:0.2rem;
                 }
                  .selectCircle{
                   font-size:0.4rem;
                   color:#fff;
                   
                     input{
                     width:0.2rem;height:0.2rem;       
                     }
                   }
                }
                
              .btn2{
                 line-height: 1rem;
                display: flex; 
                justify-content: space-around;
                .bottombtn1{
                width:auto;
                 margin-top:0.1rem;
                margin-right:0.5rem;
                 margin-left:0.2rem;
                height: 0.8rem;
                border: none;
                color: #fff;
                font-size: 0.4rem;
                background-color: #e26411;
                    border-radius:0.2rem;
                outline:none;
               border-color:transparent;
                box-shadow: none;
               
                }
                .num2{
                  color:#111;
                  font-size:0.5rem;

                }
              } 
    }

            .checked{
                background: #e26411;
                border: 1px solid rgba(0, 0, 0, 0)
            }
      }          
}
//中屏幕↓↓↓↓↓↓↓↓↓↓↓↓
@media screen and(min-width:768px) and (max-width:1000px){
  .app{
      margin: 0;
      padding: 0;
      width: 100%;
      background: #111;
     color:#ccc;
     //首行
      span{color:#4caf50;}
      .text_size{
        .text_i{
        font-size:0.8rem;
        text-align:center; padding-top:0.8rem; padding-bottom:0.4rem;
        span{font-size:0.4rem;}
        }    
      }
      //内容
      .shoppingMain{
         width: 100%;
          height: auto;
          margin-bottom: 1rem;
         .shoppingItem{
                width: 93%; height:95%;  
                margin-left: 2%;
                margin-bottom: 0.25rem;
                background: #fff; color:#111;
                display: flex;   
                flex-wrap: row;
                .shoppingImg{
                  margin:0.1rem 0.1rem 0.1rem 0.1rem;
                  width:2rem;height:1.8rem;
                  img{
                    width:100%;height: 100%;
                  }
                }
                .itemRight{
                    font-size:0.2rem;  display:flex;  
                    justify-content: space-between;
                  
                    text-align: center;line-height:center; 
             
                    margin-top:0.8rem;
                   margin-left:0.3rem;

                  .tit{
                      display:flex; 
                      margin-right:0.2rem;
                      
                      // 标题 
                      .title{
                       width:1.3rem;
                        margin-top:-0.06rem;
                      }
                      // 删除
                      .ri{
                        position: absolute;
                        right:0.5rem;
                        height:0.3rem; width:0.3rem;
                        margin-top:-0.55rem;
                      }

                      
                    }
                    //数量
                    .numberControl{
                      .a_s{
                         display:flex;         
                         height:0.4rem; 
                          a{
                           width:0.4rem; 
                            line-height: 0.4rem;
                            text-align: center;
                            border:1px solid #ccc;
                            background: #fff;
                          }
                          input{
                            width: 0.4rem;  
                            border:1px solid #ccc;
                            text-align: center;
                            }
                       }
                    }
                    //价格
                    .jg{
                      text-align: center;
                      display: flex;
                      justify-content: space-around;

                      span{
                        margin-left:0.2rem;
                        width:0.6rem;
                      }
                    }
                    //小计
                    .xj{
                      .pro{
                      padding-left:0.2rem;
                      }
                    }
                    //单选
                        .dx{
                           padding-left:0.4rem;
                          padding-top:0.8rem;
                         
                        }


                }
         }
         
      }
      // .shoppingImg>img{
      //   width: 100px
      // }
     //底部固定栏
     .bottomMain{
               background:#111;
                width: 100%;
                height: auto;
                border: 1px #a7a5a5 solid;
                padding:0.2rem;
               margin:0;
                display: flex;
              justify-content: space-between;
              height:1rem;
                .btn1{
                  display: flex;
                  justify-content: space-around;
                  border-radius: 0.1rem;
                  line-height: 1rem;
                  .bottombtn2{
                  line-height: 1rem;
                  margin-top:-0.22rem; padding-left:0.2rem;
                 }
                  .selectCircle{
                   font-size:0.4rem;
                   color:#111;
                   
                     input{
                     width:0.2rem;height:0.2rem;       
                     }
                   }
                }
                
              .btn2{
                 line-height: 1rem;
                display: flex; 
                justify-content: space-around;
                .bottombtn1{
                width:auto;
                 margin-top:0.1rem;
                margin-right:0.5rem;
                 margin-left:0.2rem;
                height: 0.8rem;
                border: none;
                color: #fff;
                font-size: 0.4rem;
                background-color: #e26411;
                    border-radius:0.2rem;
                outline:none;
               border-color:transparent;
                box-shadow: none;
               
                }
                .num2{
                  color:#fff;
                  font-size:0.5rem;

                }
              } 
    }
 
  }
}
//大屏幕↓↓↓↓↓↓↓↓↓↓↓↓
@media screen and (min-width:1001px){
  .app{
      margin: 0;
      padding: 0;
      width: 100%;
      background: #111;
     color:#ccc;
     //首行
      span{color:#4caf50;}
      .text_size{
        .text_i{
        font-size:0.8rem;
        text-align:center; padding-top:0.8rem; padding-bottom:0.4rem;
        span{font-size:0.4rem;}
        }    
      }
      //内容
      .shoppingMain{
         width: 100%;
          height: auto;
          margin-bottom: 1rem;
        

         .shoppingItem{
                width: 93%; height:95%;  
                margin-left: 2%;
                margin-bottom: 0.25rem;
                background: #fff; color:#111;
                display: flex;   
                flex-direction: row;
                .shoppingImg{
                  margin:0.1rem 0.1rem 0.1rem 0.1rem;
                 height:1.8rem; width:2rem;
                  img{

                    width:100%;height:100%;
                  }
                }

                .itemRight{
                    font-size:0.2rem;  display:flex;  
                    justify-content: space-between;
                 
                    text-align: center;line-height:center; 
                  
                    margin-top:0.8rem;
                   margin-left:0.3rem;

                  .tit{
                      display:flex; 
                      margin-right:0.2rem;
                      
                      // 标题 
                      .title{
                        width:3rem;
                        
                        overflow: hidden;
                       
                        margin-top:-0.001rem;
                      }
                      // 删除
                      .ri{
                        position: absolute;
                        right:1rem;
                        height:0.3rem; width:0.3rem;
                        margin-top:-0.55rem;
                      }

                      
                    }
                    //数量
                    .numberControl{
                      .a_s{
                         display:flex;         
                         height:0.4rem; 
                          a{
                           width:0.4rem; 
                            line-height: 0.4rem;
                            text-align: center;
                            border:1px solid #ccc;
                            background: #fff;
                          }
                          input{
                            width: 0.4rem;  
                             right:1rem;
                            border:1px solid #ccc;
                            text-align: center;
                            }
                       }
                    }
                    //价格
                    .jg{
                      text-align: center;
                      display: flex;
                      justify-content: space-around;
                      span{
                        margin-left:0.6rem;
                        width:0.6rem;
                      }
                    }
                    //小计
                    .xj{
                      .pro{
                        margin-left:0.6rem;
                      }
                    }

                    //单选
                        .dx{
                           padding-left:0.4rem;
                          padding-top:0.8rem;
                         
                        }




                }
         }
         
      }
      //底部固定栏
     .bottomMain{
               background:#111;
                width: 100%;
                height: auto;
                border: 1px #a7a5a5 solid;
                padding:0.2rem;
               margin:0;
                display: flex;
              justify-content: space-between;
              height:1rem;
                .btn1{
                  display: flex;
                  justify-content: space-around;
                  border-radius: 0.1rem;
                  line-height: 1rem;
                  .bottombtn2{
                  line-height: 1rem;
                  margin-top:-0.22rem; padding-left:0.2rem;
                 }
                  .selectCircle{
                   font-size:0.4rem;
                   color:#111;
                   
                     input{
                     width:0.2rem;height:0.2rem;       
                     }
                   }
                }
                
              .btn2{
                 line-height: 1rem;
                display: flex; 
                justify-content: space-around;
                .bottombtn1{
                width:auto;
                 margin-top:0.1rem;
                margin-right:0.5rem;
                 margin-left:0.2rem;
                height: 0.8rem;
                border: none;
                color: #fff;
                font-size: 0.4rem;
                background-color: #e26411;
                    border-radius:0.2rem;
                outline:none;
               border-color:transparent;
                box-shadow: none;
               
                }
                .num2{
                  color:#fff;
                  font-size:0.5rem;

                }
              } 
    }
 
  }
}
</style>