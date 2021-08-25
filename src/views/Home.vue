<template>
  <div class="home">
    <myheader></myheader>
    <template>
      <div class="block carousel">
        <el-carousel height="640px">
          <el-carousel-item v-for="(item,i) in carousel" :key="i">
            <img :src="item.img" alt="">
          </el-carousel-item>
        </el-carousel>
      </div>
    </template>
    <div class="index_icon">
      <ul>
        <li>
          <a href="#phone">
            <img src="/img/index/index_icon/phone.png" alt="">
            <p>智能手机</p>
          </a>
        </li>
        <li>
          <a href="#wearabledevice">
            <img src="/img/index/index_icon/wearabledevice.png" alt="">
            <p>可穿戴设备</p>
          </a>
        </li>
        <li>
          <a href="#tablaturePC">
            <img src="/img/index/index_icon/tablaturePC.png" alt="">
            <p>智能平板</p>
          </a>
        </li>
        <li>
          <a href="#fittings">
            <img src="/img/index/index_icon/fittings.png" alt="">
            <p>智能配件</p>
          </a>
        </li>
        <li>
          <a href="#tablaturePC">
            <img src="/img/index/index_icon/PC.png" alt="">
            <p>个人电脑</p>
          </a>
        </li>
        <li>
          <a href="#TV">
            <img src="/img/index/index_icon/TV.png" alt="">
            <p>电视</p>
          </a>
        </li>
        <li>
          <a href="#tablaturePC">
            <img src="/img/index/index_icon/storage.png" alt="">
            <p>储存产品</p>
          </a>
        </li>
        <li>
          <a href="#TV">
            <img src="/img/index/index_icon/displayer.png" alt="">
            <p>显示器</p>
          </a>
        </li>
        <li>
          <a href="#TV">
            <img src="/img/index/index_icon/mediadevice.png" alt="">
            <p>影音产品</p>
          </a>
        </li>
      </ul>
    </div>
    <div class="main">
      <div class="ads">
        <div>
          <a href="#">
            <img src="/img/index/ads/ads.png" alt="">
          </a>
        </div>
        <div>
          <a href="#">
            <img src="/img/index/ads/ads2.png" alt="">
          </a>
        </div>
        <div>
          <a href="#">
            <img src="/img/index/ads/ads3.png" alt="">
          </a>
        </div>
      </div>
      <div class="adsrow"> 
        <a href="#">
            <img src="/img/index/ads/ads4.jpg" alt="">
        </a>
      </div>
      <div class="bestsales">
        <div class="maintitle">热销推荐</div>
        <div class="salesads">
          <div>
            <router-link to="/productdetail/1">
              <img src="/img/index/bestsales/bestsales1.png" alt="">
            </router-link>
          </div>
          <div>
            <router-link to="/productdetail/1">
              <img src="/img/index/bestsales/bestsales2.png" alt="">
            </router-link>
          </div>
          <div>
            <router-link to="/productdetail/1">
              <img src="/img/index/bestsales/bestsales3.png" alt="">
            </router-link>
          </div>
        </div>
      </div>

      <div class="newsales">
        <div class="maintitle">新品区</div>
        <div class="salesads">
          <div class="newsalesads_left">
            <div>
              <router-link to="/productdetail/1" class="activea">
                <img :src="news1.pic" alt="" class="activeimg">
              </router-link>
              <div class="lefttitle">{{news1.title}}</div>
              <p>新品首销 享3期0利率</p>
              <div class="leftprice">￥{{news1.price.toFixed(2)}}</div>
            </div>
          </div>
          <div class="newsalesads_right">
            <div class="newsalesads_right_tb">
              <div class="newsalesads_right_item">
                <div>
                  <router-link to="/productdetail/1" class="activea">
                    <img :src="news[0].pic" alt="" class="activeimg">
                    <div class="righttitle">{{news[0].title}}</div>
                    <p>新品首销 享3期0利率</p>
                    <div class="rightprice">￥{{news[0].price.toFixed(2)}}</div>
                  </router-link>
                </div>
              </div>
              <div class="newsalesads_right_item">
                <div>
                  <router-link to="/productdetail/1" class="activea">
                    <img :src="news[1].pic" alt="" class="activeimg">
                    <div class="righttitle">{{news[1].title}}</div>
                    <p>新品首销 享3期0利率</p>
                    <div class="rightprice">￥{{news[1].price.toFixed(2)}}</div>
                  </router-link>
                </div>
              </div>
            </div>
            <div class="newsalesads_right_tb">
              <div class="newsalesads_right_item">
                <div>
                  <router-link to="/productdetail/1" class="activea">
                    <img :src="news[2].pic" alt="" class="activeimg">
                    <div class="righttitle">{{news[2].title}}</div>
                    <p>新品首销 享3期0利率</p>
                    <div class="rightprice">￥{{news[2].price.toFixed(2)}}</div>
                  </router-link>
                </div>
              </div>
              <div class="newsalesads_right_item">
                <div>
                  <router-link to="/productdetail/1" class="activea">
                    <img :src="news[3].pic" alt="" class="activeimg">
                    <div class="righttitle">{{news[3].title}}</div>
                    <p>新品首销 享3期0利率</p>
                    <div class="rightprice">￥{{news[3].price.toFixed(2)}}</div>
                  </router-link>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="product">
        <div class="maintitle">
          <span>智能手机</span>
          <a name="phone"></a>
          <router-link to="/productlist">
            <span>查看更多</span>
            <span class="iconfont icon-Group"></span>
          </router-link>
        </div>
        <div class="salesads">
          <div class="productads">
            <img src="/img/index/phone/phoneads.jpg" alt="">
          </div>
          <div class="product_details">
            <ul>
              <li v-for="(p,i) of phone" :key="i">
                <div>
                  <router-link to="/productdetail/1" class="activea">
                    <img :src="p.pic" alt="" class="activeimg">
                    <div class="producttitle">{{p.title}}</div>
                    <p>限时立省3000元</p>
                    <div class="productprice">￥{{p.price.toFixed(2)}}</div>
                  </router-link>
                </div>
              </li>
            </ul>
            <div class="product_carousel">
              <template>
                <el-carousel :interval="4000" type="card">
                  <el-carousel-item v-for="(p,i) in phonecarousel" :key="i">
                    <div>
                      <router-link to="/productdetail/1" class="activea">
                        <img :src="p.pic" alt="" class="activeimg">
                        <div class="producttitle">{{p.title}}</div>
                        <p>至高立省1800元</p>
                        <div class="productprice">￥{{p.price.toFixed(2)}}</div>
                      </router-link>
                    </div>
                  </el-carousel-item>
                </el-carousel>
              </template>
            </div>
          </div>
        </div>
      </div>

      <div class="product">
        <div class="maintitle">
          <span>可穿戴设备</span>
          <a name="wearabledevice"></a>
          <router-link to="/productlist">
            <span>查看更多</span>
            <span class="iconfont icon-Group"></span>
          </router-link>
        </div>
        <div class="salesads">
          <div class="productads">
            <img src="/img/index/wearabledivice/wearabldeviceads.png" alt="">
          </div>
          <div class="product_details">
            <ul>
              <li v-for="(p,i) of wear" :key="i">
                <div>
                  <router-link to="/productdetail/1" class="activea">
                    <img :src="p.pic" alt="" class="activeimg">
                    <div class="producttitle">{{p.title}}</div>
                    <p>限时立省3000元</p>
                    <div class="productprice">￥{{p.price.toFixed(2)}}</div>
                  </router-link>
                </div>
              </li>
            </ul>
            <div class="product_carousel">
              <template>
                <el-carousel :interval="4000" type="card">
                  <el-carousel-item v-for="(p,i) in wearcarousel" :key="i">
                    <div>
                      <router-link to="/productdetail/1" class="activea">
                        <img :src="p.pic" alt="" class="activeimg">
                        <div class="producttitle">{{p.title}}</div>
                        <p>至高立省1800元</p>
                        <div class="productprice">￥{{p.price.toFixed(2)}}</div>
                      </router-link>
                    </div>
                  </el-carousel-item>
                </el-carousel>
              </template>
            </div>
          </div>
        </div>
      </div>

      <div class="product">
        <div class="maintitle">
          <span>平板/电脑/存储</span>
          <a name="tablaturePC"></a>
          <router-link to="/productlist">
            <span>查看更多</span>
            <span class="iconfont icon-Group"></span>
          </router-link>
        </div>
        <div class="salesads">
          <div class="productads">
            <img src="/img/index/PC_tablaturePC_storage/PC_tablaturePC_storageads.png" alt="">
          </div>
          <div class="product_details">
            <ul>
              <li v-for="(p,i) of pc" :key="i">
                <div>
                  <router-link to="/productdetail/1" class="activea">
                    <img :src="p.pic" alt="" class="activeimg">
                    <div class="producttitle">{{p.title}}</div>
                    <p>限时立省3000元</p>
                    <div class="productprice">￥{{p.price.toFixed(2)}}</div>
                  </router-link>
                </div>
              </li>
            </ul>
            <div class="product_carousel">
              <template>
                <el-carousel :interval="4000" type="card">
                  <el-carousel-item v-for="(p,i) in pccarousel" :key="i">
                    <div>
                      <router-link to="/productdetail/1" class="activea">
                        <img :src="p.pic" alt="" class="activeimg">
                        <div class="producttitle">{{p.title}}</div>
                        <p>至高立省1800元</p>
                        <div class="productprice">￥{{p.price.toFixed(2)}}</div>
                      </router-link>
                    </div>
                  </el-carousel-item>
                </el-carousel>
              </template>
            </div>
          </div>
        </div>
      </div>

      <div class="product">
        <div class="maintitle">
          <span>智能产品配件</span>
          <a name="fittings"></a>
          <router-link to="/productlist">
            <span>查看更多</span>
            <span class="iconfont icon-Group"></span>
          </router-link>
        </div>
        <div class="salesads">
          <div class="productads">
            <img src="/img/index/fittings/fittingsads.png" alt="">
          </div>
          <div class="product_details">
            <ul>
              <li v-for="(p,i) of fittings" :key="i">
                <div>
                  <router-link to="/productdetail/1" class="activea">
                    <img :src="p.pic" alt="" class="activeimg">
                    <div class="producttitle">{{p.title}}</div>
                    <p>限时立省3000元</p>
                    <div class="productprice">￥{{p.price.toFixed(2)}}</div>
                  </router-link>
                </div>
              </li>
            </ul>
            <div class="product_carousel">
              <template>
                <el-carousel :interval="4000" type="card">
                  <el-carousel-item v-for="(p,i) in fittingscarousel" :key="i">
                    <div>
                      <router-link to="/productdetail/1" class="activea">
                        <img :src="p.pic" alt="" class="activeimg">
                        <div class="producttitle">{{p.title}}</div>
                        <p>至高立省1800元</p>
                        <div class="productprice">￥{{p.price.toFixed(2)}}</div>
                      </router-link>
                    </div>
                  </el-carousel-item>
                </el-carousel>
              </template>
            </div>
          </div>
        </div>
      </div>

      <div class="product">
        <div class="maintitle">
          <span>电视/影音/显示器</span>
          <a name="TV"></a>
          <router-link to="/productlist">
            <span>查看更多</span>
            <span class="iconfont icon-Group"></span>
          </router-link>
        </div>
        <div class="salesads">
          <div class="productads">
            <img src="/img/index/TV_media/TV_mediaads.png" alt="">
          </div>
          <div class="product_details">
            <ul>
              <li v-for="(p,i) of tv" :key="i">
                <div>
                  <router-link to="/productdetail/1" class="activea">
                    <img :src="p.pic" alt="" class="activeimg">
                    <div class="producttitle">{{p.title}}</div>
                    <p>限时立省3000元</p>
                    <div class="productprice">￥{{p.price.toFixed(2)}}</div>
                  </router-link>
                </div>
              </li>
            </ul>
            <div class="product_carousel">
              <template>
                <el-carousel :interval="4000" type="card">
                  <el-carousel-item v-for="(p,i) in tvcarousel" :key="i">
                    <div>
                      <router-link to="/productdetail/1" class="activea">
                        <img :src="p.pic" alt="" class="activeimg">
                        <div class="producttitle">{{p.title}}</div>
                        <p>至高立省1800元</p>
                        <div class="productprice">￥{{p.price.toFixed(2)}}</div>
                      </router-link>
                    </div>
                  </el-carousel-item>
                </el-carousel>
              </template>
            </div>
          </div>
        </div>
      </div>
    </div>  
    <suspension></suspension>
    <myfooter></myfooter>
  </div>
