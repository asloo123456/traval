SET NAMES UTF8;
DROP DATABASE IF EXISTS shutterbug;
CREATE DATABASE shutterbug CHARSET=UTF8;
USE shutterbug; 
/****首页轮播广告商品****/
CREATE TABLE s_index_carousel(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  title VARCHAR(64),
  times VARCHAR(32),
  writer VARCHAR(32),
  href VARCHAR(128)
);
/****首页轮播广告商品****/
INSERT INTO s_index_carousel VALUES(NULL,"assets/carousel01.png","回归APS-C战场 索尼秋季发布会α6600与新镜头等新品体验","2019年8月30日","义天天","product_details.html?lid=1");
INSERT INTO s_index_carousel VALUES(NULL,"assets/carousel02.png","佳能发布两款RF大三元镜头新品RF15-35mm F2.8 L IS USM 及RF24-70mm F2.8 L IS USM","2019年8月28日","JR","product_details.html?lid=2");
INSERT INTO s_index_carousel  VALUES(NULL,"assets/carousel03.png","索尼全画幅微单™Alpha 7R IV记录那达慕与游牧民","2019年8月30日","义天天","product_details.html?lid=3");
INSERT INTO s_index_carousel  VALUES(NULL,"assets/carousel04.png","这些仙女镜头，拍出女神既视感！","2019年8月27日","JR","product_details.html?lid=4");
INSERT INTO s_index_carousel  VALUES(NULL,"assets/carousel05.png","口袋相机性能新巅峰 索尼黑卡RX100 VII测评","2019年8月20日","义天天","product_details.html?lid=5");
INSERT INTO s_index_carousel  VALUES(NULL,"assets/carousel06.png","OPPO SEE BEYOND影像展 带你探索'视界之外'","2019年8月19日","JR","product_details.html?lid=6");

/****首页商品-热门推荐*****/
CREATE TABLE s_index_product(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  title VARCHAR(64),
  times VARCHAR(32),
  writer VARCHAR(32),
  href VARCHAR(128)
);
INSERT INTO s_index_product VALUES(NULL,"assets/mcj01.png","好玩又打折的小米智能照明节开幕！新款米家负离子便携吹风机众筹首发","2019年9月4日","义天天","product_details.html?lid=20");
INSERT INTO s_index_product VALUES(NULL,"assets/mcj02.jpg","4800万超广角三摄+全视屏 华为畅享10 Plus“新实力派”强悍登场","2019年9月5日","义天天","product_details.html?lid=7");
INSERT INTO s_index_product VALUES(NULL,"assets/mcj03.jpg","李现空降荣耀20S武汉发布会 荣耀最强自拍手机售价1899元起","2019年9月4日","duxiaotie","product_details.html?lid=8");
INSERT INTO s_index_product VALUES(NULL,"assets/mcj04.jpeg","佳能秋季新机问答！你想知道的，我们替你问了！","2019年9月5日","义天天","product_details.html?lid=9");
INSERT INTO s_index_product VALUES(NULL,"assets/mcj05.jpg","摄影人的赚钱利器 影像云管家VBox 6全解析","2019年9月5日","义天天","product_details.html?lid=10");
INSERT INTO s_index_product VALUES(NULL,"assets/mcj06.jpg","摄影人的赚钱利器 影像云管家VBox 6全解析","2019年9月8日","CY3","product_details.html?lid=11");
INSERT INTO s_index_product VALUES(NULL,"assets/mcj07.jpg","风景旋涡——当代风景摄影展","2019年9月7日","CY3","product_details.html?lid=12");

