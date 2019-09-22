<template >
<div class="coniner">
    <div class="d1">
    <!--子组件-->
      <div id="d2">
        <a><img src="../../assets/sirui_20190531.gif" class="imgStyle"/></a>
      </div>      
    </div>
    <!--楼一 热门推荐-->
    <div class="d1_1">
      <div class="d2_2">
        <h3 class="titles">热门推荐</h3>
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
         <!--点-->
        <div class="dian">
           <div class="dian_s" active><span></span></div>
           <div class="dian_s"><span></span></div>
           <div class="dian_s"><span></span></div>
           <div class="dian_s"><span></span></div>
           <div class="dian_s"><span></span></div>
           <div class="dian_s"><span></span></div> 
           <div class="dian_s"><span></span></div> 
           <div class="dian_s"><span></span></div> 
        </div>
      </div>
    </div>
    <!--第2部分-->
    <div class="d1">
    <!--子-->
      <div id="d2">
        <a><img src="../../assets/getlz_banner_970x90.jpg" class="imgStyle"/></a>
      </div>      
    </div>
    <!--楼二-->
    <div class="tow" v-for="(item,index) of list" :key="index">
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
    </div>
    <!--分页-->
    <div id="app" class="fen">
          <ul @click="change"> 
            <li :class="pno==1?'disabled':''">上一页</li>
            <li  v-for="i of pcount" :key="i" :class="pno==i?'active':''" :data-i="i">{{i}}</li>
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
 .coniner{width:100%;/*align-items: center;position:relative;*/
    .d1{
       display:flex;
       align-items:center;
       // justify-content:space-between;
       padding:.8rem 0;
       background:#000;
       #d2{
        display:flex;
        align-items:center;
        width:100%;
        height:.7rem;
        padding:0 .4rem;
        
        .imgStyle{   
        width:100%;
        height:.8rem; 
        }
      }
    };
    /*楼一 */
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
               height:.4rem;
               span{font-size:.3rem;};
               :nth-child(1){color:#595959;}
               :nth-child(3){color:#595959;margin:0 0 0 .4rem;}
               :nth-child(2){color:#ccc;}
               :nth-child(4){color:#ccc;}
               };
            //    点
            .dian{width:6.5rem;
                height:1rem;display:flex;
                justify-content:center;
                // align-items:center;
                .dian_s{
                    // border-radius:1rem;
                    width:.2rem;
                    height:.6rem;
                    padding:0 .1rem;
                    // background:#ccc;
                    display:flex;
                    align-items:center;
                    span{
                        width:.1rem;height:.1rem;background:#595959;border-radius:100%;
                        }
                    }
                }
              
        }
        
    };
    // 楼二 
    .tow{
        display:flex;
        // align-items:center;
        .tow_todo{
           display:flex;
            align-items:center;
           justify-content:center;
           width:100%;
           height:9rem;
           padding:0 .4rem;
           background:#111;
           opacity:0.9;
           flex-wrap:wrap;
           .imgtow{width:100%;height:5rem;margin:.8rem 0 0 0;}
           .text_tow{font-size:21px;color:#ddd;}
           .div_tow{
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
              // cursor:pointer;
     
            }
            .active{
                background:#ddd;color:#000;}
              .disabled{/*overflow:hidden;*/opacity:0;}
              }    
      }
}   
    

</style>