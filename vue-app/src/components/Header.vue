<template>
  <div class="app-header">
    
    <!--头-->
    <div id="header">
	    <div>
        <ul>
          <li>
            <router-link to="/Home">
              <img src="http://127.0.0.1:3500/index/logo.png" alt=""/>
            </router-link>
          </li>
          <li>
            民宿
            <ol>
              <li v-for="item of tt1" :key="item.id"><a href="javascript:;">{{item.text}}</a></li>
              <!--
              <li><a href="javascript:;">日本</a></li>
              <li><a href="javascript:;">大陆</a></li>
              <li><a href="javascript:;">韩国</a></li>
              <li><a href="javascript:;">泰国</a></li>
              -->
            </ol>
          </li>
          <li>
            <router-link to="/Story">故事</router-link>
          </li>
          <li>
            <img src="http://127.0.0.1:3500/index/slogan.png" alt=""/>
          </li>
        </ul>
        <ul>
          <li><router-link to="/Reg">注册</router-link></li>
          <li><router-link to="/Login">登录</router-link></li>
          <li><router-link to="">帮助</router-link></li>
        </ul>
	    </div>
    </div>

  </div>
</template>

<script>
  export default {
    data() {
      return {
        tt1:"",//绑定头1li
      }
    },
    created() {
      // 组件创建成功后直接调用
      this.Topli1();//头1li
    },
    methods: {
      // 头1li
      Topli1() {
        var url = "http://127.0.0.1:3500/Htop1";
        this.axios.get(url).then(result=>{
          this.tt1 = result.data.data;
        })
      },
    },
  }
</script>

<style scored>
  @import '../css/index.css';
  .app-header a{
    color:#fff !important;
  }
</style>