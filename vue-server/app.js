// 1:引入第三方模块
const mysql = require("mysql");
const express = require("express");
const session = require("express-session");
const bodyParser = require('body-parser');
const http = require('http');
// 引入跨域模块
const cors = require("cors");

// 2:创建连接池
const pool = mysql.createPool({
  host:"127.0.0.1",
  user:"root",
  password:"",
  database:"allms"//引入库
})


// 3:创建express对象，web服务器
var server = express();
// 绑定监听端口
// var server = app.listen(8085,()=>{
//   console.log('服务器创建成功');
// });

// 4:配置允许列表3000允许
server.use(session({
  secret:'随机字符串',
  cookie:{maxAge:60*1000*30},//过期时间ms
  resave:true,//添加路有修改值为true
  saveUninitialized:true,//保存初始化数据
}));

// 5:跨域
server.use(cors({
  origin:["http://127.0.0.1:8080","http://localhost:8080"],
  credentials:true//提高安全级别每次访问验证
}))

// 6:创建监听端口
server.listen(3500);

// 7:项目中所有图片放在服务器
server.use(express.static("public"));

// 8:使用body-parser中间件
server.use(bodyParser.urlencoded({extended:false}));

// 9:home中头1
server.get("/Htop1",(req,res)=>{
  var tt = [
    {id:1,text:"台湾"},
    {id:2,text:"日本"},
    {id:3,text:"大陆"},
    {id:4,text:"韩国"},
    {id:5,text:"泰国"},
  ];
  res.send({code:1,data:tt});
})

// 10:home中头1
server.get("/Htop2",(req,res)=>{
  var tt = [
    {id:1,text:"注册"},
    {id:2,text:"登录"},
    {id:3,text:"帮助"},
  ];
  res.send({code:1,data:tt});
})

// 11:home轮播
server.get("/Homel",(req,res)=>{
  var sql = "SELECT zc_aid,zc_url FROM allms_homel";
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send({code:1,data:result});
  })
})

// 12:home热门地区
server.get("/Hotel",(req,res)=>{
  var sql = "SELECT zc_bid,zc_url FROM allms_where";
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send({code:1,data:result});
  })
})

// 13:home精品民宿
server.get("/Jingp",(req,res)=>{
  var sql = "SELECT zc_cid,zc_url,zc_name,zc_price,zc_ider FROM allms_jingp";
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send({code:1,data:result});
  })
})

// 14:home攻略故事
server.get("/Gongg",(req,res)=>{
  var sql = "SELECT zc_did,zc_text,zc_url FROM allms_gongg";
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send({code:1,data:result});
  })
})

// 15:home人气民宿
server.get("/Renq",(req,res)=>{
  var sql = "SELECT zc_eid,zc_text1,zc_text2,zc_price,zc_url FROM allms_renq";
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send({code:1,data:result});
  })
})

// 16:home上底部
server.get("/Tfoot",(req,res)=>{
  var sql = "SELECT zc_fid,zc_text1,zc_text2,zc_text3,zc_url FROM allms_tfooter";
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send({code:1,data:result});
  })
})

// 17:home下底部1
server.get("/Bfoot1",(req,res)=>{
  var sql = "SELECT zc_gid,zc_text FROM allms_bfooter1";
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send({code:1,data:result});
  })
})

// 18:home下底部2
server.get("/Bfoot2",(req,res)=>{
  var sql = "SELECT zc_gidd,zc_text FROM allms_bfooter2";
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send({code:1,data:result});
  })
})

// 19:home下底部图
server.get("/Bfoott",(req,res)=>{
  var sql = "SELECT zc_hid,zc_url FROM allms_bfootert";
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send({code:1,data:result});
  })
})

// 20:story中图文
server.get("/Stuw",(req,res)=>{
  var sql = "SELECT zc_qid,zc_url,zc_text1,zc_text2 FROM allms_smiadden";
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send({code:1,data:result});
  })
})

// 21:story中底部1
server.get("/Swen1",(req,res)=>{
  var sql = "SELECT zc_wid,zc_text1,zc_text2,zc_text3,zc_text4,zc_text5,zc_text6,zc_text7,zc_text8 FROM allms_sfooto";
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send({code:1,data:result});
  })
})

// 22:story中底部2
server.get("/Swen2",(req,res)=>{
  var sql = "SELECT zc_eid,zc_text1,zc_text2,zc_text3,zc_text4,zc_text5,zc_text6,zc_text7 FROM allms_sfoott";
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send({code:1,data:result});
  })
})

// 23:story中底部图片
server.get("/SsFoT",(req,res)=>{
  var sql = "SELECT zc_rid,zc_url FROM allms_sfootbs";
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send({code:1,data:result});
  })
})

// 24:header2 一
server.get("/Headertt",(req,res)=>{
  var sql = "SELECT zc_tid,zc_text FROM allms_headertt";
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send({code:1,data:result});
  })
})

// 25:header2 二
server.get("/Headertq",(req,res)=>{
  var sql = "SELECT zc_tid,zc_text FROM allms_headertq";
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send({code:1,data:result});
  })
})

// 26:header2 三
server.get("/Headertw",(req,res)=>{
  var sql = "SELECT zc_tid,zc_text FROM allms_headertw";
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send({code:1,data:result});
  })
})

// 27：reg注册表
server.get("/Reg",(req,res)=>{
  // 获取数据
  var phone = req.query.phone;
  var email = req.query.email;
  var pwd = req.query.pwd;
  var sql = "INSERT INTO allms_users VALUES(NULL,md5(?),?,?)";
  pool.query(sql,[pwd,email,phone],(err,result)=>{
    if(err) throw err;
    if(result.length == 0){
      res.send({code:-1,msg:"手机号,密码,邮箱有误"});
    }else{
      res.send({code:1,msg:"注册成功"});
    }
  })
})

// 28:login登录表
server.get("/Login",(req,res)=>{
  // 获取数据
  var phone = req.query.phone;
  var email = req.query.email;
  var pwd = req.query.pwd;
  // console.log(phone,email,pwd);
  var sql = "SELECT zc_uid FROM allms_users WHERE zc_pwd=md5(?) AND zc_email=? AND zc_phone=?";
  pool.query(sql,[pwd,email,phone],(err,result)=>{
    if(err) throw err;
    if(result.length==0){
      res.send({code:-1,msg:"用户名或者密码或者邮箱错误"});
    }else{
      //将用户登录成功的凭据保存到session对象\
      //result=[{id:1}]
      //获取uid
      var uid = result[0].zc_uid;
      //保存session对象中
      // console.log(uid);
      req.session.uid = uid;
      res.send({code:1,msg:"登录成功"});
    }
  })
})








