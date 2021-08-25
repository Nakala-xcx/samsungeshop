<template>
    <div class="suspension">
      <ul>
        <li>
          <router-link :to="uphone!=''?'/shoppingcart':'/login'">
            <img src="/img/icon/suspension/suspension_shoppingcart.png" alt="">
            <p>购物车</p>
          </router-link>
        </li>
        <li>
          <router-link :to="uphone!=''?'/personal':'/login'">
            <img src="/img/icon/suspension/suspension_personal.png" alt="">
            <p>个人中心</p>
          </router-link>
        </li>
        <li>
          <a href="">
            <img src="/img/icon/suspension/suspension_download.png" alt="">
            <p>下载APP</p>
          </a>
        </li>
        <li>
          <a href="">
            <img src="/img/icon/suspension/suspension_service.png" alt="">
            <p>在线客服</p>
          </a>
        </li>
        <li>
          <a href="">
            <img src="/img/icon/suspension/suspension_weixin.png" alt="">
            <p>公众号</p>
          </a>
        </li>
      </ul>
    </div>
</template>
<script>
import {mapState} from "vuex"
export default {
  computed:{
        ...mapState(["uphone"])
    },
}
</script>

<style lang="scss">
    .suspension{
      ul{
        border: 1px solid #ccc;
        border-right: 0;
        width: 62px;
        background: #fff;
        border-top-left-radius: 10px;
        border-bottom-left-radius: 10px;
        padding-bottom: 23px;
        z-index: 99;
        position: fixed;
        top: 220px;
        right: 0;
        li{
          text-align: center;
          font-size: 11px;
          padding-top: 23px;
          font-weight: bold;
          a{
            color: #000;
          }
        }
      }
    }
</style>