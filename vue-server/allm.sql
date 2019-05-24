SET NAMES UTF8;
DROP DATABASE IF EXISTS allms;
CREATE DATABASE allms CHARSET=UTF8;
USE allms;

/**1：用户表**/
CREATE TABLE allms_users(
  zc_uid INT PRIMARY KEY AUTO_INCREMENT,    /*id*/
  zc_pwd VARCHAR(32),                       /*密码*/
  zc_email VARCHAR(64),                     /*邮箱*/
  zc_phone VARCHAR(16)                      /*手机号*/ 
);
INSERT INTO allms_users VALUES(NULL,"123456","kkkk@qq.com","15946238762"),
(NULL,"123456","cccc@qq.com","18234967559"),
(NULL,"123456","wenwen123456@qq.com","18463294682"),
(NULL,"123456","haoran123456@qq.com","15462379164"),
(NULL,"123456","xiuxiu123456@qq.com","18462349762"),
(NULL,"123456","dongli123456@qq.com","15463976284");


/**3：home轮播表**/
CREATE TABLE allms_homel(
  /*id*/
  zc_aid INT PRIMARY KEY AUTO_INCREMENT, 
  /*图片地址*/
  zc_url VARCHAR(255)
);
INSERT INTO allms_homel VALUES(NULL,"http://127.0.0.1:3500/index/lunbo1.jpg"),
(NULL,"http://127.0.0.1:3500/index/lunbo2.jpg"),
(NULL,"http://127.0.0.1:3500/index/lunbo3.jpg"),
(NULL,"http://127.0.0.1:3500/index/lunbo4.jpg"),
(NULL,"http://127.0.0.1:3500/index/lunbo5.jpg");

/**4：home热门地区表**/
CREATE TABLE allms_where(
  /*id*/
  zc_bid INT PRIMARY KEY AUTO_INCREMENT, 
  /*图片地址*/
  zc_url VARCHAR(255)
);
INSERT INTO allms_where VALUES(NULL,"http://127.0.0.1:3500/index/holder01.png"),
(NULL,"http://127.0.0.1:3500/index/holder02.png"),
(NULL,"http://127.0.0.1:3500/index/holder03.png"),
(NULL,"http://127.0.0.1:3500/index/holder04.png"),
(NULL,"http://127.0.0.1:3500/index/holder05.png"),
(NULL,"http://127.0.0.1:3500/index/holder06.png");

/**5：home精品民宿表**/
CREATE TABLE allms_jingp(
  /*id*/
  zc_cid INT PRIMARY KEY AUTO_INCREMENT, 
  /*图片地址*/
  zc_url VARCHAR(255),
  /*名字*/
  zc_name VARCHAR(255),
  /*价格*/
  zc_price DECIMAL(10,2),
  /*评论*/
  zc_ider VARCHAR(255)
);
INSERT INTO allms_jingp VALUES(NULL,"http://127.0.0.1:3500/index/good01.jpg","晴鸭楼","2882","9条评论"),
(NULL,"http://127.0.0.1:3500/index/good02.jpg","夜宿海生馆","538","504条评论"),
(NULL,"http://127.0.0.1:3500/index/good03.jpg","九分爱的物语民宿","494","591条评论");

/**6：home攻略故事表**/
CREATE TABLE allms_gongg(
  /*id*/
  zc_did INT PRIMARY KEY AUTO_INCREMENT, 
  /*图片地址*/
  zc_url VARCHAR(255),
  /*文字*/
  zc_text VARCHAR(255)
);
INSERT INTO allms_gongg VALUES(NULL,"http://127.0.0.1:3500/index/gong01.jpg","想要最in的日本之旅？戳这里保准不后悔"),
(NULL,"http://127.0.0.1:3500/index/gong02.jpg","往返桃园机场捷运2月份终于开通，10个超实用攻略快点收藏起来吧~"),
(NULL,"http://127.0.0.1:3500/index/gong03.jpg","原来东京周边还有这么多好地方，偷一天，深度游！"),
(NULL,"http://127.0.0.1:3500/index/gong04.jpg","台湾旅游回来，你的伴手礼买对了吗？");

/**7：home人气民宿表**/
CREATE TABLE allms_renq(
  /*id*/
  zc_eid INT PRIMARY KEY AUTO_INCREMENT, 
  /*图片地址*/
  zc_url VARCHAR(255),
  /*文字1*/
  zc_text1 VARCHAR(255),
  /*文字2*/
  zc_text2 VARCHAR(255),
  /*价格*/
  zc_price DECIMAL(10,2)
);
INSERT INTO allms_renq VALUES(NULL,"http://127.0.0.1:3500/index/people01.jpg","微笑台北","☆☆☆☆☆761条评论","81"),
(NULL,"http://127.0.0.1:3500/index/people02.jpg","花莲途捷旅","☆☆☆☆☆1563条评论","258"),
(NULL,"http://127.0.0.1:3500/index/people03.jpg","恳丁翡丽金旅馆(屏东县民宿0257号)","☆☆☆☆☆1022条评论","359");

