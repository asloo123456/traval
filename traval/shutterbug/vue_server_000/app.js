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
  origin:["http://127.0.0.1:5050","http://localhost:5050","http://127.0.0.1:5051"],
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
  var u = req.query.phone;
  var p = req.query.upwd;
  // 创建sql
  var sql="SELECT id FROM s_login WHERE phone = ? AND upwd = md5(?)";

  pool.query(sql,[u,p],(err,result)=>{
    if(err)throw err;
    // 返回给页面
    if(result.length>0){
      var id=result[0].id;
      // uid保存当前用户凭证
      req.session.uid=id;
      console.log(req.session.uid);
      res.send({code:1,msg:"登入成功"});
      
    }else{
      res.send({code:0,msg:"登入失败"});
    }
  })
})
//功能二：商品分页显示
// 1：接收客户请求 /product GET
//http://127.0.0.1:8080/product
//http://127.0.0.1:8080/product?pno=2
//http://127.0.0.1:8080/product?pno=3&pageSize=5

server.get("/product",(req,res)=>{
  // 2:接收客户请求数据   pno页码  pageSize页大小
    var pno=req.query.pno;
    var ps=req.query.pageSize;

  // 3：如果客户没有请示数据设置默认数据
  // pno=1  pgeSize=4
      //如果没有说传递第几页，那就传第一页
      if(!pno){//如果没传
        pno=1;
      }
      if(!ps){
       ps=25;
      }
  
      // 4：创建sql语句
  var sql="SELECT pid,img,title,times,writer,href FROM s_index_product LIMIT ?,?"
      //第一个问号的值要算出来 //第二个问号的值不变，要几行就几行
    var offset= (pno-1)*ps;//起始记录数
      //脚手架传过来的都是字符串，可是第二个问号如果传的不是数字会报错，所以要转为整形
    ps=parseInt(ps); //行数
  
  //5：发送sql语句
     //传入页码和页大小
  pool.query(sql,[offset,ps],(err,result)=>{
    //6：获取返回结果发送客户端
    if(err)throw err; 
    res.send({code:1,msg:"查询成功",data:result});
  })
  })

//功能二：商品分页显示
// 1：接收客户请求 /product GET
//http://127.0.0.1:8080/product
//http://127.0.0.1:8080/product?pno=2
//http://127.0.0.1:8080/product?pno=3&pageSize=5

server.get("/products",(req,res)=>{
  // 2:接收客户请求数据   pno页码  pageSize页大小
    var pno=req.query.pno;
    var ps=req.query.pageSize;

  // 3：如果客户没有请示数据设置默认数据
  // pno=1  pgeSize=4
      //如果没有说传递第几页，那就传第一页
      if(!pno){//如果没传
        pno=1;
      }
      if(!ps){
       ps=21;
      }
  
      // 4：创建sql语句
  var sql="SELECT pid,img,title,times,writer,lname,price,href FROM s_product_price LIMIT ?,?"
      //第一个问号的值要算出来 //第二个问号的值不变，要几行就几行
    var offset= (pno-1)*ps;//起始记录数
      //脚手架传过来的都是字符串，可是第二个问号如果传的不是数字会报错，所以要转为整形
    ps=parseInt(ps); //行数
  
  //5：发送sql语句
     //传入页码和页大小
  pool.query(sql,[offset,ps],(err,result)=>{
    //6：获取返回结果发送客户端
    if(err)throw err;
   
    res.send({code:1,msg:"查询成功",data:result});
  })
  })