</template>

<script>

export default {
  name: 'Home',
  data(){
    return{
      carousel:[],
      news1:{price:0},
      news:[],
      phone:[],
      phonecarousel:[],
      wear:[],
      wearcarousel:[],
      pc:[],
      pccarousel:[],
      fittings:[],
      fittingscarousel:[],
      tv:[],
      tvcarousel:[]
    }
  },
  created () {
    this.axios.get("/carsouel").then(res=>{
      this.carousel=res.data;
    });
    this.axios.get('/index').then(res=>{
      this.news1=res.data[0];
      for (let i = 1; i < 5; i++) {
        this.news.push(res.data[i]);
      };
      for (let i = 5; i < 9; i++) {
        this.phone.push(res.data[i]);
      };
      for (let i = 9; i < 17; i++) {
        this.phonecarousel.push(res.data[i]);
      };
      for (let i = 17; i < 21; i++) {
        this.wear.push(res.data[i]);
      };
      for (let i = 21; i < 29; i++) {
        this.wearcarousel.push(res.data[i]);
      };
      for (let i = 29; i < 33; i++) {
        this.pc.push(res.data[i]);
      };
      for (let i = 33; i < 41; i++) {
        this.pccarousel.push(res.data[i]);
      };
      for (let i = 41; i < 45; i++) {
        this.fittings.push(res.data[i]);
      };
      for (let i = 45; i < 52; i++) {
        this.fittingscarousel.push(res.data[i]);
      };
      for (let i = 52; i < 56; i++) {
        this.tv.push(res.data[i]);
      };
      for (let i = 56; i < 64; i++) {
        this.tvcarousel.push(res.data[i]);
      };
    })
  },
  method:{
      handleScroll () {
          console.log(12)
      }
  }
}
</script>

