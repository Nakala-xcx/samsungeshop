import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'

import ElementUI from 'element-ui';
import 'element-ui/lib/theme-chalk/index.css';

import axios from "axios"
Vue.prototype.axios=axios;
axios.defaults.baseURL="http://localhost:3000";

import Header from "./components/Header"
import Footer from "./components/Footer"
import Suspension from "./components/Suspension"
Vue.component("myheader",Header)
Vue.component("myfooter",Footer)
Vue.component("suspension",Suspension)
Vue.use(ElementUI);
Vue.config.productionTip = false

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