/**8：home上底部表**/
CREATE TABLE allms_tfooter(
  /*id*/
  zc_fid INT PRIMARY KEY AUTO_INCREMENT, 
  /*图片地址*/
  zc_url VARCHAR(255),
  /*文字1*/
  zc_text1 VARCHAR(255),
  /*文字2*/
  zc_text2 VARCHAR(255),
  /*文字3*/
  zc_text3 VARCHAR(255)
);
INSERT INTO allms_tfooter VALUES(NULL,"http://127.0.0.1:3500/index/footer1.png","便捷服务","7×12小时客服保障热线","多种渠道快捷支付"),
(NULL,"http://127.0.0.1:3500/index/footer2.png","更有保障","在线快速支付","保障民宿保留房间"),
(NULL,"http://127.0.0.1:3500/index/footer3.png","深度体验","品尝特色早餐","听老板讲述民宿背后的故事");

/**9：home下底部表1**/
CREATE TABLE allms_bfooter1(
  /*id*/
  zc_gid INT PRIMARY KEY AUTO_INCREMENT, 
  /*文字*/
  zc_text VARCHAR(255)
);
INSERT INTO allms_bfooter1 VALUES(NULL,"关于自在客"),
(NULL,"联系我们"),
(NULL,"加入我们"),
(NULL,"媒体报道"),
(NULL,"退款政策"),
(NULL,"服务条款"),
(NULL,"网站地图");

/**10：home下底部表2**/
CREATE TABLE allms_bfooter2(
  /*id*/
  zc_gidd INT PRIMARY KEY AUTO_INCREMENT, 
  /*文字*/
  zc_text VARCHAR(255)
);
INSERT INTO allms_bfooter2 VALUES(NULL,"新浪微博"),
(NULL,"豆瓣小站"),
(NULL,"民宿"),
(NULL,"帮助中心"),
(NULL,"故事"),
(NULL,"用户反馈");

/**11：home下底部图片**/
CREATE TABLE allms_bfootert(
  /*id*/
  zc_hid INT PRIMARY KEY AUTO_INCREMENT, 
  /*图*/
  zc_url VARCHAR(255)
);
INSERT INTO allms_bfootert VALUES(NULL,"http://127.0.0.1:3500/index/footer5.png"),
(NULL,"http://127.0.0.1:3500/index/footer6.png"),
(NULL,"http://127.0.0.1:3500/index/footer7.png"),
(NULL,"http://127.0.0.1:3500/index/footer8.png"),
(NULL,"http://127.0.0.1:3500/index/footer9.png"),
(NULL,"http://127.0.0.1:3500/index/footer10.png"),
(NULL,"http://127.0.0.1:3500/index/footer11.png"),
(NULL,"http://127.0.0.1:3500/index/footer12.png"),
(NULL,"http://127.0.0.1:3500/index/footer13.jpg");

/**12：story中图文**/
CREATE TABLE allms_smiadden(
  /*id*/
  zc_qid INT PRIMARY KEY AUTO_INCREMENT, 
  /*图*/
  zc_url VARCHAR(255),
  /*文字1*/
  zc_text1 VARCHAR(255),
  /*文字2*/
  zc_text2 VARCHAR(255)
);
INSERT INTO allms_smiadden VALUES(NULL,"http://127.0.0.1:3500/story/topul01.jpg","邱爸","近月旭海 邱爸的多彩退休时光"),
(NULL,"http://127.0.0.1:3500/story/topul02.jpg","阿贤&阿梅","近月旭海 邱爸的多彩退休时光"),
(NULL,"http://127.0.0.1:3500/story/topul03.jpg","曾大哥&张姐","浪点冲浪民宿 生活只为了冲浪"),
(NULL,"http://127.0.0.1:3500/story/topul04.jpg","西瀛娘子","亚维侬庄园 在垦丁遇见南法风情"),
(NULL,"http://127.0.0.1:3500/story/topul05.png","光头哥",">彩虹下的约定"),
(NULL,"http://127.0.0.1:3500/story/topul06.jpg","勇哥","创伤料理食居"),
(NULL,"http://127.0.0.1:3500/story/topul07.jpg","老张","在九月的'a-home'讲颂"),
(NULL,"http://127.0.0.1:3500/story/topul08.jpg","邓妈妈","莫内花园，安提哥咖啡飘香"),
(NULL,"http://127.0.0.1:3500/story/topul09.jpg","Terry&Alma","带着我们的胃 '过一天他乡的生活' "),
(NULL,"http://127.0.0.1:3500/story/topul10.jpg","Linda","山下的厝 来老宅泡泡黄金汤"),
(NULL,"http://127.0.0.1:3500/story/topul11.jpg","Jenny","不想当园丁的厨师不是好民宿主人"),
(NULL,"http://127.0.0.1:3500/story/topul12.jpg","罗先生","沪月别馆：月光上的夜上海"),
(NULL,"http://127.0.0.1:3500/story/topul13.jpg","阿雄&&妙妙","老英格兰庄园： 十年造就的天空之城"),
(NULL,"http://127.0.0.1:3500/story/topul14.jpg","陈先生","欧风小镇VS阿雄与妙妙的山居生活"),
(NULL,"http://127.0.0.1:3500/story/topul15.jpeg","富新汉","垦丁卡米克民宿  梦想的家");