<style lang="scss">
  .home{
    font-family: samsungsharpsans-bold_v2,Microsoft YaHei,Arial,sans-serif;
    .carousel{
      width: 1440px;
      margin: 0 auto;
      .el-carousel__indicators--horizontal {
        left: 237px;
        transform: translateX(0) !important;
        button{
          background-color: #483e40;
        }
      }
      .el-carousel__item:nth-child(2n) {
        background-color: #99a9bf;
      }
      
      .el-carousel__item:nth-child(2n+1) {
        background-color: #d3dce6;
      }
      .el-carousel__button{
        width: 150px;
      }
    }
    .index_icon{
      width: 1440px;
      height: 126px;
      margin: 0 auto;
      >ul{
        margin: 60px 40px 40px;
        display: flex;
        justify-content: center;
        >li{
          width: 150px;
          text-align: center;
          a{
            color: #000;
            p{
              font-size: 14px;
              margin-top: 10px;
            }
          }
        }
      }
    }
    .main{
      width: 1440px;
      margin: 0 auto;
      background-color: #f7f7f7;
      .ads,.salesads{
        margin: 0 70px;
        padding-top: 50px;
        display: flex;
        justify-content: space-between;
      }
      .adsrow{
        margin: 0 70px;
      }
      .bestsales,.newsales,.product{
        padding-top: 50px;
        .maintitle{
          font-size: 40px;
          width: 1300px;
          margin: 0 auto;
        }
      }
      .activea{
        overflow: hidden;
        display: block;
        margin: 0 auto;
        .activeimg{
            transition: 300ms linear;
            &:hover{
            transform: scale(1.1);
            }
        }
      }
      .newsalesads_left{
        >div{
          width: 640px;
          height: 640px;
          background-color: #fff;
          border-radius: 20px;
          text-align: center;
          a{
            width: 440px;
            height: 440px;
            img{
            width: 440px;
            }
          }
          .lefttitle{
            margin: 18px 0 10px;
            font-size: 26px;
            font-weight: bold;
          }
          .leftprice{
            margin-top: 10px;
            font-size: 18px;
            font-weight: bold;
            color: #2189ff;
          }
        }
      }
      .newsalesads_right{
        width: 642px;
        height: 642px;
        display: flex;
        align-content: space-between;
        flex-wrap: wrap;
        .newsalesads_right_tb{
          width: 642px;
          display: flex;
          justify-content: space-between;
          .newsalesads_right_item{
            width: 312px;
            height: 312px;
            background-color: #fff;
            padding: 23px 0;
            border-radius: 20px;
            text-align: center;
            box-sizing: border-box;
            >div{
              a{
                width: 165px;
                color: #000;
                img{
                  width: 165px;
                }
                .righttitle{
                  margin-top: 10px;
                  font-size: 14px;
                  font-weight: bold;
                  height: 46px;
                }
                p{
                  font-size: 12px;
                  padding-bottom: 5px;
                }
                .rightprice{
                  font-size: 16px;
                  font-weight: bold;
                  color: #2189ff;
                }
              }
            }
          }
        }
      }
      .product{
        .maintitle{
          display: flex;
          justify-content: space-between;
          >a{
            font-size: 16px;
            font-weight: bold;
            display: block;
            padding-top: 11px;
            color: #000;
          }
        }
        .product_details{
          width: 976px;
          >ul{
            display: flex;
            justify-content: space-between;
            margin-bottom: 20px;
            li{
              width: 236px;
              border-radius: 20px;
              background-color: #fff;
              padding: 10px 0;
              text-align: center;
              >div{
                a{
                  width: 165px;
                  color: #000;
                  img{
                    width: 165px;
                  }
                  .producttitle{
                    margin-top: 10px;
                    font-size: 14px;
                    font-weight: bold;
                    height: 46px;
                  }
                  p{
                    font-size: 12px;
                    padding-bottom: 5px;
                  }
                  .productprice{
                    font-size: 16px;
                    font-weight: bold;
                    color: #2189ff;
                  }
                }
              }
            }
          }
          .product_carousel{
            .el-carousel__item{
              border-radius: 20px;
              background-color: #fff;
              padding: 10px 0;
              text-align: center;
              >div{
                a{
                  width: 165px;
                  color: #000;
                  img{
                    width: 165px;
                  }
                  .producttitle{
                    margin-top: 10px;
                    font-size: 14px;
                    font-weight: bold;
                    height: 46px;
                  }
                  p{
                    font-size: 12px;
                    padding-bottom: 5px;
                  }
                  .productprice{
                    font-size: 16px;
                    font-weight: bold;
                    color: #2189ff;
                  }
                }
              }
            }
            .el-carousel__indicators--outside{
              opacity: 0;
            }
          }
        }
      }
    }
  }

  
</style>