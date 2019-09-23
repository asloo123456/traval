<template>
  <div class="top">
    <!-- 大屏和超大屏 -->
    <div class="top1"  v-show="my_show" @scroll="sroll">
      <!-- 第一层 -->
      <div class="top1_center1">
        <!-- 左边 -->
        <div style="display: flex;flex-direction: column;justify-content: center;">
          <div class="overflow">
            <a href="#">
              <span>RSS<img src="../../assets/wifi.png" alt=""></span>
            </a>
          </div>
        </div>
        <!-- 中间logo -->
        <div style="display: flex;flex-direction: column;justify-content: center;">
          <a class="top_logo" href="#">
            <img src="../../assets/new_fotomen_logo2.png" alt="">
          </a>
        </div>
        <!-- 右边放大镜 -->
        <div style="display: flex;flex-direction: column;justify-content: center;">
          <a style="width:18px;height:27px;padding:7px 0;margin-left:14px;display: flex;flex-direction: column;justify-content: center;" href="#">
            <img style="width:18PX;height:18PX;" src="../../assets/sou(1).png" alt="">
          </a>
        </div>
      </div>
      <!-- 第二层 -->
      <div class="top1_center2">
        <!-- 右边三条横杠 -->
        <div style="display: flex;flex-direction: column;justify-content: center;">
          <button class="nav-mobile-button">
            <span class="sr-only"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <!-- 右边 -->
          <div></div>
        </div>
        <!-- 中间导航栏 -->
        <div style="display: flex;justify-content:space-between;">
          <ul style="display: flex;flex-wrap: wrap;margin: 0;padding: 0;list-style: none;">
            <li class="top_ul_li-item" style="display: flex;flex-direction: column;justify-content: center;">
              <a href="#">首页</a>
            </li>
            <li class="top_ul_li-item li-item display" style="display: flex;flex-direction: column;justify-content: center;position: relative;">
              <a href="#">新闻<img src="../../assets/arrow-botton.png" alt=""></a>
              <div style="position: absolute;top:50px;left:0px;">
                <ul>
                  <li><a href="#">展讯</a></li>
                  <li><a href="#">事件</a></li>
                  <li><a href="#">摄论</a></li>
                  <li><a href="#">史话</a></li>
                </ul>
              </div>
            </li>
            <li class="top_ul_li-item li-item display" style="display: flex;flex-direction: column;justify-content: center;position: relative;">
              <a href="#">观片<img src="../../assets/arrow-botton.png" alt=""></a>
              <div style="position: absolute;top:50px;left:0px;">
                <ul>
                  <li><a href="#">人像</a></li>
                  <li><a href="#">纪实</a></li>
                  <li><a href="#">生活</a></li>
                  <li><a href="#">风光</a></li>
                  <li><a href="#">艺术</a></li>
                  <li><a href="#">胶片</a></li>
                  <li><a href="#">静物</a></li>
                  <li><a href="#">黑白</a></li>
                  <li><a href="#">手机摄影</a></li>
                </ul>
              </div>
            </li>
            <li class="top_ul_li-item li-item display" style="display: flex;flex-direction: column;justify-content: center;position: relative;">
              <a href="#">攻略<img src="../../assets/arrow-botton.png" alt=""></a>
              <div style="position: absolute;top:50px;left:0px;">
                <ul>
                  <li><a href="#">零基础</a></li>
                  <li><a href="#">前期</a></li>
                  <li><a href="#">后期</a></li>
                  <li><a href="#">行摄</a></li>
                </ul>
              </div>
            </li>
            <li class="top_ul_li-item li-item display" style="display: flex;flex-direction: column;justify-content: center;position: relative;">
              <a href="#">装备<img src="../../assets/arrow-botton.png" alt=""></a>
              <div style="position: absolute;top:50px;left:0px;">
                <ul>
                  <li><a href="#">快递</a></li>
                  <li><a href="#">器材</a></li>
                  <li><a href="#">户外</a></li>
                  <li><a href="#">座驾</a></li>
                  <li><a href="#">编辑推荐</a></li>
                </ul>
              </div>
            </li>
            <li class="top_ul_li-item" style="display: flex;flex-direction: column;justify-content: center;">
              <a href="#">专题</a>
            </li>
            <li class="top_ul_li-item" style="display: flex;flex-direction: column;justify-content: center;">
              <a href="#">订阅</a>
            </li>
            <li class="top_ul_li-item" style="display: flex;flex-direction: column;justify-content: center;">
              <a href="#">商店</a>
            </li>
            <li class="top_ul_li-item li-item display" style="display: flex;flex-direction: column;justify-content: center;position: relative;">
              <a href="#">行摄<img src="../../assets/arrow-botton.png" alt=""></a>
              <div style="position: absolute;top:50px;left:0px;">
                <ul>
                  <li><a href="#">作品</a></li>
                  <li><a href="#">杂志版面</a></li>
                </ul>
              </div>
            </li>
            <li class="top_ul_li-item" style="display: flex;flex-direction: column;justify-content: center;">
              <a href="#">鱼眼</a>
            </li>
            <li class="top_ul_li-item" style="display: flex;flex-direction: column;justify-content: center;">
              <a href="#">影像讲堂</a>
            </li>
          </ul>
        </div>
        <!-- 右边放大镜 -->
        <div style="visibility: hidden;">
          <a style="width:18px;height:27px;padding:7px 0;margin-left:14px;display: flex;flex-direction: column;justify-content: center;" href="#">
            <img style="width:18PX;height:18PX;" src="../../assets/sou(1).png" alt="">
          </a>
        </div>
      </div>
    </div>
    <!-- 中屏和小屏 -->
    <div class="top2">
      <!-- 左边三条横杠 -->
      <div style="display: flex;flex-direction: column;justify-content: center;">
        <button class="nav-mobile-button">
          <span class="sr-only"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
      </div>
      <!-- fotomen -->
      <div style="display: flex;flex-direction: column;justify-content: center;">
        <a href="#" class="fotomen">FOTOMEN</a>
      </div>
      <!-- 右边放大镜 -->
      <div style="display: flex;flex-direction: column;justify-content: center;">
        <a style="width:18px;height:27px;padding:7px 0;margin-left:14px;display: flex;flex-direction: column;justify-content: center;" href="#">
          <img style="width:18PX;height:18PX;" src="../../assets/sou(1).png" alt="">
        </a>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      my_show:false,
    }
  },
  methods: {
    sroll(){

      this.my_show=true
    }
  },

}
</script>
<style lang="scss" scoped>
.overflow{
  overflow: hidden;
  height: 32px;
  width: 68px;
  background-color: #474747;
  border-radius: 2px;
  a{
    span{
      display: block;
      color: #eee;
      padding: 7px 16px;
      font-size: 12px;
      font-weight: bold;
      letter-spacing: 6px;
      line-height: 1.5;
      transition: all .2s ease;
      img{
        display: block;
        padding: 14px 8px;
        height: 18px;
        width: 18px;
      }
    }
    span:hover{
      background: #141414;
      transform: translateY(-32px);
    }
  }

}

  // logo a标签
  .top_logo{
    height: 36.5px;
    width: 131px;
    display: flex;
    flex-direction: column;
    justify-content: center;
  }
  // logo图片
  .top_logo>img{
    height: 36.5px;
    width: 131px;
    transition: all .3s ease-in-out;
  }
  // 鼠标悬停logo图片旋转
  .top_logo>img:hover{
    transform:translateX(0px) rotate(360deg)  skew(0deg,0deg);
  }
  // 导航栏
  .top_ul_li-item+.top_ul_li-item{
    margin: 0 0 0 32px;
  }
  .top_ul_li-item>a{
    color: #ffffff;
    font-size: 13px;
    font-weight: 600;
  }
  .li-item>a>img{
    height: 12px;
    width: 12px;
    margin: 0 0 0 8px;
  }
  // 隐藏导航栏
  .display{
    div{
      display: none;
    }
  }
  // 悬停a标签出现导航栏
  .display:hover{
    div{
      display: inline;
      ul{
        font-size: 0px;
        list-style: none;
        background: #1e1e1e;
        border: 1px solid #1e1e1e;
        margin: 0;
        padding: 16px 0;
        li{
          box-sizing: content-box;
          margin: 0 16px;
          width: 200px;
          line-height: 1.5;
          border-bottom: 1px solid #2a2a2a;
          a{
            display: block;
            color: #ffffff;
            font-size: 14px;
            font-weight: 600;
            padding: 8px 16px;
            transition: 0.2s ease all;
          }
        }
      }
    }
  }
  // 悬停出现的导航栏中的a标签悬停效果
  .display>div>ul>li>a:hover{
    transform: translateX(10px);
  }
  .top{
    background: #111111;
    width: 100%;
    height: 3000px;
    display: block;
    box-sizing: border-box;
  }
  // 大屏和超大屏
  .top1{
    display: flex;
    flex-direction: column;
    justify-content: center;
  }
  .top1_center1,.top1_center2{
    display: flex;
    justify-content: space-between;
    border-bottom: 1px solid #232323;
  }
  .top1_center1{
    height: 120px;
  }
  .top1_center2{
    height: 50px;
  }
  // 中屏和小屏
  .top2{
    height: 49px;
    border-bottom: 1px solid #232323;
    display: flex;
    justify-content: space-between;
  }
  // 三条很杠
  span{
    margin: 0;
  }
  button{
    margin: 0;
    padding: 0;
  }
  .nav-mobile-button {
    background-color: transparent;
    border: 1px solid transparent;
    border-radius: 4px; 
    cursor: pointer;
  }
  .nav-mobile-button .sr-only {
    position: absolute;
  }
  .nav-mobile-button .icon-bar {
    display: block;
    margin: 4px 0;
    width: 22px;
    height: 2px;
    background: #ffffff;
    border-radius: 1px; 
  }
  // fotomen
  .fotomen{
    font-size: 22px;
    font-weight: 700;
    font-style: normal;
    letter-spacing: -.015em;
    line-height: 1;
    text-transform: none;
    color: #dadada;
  }
  .fotomen:hover{
    color: #ffffff;
  }
  /*超大屏幕下iframe的高度*/
  @media (min-width: 1120px) {
    .top1,.top2{
      max-width: 1080px;
      padding-right: 20px;
      padding-left: 20px;
      margin-right: auto;
      margin-left: auto;
    }
    .top1{
      display: flex;
    }
    .top2{
      display: none;
    }
  }
  /*大屏幕下iframe的高度*/ 
  @media (max-width: 1119px) and (min-width: 1020px) {
    .top1,.top2{
      max-width: 1000px;
      padding-right: 20px;
      padding-left: 20px;
      margin-right: auto;
      margin-left: auto;
    }
    .top1{
      display: none;
    }
    .top2{
      display: flex;
    }

  }
  /*中屏幕下iframe的高度*/ 
  @media (max-width: 1019px) and (min-width: 760px) {
    .top1,.top2{
      max-width: 720px;
      padding-right: 20px;
      padding-left: 20px;
      margin-right: auto;
      margin-left: auto;
    }
    .top1{
      display: none;
    }
    .top2{
      display: flex;
    }

  }
  /*小屏幕下iframe的高度*/ 
  @media (max-width: 759px) {
    .top1,.top2{
      padding-right: 20px;
      padding-left: 20px;
      margin-right: auto;
      margin-left: auto;
    }
    .top1{
      display: none;
    }
    .top2{
      display: flex;
    }
    
  }
</style>