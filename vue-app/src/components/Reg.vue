<template>
  <div class="app-reg">
    
    <!--头-->
    <home-headert></home-headert>

    <!--中注册表-->
    <section>
      <div>
        <ul>
          <li>填写信息</li>
          <li>激活邮件</li>
          <li>完成注册</li>
          <li>已经是自在客会员？</li>
          <li><router-link to="">登录</router-link></li>
        </ul>
        <form>
          <p>手机号：<input type="tel" placeholder="输入手机号" v-model="phone"></p>
          <p>邮箱：<input type="email" placeholder="输入正确邮箱" v-model="email"></p>
          <p>密码：<input type="password" placeholder="输入6~12位字母数字密码" autocomplete='password' class="inp-pwd" v-model="password"></p>
          <p>确认密码：<input type="password" placeholder="输入密码" autocomplete='passwords' class="inp-pwds" v-model="passwords"></p>
          <input type="submit" value="注册" class="input-res" @click="Zcjj" />
        </form>
      </div>
    </section>

     <!--底部-->
    <home-footer></home-footer>
    
  </div>
</template>

<script>
  // 引入头部组件
  import HomeHeadert from './Header2';
  import HomeFooter from './Footer';
  export default {
    data() {
      return {
        phone:"",//绑定手机号
        password:"",//绑定密码
        email:"",//绑定邮箱
        passwords:"",//确认密码
      }
    },
    name:'home',
    components: {
      HomeHeadert,HomeFooter
    },
    created() {
      
    },
    methods: {
      Zcjj() {
        // 正则表达式
        var guizePH = /^1[34578]\d{9}$/;//手机号
        var guiziPW = /^[a-zA-Z0-9]{6,12}$/;//密码
        var guziEM = /^[A-Za-z\d]+([-_.][A-Za-z\d]+)*@([A-Za-z\d]+[-.])+[A-Za-z\d]{2,4}$/;//邮箱
        // 获取用户输入手机号,密码,邮箱，确认密码
        var p = this.phone;
        var pw = this.password;
        var em = this.email;
        var ps = this.passwords;
        // console.log(p,pw,em,ps);
        // 判断是否符合条件
        if(!guizePH.test(p)){
          alert("手机号输入格式不正确，请检查");
          return;
        }
        if(!guiziPW.test(pw)){
          alert("密码格式输入不正确，请检查");
          return;
        }
        if(!guziEM.test(em)){
          alert("邮箱格式输入不正确，请检查");
          return;
        }
        if(ps != pw){
          alert("与上填密码不同，请重新输入");
          return;
        }
        var url = "http://127.0.0.1:3500/Reg?pwd="+pw+"&email="+em+"&phone="+p;
        this.axios.get(url).then(result=>{
          if(result.data.code == 1){
            alert("注册成功");
            // 跳转页面
            this.$router.push({path:"/Login"});
          }else{
            alert("手机号或者密码或者邮箱有误");
          }
        })
      },
    },
  }
</script>

<style scored>
  .app-reg section{
    border:1px solid transparent;
    background:url("http://127.0.0.1:3500/registered/bground1.jpg") no-repeat center center;
    background-size:cover;
    background-position:fixed;
    margin-top:100px;
  }
  .app-reg section div{
    /*border:1px solid #0f0;*/
    width:1200px;
    margin:180px auto;
  }
  .app-reg section div ul{
    border-bottom:1px solid #ddd;
    width:100%;
    margin-bottom:10px;
  }
  .app-reg section div ul:after,.app-reg section div form:after{
    content:"";
    display:block;
    clear:both;
  }
  .app-reg section div ul li{
    float:left;
    margin:5px 15px;
    color:#f65c60;
  }
  .app-reg section div ul li:nth-child(4){
    margin-left:55%;
  }
  .app-reg section div form p{
    width:100%;
    /*border:1px solid #00f;*/
    height:40px;line-height:40px;
    font-size:18px;
    color:#000;
    text-indent:13em;
    margin:35px 0;
  }
  .app-reg section div form p input{
    width:50%;height:40px;
    float:right;
    margin:0 18% 0 0;
  }
  .app-reg section div form .input-res{
    width:25%;
    margin:0 35% 0 40%;
    background-color:#f65c60;
    border:0;
    border-radius:10px;
    color:#fff;
  }
  
</style>