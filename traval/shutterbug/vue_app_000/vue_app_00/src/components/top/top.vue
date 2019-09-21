<template>
  <div class="top">
    <!-- 大屏和超大屏 -->
    <div class="top1">
      <!-- 第一层 -->
      <div class="top1_center1">
        <!-- 左边 -->
        <div style="display: flex;flex-direction: column;justify-content: center;">
          <a href="#" style="border-radius: 2px;background-color: #474747;color: #eee;padding: 6px 16px;display: flex;flex-direction: column;justify-content: center;">
            <span style="font-size: 12px;font-weight: 500;letter-spacing: 3px;line-height: 1.5;">RSS</span>
          </a>
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
            <li class="top_ul_li-item li-item" style="display: flex;flex-direction: column;justify-content: center;">
              <a href="#">新闻</a>
            </li>
            <li class="top_ul_li-item li-item" style="display: flex;flex-direction: column;justify-content: center;">
              <a href="#">观片</a>
            </li>
            <li class="top_ul_li-item li-item" style="display: flex;flex-direction: column;justify-content: center;">
              <a href="#">攻略</a>
            </li>
            <li class="top_ul_li-item li-item" style="display: flex;flex-direction: column;justify-content: center;">
              <a href="#">装备</a>
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
            <li class="top_ul_li-item li-item" style="display: flex;flex-direction: column;justify-content: center;">
              <a href="#">行摄</a>
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
  
}
</script>
<style lang="scss" scoped>
  .top_logo{
    height: 36.5px;
    width: 131px;
    display: flex;
    flex-direction: column;
    justify-content: center;
  }
  .top_logo>img{
    height: 36.5px;
    width: 131px;
    transition: all .3s ease-in-out;
  }
  .top_logo>img:hover{
    transform:translateX(0px) rotate(360deg)  skew(0deg,0deg);
  }
  .top_ul_li-item+.top_ul_li-item{
    margin: 0 0 0 32px;
  }
  .top_ul_li-item>a{
    color: #ffffff;
    font-size: 13px;
    font-weight: 600;
  }
  .li-item>a::after{
    margin-left: 8px;
    font-family: "Icons";
    font-size: 12px;
    content: "\e906";
  }

  .top{
    background: #111111;
    width: 100%;
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