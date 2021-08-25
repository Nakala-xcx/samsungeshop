import Vue from 'vue'
import Vuex from 'vuex'
import axios from "axios"
import router from '../router';

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    uphone:""
  },
  mutations: {
    setUphone(state,uphone){
      state.uphone=uphone;
    }
  },
  actions: {
    login(context,user){
      var res=(async function(){
        var result=await axios.post("/user/login",
        `uphone=${user.uphone}&upwd=${user.upwd}`
        );
        if(result.data.code==200){
          sessionStorage.setItem("uphone",result.data.phone);
          context.commit("setUphone",result.data.phone);
          router.push('/');
        }
        return result;
      })()
      return res;
    }
  },
  modules: {
  }
})
