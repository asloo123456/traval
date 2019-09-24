<template>
  <div :class="show?'asideBox':'show'" >
      <div class="header"  >  
        <nav class="naver"  @click="s">
          <div><img src="../assets/img/登陆注册.svg" alt="">
          <a href="">登陆</a> |<a href="">注册</a>
          </div>
          <button type="button" class="toggle">
            <img class="img" src="../assets/img/x.svg" >
          </button>
          
        </nav>
        </div>
      <div class="offcanvas">
      <aside>
        <p class="asideMenu"></p>
        <ul class="asideMenu" >
          <li  v-for="(item,index) in menuList" :key="index" classs="c">
            <div class="oneMenu"   @click="showToggle(item,index)">
              <a href="">{{item.name}}</a>
              <img class="images" src="../assets/arrow-botton.png">
            </div>
            <ul v-show="item.isSubShow"  >
              <li v-for="(subItem,i) in item.subItems" :key="i"    >
                <a href="" class="oneMenuChild" >{{subItem.name}}</a>
                
              </li>
            </ul>
          </li>
        </ul>

        
      </aside>
      </div>
    </div>  
</template>
<script>
export default {
    data(){
      return{
        menuList:[
          {name:'首页'},
          {
            name:'新闻',      
            isSubShow:false,
            subItems:[
              {
                name:'展讯'
              },
              {
                name:'事件'
              },
              {
                name:'摄论'
              },
              {
                name:'史话'
              }
            ]
          },
          {
            name:'观片',
          
            isSubShow:false,
            subItems:[
              {
                name:'人像'
              },
              {name:'纪实'},
              {name:'生活'},
              {name:'风光'},
              {name:'艺术'},
              {name:'胶片'},
              {name:'静物'},
              {name:'黑白'},
              {name:'手机摄影'},
            ]
          },
          {
            name:'攻略',
        
            isSubShow:false,
            subItems:[
              {name:'零基础'},
              {name:'前期'},
              {name:'后期'},
                {name:'行摄'},
            ]
          },
          {
            name:'装备',
           
            isSubShow:false,
            subItems:[
               {name:'快递'},
              {name:'器材'},
              {name:'户外'},
                {name:'座架'},
              {name:'编辑推荐'},
            ]
          },
          {name:'专题'},
          {name:'订阅'},
          {name:'商店'},
          {
            name:'行摄',
            isSubShow:false,
            subItems:[
              {name:'作品'},
              {name:'杂志版面'},
            ]
          },
         {name:'鱼眼'},
         {name:'影像将堂'},
        ],
       
        show:true,
        my_class:{
          back_image:false,
        },

      }
 
    },
    methods:{
      // 点击展开折叠菜单事件
      showToggle:function(item,ind){
        this.menuList.forEach(i => {
          // 判断如果数据中的menuList[i]的show属性不等于当前数据的isSubShow属性那么menuList[i]等于false
          if (i.isSubShow !== this.menuList[ind].isSubShow) {
            i.isSubShow = false;
          }
        });
        item.isSubShow = !item.isSubShow;
        console.log(item.name)
      },
      
      
      s:function(e){
        if(e.target.nodeName=="IMG"){
         
          if(this.show==false){
              this.show=true;
          }else{
            this.show=false;
          }
        }  
      },
      
    }
  }


</script>
<style lang="scss" scoped>
  $menuBackColor:#232323;
  .back_image{
    background:url("../assets/img/right.svg") no-repeat right;
    z-index:1;
  }
 
  .show{
    width:0;  margin: 0;
            padding: 0;
            list-style: none;
            color:#bdbdbd;
            text-decoration: none;
            overflow: hidden;
  }
  .asideBox{
    font-weight: 25rem;;
    font-style: normal;
  
    letter-spacing: 0rem;
    margin:0rem; 
    transform: translate3d(320,0,0)!important;
     transition:all 0.4s ease;   list-style: none;
            color:#bdbdbd;
            text-decoration: none;
    .header{
      top:0rem; width:20rem;
      left:0rem;   
      .naver{background-color:#232323; border-bottom:0.0525rem solid  #3f3f3f;  height:3.125rem; display:flex;-webkit-box-orient:hoeizontal;  -webkit-box-direction: normal;
          flex-direction: row;
          flex-wrap:wrap;
          -webkit-box-align: center;
          align-items: center;
          -webkit-box-pack:justify;
          justify-content: space-between;
          img{margin-left:1rem; margin-bottom:-0.4rem;}
          a{font-size:1.2rem; font-weight: 500; letter-spacing: -0.0125rem;
          line-height: 0.0625rem;
           margin-left:0.3rem;
          color:#fff;    text-decoration: none; }
          }
          .toggle{opacity: 1; margin-right:1.25rem; transition: opacity 0.2s ease; padding: 0rem; font-size:1.5rem;  line-height: 0.0625rem; cursor: pointer;background:transparent; border:0; opacity: .5; 
          img{ width:1rem; height:1rem; }
          }
    
    } 
    .offcanvas{
        bottom:0;
       width: 20rem;  left:0rem;
       margin-top:-2rem;
      aside{
        background: $menuBackColor;
        overflow: auto;  
        padding:2rem;   
        .asideMenu{
          list-style: none;
           
      
          .oneMenu{
            height: 3.125rem;;
            line-height: 3.125rem;;
            border-bottom: 0.0525rem solid #3f3f3f;
            display:flex;  -webkit-box-orient:hoeizontal;  -webkit-box-direction: normal;
            flex-direction: row;
            flex-wrap:wrap;
            -webkit-box-align: center;
            align-items: center;
            -webkit-box-pack:justify;
            justify-content: space-between;
            width:100%;
            // &:focus.images{transition:1s rotateY(360deg)}
            a{
            color:#bdbdbd;
            text-decoration: none;
            
            &:hover{color:#fff;}  
            }
            .images{margin:0;width:.9rem;height:.9rem;}
            img{
              z-index:9999;
              width: 1.25rem;
              height: 1.25rem;
            background: url("../assets/img/jiantou-xia.svg")no-repeat center center; opacity: .5;
              margin: 15px 16px 15px 20px; 
              right:0;
            }
          }
          ul{
            display:block;
            padding-bottom:1rem;
            width:100%;
            margin-bottom:0;  padding-left:0;  margin-top:0;
            font-size:0.8rem;
              list-style: none;
            color:#bdbdbd;
           li{
             margin-top:1rem;
             .oneMenuChild{
              text-align:-webkit-match-parent;
            padding: 0 20px 0 60px;
            height: 40px;
            line-height: 40px;
            background: $menuBackColor;
            font-size:0.8rem;
            border-bottom: 1px solid #3f3f3f;
            border:0;
            list-style: none;
            color:#bdbdbd;
            text-decoration: none;
            &:hover{color:#fff;}
          }
           }
            
          }
          
        }
      
      
      
    }
    }

  }

</style>

