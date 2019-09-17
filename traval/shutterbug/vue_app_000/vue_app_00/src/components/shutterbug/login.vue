<template>
  <div id="myLogin">
    <!-- 头部导航 -->
    <div class="titleBar">
      <a class="titleBarIcon" href="javascript:;"><img src="../../assets/small/left.png"></a>
      登录
      <a class="titleBarReg" href="javascript:;">注册</a>
    </div>
    <!-- 中间输入框 -->
    <div class="vw-main">
      <input class="myInput1" 
      placeholder="请输入您的手机号" v-model="phone" v-focus @keydown.13="login">
        <input class="myInput2"
      placeholder="请输入您的密码" v-model="upwd" @keydown.13="login">
      <button class="my_btn" @click="login">登录</button>
      <!--登入下方-->
      <div class="bottom">
        <div class="three">
          <span class="sign_line"></span>
          <bdo>或用第三方账号密码登陆</bdo>
          <span class="sign_line"></span>
        </div><!--  第三方结束 -->
          <div class="my_image">图片显示区域</div>        
       </div><!--   登入下方结束    -->
    </div><!--  输入框结束 -->
    <div class="inputShow">
      <div class="my_push"  v-text="msg"></div>
    </div> <!-- 地步现实栏-->
  </div>
</template>
<script>
import qs from 'qs'
export default {
  data(){
    return {
      phone:"",
      upwd:"",
      msg:"",//控制弹出的提示内容
    }
  },
methods:{
  login(){
    // 获取账号密码
    var u = this.phone;
    var p = this.upwd;
    // 创建正则  验证手机号
    var reg=/^1[3,4,5,7,8,9]\d{9}$/;
    // 判断如何错误 用户名提示
      if(!reg.test(u)){
        this.msg="手机号格式不正确";
        return;
      }else{
        this.reg=false;
      }
    //创建正则表达式  3~12位置 字母数字
      var reg1= /^[a-z0-9]{3,12}$/i;
      if(!reg1.test(p)){
        this.msg="请输入3-12位数字或字母";
        return;
      }else{
        this.reg=false;
      }
      //使用ajax实现登录功能
      this.axios.get(
      "login",
      {
      params:{
          phone:this.phone,
          upwd:this.upwd
        }
      }
    ).then(result=>{
      //服务端:
        //res.write({code:1或0})
      if(result.data.code==1){
        alert("登录成功！");//this.$router.push("/product")
      }else{
        alert("用户名或密码不正确!")
      }
      this.phone="";
      this.upwd="";
      this.msg="";
    })
  }
    
    /*login(){
      axios.get(
        "http://localhost:3000",
        {
          params:{
            uname:this.uname,
            upwd:this.upwd
          }
        }
      ).then(result=>{
        //服务端:
          //res.write({code:1或0})
        if(result.data.code==1){
          alert("登录成功！");
        }else{
          alert("用户名或密码不正确!")
        }
        this.uname="";
        this.upwd="";
      })
    }*/
    // login(){
    //   axios.post(
    //     "http://localhost:3000",
    //     Qs.stringify({
    //       uname:this.uname,
    //       upwd:this.upwd
    //     })
    //   ).then(result=>{
    //     //服务端:
    //       //res.write({code:1或0})
    //     if(result.data.code==1){
    //       alert("登录成功！");
    //     }else{
    //       alert("用户名或密码不正确!")
    //     }
    //     this.uname="";
    //     this.upwd="";
    //   })
    // }
  }
}
</script>
<style lang="scss" scoped>

// 最大父元素
#myLogin{
  width: 100%;height:100%;
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
    // 账号框
    .myInput1{
    @include get();
    border-top-right-radius:0.1rem;
    border-top-left-radius:0.1rem;
    }
    // 密码框
    .myInput2{
    @include get();
      //border-top:none;
      border-bottom-right-radius:0.1rem;
      border-bottom-left-radius:0.1rem;
    }
    //登入按钮
    .my_btn{
      width:100%;
      background-color:#444;
      margin-top:0.2rem;
      border-radius: 5px;
      padding:13px 0;
      color:#fff;
    }
  }
  //底部图片区
  // 登入下方父元素
  .bottom{
    display: flex;
    justify-content: center;
    flex-direction: column;
    margin-top:10px;
    font-size:0.3rem;
    text-align: center;
  // 第三方区域
    .three {
      display: flex;
      justify-content: center;
      .sign_line {  
        width: 1rem; 
        border-bottom: 1px solid #666;
      }
    }
      // 图片显示区域
    .my_image{
      margin-top:10px;
    }
  }
  // 底部样式
  .inputShow{
    position:fixed; 
    left:0px; bottom:0px; 
    width:100%; height:2rem; 
    display:flex;
    justify-content: center;
    align-items: center;
    font-size:.3rem;
    line-height: .7rem;
    //显示时的
    .my_push{
      height:.7rem;
      background-color: #ddd;
      z-index:9999;
      text-align: center;
      border-radius:5px;
    }
    //隐藏时的
    .fade{
        height:0;
        opacity:0;
        overflow:hidden;
        transition:all .2s linear;
      }
  }
}


</style>