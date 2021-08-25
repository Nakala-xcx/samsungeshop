<template>
  <div class="personal">
    <myheader></myheader>
    <div class="personalmain">
        <div class="personaltable">
            <div class="innertable">
              <el-tabs type="card" tab-position="left">
                <el-tab-pane label="我的订单">
                  <el-tabs v-model="activeName">
                    <el-tab-pane label="全部订单" name="first">
                      <div class="tabitem">
                        <img src="/img/personalpage/nonedata.png" alt="">
                        暂无相关订单信息哦～
                      </div>
                    </el-tab-pane>
                    <el-tab-pane label="待付款" name="second">
                      <div class="tabitem">
                        <img src="/img/personalpage/nonedata.png" alt="">
                        暂无相关订单信息哦～
                      </div>
                    </el-tab-pane>
                    <el-tab-pane label="待收货" name="third">
                      <div class="tabitem">
                        <img src="/img/personalpage/nonedata.png" alt="">
                        暂无相关订单信息哦～
                      </div>
                    </el-tab-pane>
                    <el-tab-pane label="已完成" name="fourth">
                      <div class="tabitem">
                        <img src="/img/personalpage/nonedata.png" alt="">
                        暂无相关订单信息哦～
                      </div>
                    </el-tab-pane>
                    <el-tab-pane label="已取消" name="fifth">
                      <div class="tabitem">
                        <img src="/img/personalpage/nonedata.png" alt="">
                        暂无相关订单信息哦～
                      </div>
                    </el-tab-pane>
                  </el-tabs>
                </el-tab-pane>
                <el-tab-pane label="个人信息" class="pensonalinfo">
                    <p>个人信息</p>
                    <div class="onebar"></div>
                    <div class="infodetail">
                      <div class="avatar">
                        <img src="/img/personalpage/myself/portrait.png" alt="">
                        <div>修改头像</div>
                      </div>
                        <div class="reforminput">
                            <input type="text" oninput="value=value.replace(/^\.+|[^\d.]/g,'')" placeholder="修改手机号码" v-model="phones" @blur="checkPhones" :style="wrongphones">
                        </div>
                        <a class="save" @click="savephone">保存手机号码</a>
                        <div class="reforminput">
                            <input type="password" placeholder="修改密码(6位数字)" v-model="pwds" @blur="checkPwds" :style="wrongpwds">
                        </div>
                        <div class="reforminput">
                            <input type="password" placeholder="确认密码" v-model="repwds" @blur="checkRepwds" :style="wrongrepwds">
                        </div>
                        <a class="save" @click="savepwd">保存密码</a>
                    </div>
                </el-tab-pane>
                <el-tab-pane label="地址管理" class="addressinfo">
                    <p>个人信息</p>
                    <el-button type="info" round plain icon="el-icon-plus">新建地址</el-button>
                    <div class="onebar"></div>
                    <div class="tabitem">
                        <img src="/img/personalpage/nonedata.png" alt="">
                        暂无相关地址信息哦～
                      </div>
                </el-tab-pane>
              </el-tabs> 
            </div>
        </div>
    </div>
    <myfooter></myfooter>
  </div>
</template>

<script>
export default {
    data() {
      return {
        activeName: 'first',
        phones:"",
        pwds:"",  
        repwds:"",  
        wrongphones:{boxShadow:" none"},
        wrongpwds:{boxShadow:" none"},
        wrongrepwds:{boxShadow:" none"},
      };
    },
    methods:{
        checkPhones(){
            var reg=/^1[3-9]\d{9}$/;
            if(!reg.test(this.phones)){
                this.wrongphones.boxShadow="0 0 3px 1px red";
                return false;
            }else{
                this.wrongphones.boxShadow="none";
                return true;
            }
        },
        checkPwds(){
            var reg=/^\d{6}$/;
            if(!reg.test(this.pwds)){
                this.wrongpwds.boxShadow="0 0 3px 1px red";
                return false;
            }else{
                this.wrongpwds.boxShadow="none";
                return true;
            }
        },
        checkRepwds(){
            if(!(this.repwds===this.pwds)){
                this.wrongrepwds.boxShadow="0 0 3px 1px red";
                return false;
            }else{
                this.wrongrepwds.boxShadow="none";
                return true;
            }
        },
        savephone(){
            if (this.checkPhones()){
                
            }
        },
        savepwd(){
            if (this.checkPwds() && this.checkRepwds()){
                
            }
        }
    }
}
</script>



<style lang="scss">
.personal{
  .personalmain{
    background-color: rgb(247, 247, 247);
    width: 100%;
    .personaltable{
      width: 1440px;
      margin: 0 auto;
      background-color: #f7f7f7;
      padding-bottom: 50px;
      padding-top: 40px;
      .innertable{
            width: 1300px;
            margin-left: 70px;
            .el-tabs--card>.el-tabs__header{
              border: none;
              background-color: #fff;
              height: 643px;
            }
            .el-tabs__content{
              width: 1095px;
              height: 643px;
              background: #fff;
              border-radius: 20px;
              padding-left: 37px;
              box-sizing: border-box;
            }
            .tabitem{
              width: 100%;
              display: flex;
              flex-direction: column;
              align-items: center;
              justify-content: space-between;
              padding-top: 251px;
            }
            .pensonalinfo,.addressinfo{
              p{
                font-size: 30px;
                margin-top: 26px;
                color: #000;
                margin-bottom: 35px;
                padding-left: 30px;
                display: inline-block;
              }
              button{
                float: right;
                margin-top: 26px;
                margin-right: 20px;
              }
              .onebar{
                width: 95%;
                height: 1px;
                background-color: #555;
                margin: 0 auto;
              }
              .infodetail{
                display: flex;
                flex-direction: column;
                align-items: center;
                padding: 50px 0;
                .avatar{
                  img{
                      width: 70px;
                      height: 70px;
                  }
                  >div{
                      vertical-align: middle;
                      padding-top: 10px;
                      color: #228aff;
                      cursor: pointer;
                      font-size: 16px; 
                  }
                }
                .reforminput{
                        margin: 24px 0 24px;
                        >input{
                            width: 100%;
                            border: none;
                            border-bottom: 1px solid #8c8c8c;
                        }
                }
                .save{
                  background: #000;
                  color: #fff;
                  width: 95px;
                  height: 20px;
                  border-radius: 30px;
                  line-height: 20px;
                  text-align: center;
                  border: none;
                  font-size: 11px;
                  cursor: pointer;
                }
              }
            }
      }
    }
  }
}
</style>