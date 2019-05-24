// 引入
import Vue from 'vue'
import Router from 'vue-router'

import HelloContainer from "./components/HelloWorld.vue"
import Muban from "./components/Muban.vue"
import Home from "./components/Home.vue"
import Story from "./components/Story.vue"
import Header from "./components/Header.vue"
import Header2 from "./components/Header2.vue"
import Reg from "./components/Reg.vue"
import Footer from "./components/Footer.vue"
import Login from "./components/Login.vue"




Vue.use(Router)

export default new Router({
  routes: [
    {path:'/',component:HelloContainer},
    {path:'/Muban',component:Muban},
    {path:'/Home',component:Home},
    {path:'/Story',component:Story},
    {path:'/Header',component:Header},
    {path:'/Header2',component:Header2},
    {path:'/Reg',component:Reg},
    {path:'/Footer',component:Footer},
    {path:'/Login',component:Login},
    
  ]


})

