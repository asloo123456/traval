SET NAMES UTF8;
DROP DATABASE IF EXISTS shutterbug;
CREATE DATABASE shutterbug CHARSET=UTF8;
USE shutterbug; 
/****首页轮播广告商品****/
CREATE TABLE s_index_carousel(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  title VARCHAR(64),
  year VARCHAR(32),
  writer VARCHAR(32),
  href VARCHAR(128)
);
/****首页轮播广告商品****/
INSERT INTO s_index_carousel VALUES(NULL,"carousel01.png","回归APS-C战场 索尼秋季发布会α6600与新镜头等新品体验","2019年8月30日","义天天","product_details.html?lid=1");
INSERT INTO s_index_carousel VALUES(NULL,"carousel02.png","佳能发布两款RF大三元镜头新品RF15-35mm F2.8 L IS USM 及RF24-70mm F2.8 L IS USM","2019年8月28日","JR","product_details.html?lid=2");
INSERT INTO s_index_carousel  VALUES(NULL,"carousel03.png","索尼全画幅微单™Alpha 7R IV记录那达慕与游牧民","2019年8月30日","义天天","product_details.html?lid=3");
INSERT INTO s_index_carousel  VALUES(NULL,"carousel04.png","这些仙女镜头，拍出女神既视感！","2019年8月27日","JR","product_details.html?lid=4");
INSERT INTO s_index_carousel  VALUES(NULL,"carousel05.png","口袋相机性能新巅峰 索尼黑卡RX100 VII测评","2019年8月20日","义天天","product_details.html?lid=5");
INSERT INTO s_index_carousel  VALUES(NULL,"carousel06.png","OPPO SEE BEYOND影像展 带你探索'视界之外'","2019年8月19日","JR","product_details.html?lid=6");

/****首页商品-热门推荐*****/
CREATE TABLE s_index_product(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  title VARCHAR(64),
  times VARCHAR(32),
  writer VARCHAR(32),
  href VARCHAR(128)
);
INSERT INTO s_index_product VALUES(NULL,"mcj01.png","好玩又打折的小米智能照明节开幕！新款米家负离子便携吹风机众筹首发","2019年9月4日","义天天","product_details.html?lid=20");
INSERT INTO s_index_product VALUES(NULL,"mcj02.jpg","4800万超广角三摄+全视屏 华为畅享10 Plus“新实力派”强悍登场","2019年9月5日","义天天","product_details.html?lid=7");
INSERT INTO s_index_product VALUES(NULL,"mcj03.jpg","李现空降荣耀20S武汉发布会 荣耀最强自拍手机售价1899元起","2019年9月4日","duxiaotie","product_details.html?lid=8");
INSERT INTO s_index_product VALUES(NULL,"mcj04.jpeg","佳能秋季新机问答！你想知道的，我们替你问了！","2019年9月5日","义天天","product_details.html?lid=9");
INSERT INTO s_index_product VALUES(NULL,"mcj05.jpg","摄影人的赚钱利器 影像云管家VBox 6全解析","2019年9月5日","义天天","product_details.html?lid=10");
INSERT INTO s_index_product VALUES(NULL,"mcj06.jpg","摄影人的赚钱利器 影像云管家VBox 6全解析","2019年9月8日","CY3","product_details.html?lid=11");
INSERT INTO s_index_product VALUES(NULL,"mcj07.jpg","风景旋涡——当代风景摄影展","2019年9月7日","CY3","product_details.html?lid=12");

/****商品列表****/
CREATE TABLE s_product_price(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  title VARCHAR(64),
  times VARCHAR(30),  /*型号*/
  writer VARCHAR(32),   /*存储介质*/
  lname  VARCHAR(32),
  price   DECIMAL(12,2),
  href VARCHAR(128)
);

INSERT INTO s_product_price VALUES(NULL,"sp/a1.jpg","GoPro HERO7 Black 运动防抖防水数码相机4K高清vlog摄像机狗7","HERO7 Black","Micro sd卡","GoPro HERO7 Black",2498,"product_details.html?lid=1");
INSERT INTO s_product_price VALUES(NULL,"sp/a2.jpg","GoPro HERO7 BLACK暮光白色运动相机4k防抖防水大广角vlog小奶狗"," HERO7 White"," Micro sd卡","GoPro HERO7 BLACK 白",2500,"product_details.html?lid=2");
INSERT INTO s_product_price VALUES(NULL,"sp/a3.jpg","GoPro HERO7 Silver 数码相机摄像机4K拍摄便携运动相机vlog狗7","HERO7 White","Micro sd卡","GoPro HERO7 White",320,"product_details.html?lid=3");
INSERT INTO s_product_price VALUES(NULL,"sp/a4.jpg","宠物摄影革命 谈索尼实时动物眼部对焦","HERO7 White","Micro sd卡","GoPro HERO7 White",320,"product_details.html?lid=4");

