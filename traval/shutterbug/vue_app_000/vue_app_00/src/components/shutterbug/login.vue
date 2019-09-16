<template>
  <div id="myLogin">
    <div class="titleBar">
      <a class="titleBarIcon" href="javascript:;"><img src="../../assets/small/left.png"></a>
      登录
      <a class="titleBarReg" href="javascript:;">注册</a>
    </div>
    <div class="vw-main">
      <input class="myInput1"
      placeholder="请输入您的账号" >
        <input class="myInput2"
      placeholder="请输入您的密码" >
      <mt-button class="my_btn">登录</mt-button>
      <div class="bottom">
        <span class="sign_line"></span>
        <p></p>
        <span class="sign_line"></span>
      </div>
    </div> 
  </div>
</template>
<style lang="scss" scoped>
// 登录的头部导航
.titleBar{
  padding:0 0.27rem 0;
  height:1rem;
  display:flex;
  justify-content:space-between;
  align-items:center;
  background:#000;
  color:#fff;
  font-size:0.35rem;
  // 头部右
  .titleBarReg{
    display:inline-block;
    padding-right:10px;
    color:#fff;
    font-size:0.25rem;
    text-decoration:none;//取消a标签下划线
  }
  // 头部左
  .titleBarIcon img{
    height:0.55rem;width:0.5rem;
  }  
}
//输入框公共样式部分
@mixin get(){width:100%;height:0.8rem;
    text-indent:0.2rem;
    outline:none;
    border:1px solid #ccc;}//定义的全局样式
//内部标签 
.vw-main{
  padding:0.6rem;
  font-size:0.27rem; 
  .myInput1{
   @include get();
   border-top-right-radius:0.1rem;
   border-top-left-radius:0.1rem;
  }
  .myInput2{
   @include get();
    border-top:none;
    border-bottom-right-radius:0.1rem;
    border-bottom-left-radius:0.1rem;
  }
  .my_btn{
    width:100%;
    background-color:#444;
    margin-top:0.2rem;
    color:#fff;
  }
}
//底部图片区
.sign_line {
    display: inline-block;
    vertical-align: middle;
    width: 20px;
    margin: 0 7px;
    border-bottom: 1px solid #666;
}
</style>