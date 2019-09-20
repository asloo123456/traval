<template>
  <div class="top">
    
  </div>
</template>
<script>
export default {
  
}
</script>
<style lang="scss" scoped>
  .top{
    width: 100%;
    padding-right: 20px;
    padding-left: 20px;
    margin-right: auto;
    margin-left: auto;
  }
  /*超大屏幕下iframe的高度*/
  @media (min-width: 1120px) {
    .top{
      max-width: 1080px;
    }
  }
  /*大屏幕下iframe的高度*/ 
  @media (max-width: 1119px) and (min-width: 1020px) {
    .top{
      max-width: 1000px;
    }

  }
  /*中屏幕下iframe的高度*/ 
  @media (max-width: 1019px) and (min-width: 760px) {
    .top{
      max-width: 720px;
    }

  }
  /*小屏幕下iframe的高度*/ 
  @media (max-width: 759px) {
    
  }
</style>