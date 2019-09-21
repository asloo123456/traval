<template>
  <div class="top">
    <!-- 大屏和超大屏 -->
    <div class="top1">
      <!-- 第一层 -->
      <div class="top1_center1">
        <!-- 左边 -->
        <div>
          <a href="#" style="border-radius: 2px;background-color: #474747;color: #eee;padding: 6px 16px;">
            <span>RSS</span>
          </a>
        </div>
        <!-- 中间logo -->
        <div>
          <a href="#">
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
        <!-- 左边三条横杠 -->
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