/****商品列表****/
INSERT INTO s_index_product VALUES(NULL,"assets/m001.jpg","小而强大，佳能发布APS-C画幅微单相机新品EOS M6 Mark II","2019年8月28日","JR","product_details.html?lid=13");
INSERT INTO s_index_product VALUES(NULL,"assets/m002.jpg","多方位提速，佳能发布数码单反相机新品EOS 90D","2019年8月28日","JR","product_details.html?lid=14");
INSERT INTO s_index_product VALUES(NULL,"assets/m003.jpg","八月聚首八达岭长城，赴精彩震撼影像之约","2019年8月9日","CY3","product_details.html?lid=15");
INSERT INTO s_index_product VALUES(NULL,"assets/m004.jpg","宠物摄影革命 谈索尼实时动物眼部对焦","2019年7月24日","JR","product_details.html?lid=16");
INSERT INTO s_index_product VALUES(NULL,"assets/m005.jpg","速度为先，佳能G5 X Mark II及G7 X Mark III齐登场","2019年7月9日","JR","product_details.html?lid=17");
INSERT INTO s_index_product VALUES(NULL,"assets/m006.jpg","你比夜色更美，华为nova5系列颐和园演绎潮流'自拍奇幻夜'","2019年7月16日","JR","product_details.html?lid=18");
INSERT INTO s_index_product VALUES(NULL,"assets/m007.jpg","2020年索尼世界摄影大赛新增组别关注环境问题","2019年7月5日","JR","product_details.html?lid=19");

INSERT INTO s_index_product VALUES(NULL,"assets/m008.jpg","索尼的远望 索尼FE 600mm F4 GM OSS镜头测评","2019年6月26日","JR","product_details.html?lid=21");
INSERT INTO s_index_product VALUES(NULL,"assets/m009.jpg","1698元起魅族16Xs正式发布：极边全面屏，三摄长续航","2019年5月30日","刘快快","product_details.html?lid=22");
INSERT INTO s_index_product VALUES(NULL,"assets/m010.jpg","2018-2019 保时捷“中国青年艺术家双年评选”提名展亮相北京","2019年5月30日","刘快快","product_details.html?lid=23");
INSERT INTO s_index_product VALUES(NULL,"assets/m011.jpg","智能与实用性兼具 索尼A7RM3固件Ver3.00升级拍摄体验","2019年5月30日","JR","product_details.html?lid=24");
INSERT INTO s_index_product VALUES(NULL,"assets/m012.jpg","E卡口再添新丁 索尼发布全画幅G大师镜头FE 135mm F1.8 GM","2019年2月27日","刘快快","product_details.html?lid=25");
INSERT INTO s_index_product VALUES(NULL,"assets/m013.jpg","Profoto(保富图) 成立中国子公司","2019年9月3日","椿三十郎","product_details.html?lid=26");
INSERT INTO s_index_product VALUES(NULL,"assets/m014.jpg","'iFootage印迹'首届创新视频大赛颁奖典礼圆满落幕","2019年7月5日","JR","product_details.html?lid=27");

INSERT INTO s_index_product VALUES(NULL,"assets/image01.jpg","从展览中去理解艺术","2019年9月2日","义天天","product_details.html?lid=28");
INSERT INTO s_index_product VALUES(NULL,"assets/image02.jpg","归去来兮——肖日保摄影展","2019年8月30日","CY3","product_details.html?lid=29");
INSERT INTO s_index_product VALUES(NULL,"assets/image03.jpg","群展：人间指南（下）","2019年8月30日","CY3","product_details.html?lid=30");
INSERT INTO s_index_product VALUES(NULL,"assets/image04.jpg","回归APS-C战场 索尼秋季发布会α6600与新镜头等新品体验","2019年8月30日","义天天","product_details.html?lid=31");
INSERT INTO s_index_product VALUES(NULL,"assets/image05.png","E卡口镜头已达54支！ 索尼SEL1655G/SEL70350G发布","2019年8月28日","义天天","product_details.html?lid=32");
INSERT INTO s_index_product VALUES(NULL,"assets/image06.png","APS-C画幅阵容再壮大 索尼微单™Alpha 6600/6100发布","2019年8月28日","义天天","product_details.html?lid=33");
INSERT INTO s_index_product VALUES(NULL,"assets/image07.jpg","新镜皇？松下发布L-Mount新镜头LUMIX S PRO 24-70mm F2.8","2019年8月28日","JR","product_details.html?lid=34");

/**用户登录**/
CREATE TABLE s_login(
  id INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(50),
  upwd  VARCHAR(32)
);
/**用户信息**/
INSERT INTO s_login VALUES(null,'tom',md5('123'));