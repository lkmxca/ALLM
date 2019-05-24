<template>
  <div class="app-footer">
    
    <!-- 上底部 -->
    <div id="footert">
      <div>
        <h1>64343429<span>位客人与您共同选择自在客</span></h1>
        <ul>
          <li v-for="item of tfoot" :key="item.id">
            <img :src="item.zc_url" alt="">
            <ol>
              <p><strong>{{item.zc_text1}}}</strong></p>
              <p>{{item.zc_text2}}}</p>
              <p>{{item.zc_text3}}}</p>
            </ol>
          </li>
        </ul>
      </div>
    </div>

    <!-- 下底部 -->
    <div id="footerb">
      <div>
        <div>
          <ul>
            <li>
              <ol>关于我们</ol>
              <ol v-for="item of bfoot1" :key="item.id"><a href="javascript:;">{{item.zc_text}}</a></ol>       
            </li>
            <li>
              <ol>关注我们</ol>
              <ol v-for="item of bfoot2" :key="item.id"><a href="javascript:;">{{item.zc_text}}</a></ol>
            </li>
            <li>
              <ol>在线客服</ol>
              <ol><a href="javascript:;">4008-886-232 (中国)</a></ol>
              <ol><a href="javascript:;">(+886) 070-1081-9688 (台湾)</a></ol>
              <ol><a href="javascript:;">(+81) 050-3707-8007 (对应日本商务)</a></ol>
              <ol><a href="javascript:;">周一至周日  09:00~21:00</a></ol>
              <ol><a href="javascript:;">2月4日-2月7日  09:00~18:00</a></ol>
              <ol><a href="javascript:;">询问／投诉／商业合作: contact@zizaike.com</a></ol>
              <ol><a href="javascript:;">台湾QQ群1: <img src="http://127.0.0.1:3500/index/qq_icon.png">加入QQ群 (已满)</a></ol>
              <ol><a href="javascript:;">台湾QQ群2: <img src="http://127.0.0.1:3500/index/qq_icon.png">加入QQ群</a></ol>
              <ol><a href="javascript:;">自在客微信客服: szizaike</a></ol>
            </li>
            <li>
              <ol>
                <img src="http://127.0.0.1:3500/index/footer4.jpg" alt="">
                扫一扫，关注自在客
              </ol>
            </li>
          </ul>
        </div>
        <p class="footerp1">合作伙伴</p>
        <p class="footerp2">
          <ul>
            <li v-for="item of bfoott" :key="item.id"> 
            <img :src="item.zc_url" />
          </li>
          </ul>
        </p>
        <p class="footerp3">Copyright © 2011-2019 zizaike.com copyright</p>
        <p class="footerp4">民宿中介经营许可证: 自在客 健云网络信息技术 観光庁長官（０１）第Ｓ００２２号</p>
        <p class="footerp5">沪ICP备11029422<img src="http://127.0.0.1:3500/index/transparent.png">沪公网安备 31011502005782号</p>
      </div>
    </div>

  </div>
</template>

<script>
  export default {
    data() {
      return {
        tfoot:"",//上底部
        bfoot1:"",//下底部1
        bfoot2:"",//下底部2
        bfoott:"",//下底部图
      }
    },
    created() {
      // 组件创建成功后直接调用
      this.TFoot();//上底部
      this.BFoot1();//下底部1
      this.BFoot2();//下底部2
      this.BFootT();//下底部图
    },
    methods: {
      //下底部图
        BFootT() {
          var url = "http://127.0.0.1:3500/Bfoott";
          this.axios.get(url).then(result=>{
            this.bfoott = result.data.data;
          })
        },
        // 下底部2
        BFoot2() {
          var url = "http://127.0.0.1:3500/Bfoot2";
          this.axios.get(url).then(result=>{
            this.bfoot2 = result.data.data;
          })
        },
        // 下底部1
        BFoot1() {
          var url = "http://127.0.0.1:3500/Bfoot1";
          this.axios.get(url).then(result=>{
            this.bfoot1 = result.data.data;
          })
        },
        // 上底部
        TFoot() {
          var url = "http://127.0.0.1:3500/Tfoot";
          this.axios.get(url).then(result=>{
            this.tfoot = result.data.data;
          }) 
        },
    },
  }
</script>

<style scored>
  /*引入外部css*/
  @import '../css/index.css';
  .app-container{
    padding-bottom:0 !important;
    margin-bottom:0 !important;
  }
  .app-footer a{
    color:#fff !important;
  }
</style>