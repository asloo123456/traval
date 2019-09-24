<template >
<div class="coniner">
    <!--标题图片-->
    <div class="d1">
      <div id="d2" class="d2_top">
        <a><img src="../../assets/sirui_20190531.gif" class="imgStyle"/></a>
      </div>      
    </div>
    <!--楼一 热门推荐-->
    <div class="d1_1">
      <div class="d2_2">
        <h3 class="titles">热   门   推   荐</h3>
        <div class="s11">
            <div class="s1">
            <div class="imgf"><a href="#"><img src="../../assets/mcj02.jpg"/></a></div>
            
            <!--文字-->
            <div class="texts">
              <h2>4800万超广角三摄+全视屏华为畅享10 Plus“新实力派”强悍登场</h2>
            </div>
            <div class="fonts">
              <span>发表于</span>
              <span>2019年9月5日</span>
              <span>BY</span>
              <span>义天天</span>
            </div>
            </div>
            <!--louyi  22222-->
            <div class="s1s">
            <div class="imgs"><a href="#"><img src="../../assets/mcj02.jpg"/></a></div>
            
            <!--文字-->
            <div class="textss">
              <h2>4800万超广角三摄+全视屏华为畅享10 Plus“新实力派”强悍登场</h2>
            </div>
            <div class="fontss">
              <span>发表于</span>
              <span>2019年9月5日</span>
              <span>BY</span>
              <span>义天天</span>
            </div>
            </div>
            <!--louyi  333-->
            <div class="s1s">
            <div class="imgs"><a href="#"><img src="../../assets/mcj02.jpg"/></a></div>
            
            <!--文字-->
            <div class="textss">
              <h2>4800万超广角三摄+全视屏华为畅享10 Plus“新实力派”强悍登场</h2>
            </div>
            <div class="fontss">
              <span>发表于</span>
              <span>2019年9月5日</span>
              <span>BY</span>
              <span>义天天</span>
            </div>
            </div>
        </div>
        
        
         <!--点-->
        <div class="dian">
           <div class="dian_s1"><span class="sa"></span></div>
           <div class="dian_s2"><span class="sa"></span></div>
           <div class="dian_s3"><span class="sa"></span></div>
           <div class="dian_s4"><span class="sa"></span></div>
           <div class="dian_s5"><span class="sa"></span></div>
           <div class="dian_s6"><span class="sa"></span></div> 
            
        </div>
        
      </div>
    </div>
    <!--标题图片-->
    <div class="d1">
      <div id="d2" class="d2_top">
        <a><img src="../../assets/getlz_banner_970x90.jpg" class="imgStyle"/></a>
      </div>      
    </div>

    <!--楼二图片点的下方-->
    <div class="tow" v-for="(item,index) of list" :key="index">
      <div class="tows">
        <div class="tow_todo" >
            <a><img :src="require(`../../assets/${item.img}`)" class="imgtow" /></a>
            <h2 class="text_tow">
              {{item.title}}
            </h2>
            <div class="div_tow">
              <span>发表于</span>
              <span>{{item.times}}</span>
              <span>无评论</span>
              <span>BY</span>
              <span>{{item.writer}}</span>
            </div>
        </div> 
        <!--大屏.xiao图片-->
        <div class="tow_todos" >
            <a><img :src="require(`../../assets/${item.img}`)" class="imgtows" /></a>
            <h2 class="text_tows">
              {{item.title}}
            </h2>
            <div class="div_tows">
              <span>发表于</span>
              <span>{{item.times}}</span>
              <span>无评论</span>
              <span>BY</span>
              <span>{{item.writer}}</span>
            </div>
        </div> 
        <!--大屏.xiao图片-->
        <div class="tow_todos" >
            <a><img :src="require(`../../assets/${item.img}`)" class="imgtows" /></a>
            <h2 class="text_tows">
              {{item.title}}
            </h2>
            <div class="div_tows">
              <span>发表于</span>
              <span>{{item.times}}</span>
              <span>无评论</span>
              <span>BY</span>
              <span>{{item.writer}}</span>
            </div>
        </div>  
        </div>   
    </div>
    <!--分页-->
    <div id="app" class="fen">
          <ul @click="change"> 
            <li :class="pno==1?'disabled':''">上一页</li>
            <li  v-for="i of pcount" :key="i" :class="pno==i?'active':''" :data-i="i" ref="li">{{i}}</li>
            <li :class="pno==pcount?'disabled':''">下一页</li>
          </ul>
    </div>