INSERT INTO s_product_price VALUES(NULL,"sp/a5.jpg","GoPro HERO7 Black 运动防抖防水数码相机4K高清vlog摄像机狗7","HERO7 Black","Micro sd卡","GoPro HERO7 Black",2498,"product_details.html?lid=5");
INSERT INTO s_product_price VALUES(NULL,"sp/a6.jpg","GoPro HERO7 BLACK暮光白色运动相机4k防抖防水大广角vlog小奶狗"," HERO7 White"," Micro sd卡","GoPro HERO7 BLACK 白",2500,"product_details.html?lid=6");
INSERT INTO s_product_price VALUES(NULL,"sp/a7.jpg","GoPro HERO7 Silver 数码相机摄像机4K拍摄便携运动相机vlog狗7","HERO7 White","Micro sd卡","GoPro HERO7 White",320,"product_details.html?lid=7");
INSERT INTO s_product_price VALUES(NULL,"sp/a8.jpg","宠物摄影革命 谈索尼实时动物眼部对焦","HERO7 White","Micro sd卡","GoPro HERO7 White",320,"product_details.html?lid=8");
INSERT INTO s_product_price VALUES(NULL,"sp/a1.jpg","GoPro HERO7 Black 运动防抖防水数码相机4K高清vlog摄像机狗7","HERO7 Black","Micro sd卡","GoPro HERO7 Black",2498,"product_details.html?lid=9");
INSERT INTO s_product_price VALUES(NULL,"sp/a9.jpg","GoPro HERO7 BLACK暮光白色运动相机4k防抖防水大广角vlog小奶狗"," HERO7 White"," Micro sd卡","GoPro HERO7 BLACK 白",2500,"product_details.html?lid=10");
INSERT INTO s_product_price VALUES(NULL,"sp/a10.jpg","GoPro HERO7 Silver 数码相机摄像机4K拍摄便携运动相机vlog狗7","HERO7 White","Micro sd卡","GoPro HERO7 White",320,"product_details.html?lid=11");
INSERT INTO s_product_price VALUES(NULL,"sp/a11.jpg","宠物摄影革命 谈索尼实时动物眼部对焦","HERO7 White","Micro sd卡","GoPro HERO7 White",320,"product_details.html?lid=12");
INSERT INTO s_product_price VALUES(NULL,"sp/a12.jpg","GoPro HERO7 Black 运动防抖防水数码相机4K高清vlog摄像机狗7","HERO7 Black","Micro sd卡","GoPro HERO7 Black",2498,"product_details.html?lid=13");
INSERT INTO s_product_price VALUES(NULL,"sp/a13.jpg","GoPro HERO7 BLACK暮光白色运动相机4k防抖防水大广角vlog小奶狗"," HERO7 White"," Micro sd卡","GoPro HERO7 BLACK 白",2500,"product_details.html?lid=14");
INSERT INTO s_product_price VALUES(NULL,"sp/a14.jpg","GoPro HERO7 Silver 数码相机摄像机4K拍摄便携运动相机vlog狗7","HERO7 White","Micro sd卡","GoPro HERO7 White",320,"product_details.html?lid=15");
INSERT INTO s_product_price VALUES(NULL,"sp/a15.jpg","宠物摄影革命 谈索尼实时动物眼部对焦","HERO7 White","Micro sd卡","GoPro HERO7 White",320,"product_details.html?lid=16");
INSERT INTO s_product_price VALUES(NULL,"sp/a16.jpg","GoPro HERO7 Black 运动防抖防水数码相机4K高清vlog摄像机狗7","HERO7 Black","Micro sd卡","GoPro HERO7 Black",2498,"product_details.html?lid=17");
INSERT INTO s_product_price VALUES(NULL,"sp/a17.jpg","GoPro HERO7 BLACK暮光白色运动相机4k防抖防水大广角vlog小奶狗"," HERO7 White"," Micro sd卡","GoPro HERO7 BLACK 白",2500,"product_details.html?lid=18");
INSERT INTO s_product_price VALUES(NULL,"sp/a18.jpg","GoPro HERO7 Silver 数码相机摄像机4K拍摄便携运动相机vlog狗7","HERO7 White","Micro sd卡","GoPro HERO7 White",320,"product_details.html?lid=19");
INSERT INTO s_product_price VALUES(NULL,"sp/a19.jpg","宠物摄影革命 谈索尼实时动物眼部对焦","HERO7 White","Micro sd卡","GoPro HERO7 White",320,"product_details.html?lid=20");
INSERT INTO s_product_price VALUES(NULL,"sp/a20.jpg","GoPro HERO7 Black 运动防抖防水数码相机4K高清vlog摄像机狗7","HERO7 Black","Micro sd卡","GoPro HERO7 Black",2498,"product_details.html?lid=21");
INSERT INTO s_product_price VALUES(NULL,"sp/a21.jpg","GoPro HERO7 BLACK暮光白色运动相机4k防抖防水大广角vlog小奶狗"," HERO7 White"," Micro sd卡","GoPro HERO7 BLACK 白",2500,"product_details.html?lid=22");


/**#创建表  购物车**/
/**#DECIMAL 高精度浮点数  中小工程**/
/**非常大的工程用整型：INT**/
/**uid 用户登陆之后，这个用户的id**/
CREATE TABLE s_shopping_cart(
  id INT PRIMARY KEY AUTO_INCREMENT,
  pid  INT,
  price DECIMAL(10,2),
  count INT,
  img  VARCHAR(128),
  lname VARCHAR(255),
  uid  INT
);

/**用户登录**/
CREATE TABLE s_login(
  id INT PRIMARY KEY AUTO_INCREMENT,
  phone CHAR(11),
  upwd  VARCHAR(32)
);
/**用户信息**/
INSERT INTO s_login VALUES(null,15912345678,md5('123'));


/*评论   criticism*/   
CREATE TABLE s_criticism(
  id INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(32),
  e_mail VARCHAR(32),
  times BIGINT,
  text VARCHAR(128)
);
INSERT INTO s_criticism VALUES(null,"lily","zhangyy@sysychina.com",1569378764535,"本人热爱摄影 热爱艺术 不过是学语言专业的 希望有机会加入做一些创意 跟美学 艺术有关的工作");
INSERT INTO s_criticism VALUES(null,"AgX吃饱了没事干","zhangyy@sysychina.com",1569142560103,"您好~我想应聘实习编辑，但是简历投递遇到了问题，公布的邮箱地址我发出后均被退回，报错内容'收件人（zhangyy@sysychina.com）所属域名不存在，邮件无法送达' 求助。。。。。");