//功能三：将指定商品添加到购物车
//#此功能先行条件先登陆
// 1：接收客户端请求 /addcart GET
//http://127.0.0.1:8080/login?phone=15912345678&upwd=123
//http://127.0.0.1:8080/addcart?pid=1&lname=相片&price=350
//登录成功创建 session对象并且将用户id保存在session对象中
server.get("/addcart",(req,res)=>{
  //2:判断当前用户登陆成功了吗
  //如果uid为undefined 没登陆
  var uid=req.session.uid;
  if(!uid){  //如果没有登陆信息
    res.send({code:-1,msg:"请先登陆"});
    return;  //不加return会继续执行
  }
  //3：获取客户端数据
// pid: 商品编号   price商品价格  lname 商品名称  要获取这3个参数
var pid=req.query.pid;
var price=req.query.price;
var count=req.query.count;
var lname=req.query.lname;
var img=req.query.img;
// console.log(pid+":"+lname+":"+price)
// res.send(pid+":"+lname+":"+price) //输出
//4：查询sql：当前用户是否购买此商品
                                        //哪个 用户   买了   什么商品
var sql="SELECT  id FROM s_shopping_cart WHERE uid = ? AND pid = ?"
//5：执行sql语句
//uid是从上面拿的，pid是从客户端传过来的
pool.query(sql,[uid,pid],(err,result)=>{
  if(err) throw err;  //有错误就扔掉
  //6：在回调函数中判断下一步操作
  if(result.length==0){
    // 没购买此商品 添加
    var sql=`INSERT INTO s_shopping_cart VALUES(null,${pid},${price},1,'${img}','${lname}',${uid})`;  
  }else{
    //已购买过此商品  更新
    var sql=`UPDATE s_shopping_cart SET count=count+1 WHERE uid=${uid} AND pid=${pid}`;
  }

  // 7：执行sql获取返回结果
  pool.query(sql,(err,result)=>{
    if(err)throw err;
    //8:如果sql UPDATE INSERT DELETE
    //判断执行成功 result.affectedRows 影响行数
    if(result.affectedRows>0){
     res.send({code:1,msg:"商品添加成功"});
    }else{
     res.send({code:-2,msg:"添加失败"}); 
    }
  })
})
})  
//功能四:查询指定用户购物车信息
server.get("/carts",(req,res)=>{
  //(1)参数 uid
  var uid = req.session.uid;
  if(!uid){
    res.send({code:-1,msg:"请登录"});
    return;
  }
  //(2)创建sql语句 
  var sql = "SELECT id,price,count,img,lname FROM ";
  sql+=" s_shopping_cart WHERE uid = ?";
  //(3)执行sql语句并且将数据库返回结果发送客户
  pool.query(sql,[uid],(err,result)=>{
    if(err)throw err;
    res.send({code:1,msg:"查询成功",data:result})
  })
});

//功能五：删除购物车表中指定数据
server.get("/delItem",(req,res)=>{
  //0:判断是否登录
  var uid = req.session.uid;
  if(!uid){
     res.send({code:-2,msg:"请登录"});
     return;
  } 
  //1：获取客户端发送数据id
  var id = req.query.id;
  //2: 创建sql语句
  //194:逻辑错误lid改id
  var sql = "DELETE FROM s_shopping_cart WHERE id=?";
  //3: 执行sql语句
  pool.query(sql,[id],(err,result)=>{
     if(err)throw err;
     //4: 获取服务器获取结果判断删除是否成功
     if(result.affectedRows>0){
       res.send({code:1,msg:"删除成功"});
     }else{
       res.send({code:-1,msg:"删除失败"});
     }
  })
 })
 
//功能六：删除购物车中多个商品；
server.get("/delItems",(req,res)=>{
//0:判断是否登录
var uid = req.session.uid;
if(!uid){
   res.send({code:-2,msg:"请登录"});
   return;
} 
 // 1:获取参数 id=1，2，3
  var id=req.query.id;
  console.log(id);
  //用模板字符串，可以放多个
  // 2：创建sql语句
  var sql=`DELETE FROM s_shopping_cart WHERE id IN (${id})`;
  // 3：执行sql语句
  pool.query(sql,(err,result)=>{
    if(err)throw err;
    if(result.affectedRows>0){
      res.send({code:1,msg:"删除成功"})
    }else{
      res.send({code:-1,msg:"删除失败"})
    }
  })
// 4：获取服务器返回结果
})



  //功能七 评论
server.get("/criticism",(req,res)=>{
  // 获取名称和邮箱
  var uname=req.query.list[0];   //名称
  var e_mail=req.query.list[1];  //邮箱
  var text=req.query.task;     ///文字
  var times=req.query.times;
  2//判断当前是否填入邮箱
  var sql="INSERT INTO s_criticism SET uname=?,e_mail=?,times=?,text=?";
  pool.query(sql,[uname,e_mail,times,text],(err,result)=>{
    if(err)throw err;
    res.send({code:1,msg:"插入成功"});
  })
})
server.get("/criticisms",(req,res)=>{
  var pno=req.query.pno;
  var ps=req.query.pageSize;
    if(!pno){//如果没传
      pno=1;
    }
    if(!ps){
     ps=10;
    }
var sql="SELECT uname,times,text FROM s_criticism ORDER BY id DESC LIMIT ?,?"
    //第一个问号的值要算出来 //第二个问号的值不变，要几行就几行
  var offset= (pno-1)*ps;//起始记录数
    //脚手架传过来的都是字符串，可是第二个问号如果传的不是数字会报错，所以要转为整形
  ps=parseInt(ps); //行数
//5：发送sql语句
   //传入页码和页大小
pool.query(sql,[offset,ps],(err,result)=>{
  //6：获取返回结果发送客户端
  if(err)throw err; 
  res.send({code:1,msg:"查询成功",data:result});
})
})

  










