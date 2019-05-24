<template>
  <div class="app-header2">
    
    <!--头-->
    <div class="header2">
      <div>
        <ul>
          <li>
            <router-link to="/Home">
              <img src="http://127.0.0.1:3500/registered/red_logo_small.png" />
            </router-link>
          </li>
          <li>
            <ol><router-link class="change1" to="">大陆</router-link></ol>
            <ol v-for="item of tt1" :key="item.id"><router-link class="change2" to="">{{item.zc_text}}</router-link></ol>
            <!--
            <ol><router-link class="change2" to="">日本</router-link></ol>
            <ol><router-link class="change2" to="">大陆</router-link></ol>
            <ol><router-link class="change2" to="">韩国</router-link></ol>
            <ol><router-link class="change2" to="">泰国</router-link></ol>
            -->
          </li>
          <li>
            <router-link to="/Story">故事</router-link>
          </li>
          <li>
            <router-link to="/Reg">注册</router-link>
          </li>
          <li>
            <router-link to="/Login">登录</router-link>
          </li>
          <li>
            <router-link to="">移动版</router-link>
            <ol>
              <li><router-link to="">下载自在客APP</router-link></li>
              <li><router-link to=""><img src="http://127.0.0.1:3500/registered/appqrcode.png" /></router-link></li>
              <li><router-link to="">立即查看</router-link></li>
            </ol>
          </li>
          <li>
            <router-link to="">简体中文</router-link>
            <ol>
              <li v-for="item of tt2" :key="item.id"><router-link class="change3" to="">{{item.zc_text}}</router-link></li>
              <!--
              <li><router-link class="change3" to="">简体中文</router-link></li>
              <li><router-link class="change3" to="">English</router-link></li>
              -->
            </ol>
          </li>
          <li>
            <router-link to="">￥CNY</router-link>
            <ol>
              <li v-for="item of tt3" :key="item.id"><router-link to="">{{item.zc_text}}</router-link></li>
              <!--
              <li><router-link to="">CNY</router-link></li>
              <li><router-link to="">USD</router-link></li>
              -->
            </ol>
          </li>
       </ul>
      </div>
    </div>

  </div>
</template>

<script>
  export default {
    data() {
      return {
        tt1:"",//文字1
        tt2:"",//文字2
        tt3:"",//文字3
      }
    },
    created() {
      this.TT1();//文字1
      this.TT2();//文字2
      this.TT3();//文字3
    },
    methods: {
      // 文字3
      TT3() {
        var url = "http://127.0.0.1:3500/Headertw";
        this.axios.get(url).then(result=>{
          this.tt3 = result.data.data;
        })
      },
      // 文字2
      TT2() {
        var url = "http://127.0.0.1:3500/Headertq";
        this.axios.get(url).then(result=>{
          this.tt2 = result.data.data;
        })
      },
      // 文字1
      TT1() {
        var url = "http://127.0.0.1:3500/Headertt";
        this.axios.get(url).then(result=>{
          this.tt1 = result.data.data;
        })
      },
    },
  }
</script>

<style scored>
  .app-container{
    padding:0 !important;
    background-color:#fff;
    height:100vh;
  }
  .app-header2 .header2{
    /*border:1px solid #f00;*/
    width:100%;
    position:fixed;
    top:20px;
    background-color:#ddd;
    padding:5px 0;
    z-index:10000;
  }
  .app-header2 .header2:after,.app-header2 .header2 div:after,.app-header2 .header2 div ul:after{
    content:"";
    display:block;
    clear:both;
  }
  .app-header2 .header2 div{
    width:1200px;
    /*border:1px solid #0f0;*/
    margin:auto;
  }
  .app-header2 .header2 div ul{
    width:100%;
  }
  .app-header2 .header2 div ul>li{
    float:left;
    /*border:1px solid #00f;*/ 
    width:100px;height:50px;
    line-height:50px;
    margin-right:20px;  
    text-align:center;
  }
  .app-header2 .header2 div a{
    color:#f65c60;
  }
  .app-header2 .header2 div ul>li:nth-child(1){
    width:160px;
  }
  .app-header2 .header2 div ul>li:nth-child(4),
  .app-header2 .header2 div ul>li:nth-child(5),
  .app-header2 .header2 div ul>li:nth-child(6),
  .app-header2 .header2 div ul>li:nth-child(7),
  .app-header2 .header2 div ul>li:nth-child(8)
  {
    margin: 0 0 0 20px;
  }
  .app-header2 .header2 div ul>li:nth-child(4){
    margin-left:195px;
  }
  .app-header2 .header2 div ul>li:nth-child(2) .change2{
    display:none;
  }
  .app-header2 .header2 div ul>li:nth-child(2) ol a{
    display:inline-block;  
    width:100%;  
    border-radius:10px;
  }
  .app-header2 .header2 div ul>li:nth-child(2):hover,.app-header2 .header2 div ul>li:nth-child(6):hover,.app-header2 .header2 div ul>li:nth-child(7):hover,.app-header2 .header2 div ul>li:nth-child(8):hover{
    height:330px;
  }
  .app-header2 .header2 div ul>li:nth-child(2):hover .change2,.app-header2 .header2 div ul>li:nth-child(6):hover ol,.app-header2 .header2 div ul>li:nth-child(7):hover ol li,.app-header2 .header2 div ul>li:nth-child(8):hover ol li{
    display:inline-block;
  }
  .app-header2 .header2 div .change1{
    border:1px solid #f65c60;
  }
  .app-header2 .header2 div .change2{
    color:#fff;
    background-color:#f65c60;
    margin-top:5px;
  }
  .app-header2 .header2 div ul>li:nth-child(6) ol{
    border:1px solid #000;
    font-size:12px;
    display:none;
    background:#fff;
  }
  .app-header2 .header2 div ul>li:nth-child(6) ol img{
    width:90%;
  }
  .app-header2 .header2 div ul>li:nth-child(6) ol li:nth-child(3){
    margin-top:-30px;
  }
  .app-header2 .header2 div ul>li:nth-child(7) ol li,.app-header2 .header2 div ul>li:nth-child(8) ol li{
    border:1px solid #ddd;
    width:100%;
    display:none;
    background:#fff;
  }
  .app-header2 .header2 div ul>li:nth-child(7) ol li:nth-child(2),.app-header2 .header2 div ul>li:nth-child(8) ol li:nth-child(2){
    border-top:0;
    border-bottom:0;
  }
  .app-header2 .header2 div ul>li:nth-child(7) ol li:nth-child(1),
  .app-header2 .header2 div ul>li:nth-child(8) ol li:nth-child(1){
    margin-top:5px;
  }
</style>