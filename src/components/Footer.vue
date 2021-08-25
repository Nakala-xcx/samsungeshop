<template>
    <div class="footer">
        <el-container>
            <el-main>
                <el-row type="flex" class="row-bg" justify="center">
                    <el-col :span="6">
                        <div class="row">
                            <div class="promise">
                                <img src="/img/icon/footer/icon-logistics.png" alt="">
                                <span>专业客服团队 / 提供当季优惠信息</span>
                            </div>
                            <div class="list_wrap">
                                <div class="list">
                                    <p>产品</p>
                                    <ul>
                                        <li>
                                            <a href="">智能手机</a>
                                        </li>
                                        <li>
                                            <a href="">可穿戴设备</a>
                                        </li>
                                        <li>
                                            <a href="">平板/电脑/存储</a>
                                        </li>
                                        <li>
                                            <a href="">智能产品配件</a>
                                        </li>
                                        <li>
                                            <a href="">电视/影音/显示器</a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="list">
                                    <p>我的三星</p>
                                    <ul>
                                        <li>
                                            <a href="">我的订单</a>
                                        </li>
                                        <li>
                                            <a href="">我的积分</a>
                                        </li>
                                        <li>
                                            <a href="">优惠券</a>
                                        </li>
                                        <li>
                                            <a href="">个人资料</a>
                                        </li>
                                        <li>
                                            <a href="">收货地址</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </el-col>
                    <el-col :span="6">
                        <div class="row">
                            <div class="promise promiseother">
                                <img src="/img/icon/footer/icon-seven.png" alt="">
                                <span>7天无理由退货15天换货</span>
                            </div>
                            <div class="list_wrap">
                                <div class="list">
                                    <p>网上商城指南</p>
                                    <ul>
                                        <li>
                                            <router-link to="/login">账号注册和登录</router-link>
                                        </li>
                                        <li>
                                            <a href="">会员及优惠</a>
                                        </li>
                                        <li>
                                            <a href="">订单操作</a>
                                        </li>
                                        <li>
                                            <a href="">支付相关</a>
                                        </li>
                                        <li>
                                            <a href="">物流相关</a>
                                        </li>
                                        <li>
                                            <a href="">发票和售后服务</a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="list">
                                    <p>服务支持</p>
                                    <ul>
                                        <li>
                                            <a href="">关于商城</a>
                                        </li>
                                        <li>
                                            <a href="">关于三星</a>
                                        </li>
                                        <li>
                                            <a href="">售后网点查询</a>
                                        </li>
                                        <li>
                                            <a href="">联系我们</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </el-col>
                    <el-col :span="6">
                        <div class="row">
                            <div class="promise promiseother">
                                <img src="/img/icon/footer/icon-hand.png" alt="">
                                <span>官方正品请安心购买</span>
                            </div>
                            <div class="promise promiseother">
                                <img src="/img/icon/footer/icon-phone.png" alt="">
                                <div>
                                    <span>服务中心</span>
                                    <p class="contact">400-071-8899 (09：00~22：00)</p>
                                </div>
                            </div>
                            <div class="promise promiseother last">
                                <div class="left">
                                    <p>关注我们</p>
                                </div>
                                <div class="right">
                                    <a href="" alt="">
                                        <img src="/img/icon/footer/icon-wx.png" alt="">
                                        <p>公众号</p>
                                    </a>
                                    <a href="" alt="">
                                        <img src="/img/icon/footer/icon-wb.png" alt="">
                                        <p>&nbsp;&nbsp;微博</p>
                                    </a>
                                    <a href="" alt="">
                                        <img src="/img/icon/footer/icon-app.png" alt="">
                                        <p>下载APP</p>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </el-col>
                </el-row>
            </el-main>
            <el-footer>
                <div class="container">
                    <div class="footer_wrap">
                        <div class="left">
                            <ul>
                                <li><a href="">隐私政策</a></li>
                                <li><a href="">用户协议</a></li>
                            </ul>
                            <p>
                                <a href="">
                                    <img src="/img/icon/footer/icon-record.d0289dc0.png" alt="">
                                    京公网安备 11010502037127号
                                </a>
                                &nbsp;&nbsp;
                                <a href="">京ICP备18036817号-2</a>
                                &nbsp;&nbsp;
                                <a href="">
                                    <img src="/img/icon/footer/icon-gscord.c3e17e54.png" alt="">
                                    营业执照
                                </a>
                            </p>
                        </div>
                        <div class="right">
                            <p>&copy;1995-2021 三星（中国）投资有限公司 版权所有</p>
                            <p>三星（中国）投资有限公司授权北京鹏泰宝尊电子商务有限公司运营三星网上商城并销售产品</p>
                        </div>
                    </div>
                </div>
            </el-footer>
        </el-container>
    </div>
</template>

<style lang="scss">
    .footer{
        .el-main{
            width: 1440px;
            margin: 0 auto;
        }
        .row{
            width: 370px;
            .promiseother{
                margin-left: 38px !important;
            }
            .promise{
                margin: 52px 0 23px 0;
                img{
                    margin-right: 21px;
                }
                >div{
                    display: inline-block;
                    span{
                        display: inline-block;
                        margin-bottom: 3px;
                    }
                    .contact{
                        font-weight: 700;
                        font-size: 15px;
                    }
                }
            }
            .last{
                display: flex;
                justify-content: space-between;
                .left{
                    display: flex;
                    align-items: center;
                }
                .right{
                    display: flex;
                    justify-content: space-between;
                    margin-right: 34px;
                    img{
                        padding-right: 22px;
                        margin-right: 0;
                        height: 34px;
                    }
                    p{
                        font-size: 12px;
                        color: #000;
                    }
                }
            }
            .list_wrap{
                margin-left: 80px;
                height: 270px;
                border-right: 1px solid #ddd;
                .list{
                    float: left;
                    padding-bottom: 40px;
                    padding-right: 56px;
                    >p{
                        height: 33px;
                        padding: 16px 0;
                        font-size: 14px;
                        line-height: 25px;
                        font-weight: 700;
                    }
                    ul{
                        li{
                            padding: 6px 0;
                            a{
                                font-size: 12px;
                                line-height: 1.33;
                                color: #000;
                                &:hover{
                                    text-decoration: underline;
                                    color: rgb(88, 28, 250);
                                }
                            }
                        }
                    }
                }
            }
        }
        .container{
            width: 1440px;
            margin: 0 auto;
            background-color: #000;
            .footer_wrap{
                width: 1100px;
                height: 100px;
                margin: 0 auto;
                a,p{
                    font-size: 12px;
                    line-height: 1.33;
                    color: #fff;
                }
                p,ul{
                        width: 550px;
                        height: 50px;
                        line-height: 50px;
                    }
                .left{
                    float: left;
                    ul{
                       li{
                            float: left;
                            a{
                                padding: 0 12px;
                            }
                        } 
                    }
                    p{
                       img{
                           width: 16px;
                       }
                    }
                }
                .right{
                    float: right;
                }
            }
        }
    }
</style>