/**13：story中底部1**/
CREATE TABLE allms_sfooto(
  /*id*/
  zc_wid INT PRIMARY KEY AUTO_INCREMENT, 
  /*文字1*/
  zc_text1 VARCHAR(255),
  /*文字2*/
  zc_text2 VARCHAR(255),
  /*文字3*/
  zc_text3 VARCHAR(255),
  /*文字4*/
  zc_text4 VARCHAR(255),
  /*文字5*/
  zc_text5 VARCHAR(255),
  /*文字6*/
  zc_text6 VARCHAR(255),
  /*文字7*/
  zc_text7 VARCHAR(255),
  /*文字8*/
  zc_text8 VARCHAR(255)
);
INSERT INTO allms_sfooto VALUES(NULL,"关于我们","关于自在客","联系我们","加入我们","媒体报道","退款政策","服务条款","网站地图"),
(NULL,"合作伙伴","品橙旅游","蚂蜂窝","穷游网","猫途鹰","PP租车","去哪儿","驴妈妈");

/**14：story中底部2**/
CREATE TABLE allms_sfoott(
  /*id*/
  zc_eid INT PRIMARY KEY AUTO_INCREMENT, 
  /*文字1*/
  zc_text1 VARCHAR(255),
  /*文字2*/
  zc_text2 VARCHAR(255),
  /*文字3*/
  zc_text3 VARCHAR(255),
  /*文字4*/
  zc_text4 VARCHAR(255),
  /*文字5*/
  zc_text5 VARCHAR(255),
  /*文字6*/
  zc_text6 VARCHAR(255),
  /*文字7*/
  zc_text7 VARCHAR(255)
);
INSERT INTO allms_sfoott VALUES(NULL,"关注我们","新浪微博","豆瓣小站","民宿","帮助中心","故事","用户反馈");

/**15：story中底部图片**/
CREATE TABLE allms_sfootbs(
  /*id*/
  zc_rid INT PRIMARY KEY AUTO_INCREMENT, 
  /*图片*/
  zc_url VARCHAR(255)
);
INSERT INTO allms_sfootbs VALUES(NULL,"http://127.0.0.1:3500/story/footer1.png"),
(NULL,"http://127.0.0.1:3500/story/footer2.png"),
(NULL,"http://127.0.0.1:3500/story/footer3.png"),
(NULL,"http://127.0.0.1:3500/story/footer4.png"),
(NULL,"http://127.0.0.1:3500/story/footer5.png"),
(NULL,"http://127.0.0.1:3500/story/footer6.png");

/**16：header2 一**/
CREATE TABLE allms_headertt(
  /*id*/
  zc_tid INT PRIMARY KEY AUTO_INCREMENT, 
  /*文字*/
  zc_text VARCHAR(255)
);
INSERT INTO allms_headertt VALUES(NULL,"台湾"),
(NULL,"日本"),
(NULL,"大陆"),
(NULL,"韩国"),
(NULL,"泰国");

/**17：header2 二**/
CREATE TABLE allms_headertq(
  /*id*/
  zc_tid INT PRIMARY KEY AUTO_INCREMENT, 
  /*文字*/
  zc_text VARCHAR(255)
);
INSERT INTO allms_headertq VALUES(NULL,"繁体中文"),
(NULL,"简体中文"),
(NULL,"English");

/**18：header2 三**/
CREATE TABLE allms_headertw(
  /*id*/
  zc_tid INT PRIMARY KEY AUTO_INCREMENT, 
  /*文字*/
  zc_text VARCHAR(255)
);
INSERT INTO allms_headertw VALUES(NULL,"TWD"),
(NULL,"CNY"),
(NULL,"USD");
