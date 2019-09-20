<template>
  <div class="top">
    <div class="top1">

    </div>
    <div class="top2">

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
    padding-right: 20px;
    padding-left: 20px;
    margin-right: auto;
    margin-left: auto;
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
    .top{
      max-width: 1080px;
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
    .top{
      max-width: 1000px;
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
    .top{
      max-width: 720px;
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
    .top1{
      display: none;
    }
    .top2{
      display: flex;
    }
    
  }
</style>