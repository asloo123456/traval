<template>
  <div class="top">
    <div class="top1">

    </div>
    <div class="top2">
      <button class="nav-mobile-button">
        <span class="sr-only"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <div></div>
      <div>
        <img src="../../assets/sou(1).png" alt="">
      </div>
    </div>

  </div>
</template>
<script>
export default {
  
}
</script>
<style lang="scss" scoped>
  .nav-mobile-button {
    position: relative;
    float: right;
    background-color: transparent;
    background-image: none;
    border: 1px solid transparent;
    border-radius: 4px; 
  }
  .nav-mobile-button .sr-only {
    position: absolute;
    width: 1px;
    height: 1px;
    padding: 0;
    margin: -1px;
    overflow: hidden;
    clip: rect(0, 0, 0, 0);
    border: 0; 
  }
  .nav-mobile-button .icon-bar {
    display: block;
    margin-top: 4px;
    width: 22px;
    height: 2px;
    background: #ffffff;
    border-radius: 1px; 
  }

  .top{
    background: #111111;
    width: 100%;
    display: block;
    box-sizing: border-box;
  }
  .top1{
    border-bottom: 1px solid #232323;
  }
  .top2{
    height: 49px;
    border-bottom: 1px solid #232323;
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