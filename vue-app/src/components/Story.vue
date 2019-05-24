<template>
  <div class="app-story">
    
    <!--头-->
    <home-header></home-header>

    <!--内容-->
    <section>
      <div>
        <div class="stdiv1">
          <h6>自在客民宿故事</h6>
          <div class="story_lunbo">
            <ul>
              <li><a href="javascript:;"><img src="http://127.0.0.1:3500/story/top04.jpg" alt=""/></a></li>
              <li><a href="javascript:;"><img src="http://127.0.0.1:3500/story/top01.jpg" alt=""/></a></li>
              <li><a href="javascript:;"><img src="http://127.0.0.1:3500/story/top02.jpg" alt=""/></a></li>
              <li><a href="javascript:;"><img src="http://127.0.0.1:3500/story/top03.jpg" alt=""/></a></li>
              <li><a href="javascript:;"><img src="http://127.0.0.1:3500/story/top04.jpg" alt=""/></a></li>
              <li><a href="javascript:;"><img src="http://127.0.0.1:3500/story/top01.jpg" alt=""/></a></li>
            </ul>
            <!-- 下方按钮 -->
            <div class="banner_slider_dots" id="banner_slider_dots">
              <a href="javascript:;" class="dots_item dots_active"></a>
              <a href="javascript:;" class="dots_item"></a>
              <a href="javascript:;" class="dots_item"></a>
              <a href="javascript:;" class="dots_item"></a>		
            </div>
          </div>
          <h2>每一个民宿的背后都有一份感动</h2>
          <p>
            一个有＂故事＂的民宿老板，不仅是当地最地道的地头蛇，介绍当地最棒的资源给您，并且能 让您亲身感受到台湾人的真心和热情。 ＂过一天他乡的生活＂，是旅游的最美好的事，快来看看哪些民宿主人的故事最您吧！nbsp;&nbsp;&nbsp;&nbsp;[<a href="javascript:;">如何发布故事？</a>]
          </p>
        </div>
        <div class="stdiv2">
          <ul>
            <li v-for="item of stuw" :key="item.id">
              <a href="javascript:;"><img :src="item.zc_url" alt=""/></a>
              <strong>{{item.zc_text1}}</strong>
              <a href="javascript:;">{{item.zc_text2}}</a>
            </li>
          </ul>
        </div>   
      </div>
    </section>

    <!--底部-->
    <footer class="tty">
      <div>
        <ul>
          <li v-for="item of swen1" :key="item.id">
            <h4>{{item.zc_text1}}</h4>
            <a href="javascript:;">{{item.zc_text2}}</a>
            <a href="javascript:;">{{item.zc_text3}}</a>
            <a href="javascript:;">{{item.zc_text4}}</a>
            <a href="javascript:;">{{item.zc_text5}}</a>
            <a href="javascript:;">{{item.zc_text6}}</a>
            <a href="javascript:;">{{item.zc_text7}}</a>
            <a href="javascript:;">{{item.zc_text8}}</a>
          </li>
          <li v-for="item of swen2" :key="item.id">
            <h4>{{item.zc_text1}}</h4>
            <a href="javascript:;">{{item.zc_text2}}</a>
            <a href="javascript:;">{{item.zc_text3}}</a>
            <a href="javascript:;">{{item.zc_text4}}</a>
            <a href="javascript:;">{{item.zc_text5}}</a>
            <a href="javascript:;">{{item.zc_text6}}</a>
            <a href="javascript:;">{{item.zc_text7}}</a>
          </li>
          <li>
            <h4>在线客服</h4>
            <p>
              <span>4008-886-232</span>中国
            </p>
            <p>
              <span>(+886) 070-1000-8007</span>
              (对应日本商务)
            </p>
            <p>周一至周日  09:00~21:00</p>
            <p>contact@zizaike.com</p>
            <p>
              台湾QQ群1:
              <span><img src="http://127.0.0.1:3500/story/qq_icon.png" alt=""/>加入QQ群</span> (已满)
            </p>
            <p>
              台湾QQ群2:
              <span><img src="http://127.0.0.1:3500/story/qq_icon.png" alt=""/>加入QQ群</span>
            </p>
            <p>日本微信客服: zizaikeriben</p>
            <p>
              台湾QQ群1:
              <span><img src="http://127.0.0.1:3500/story/qq_icon.png" alt=""/>加入QQ群</span>
            </p>
          </li>
          <li>
            <p>下载手机版</p>
            <a href="javascript:;"><img src="http://127.0.0.1:3500/story/app_store.png" alt=""/></a>
            <img src="http://127.0.0.1:3500/story/izizaike2.jpg" alt=""/>
            <p>扫一扫，关注自在客</p>
          </li>
        </ul>
        <p class="footerp1">
          Copyright © 2011-2014 zizaike.com 版权所有 <a href="javascript:;">沪ICP备11029422</a>
        </p>
        <p class="footerp2">
          <a href="javascript:;" v-for="item of swent" :key="item.id">
            <img :src="item.zc_url" alt=""/>
          </a>
        </p>
      </div>
      <p class="footerp3"></p>
    </footer>

  </div>
</template>

<script>
  // 引入头部组件
  import HomeHeader from './Header'; 
  export default {
    data() {
      return {
        stuw:"",//中间图文
        swen1:"",//底部文字1
        swen2:"",//底部文字2
        swent:"",//底部图
      }
    },
    // 制作引入外部组件标签
    name:'home',
    components: {
      HomeHeader
    },
    created() {
      // 加载直接晕染
      this.StuW();//中间图文
      this.SWen1();//底部文字1
      this.SWen2();//底部文字2
      this.SWenT();//底部图
      require('../js/story_lunbo.js');//引入外部js
    },
    methods: {
      //底部图
      SWenT() {
        var url = "http://127.0.0.1:3500/SsFoT";
        this.axios.get(url).then(result=>{
          this.swent = result.data.data;
        })
      },
      // 底部文字2
      SWen2() {
        var url = "http://127.0.0.1:3500/Swen2";
        this.axios.get(url).then(result=>{
          this.swen2 = result.data.data;
        })
      },
      // 底部文字1
      SWen1() {
        var url = "http://127.0.0.1:3500/Swen1";
        this.axios.get(url).then(result=>{
          this.swen1 = result.data.data;
        })
      },
      // 中间图文
      StuW() {
        var url = "http://127.0.0.1:3500/Stuw";
        this.axios.get(url).then(result=>{
          this.stuw = result.data.data;
        })
      },
    },
  }
  // 引入外部js
  import jquery from '../js/jquery-1.11.3.js';
  // import indexjs from '../js/story_lunbo.js';
</script>

<style scored>
  /*引入外部css*/
  @import '../css/story.css';
  .app-container{
    padding:0 !important;
  }
  .app-story section{
    /*border:1px solid #f00;*/
    margin-top:38px;
  }
  .app-story .stdiv2 a:link{
    color:#000;
  }
  .app-story .stdiv2 a:hover{
    color:#fff;
  }
  .app-story .tty a{
    color:#666 !important;
  }
</style>