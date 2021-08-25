<template>
    <div class="shoppingcart">
        <myheader></myheader>
        <div class="main">
            <div>
                <div class="nodata inner" v-if="nodata">
                    <p>我的购物车</p>
                    <div class="bar barno"></div>
                    <div class="noitem">
                        <img src="/img/personalpage/message/shoppingcart.png" alt="">
                        <div>购物车内暂时没有商品</div>
                        <router-link to="/">继续逛逛</router-link>
                    </div>
                </div>
                <div class="inner" v-else>
                    <p>我的购物车</p>
                    <div class="select">
                        <el-checkbox v-model="checked">全选</el-checkbox>
                        <div>商品</div>
                        <div>单价</div>
                        <div>数量</div>
                        <div>小计</div>
                        <div>操作</div>
                    </div>
                    <div class="productinner">
                        <div>
                           <div class="cart_item" v-for="(item,i) in cart" :key="i">
                               <el-checkbox v-model="item.checked" @click="itemselect(item)"></el-checkbox>
                               <img :src="item.simg" alt="">
                               <div class="productalldetails">
                                   <span>{{item.pname}}</span>
                                   <span>{{item.color}}</span>
                                   <span>{{item.internal_storage}}</span>
                               </div>
                               <div class="productprice">￥{{item.price.toFixed(2)}}</div>
                               <div class="productnum">
                                   <el-input-number v-model="item.num" @change="handleChange" :min="1"></el-input-number>
                               </div>
                               <div class="productcount">￥{{(item.price*num).toFixed(2)}}</div>
                               <div class="productdel">
                                   <template>
                                    <el-popconfirm
                                        title="确定删除吗？"
                                    >
                                        <el-button slot="reference" plain round>删除</el-button>
                                    </el-popconfirm>
                                    </template>
                               </div>
                           </div>
                        </div>
                    </div>
                    <div class="bar"></div>
                    <div class="total">
                        <div class="totalinner">
                            <div class="desc">共2件商品，已选择0件 | 应付总额: </div>
                            <div class="totalprice">¥0</div>
                            <el-button type="info" round icon="el-icon-arrow-right">去结算</el-button>
                        </div>
                    </div>
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
        nodata:true,
        checked: false,
        cart:[{
            simg:"/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor1.jpg",
            pname:"Galaxy S21 Ultra 5G",
            color: "幽夜黑",
            internal_storage:"16GB RAM 512GB ROM",
            pnum:1,
            price:10699
        },{
            simg:"/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor1.jpg",
            pname:"Galaxy S21 Ultra 5G",
            color: "幽夜黑",
            internal_storage:"16GB RAM 512GB ROM",
            pnum:1,
            price:9699
        }],
        num: 1
      };
    },
    methods: {
      handleChange(value) {
        console.log(value);
      }
    }
  };
</script>

<style lang="scss">
 .shoppingcart{
     .main{
            margin: 0 auto;
            max-width: 1440px;
            width: 100%;
            background-color: #f7f7f7;
            >div{
                padding: 30px 0 60px;
                .nodata{
                    .barno{
                        margin-top: 115px !important;
                    }
                    .noitem{
                        display: flex;
                        flex-direction: column;
                        align-items: center;
                        padding: 150px 0;
                        >div{
                            font-size: 29px;
                            padding: 29px 0 50px;
                        }
                        a{
                            background: #000;
                            color: #fff;
                            width: 95px;
                            height: 40px;
                            border-radius: 30px;
                            line-height: 40px;
                            text-align: center;
                        }
                    }
                }
                .inner{
                    background-color: #fff;
                    margin: 30px auto;
                    width: 85%;
                    overflow: hidden;
                    border-radius: 20px;
                    padding: 0 33px;
                    p{
                        font-size: 30px;
                        margin-top: 26px;
                        color: #000;
                        margin-bottom: 35px;
                    }
                    .select{
                        overflow: hidden;
                        border-radius: 10px;
                        padding: 20px 40px;
                        background: #f7f7f7;
                        font-size: 20px;
                        display: flex;
                        text-align: center;
                        .el-checkbox__inner{
                            width: 20px;
                            height: 20px;
                        }
                        .el-checkbox__label{
                            font-size: 20px;
                        }
                        .el-checkbox__input.is-checked+.el-checkbox__label{
                            color: #000;
                        }
                        >div{
                            width: 180px;
                        }
                        &>:nth-child(2){
                            width: 493px;
                            padding-left: 50px;
                        }
                    }
                    .productinner{
                        margin-top: 18px;
                        margin-bottom: 15px;
                        >div{
                            min-height: 140px;
                            padding-top: 28px;
                            padding-left: 43px;
                            .cart_item{
                                display: flex;
                                line-height: 100px;
                                text-align: center;
                                margin-bottom: 40px;
                                .el-checkbox__inner{
                                    width: 20px;
                                    height: 20px;
                                }
                                img{
                                    width: 100px;
                                    height: 100px;
                                    margin-left: 24px;
                                }
                                .productalldetails{
                                    width: 367px;
                                    margin-left: 20px;
                                    display: flex;
                                    flex-direction: column;
                                    align-items: center;
                                    justify-content: center;
                                    span{
                                        display: block;
                                        font-size: 18px;
                                        line-height: 1.1;
                                    }
                                }
                                .productprice{
                                    color: #2189ff;
                                    font-size: 18px;
                                    width: 101px;
                                    margin-left: 55px;
                                }
                                .productnum{
                                    margin-left: 31px;
                                }
                                .productcount{
                                    color: #2189ff;
                                    font-size: 18px;
                                    width: 130px;
                                }
                                .productdel{
                                    width: 70px;
                                    margin-left: 67px;
                                    button{
                                        color: #000;
                                    }
                                }
                            }
                        }
                    }
                    .bar{
                        width: 90%;
                        height: 1px;
                        background-color: #555;
                        margin: 0 auto;
                    }
                    .total{
                        width: 90%;
                        margin: 0 auto;
                        border-radius: 20px;
                        margin-top: 30px;
                        .totalinner{
                            padding: 35px 21px;
                            display: flex;
                            align-items: center;
                            justify-content: flex-end;
                            .totalprice{
                                color: #2189ff;
                                margin-right: 70px;
                            }
                        }
                    }
                }
            }
     }
 }

</style>