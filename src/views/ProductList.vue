<template>
    <div class="productlist">
        <myheader></myheader>
        <div class="main">
            <div class="breadcrumb">
                <el-breadcrumb separator-class="el-icon-arrow-right">
                    <el-breadcrumb-item :to="{ path: '/' }">首页</el-breadcrumb-item>
                    <el-breadcrumb-item>智能手机</el-breadcrumb-item>
                </el-breadcrumb>
            </div>
            <div class="select">
                <div class="container">
                    <div class="row">
                        <span>分类</span>
                        <el-radio-group v-model="radioclass" @change="changekw">
                            <el-radio-button label="全部"></el-radio-button>
                            <el-radio-button label="Galaxy S21 Ultra 5G"></el-radio-button>
                            <el-radio-button label="Galaxy S21+ 5G"></el-radio-button>
                            <el-radio-button label="Galaxy S21 5G"></el-radio-button>
                        </el-radio-group>
                    </div>
                    <div class="row">
                        <span>排序</span>
                        <el-radio-group v-model="radiosort">
                            <el-radio-button label="默认"></el-radio-button>
                            <el-radio-button label="价格" @click="sort">
                                <i class="el-icon-d-caret">价格</i>
                            </el-radio-button>
                        </el-radio-group>
                    </div>
                </div>
            </div>
            <div class="content">
                <div class="contentlist">
                    <div class="contentdetails" v-for="(p,i) of products" :key="i">
                        <div class="tip">
                            <span>新品</span>
                        </div>
                        <div class="productimg">
                            <router-link :to="`/productdetail/${p.pid}`">
                                <img :src="p.simg" alt="">
                            </router-link>
                        </div>
                        <div class="productcolor">{{p.color}}</div>
                        <div class="productname">{{p.pname}}</div>
                        <div class="productprice">¥{{p.price.toFixed(2)}}</div>
                    </div>
                </div>
                <el-pagination
                    layout="prev, pager, next"
                    :total="pcount*10" :current-page="pno*1+1"
                    @current-change="changepage">
                </el-pagination>
            </div>
        </div>
        <suspension></suspension>
        <myfooter></myfooter>
    </div>
</template>

<script>
export default {
    props:['kw'],
    data () {
      return {
        radioclass: '全部',
        radiosort: '默认',
        pno:0,
        pcount:0,
        products:[],
        radioval:"",
        sorttip:false
      };
    },
    methods:{
        sort(){
            if(!this.sorttip){
               function sortData(a, b) {
                return b.price - a.price
                }
                this.products.sort(sortData); 
                this.sorttip=true;
                console.log(this.products);
            }else{
                function sortData(a, b) {
                return a.price - b.price
                }
                this.products.sort(sortData); 
                this.sorttip=false;
                console.log(this.products);
            } 
        },
        changekw(val){
            if(val=="全部"){
                this.loadall();
                this.radioval="";
            }else{
                this.radioval=val;
                this.axios.get("/productlist/search",{
                    params:{
                        kw:val
                    }
                }).then(res=>{
                    this.pno=res.data.pno;
                    this.products=res.data.data;
                    this.pcount=res.data.pageCount;
                })
            }
        },
        changepage(i){
            if(this.kw){
                this.load(i-1);
            }else if(this.radioval!=""){
                this.axios.get("/productlist/search",{
                    params:{
                        kw:this.radioval,
                        pno:i-1
                    }
                }).then(res=>{
                    this.pno=res.data.pno;
                    this.products=res.data.data;
                    this.pcount=res.data.pageCount;
                })
            }else{
                this.loadall(i-1);
            }
        },
        load(pno=0){
            this.axios.get("/productlist/search",{
                params:{
                    kw:this.kw,
                    pno
                }
            }).then(res=>{
                this.pno=res.data.pno;
                this.products=res.data.data;
                this.pcount=res.data.pageCount;
            })
        },
        loadall(pno=0){
            this.axios.get("/productlist",{
                params:{
                    pno
                }
            }).then(res=>{
                this.pno=res.data.pno;
                this.products=res.data.data;
                this.pcount=res.data.pageCount;
            })
        }
    },
    created(){
        if(this.kw){
            this.load();
        }else{
            this.loadall();
        }
    },
    watch:{
        kw(){
            this.load();
        }
    }
}
</script>

<style lang="scss">
    .productlist{
        .main{
            width: 1440px;
            margin: 0 auto;
            .breadcrumb{
                height: 70px;
                background: #f7f7f7;
                padding-top: 28px;
                padding-left: 24px;
                box-sizing: border-box;
                font-weight: bold;
                .el-breadcrumb__inner{
                    font-weight: bold !important;
                    color: #303133 !important;
                }
            }
            .select{
                padding: 40px 0 40px 70px;
                background-color: #fff;
                box-sizing: border-box;
                .row{
                    display: flex;
                    >span{
                        width: 53px;
                        height: 52px;
                        display: block;
                        font-size: 20px;
                        line-height: 32px;
                    }
                    .el-radio-group{
                        margin-left: 30px;
                        label{
                            span{
                                padding: 8px 30px;
                                height: 32px;
                                font-size: 14px;
                                border: 1px solid #dcdfe6;
                                border-radius: 16px;
                                margin-right: 15px;
                                margin-bottom: 20px;
                                padding-top: 0;
                                padding-bottom: 0;
                                line-height: 30px;
                                box-shadow: none;
                            }
                        }
                    }
                }
            }
            .content{
                background: #f7f7f7;
                padding: 80px 0 0 70px;
                position: relative;
                margin-bottom: 156px;
                .contentdetails{
                    width: 310px;
                    height: 427px;
                    background: #fff;
                    border-radius: 20px;
                    margin: 0 20px 20px 0;
                    padding-top: 25px;
                    display: inline-block;
                    .tip{
                        height: 68px;
                        span{
                            display: inline-block;
                            padding: 4px 7px 4px 7px;
                            background: #2189ff;
                            border-radius: 18px;
                            font-size: 14px;
                            font-family: SourceHanSansCN-Regular,SourceHanSansCN;
                            font-weight: 400;
                            color: #fff;
                            text-align: center;
                            margin-bottom: 10px;
                            margin-right: 5px;
                            margin-left: 16px;
                        }
                    }
                    .productimg{
                        margin: 0 auto 30px;
                        text-align: center;
                        img{
                            width: 150px;
                            height: 160px;
                        }
                    }
                    .productcolor,.productname{
                        text-align: center;
                        padding-right: 5px;
                        width: 240px;
                        margin: 20px auto;
                        word-wrap: break-word;
                        word-break: break-all;
                        overflow: hidden;
                        text-overflow: ellipsis;
                        display: -webkit-box;
                        -webkit-line-clamp: 2;
                        -webkit-box-orient: vertical;
                        font-size: 18px;
                        font-weight: 700;
                        color: #000;
                        line-height: 22px;
                    }
                    .productname{
                        height: 45px;
                    }
                    .productprice{
                        font-size: 16px;
                        font-weight: 500;
                        color: #2189ff;
                        line-height: 20px;
                        text-align: center;
                    }
                }
                .el-pagination{
                    margin-top: 87px;
                    text-align: center;
                    background-color: #f7f7f7;
                    button,li{
                        background-color: #f7f7f7;
                    }
                }
            }
        }
    }

</style>