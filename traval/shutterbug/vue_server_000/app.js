//app.js 服务器端项目
//1:下载第三方模块 
//express/express-session/cors/mysql
//2:将第三方模块引入到当前程序中
const express= require("express");
const session = require("express-session");
const cors = require("cors");
const mysql = require("mysql");
//3:创建数据库连接池
var pool = mysql.createPool({
   host:"127.0.0.1",
   user:"root",
   password:"",
   port:3306,
   connectionLimit:20,
   database:"shutterbug"   //数据库名称
})

//4:创建web服务器监听 8080 端口
var server = express();
server.listen(8080);
//5:处理跨域 cors 
server.use(cors({
  origin:["http://127.0.0.1:5050","http://localhost:5050"],
  credentials:true
}))
//6:配置session
//#session配置一定要在所有请求之前
server.use(session({
   secret:"128位字符串",    //#安全字符串
   resave:true,            //#每次请求保存数据 
   saveUninitialized:true  //#保存初始化数据
}));
//7:配置静态目录
server.use(express.static("public"));

//功能一 登入
server.get("/login",(req,res)=>{
  // 获取账号密码
  var u = req.query.uname;
  var p = req.query.upwd;
  // 创建sql
  var sql="SELECT id FROM s_login WHERE uname = ? AND upwd = md5(?)";

  pool.query(sql,[u,p],(err,result)=>{
    if(err)throw err;
    // 返回给页面
    if(result.length>0){
      var id=result[0].id;
      // uid保存当前用户凭证
      req.session.uid=id;
      res.send({code:1,msg:"登入成功"});
    }else{
      res.send({code:0,msg:"登入失败"});
    }
  })
})












