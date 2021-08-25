<template>
    <div class="register">
        <header>
            <div class="reheader">
                <div class="logocontainer">
                    <img src="/img/register/txt_logo_zh.svg" alt="">
                </div>
            </div>
        </header>
        <main>
            <div class="remain">
                <div class="reform">
                    <h1>创建您的三星帐户</h1>
                    <div class="reformdetails">
                        <div class="reforminput">
                            <input type="text" oninput="value=value.replace(/^\.+|[^\d.]/g,'')" placeholder="手机号码(必填)" v-model="phone" @blur="checkPhone" :style="wrongphone">
                        </div>
                        <div class="reforminput">
                            <input type="password" placeholder="密码(6位数字)(必填)" v-model="pwd" @blur="checkPwd" :style="wrongpwd">
                        </div>
                        <div class="reforminput">
                            <input type="password" placeholder="确认密码(必填)" v-model="repwd" @blur="checkRepwd" :style="wrongrepwd">
                        </div>
                        <div class="reforminput">
                            <input type="text" placeholder="姓名" v-model="uname">
                        </div>
                        <template>
                            <div class="block">
                                <span class="demonstration">出生日期</span>
                                <el-date-picker
                                v-model="userdate"
                                type="date"
                                placeholder="选择日期">
                                </el-date-picker>
                            </div>
                        </template>
                        <div class="captcha">
                            <img src="http://127.0.0.1:3000/user/code" title="看不清点击换一张" @click="cimg">
                        </div>
                        <div class="reforminput">
                            <input type="text" placeholder="安全代码" v-model="capcode">
                        </div>
                    </div>
                    <div class="button">
                        <button @click="checkForm">注册</button>
                    </div>
                </div>
            </div>
        </main>
        <footer>
            <div class="refooter">
                <div class="footerlogo">
                    <img src="/img/register/txt_foo_logo_zh.png" alt="">
                </div>
                <div class="footercontent">
                    <ul>
                        <li><a href="">条款和条件</a></li>
                        <li><a href="">三星帐户隐私声明</a></li>
                        <li><a href="">声明</a></li>
                        <li><a href="">联系我们</a></li>
                    </ul>
                    <address>Copyright © 1995-2021 Samsung. All Rights Reserved.</address>
                </div>
            </div>
        </footer>
    </div>
</template>

<script>
export default {
    data() {
      return {
        capcode:'',
        phone:"",
        pwd:"",  
        repwd:"",  
        wrongphone:{boxShadow:" none"},
        wrongpwd:{boxShadow:" none"},
        wrongrepwd:{boxShadow:" none"},
        pickerOptions: {
          disabledDate(time) {
            return time.getTime() > Date.now();
          }
        },
        userdate: '',
        uname:''
      };
    },
    methods:{
        cimg(e){
            e.target.src = "http://127.0.0.1:3000/user/code?t="+new Date().getTime();
        },
        checkPhone(){
            var reg=/^1[3-9]\d{9}$/;
            if(!reg.test(this.phone)){
                this.wrongphone.boxShadow="0 0 3px 1px red";
                return false;
            }else{
                this.wrongphone.boxShadow="none";
                return true;
            }
        },
        checkPwd(){
            var reg=/^\d{6}$/;
            if(!reg.test(this.pwd)){
                this.wrongpwd.boxShadow="0 0 3px 1px red";
                return false;
            }else{
                this.wrongpwd.boxShadow="none";
                return true;
            }
        },
        checkRepwd(){
            if(!(this.repwd===this.pwd)){
                this.wrongrepwd.boxShadow="0 0 3px 1px red";
                return false;
            }else{
                this.wrongrepwd.boxShadow="none";
                return true;
            }
        },
        checkForm(){
            if (this.checkPhone() && this.checkPwd() && this.checkRepwd()){
                this.axios.post('/user/register',`phone=${this.phone}&upwd=${this.pwd}&uname=${this.uname}&birthday=${this.userdate}&code=${this.capcode}`)
                .then(res=>{
                    if(res.data.code==200){
                        this.$alert('即将跳转', '注册成功！').then(res=>{
                            this.$router.push('/login');
                        })
                    }else if(res.data.code==202){
                        this.$alert('用户手机号码已注册', '注册失败！');
                    }else if(res.data.code==201){
                        this.$alert('请重试', '注册失败！');
                    }else if(res.data.code==203){
                        this.$alert('请重新输入', '验证码错误！');
                    }
                })
            }
        }
    }
}
</script>

<style lang="scss">
    .register{
        background-color: #f4f4f4;
        .reheader{
            border-bottom: 1px solid #d5d5d5;
            background-color: #fff;
            .logocontainer{
                margin: 0 auto;
                padding: 36px 0 29px 0;
                width: 1116px;
                img{
                    height: 18px;
                }
            }
        }
        .remain{
            margin-bottom: -1px;
            padding-top: 48px;
            .reform{
                margin: 0 auto;
                width: 640px;
                background-color: #fcfcfc;
                border-radius: 26px;
                border: 1px solid #d9d9d9;
                padding: 60px 72px 48px 72px;
                box-sizing: border-box;
                h1{
                    font-size: 39px;
                    line-height: 1.23;
                    color: #0072de;
                    font-weight: 500;
                    text-align: center;
                    margin-bottom: 35px;
                    }
                .reformdetails{
                    .reforminput{
                        margin: 37px 0 24px;
                        >input{
                            width: 100%;
                            border: none;
                            border-bottom: 1px solid #8c8c8c;
                        }
                    }
                    .block{
                        color: #8c8c8c;
                        .el-date-editor{
                            margin-left: 10px;
                        }
                    }
                    .captcha{
                        margin-top: 37px;
                        margin-bottom: 24px;
                        img{
                            width: 256px;
                            height: 52px;
                        }
                    }
                }
                .button{
                    margin-top: 60px;
                    button{
                        display: block;
                        width: 100%;
                        height: 44px;
                        background-color: #0072de;
                        border: none;
                        border-radius: 20px;
                        text-align: center;
                        font-weight: bold;
                        font-size: 17px;
                        line-height: 44px;
                        color: #fff;
                    }
                }
            }
        }
        .refooter{
            padding: 16px 16px 30px;
            .footerlogo{
                width: 1116px;
                margin: 23px auto 6px;
                display: flex;
                justify-content: flex-end;
                img{
                    width: 201px;
                }
            }
            .footercontent{
                width: 1116px;
                margin: 10px auto;
                display: flex;
                justify-content: space-between;
                ul{
                    li{
                        float: left;
                        font-size: 12px;
                        font-weight: 500;
                        padding: 2px 15px;
                        a{
                            color: #252525;
                        }
                    }
                }
                address{
                    color: #888888;
                    font-size: 12px;
                }
            }
        }
    }
</style>