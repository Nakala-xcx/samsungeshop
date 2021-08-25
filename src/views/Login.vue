<template>
    <div class="login">
        <div class="background">
            <div class="container">
                <div class="left">
                    <div class="logo">
                        <img src="/img/login/samsung_logo.34c0d994.png" alt="">
                    </div>
                    <div class="content">欢迎登录三星网上商城</div>
                    <img src="/img/login/background.jpg" alt="">
                </div>
                <div class="right">
                    <div class="formcontainer">
                        <div class="formtitle">手机号快捷登录</div>
                        <div class="form">
                            <img src="/img/login/user.png" alt="">
                            <div>
                                <input type="text" oninput="value=value.replace(/^\.+|[^\d.]/g,'')" placeholder="请输入手机号" v-model="uphone">
                            </div>
                        </div>
                        <div class="form">
                            <img src="/img/login/pwd.png" alt="">
                            <div>
                                <input type="password" placeholder="请输入密码" v-model="upwd">
                            </div>
                        </div>
                        <div class="loginbutton">
                            <button @click="mylogin">登录</button>
                        </div>
                        <div class="crossline">
                            <span>其他方式登录</span>
                        </div>
                        <div class="otherlogin">
                            <div>
                                <a href="">
                                    <img src="/img/login/samsung.png" alt="">
                                    <div>三星账号登陆</div>
                                </a>
                            </div>
                            <div>
                                <a href="">
                                    <img src="/img/login/weixin.png" alt="">
                                    <div>微信账号登陆</div>
                                </a>
                            </div>
                            <div>
                                <a href="">
                                    <img src="/img/login/zhifubao.png" alt="">
                                    <div>支付宝账号登陆</div>
                                </a>
                            </div>
                        </div>
                        <div class="samsungaccount">
                            注：使用三星账号登录商城或将其他账号绑定三星账号，可享受积分福利。还没有三星账号？
                            <router-link to="/register">立即注册&gt;&gt;</router-link>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import {mapActions} from "vuex"
export default {
    data(){
        return{
            uphone:'',
            upwd:''
        }
    },
    methods:{
    mylogin(){
      this.login({
        uphone:this.uphone,
        upwd:this.upwd
      }).then(res=>{
          if(res.data.code==201){
              this.$alert('手机号码或密码错误，请重新输入', '登录失败', {
                confirmButtonText: '确定'
             });
          }
      })
    },
    ...mapActions([
      "login"
    ])
  }
}
</script>

<style lang="scss">
    .login{
        .background{
            position: relative;
            width: 100%;
            min-height: 100vh;
            background: #000;
            .container{
                position: absolute;
                width: 1300px;
                left: 50%;
                top: 50%;
                transform: translate(-50%,-50%);
                background-color: #000;
                display: flex;
                justify-content: space-between;
                .left{
                    .logo{
                        width: 650px;
                        height: 60px;
                        margin-top: 40px;
                        text-align: center;
                        img{
                            width: 200px;
                        }
                    }
                    .content{
                        width: 650px;
                        margin-top: 30px;
                        font-size: 40px;
                        color: #fff;
                        text-align: center;
                    }
                    >img{
                        width: 520px;
                        margin: 50px 0 0 65px;
                    }
                }
                .right{
                    width: 650px;
                    .formcontainer{
                        margin: 0 50px;
                        border: 1px solid #f0f0f0;
                        border-radius: 10px;
                        background-color: #fff;
                        .formtitle{
                            margin-top: 30px;
                            font-size: 30px;
                            font-weight: bold;
                            text-align: center;
                        }
                        .form{
                            height: 50px;
                            width: 74%;
                            margin: 30px auto;
                            padding-left: 36px;
                            border: 1px solid #f0f0f0;
                            border-radius: 5px;
                            line-height: 50px;
                            position: relative;
                            img{
                                position: absolute;
                                left: 9px;
                                top: 15px;
                                width: 20px;
                            }
                            >div{
                                height: 32px;
                                input{
                                    padding-left: 10px;
                                    border: none;
                                    height: 32px;
                                    width: 95%;
                                    line-height: 32px;
                                }
                            }
                        }
                        .loginbutton{
                            margin: 40px auto;
                            width: 80%;
                            font-size: 16px;
                            button{
                                background-color: #000;
                                border-radius: 36px;
                                height: 50px;
                                line-height: 50px;
                                color: #fff;
                                width: 100%;
                            }
                        }
                        .crossline{
                                width: 80%;
                                height: 1px;
                                background: #888;
                                margin: 50px auto;
                                margin-bottom: 20px;
                                position: relative;
                                span{
                                    padding: 5px;
                                    display: block;
                                    position: absolute;
                                    left: 50%;
                                    top: -50%;
                                    -webkit-transform: translate(-50%,-50%);
                                    transform: translate(-50%,-50%);
                                    background: #fff;
                                    color: #888;
                                }
                        }
                        .otherlogin{
                            margin: 30px auto;
                            width: 80%;
                            display: flex;
                            justify-content: space-around;
                            >div{
                                text-align: center;
                                >a{
                                  color: #000;
                                  div{
                                      margin-top: 5px;
                                  }  
                                }
                            }
                        }
                        .samsungaccount{
                            margin: 20px auto;
                            width: 350px;
                            font-size: 12px;
                            line-height: 1.8;
                            a{
                               color: #228aff;
                               margin-left: 5px;
                            }
                        }
                    }
                }
            }
        }
    }
</style>