</div>    
</template>
<script>
export default {
  data() {
    return {
      pcount:3,
      pno:1,
      list:[]
    }
  },
  created() {
     this.loadMore();
   },
   updated() {
     this.loadMore();
    
   },
  methods:{
    change(e){
      if(e.target.nodeName=="LI"){
        switch(e.target.innerHTML){
          case "上一页":
          if(this.pno>1){
            this.pno--;
            window.scroll(0,0);
          }
          break;
          case "下一页":
          if(this.pno<this.pcount){
            this.pno++;
             window.scroll(0,0);
          }
          break;
          default:
          this.pno=parseInt(e.target.innerHTML)
        }
      }
    },
    loadMore(){
    //功能一:当组件创建成功后获取第一页数据 
    //1:创建url地址
    var url = "product";
    //1.1:将当前页码加一
    var pno=this.pno
    var obj = {pno}
    //2:发送ajax请求获取第一页数据
    this.axios.get(url,{params:obj}).then(res=>{
      //3:将数据保存data中
      //console.log(res.data.data);
      //this.list = res.data.data;
      //数组拼接操作 11:30
      this.list =res.data.data;
      //赋值
    })
    }
  },
    props:{
        // img3:{default:""},
        // title:{type:String,default:""},
    }
}
</script>
<style lang="scss" scoped>
.coniner{/*align-items: center;position:relative;*/

 // 小屏幕↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓
 @media screen and (max-width:767px){
    .d1{
       display:flex;
       align-items:center;
       // justify-content:space-between;
       padding:.8rem 0;
       background:#000;
       #d2{
        display:flex;
        justify-content:center;
        align-items:center;
        width:100%;
        height:.8rem;
        padding:0 .4rem;
        .imgStyle{   
        width:100%;
        height:.8rem; 
        }
      }
     };
  // 楼一~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   .d1_1{
        display:flex;
        // position:relative;
        .d2_2{
            display:flex;
            width:100%;
            height:12rem;
            padding:0 .4rem;
            background:#111;
            flex-wrap:wrap;
            justify-content:center;
            opacity:0.9;
           .titles{width:100%;height:.3rem;font-size:.2rem;color:#fff;margin:.8rem 0 0px 0;text-align:center;};
           .imgs{display:none;};
           .fontss{display:none;};
           .textss{display:none;}
          .imgf{
        //    bottom:10%;
        //    a{width:6.5rem;height:6.5rem;}
           a img{width:6.5rem;height:6.5rem;}
           };
           .texts{//bottom:10%;
          //  display:flex;justify-content:center;
             h2{color:#ddd;margin:0;font-size:.5rem;}
           };
           .fonts{
               display:flex;
               width:6.5rem;
               height:.5rem;
               span{font-size:.3rem;};
               :nth-child(1){color:#595959;}
               :nth-child(3){color:#595959;margin:0 0 0 .4rem;padding-top:.2rem}
               :nth-child(2){color:#ccc;}
               :nth-child(4){color:#ccc;}
               };
            //    点
            .dian{width:6.5rem;
                // height:4rem;
                height:1rem;display:flex;
                justify-content:center;
                align-items:center;
                .dian_s1,.dian_s2,.dian_s3,.dian_s4,.dian_s5,.dian_s6{
                    // border-radius:1rem;
                    width:.2rem;
                    height:.6rem;
                    padding:0 .1rem;
                    // background:#ccc;
                    display:flex;
                    align-items:center;
                    .sa{
                        width:.15rem;height:.15rem;
                        border-radius:50%;
                        margin:0;
                        background-color:#595959;
                        // border:1px solid #fff;
                        &:hover{background-color:#fff}
                        }
                    }
                }
              
        }
        
    };
    // 楼二 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    .tow{
        display:flex;
         
        // align-items:center;
        .tows{
          display:flex;
          width:100%;
          height:9rem;
        .tow_todo{
           display:flex;
            align-items:center;
           justify-content:center;
           width:8rem;
         
           padding:0 .3rem;
           background:#111;
           opacity:0.9;
           flex-wrap:wrap;
           .imgtow{width:6rem;height:5rem;margin:.8rem 0 0 0;}
           .text_tow{font-size:21px;color:#ddd;margin:0;width:6rem;}
           .div_tow{
               display:flex;
                align-items:center;
              //  justify-content:center;
               width:6rem;
               height:.3rem;
            //    margin:0px 0;
               span{font-size:.2rem;margin:0;}
               :first-child{color:#5959;}
               :nth-child(2){color:#ccc;margin:0 .4rem 0 .2rem;}
               :nth-child(3){color:#ccc;}
               :nth-child(4){color:#595959;margin:0 .4rem 0 .2rem;}
               :last-child{color:#ccc;}
           }
        };
        .tow_todos{
           display:none;
            align-items:center;
           justify-content:center;
           width:100%;
           height:9rem;
           padding:0 .3rem;
           background:#111;
           opacity:0.9;
           flex-wrap:wrap;
           .imgtows{width:100%;height:5rem;margin:.8rem 0 0 0;}
           .text_tows{font-size:21px;color:#ddd;}
           .div_tows{
               display:flex;
                align-items:center;
               justify-content:center;
               width:6.5rem;
               height:.3rem;
            //    margin:0px 0;
               span{font-size:.2rem;}
               :first-child{color:#5959;}
               :nth-child(2){color:#ccc;margin:0 .4rem 0 .2rem;}
               :nth-child(3){color:#ccc;}
               :nth-child(4){color:#595959;margin:0 .4rem 0 .2rem;}
               :last-child{color:#ccc;}
           }
        };
        };   
    };
    // 分页 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
     .fen{
          display:flex;
        ul{
          list-style:none;
          margin:0;
          display:flex;
          align-items:center;
          justify-content:center;
          background:#111;
          opacity:0.9;
          width:100%;
          height:.5rem;
          padding:.6rem .4rem;

            li{
              font-size:.2rem;color:#fff;
              padding:0 .1rem ;
              // cursor:pointer;
     
            }
            .active{
                background:#ddd;color:#000;}
              .disabled{/*overflow:hidden;*/opacity:0;}
              }    
      }
};   


 // 大屏幕↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓
@media screen and (min-width: 1001px)  {
      .d1{
        background:#000;
        display:flex;
      .d2_top{
        width:1080px;
        height:96.48px;
        margin:0 auto;padding:48px 0;
          img{width:1080px;height:96.48px;}
      }
      };
      // 楼一
       .d1_1{
        display:flex;
         background:#111;
         width:100%;
          height:5rem;
          padding:52px 0;
        // position:relative;
        .d2_2{
            display:flex;
            align-items:center;
            width:100%;
            height:500px;
            justify-content:space-between;
            margin:0 .4rem;
            // padding:0 .4rem;
            flex-wrap:wrap;
            
            opacity:0.9;
           .titles{width:100%;height:.3rem;font:.1rem 'HanHei SC';color:#fff;margin-bottom:.5rem ;text-align:center;};
           .s11{
             display:flex;
             justify-content:space-around;
             width:100%;
             height:400px;
           .s1{
             width:3rem;
             height:4rem;
            //  justify-content:space-around;
            // text-align:center;
            

          .imgf{
            width:33.33%;
            
        //    bottom:10%;
        //    a{width:6.5rem;height:6.5rem;}
           a img{width:3rem;height:3rem;}
           };
           .texts{//bottom:10%;
           
          //  display:flex;justify-content:center;
             h2{color:#ddd;margin:0;font-size:.1rem;}
           };
           .fonts{
               display:flex;
               width:300px;
               height:18px;
               margin-top:.1rem;
               span{font-size:.07rem;margin:0};
               :nth-child(1){color:#595959;margin-right:.1rem}
               :nth-child(3){color:#595959;margin:0 .1rem 0 .4rem;}
               :nth-child(2){color:#ccc;}
               :nth-child(4){color:#ccc;}
               };
            };
            .s1s{
               width:3rem;
               height:4rem;
               margin-left:.2rem;
               .imgs{
              width:33.33%;
              a img{width:3rem;height:3rem;}
            };
            .textss{
              h2{color:#ddd;margin:0;font-size:.1rem;}
            };
            .fontss{
               display:flex;
               width:300px;
               height:18px;
               margin-top:.1rem;
               span{font-size:.07rem;margin:0};
               :nth-child(1){color:#595959;margin-right:.1rem}
               :nth-child(3){color:#595959;margin:0 .1rem 0 .4rem;}
               :nth-child(2){color:#ccc;}
               :nth-child(4){color:#ccc;}
               };
            } 
            };
            //    点
            .dian{width:100%;
                height:.2rem;display:flex;
                justify-content:center;
                align-items:center;
                .dian_s3,.dian_s4,.dian_s5,.dian_s6,{display:none;}
                .dian_s1,.dian_s2{
                    // border-radius:1rem;
                    width:.2rem;
                    height:.6rem;
                    padding:0;
                    // background:#ccc;
                    display:flex;
                    align-items:center;
                    .sa{
                        width:.08rem;height:.08rem;
                        border-radius:50%;
                        margin:0;
                        background-color:#595959;
                        // border:1px solid #fff;
                        &:hover{background-color:#fff}
                        }
                    }
                }
           
        }
        
    };
    // 楼二
    .tow{
        display:flex;
        background:#111;
        // padding:0 .2rem;
        
        .tows{
          display:flex;
          width:100%;
          justify-content:space-around;
          margin:0 .2rem;
          // align-items:center;
        .tow_todo{
          //  display:flex;
            align-items:center;
          //  justify-content:center;
           width:300px;
           height:6rem;
          //  margin:0 .08rem;
           opacity:0.9;
           flex-wrap:wrap;
           a{height:300px;display:block;margin:.8rem 0 0 0;}
           .imgtow{width:300px;height:300px;cursor:pointer;}
           .text_tow{font-size:21px;color:#ddd;width:300px;}
           .div_tow{
               display:flex;
                align-items:center;
              //  justify-content:center;
               width:100%;
               height:.3rem;
            //    margin:0px 0;
               span{font:.1rem 'HanHei';margin:0}
               :first-child{color:#5959;}
               :nth-child(2){color:#ccc;margin:0 .1rem 0 .15rem;}
               :nth-child(3){color:#ccc;}
               :nth-child(4){color:#595959;margin:0 .1rem 0 .1rem;}
               :last-child{color:#ccc;}
           }
        };
        .tow_todos{
          //  display:flex;
            align-items:center;
          //  justify-content:center;
           width:300px;
           height:6rem;
           margin-left:.2rem;
           opacity:0.9;
           flex-wrap:wrap;
           a{height:300px;display:block;margin:.8rem 0 0 0;}
           .imgtows{width:300px;height:300px;cursor:pointer;}
           .text_tows{font-size:21px;color:#ddd;width:300px;}
           .div_tows{
               display:flex;
                align-items:center;
              //  justify-content:center;
               width:350px;
               height:.3rem;
            //    margin:0px 0;
               span{font:.1rem 'HanHei';margin:0}
               :first-child{color:#5959;}
               :nth-child(2){color:#ccc;margin:0 .1rem 0 .15rem;}
               :nth-child(3){color:#ccc;}
               :nth-child(4){color:#595959;margin:0 .1rem 0 .1rem;}
               :last-child{color:#ccc;}
           }
        };    
    };
      
  };
  // 分页  
    .fen{
          display:flex;
        ul{
          list-style:none;
          margin:0;
          display:flex;
          align-items:center;
          justify-content:center;
          background:#111;
          opacity:0.9;
          width:100%;
          height:.5rem;
          padding:.6rem .4rem;
            li{
              font-size:.2rem;color:#fff;
              padding:0 .1rem ;
              cursor:pointer;
              // cursor:pointer;
     
            }
            .active{background:#aaa;color:#000;}
            .disabled{/*overflow:hidden;*/opacity:0;}
          }    
      };
};
   

    // 中屏幕↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓
@media screen and (max-width: 1000px) and (min-width: 767px){
     .d1{
       display:flex;
       align-items:center;
       // justify-content:space-between;
       padding:.8rem 0;
       background:#000;
       #d2{
        display:flex;
        justify-content:center;
        align-items:center;
        width:100%;
        height:.8rem;
        padding:0 .4rem;
        .imgStyle{   
        width:100%;
        height:.8rem; 
        }
      }
       };
     // 楼一
       .d1_1{
        display:flex;
         background:#111;
         width:100%;
          height:6rem;
          padding:52px 0;
          padding-top:0;
        // position:relative;
        .d2_2{
            display:flex;
            align-items:center;
            width:100%;
            height:6rem;
            justify-content:space-between;
            margin:0 .1rem;
            // padding:0 .6rem;
            flex-wrap:wrap;
            
            opacity:0.9;
           .titles{width:100%;height:.3rem;font:.1rem 'HanHei SC';color:#fff;margin-bottom:.5rem ;text-align:center;};
           .s11{
             display:flex;
             justify-content:space-between;
             width:100%;
             height:5rem;
            //  padding:0 .15rem;
             .s1{display:none;}
           .s1s{
             width:3.5rem;
             height:5rem;
             margin:0 .1rem;
            //  margin:0 0 0 .1rem;
            // text-align:center;
            .imgs{
              width:50%;
              a img{width:3.5rem;height:3.5rem;}
            };
            .textss{
              width:3.5rem;
              h2{color:#ddd;margin:0;font-size:.3rem;}
            };
            .fontss{
               display:flex;
               width:300px;
               height:18px;
               margin-top:.15rem;
               span{font-size:.07rem;margin:0};
               :nth-child(1){color:#595959;margin-right:.1rem}
               :nth-child(3){color:#595959;margin:0 .1rem 0 .4rem;}
               :nth-child(2){color:#ccc;}
               :nth-child(4){color:#ccc;}
               };
           
           
            }; 
            };
            //    点
            .dian{width:100%;
                height:.2rem;display:flex;
                justify-content:center;
                align-items:center;
                .dian_s4,.dian_s5,.dian_s6,{display:none;}
                .dian_s1,.dian_s2,.dian_s3{
                    // border-radius:1rem;
                    width:.2rem;
                    height:.6rem;
                    padding:0;
                    // background:#ccc;
                    display:flex;
                    align-items:center;
                    .sa{
                        width:.08rem;height:.08rem;
                        border-radius:50%;
                        margin:0;
                        background-color:#595959;
                        // border:1px solid #fff;
                        &:hover{background-color:#fff}
                        }
                    }
                }
           
        }
        
     };
    // 楼二
    .tow{
        display:flex;
        background:#111;
        justify-content:center;
        // align-items:center;
        .tows{
          display:flex;
          justify-content:space-around;
          width:100%;
        .tow_todo{
           display:none;
            align-items:center;
          //  justify-content:center;
           width:33.33%;
           height:6rem;
           margin:0 .4rem;
           opacity:0.9;
           flex-wrap:wrap;
           a{height:300px;display:block;margin:.8rem 0 0 0;}
           .imgtow{width:100%;height:100%;}
           .text_tow{font-size:21px;color:#ddd;}
           .div_tow{
               display:flex;
                align-items:center;
              //  justify-content:center;
               width:100%;
               height:.3rem;
            //    margin:0px 0;
               span{font:.1rem 'HanHei';margin:0}
               :first-child{color:#5959;}
               :nth-child(2){color:#ccc;margin:0 .2rem 0 .2rem;}
               :nth-child(3){color:#ccc;}
               :nth-child(4){color:#595959;margin:0 .1rem 0 .1rem;}
               :last-child{color:#ccc;}
           }
        };
        .tow_todos{
          //  display:flex;
            align-items:center;
          //  justify-content:center;
           width:360px;
           height:6rem;
          //  margin:0 .1rem;
          padding:0 .2rem;
           opacity:0.9;
           flex-wrap:wrap;
           a{height:300px;display:block;margin:.8rem 0 0 0;}
           .imgtows{width:100%;height:100%;cursor:pointer;}
           .text_tows{font-size:21px;color:#ddd;}
           .div_tows{
               display:flex;
                align-items:center;
              //  justify-content:center;
               width:100%;
               height:.4rem;
            //    margin:0px 0;
               span{font:.1rem 'HanHei';margin:0}
               :first-child{color:#5959;}
               :nth-child(2){color:#ccc;margin:0 .1rem 0 .15rem;}
               :nth-child(3){color:#ccc;}
               :nth-child(4){color:#595959;margin:0 .1rem 0 .1rem;}
               :last-child{color:#ccc;}
           }
        }; 
        };   
    };
    // 分页
    .fen{
          display:flex;
        ul{
          list-style:none;
          margin:0;
          display:flex;
          align-items:center;
          justify-content:center;
          background:#111;
          opacity:0.9;
          width:100%;
          height:.5rem;
          padding:.6rem .4rem;

            li{
              font-size:.2rem;color:#fff;
              padding:0 .1rem ;
              cursor:pointer;
              // cursor:pointer;
     
            }
            .active{
                background:#aaa;color:#000;}
              .disabled{/*overflow:hidden;*/opacity:0;}
              }    
      };
};
};
</style>