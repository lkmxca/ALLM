<template>
  <div class="app-home">
    
    <!--头-->
    <home-header></home-header>

    <!--轮播-->
    <div id="nav">
      <ul>
        <li>
          <a href="javascript:;">
            <img src="http://127.0.0.1:3500/index/lunbo5.jpg"  alt=""/>
          </a>
        </li>
        <li>
          <a href="javascript:;">
            <img src="http://127.0.0.1:3500/index/lunbo1.jpg" alt=""/>
          </a>
        </li>
        <li>
          <a href="javascript:;">
            <img src="http://127.0.0.1:3500/index/lunbo2.jpg" alt=""/>
          </a>
        </li>
        <li>
          <a href="javascript:;">
            <img src="http://127.0.0.1:3500/index/lunbo3.jpg" alt=""/>
          </a>
        </li>
        <li>
          <a href="javascript:;">
            <img src="http://127.0.0.1:3500/index/lunbo4.jpg" alt=""/>
          </a>
        </li>
        <li>
          <a href="javascript:;">
            <img src="http://127.0.0.1:3500/index/lunbo5.jpg" alt=""/>
          </a>
        </li>
        <li>
          <a href="javascript:;">
            <img src="http://127.0.0.1:3500/index/lunbo1.jpg" alt=""/>
          </a>
        </li>
      </ul>
      <!-- 左右箭头 -->
      <div class="banner_slider_arrow">
		    <a href="javascript:;" class="arrow_item prev" id="arrow_prev">&lt;</a>
		    <a href="javascript:;" class="arrow_item next" id="arrow_next">&gt;</a>
	    </div>
	    <!-- 下方按钮 -->
	    <div class="banner_slider_dots" id="banner_slider_dots">
		    <a href="javascript:;" class="dots_item dots_active"></a>
		    <a href="javascript:;" class="dots_item"></a>
		    <a href="javascript:;" class="dots_item"></a>
		    <a href="javascript:;" class="dots_item"></a>		
		    <a href="javascript:;" class="dots_item"></a>		
	    </div>
    </div>

    <!-- 热门地区 -->
    <div id="holder">
      <div>
        <h2>热门地区</h2> 
        <ul>   
          <li v-for="item of hotel" :key="item.id">
            <a href="javascript:;"><img :src="item.zc_url" alt=""></a>
            <span class="dspan1"></span>
            <span class="dspan2"></span>
            <span class="dspan3"></span>
            <span class="dspan4"></span>
          </li>
        </ul>        
      </div>       
    </div>

    <!-- 精品民宿 -->
    <div id="good">
      <div>
        <h2>精品民宿</h2>
        <div class="good1" v-for="item of jingp" :key="item.id">
          <div class="good_in1"><img :src="item.zc_url" alt=""></div>
          <div class="good_in2">
            <p>{{item.zc_name}}</p>
            <p>￥{{item.zc_price}}</p>    
            <p>{{item.zc_ider}}</p>  
          </div>
        </div>
      </div>
    </div>

    <!-- 攻略故事 -->
    <div id="gong">
      <div>
        <h2>攻略故事</h2>
        <ul>
          <li v-for="item of gongg" :key="item.id">
            <img :src="item.zc_url" alt="" class="imgg">
            <ol>{{item.zc_text}}</ol>
          </li>
        </ul>
      </div>
    </div>
    
    <!-- 人气民宿 -->
    <div id="people">
      <div>
        <h2>人气民宿</h2>
        <ul>
          <li v-for="item of renqi" :key="item.id">
            <img :src="item.zc_url" alt="">
            <p>
              <span>{{item.zc_text1}}</span>
              <span>￥{{item.zc_price}}</span>
              <span>{{item.zc_text2}}</span>  
            </p>
          </li>
        </ul>
      </div>
    </div>
    
    <!--底部-->
    <home-footer></home-footer>

  </div>
</template>

<script>
  // 引入头部组件
  import HomeHeader from './Header';
  import HomeFooter from './Footer';
  export default {
    data() {
      return {
        lunb:"",//轮播
        hotel:"",//热门地区
        jingp:"",//精品民宿
        gongg:"",//攻略故事
        renqi:"",//人气民宿
        ccc:"啦啦啦"
      }
    },
    name:'home',
    components: {
      HomeHeader,HomeFooter
    },
    created() {
      // 组件创建成功后直接调用
      this.LunBo();//轮播
      this.Hotel();//热门地区
      this.JingP();//精品民宿
      this.GongG();//攻略故事
      this.RenQ();//人气民宿
      require('../js/index_lunbo.js');//引入外部js
    },
    methods: {
      // 人气民宿
      RenQ() {
        var url = "http://127.0.0.1:3500/Renq";
        this.axios.get(url).then(result=>{
          this.renqi = result.data.data;
        }) 
      },
      // 攻略故事
      GongG() {
        var url = "http://127.0.0.1:3500/Gongg";
        this.axios.get(url).then(result=>{
          this.gongg = result.data.data;
        })
      },
      // 精品民宿
      JingP() {
        var url = "http://127.0.0.1:3500/Jingp";
        this.axios.get(url).then(result=>{
          this.jingp = result.data.data;
        })
      },
      // 热门地区
      Hotel() {
        var url = "http://127.0.0.1:3500/Hotel";
        this.axios.get(url).then(result=>{
          this.hotel = result.data.data;
        })
      },
      // 轮播
      LunBo() {
        var url = "http://127.0.0.1:3500/Homel";
        this.axios.get(url).then(result=>{
          this.lunb = result.data.data;
        })
      },
    },
  }
  // 引入外部js
  import jquery from '../js/jquery-1.11.3.js';
  //import indexjs from '../js/index_lunbo.js';
</script>

<style scored>
  /*引入外部css*/
  @import '../css/index.css';
  .app-container{
    padding-bottom:0 !important;
    margin-bottom:0 !important;
  }
  .app-home a{
    color:#fff !important;
  }
  /*轮播*/
  .app-home #nav{
    /*border:1px solid #f00;*/
    margin-top:-40px;
  }
  /*热门地区*/
  .app-home #good div{
    /*border:1px solid #f00;*/
  }
  .app-home #good .good1{
    margin:9px;
  }
  
</style>