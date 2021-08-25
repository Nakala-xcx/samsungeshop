<template>
    <div class="productdetail">
        <myheader></myheader>
        <div class="main">
            <div class="breadcrumb">
                <el-breadcrumb separator-class="el-icon-arrow-right">
                    <el-breadcrumb-item :to="{ path: '/' }">首页</el-breadcrumb-item>
                    <el-breadcrumb-item :to="{ path: '/productlist' }">智能手机</el-breadcrumb-item>
                    <el-breadcrumb-item :to="{ path: '/productlist' }">Galaxy S</el-breadcrumb-item>
                    <el-breadcrumb-item>Galaxy S21 Ultra 5G</el-breadcrumb-item>
                </el-breadcrumb>
                <span>
                    <span @click="likeit">
                        <img :src="likeimg" alt="">
                        收藏
                    </span>
                    <span>
                        <img src="/img/icon/Breadcrumb/share.png" alt="">
                        <span>分享</span>
                        <div class="sharepane">
                            分享到
                            <img src="/img/icon/Breadcrumb/weixin.png" alt="">
                            <img src="/img/icon/Breadcrumb/weibo.png" alt="">
                        </div>
                    </span>
                </span>
            </div>
            <div class="details">
                <div class="leftpart">
                    <div class="carousel">
                        <el-carousel indicator-position="outside" arrow="always" :autoplay="false">
                            <el-carousel-item v-for="(p,i) of carousel" :key="i">
                                <img :src="p.lg" alt="">
                                <div class="zoommask" @mouseenter="toggle"  @mouseleave="toggle"  @mousemove="move"></div>
                                <div class="zoom" v-show="hide" :style="maskStyle"></div></el-carousel-item>
                        </el-carousel>
                        <div class="zoomarea" v-show="hide" :style="{
                            'background-position':`-${parseInt(maskStyle.left)*3}px -${parseInt(maskStyle.top)*3}px`
                            }">
                        </div>
                    </div>
                    <div class="productpromise">
                        <div class="icontitle">【商城优势】</div>
                        <ul>
                            <li>
                                <img src="/img/icon/promise/exchange.png" alt="">
                                <div>以旧换新</div>
                            </li>
                            <li>
                                <img src="/img/icon/promise/0.png" alt="">
                                <div>免息分期</div>
                            </li>
                            <li>
                                <img src="/img/icon/promise/service.png" alt="">
                                <div>管家服务</div>
                            </li>
                            <li>
                                <img src="/img/icon/promise/express.png" alt="">
                                <div>免费包邮</div>
                            </li>
                        </ul>
                        <div class="lastone">*以上权益仅限部分商品可享</div>
                    </div>
                </div>
                <div class="rightpart">
                    <div class="righttop">
                        <div class="righttip">
                            <span>人气推荐</span>
                        </div>
                        <h1>{{product.pname}}</h1>
                        <div class="rightprice">
                            <div>￥{{(ssprice?ssprice:product.price).toFixed(2)}}</div>
                        </div>
                        <div class="rightpromise">
                            <div class="promisetitle">商城优势</div>
                            <div class="promisedetail">
                                <span>
                                    <img src="/img/icon/promise/tiny.png" alt="">
                                    <span>以旧换新</span>
                                </span>
                                <span>
                                    <img src="/img/icon/promise/tiny.png" alt="">
                                    <span>分期0利率</span>
                                </span>
                                <span>
                                    <img src="/img/icon/promise/tiny.png" alt="">
                                    <span>管家服务</span>
                                </span>
                                <span>
                                    <img src="/img/icon/promise/tiny.png" alt="">
                                    <span>7天无理由退货</span>
                                </span>
                                <br>
                                <span>
                                    <img src="/img/icon/promise/tiny.png" alt="">
                                    <span>官方正品</span>
                                </span>
                                <span>
                                    <img src="/img/icon/promise/tiny.png" alt="">
                                    <span>免费包邮</span>
                                </span>
                            </div>
                        </div>
                        <div class="rightpromise">
                            <div class="promisetitle">配送</div>
                            <div class="promisedetail">
                                <span>
                                    当日18：00前下单
                                    <br>
                                    预计次日19：00前送达
                                </span>
                            </div>
                        </div>
                        <div class="chooseproduct">
                            <div class="chooseone" @click="chooseone">
                                <button v-for="(p,i) of productspc" :key="i" actived="true" :style="p.fname==product.pname?'border: 1px solid rgb(33, 137, 255);':''"  @click='changeproduct' :data-pid="p.pid">{{p.fname}}</button>
                            </div>
                        </div>
                    </div>
                    <div class="rightbottom">
                        <div class="chooseproduct" v-if="checkinternal_storage">
                            <div class="choosetitle">选择内存</div>
                            <div class="chooseone" @click="chooseone">
                                <button v-for="(p,i) of internal_storage" :key="i" @click="price(p.price)" v-bind:calss="{opennew:opennewone}" :style="p.internal_storage==product.internal_storage?'border: 1px solid rgb(33, 137, 255) !important;':''">{{p.internal_storage}}</button>
                            </div>
                        </div>
                        <div class="chooseproduct">
                            <div class="choosetitle">选择颜色</div>
                            <div class="chooseone" @click="chooseone">
                                <button class="imgbutton" v-for="(p,i) of color" :key="i" v-bind:calss="{opennew:opennewone}" :data-cid="p.ppid" @click="changecolor" :style="p.color==product.simg?'border: 1px solid rgb(33, 137, 255);':''"><img :src="p.color" alt=""></button>
                            </div>
                        </div>
                        <div class="chooseproduct" v-if="checkourservice">
                            <div class="choosetitle">管家服务</div>
                            <div class="chooseone" @click="chooseone">
                                <button v-for="(p,i) of ourservice" :key="i">{{p.ourservice}}</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="detaildes">
                <div class="navbar" @click='choosedes'>
                    <div>Galaxy S21 Ultra 5G</div>
                    <a href="#detail" name="1">商品详情</a>
                    <a href="#specifications" name="2">规格参数</a>
                    <a href="#recommend" name="3">商品推荐</a>
                    <a href="#review" name="4">商品评价</a>
                </div>
                <el-collapse v-model="activeNames">
                    <el-collapse-item title="商品详情" name="1">
                        <a name="detail"></a>
                        <img :src="product.details" alt="">
                    </el-collapse-item>
                    <el-collapse-item title="规格参数" name="2">
                        <a name="specifications"></a>
                        <div>
                            <div class="spec-list">
                                <h4>处理器</h4>
                                <div>
                                    <h5>CPU主频</h5>
                                    <p>2.84GHz, 2.4GHz, 1.8GHz</p>
                                </div>
                                <div>
                                    <h5>CPU核数</h5>
                                    <p>八核</p>
                                </div>
                            </div>
                            <div class="spec-list">
                                <h4>显示屏</h4>
                                <div>
                                    <h5>尺寸</h5>
                                    <p>6.8英寸(直角)/6.6英寸(圆角)</p>
                                </div>
                                <div>
                                    <h5>分辨率</h5>
                                    <p>3200 x 1440 (Quad HD+)</p>
                                </div>
                                <div>
                                    <h5>类型</h5>
                                    <p>动态 AMOLED 2x</p>
                                </div>
                                <div class="color">
                                    <h5>色彩</h5>
                                    <p>1600万色</p>
                                </div>
                            </div>
                            <div class="spec-list">
                                <h4> 支持S Pen</h4>
                                <div>
                                    <h5>支持S Pen</h5>
                                    <p>支持</p>
                                </div>
                            </div>
                        </div>
                        <div class="memory_disclaimer">
                            *本网站提供的屏幕和图像内容，是仅为说明目的而展示的模拟画面。产品图片以及型号、数据、功能、性能、规格参数、用户界面和其他产品信息等仅供参考，三星有可能对上述内容进行改进，具体信息请参照产品实物、产品说明书。除非经特殊说明，本网站中所涉及的数据均为三星内部测试结果，涉及的对比均为与三星产品相比较。
                            <br>
                            *Galaxy S21 Ultra 5G屏幕为6.8英寸是屏幕圆角拉伸为直角时的对角线长度，6.6英寸是圆角对角线长度；由于存在圆角和相机孔，实际可视面积略小。
                            <br>
                            *Galaxy S21 Ultra 5G为5000毫安时，在第三方实验室条件下测试的典型值。典型值是指依据IEC61960标准对电池样品检测后根据偏差值加权评估而得出的近似平均值。与该典型值相对应的额定容量 Galaxy S21 Ultra 5G为4855 mAh。实际电池续航实际可能因网络环境、使用模式和其他因素的不同而异。
                            <br>
                            *5G网络的可用性取决于国家、运营商和用户环境。
                            <br>
                            *可用性和实际使用质量可能因网络条件、国家和网络供应商的不同而不同。
                            <br>
                            *当插入两张SIM卡时，主卡可支持移动的5G/4G/2G，联通的5G/4G/3G/2G，电信的5G/4G，副卡可支持移动的4G/2G，联通的4G/3G/2G，电信的4G电信卡必须开通VoLTE服务。
                            <br>
                            *操作系统和预置应用程序占用部分存储空间, 因此实际用户可用空间少于存储器标称容量。操作系统或软件版本的更新可能会导致用户可用空间发生变化。
                            <br>
                            *实际网络和频段支持情况取决于当地运营商的具体服务部署情况。
                            <br>
                            *尺寸和重量可能因设备的配置和制造过程而异。
                            <br>
                        </div>
                    </el-collapse-item>
                    <el-collapse-item title="商品推荐" name="3">
                        <a name="recommend"></a>
                        <ul>
                            <li>
                                <div class="contentdetails">
                                    <div class="productimg">
                                        <img src="/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor1.jpg" alt="">
                                    </div>
                                    <div class="productcolor">幽夜黑</div>
                                    <div class="productname">Galaxy S21 Ultra 5G</div>
                                    <div class="productprice">¥9399.00</div>
                                    <el-button plain round>立即购买</el-button>
                                </div>
                            </li>
                            <li>
                                <div class="contentdetails">
                                    <div class="productimg">
                                        <img src="/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor1.jpg" alt="">
                                    </div>
                                    <div class="productcolor">幽夜黑</div>
                                    <div class="productname">Galaxy S21 Ultra 5G</div>
                                    <div class="productprice">¥9399.00</div>
                                    <el-button plain round>立即购买</el-button>
                                </div>
                            </li>
                            <li>
                                <div class="contentdetails">
                                    <div class="productimg">
                                        <img src="/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor1.jpg" alt="">
                                    </div>
                                    <div class="productcolor">幽夜黑</div>
                                    <div class="productname">Galaxy S21 Ultra 5G</div>
                                    <div class="productprice">¥9399.00</div>
                                    <el-button plain round>立即购买</el-button>
                                </div>
                            </li>
                            <li>
                                <div class="contentdetails">
                                    <div class="productimg">
                                        <img src="/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor1.jpg" alt="">
                                    </div>
                                    <div class="productcolor">幽夜黑</div>
                                    <div class="productname">Galaxy S21 Ultra 5G</div>
                                    <div class="productprice">¥9399.00</div>
                                    <el-button plain round>立即购买</el-button>
                                </div>
                            </li>
                        </ul>
                    </el-collapse-item>
                    <el-collapse-item title="商品评价" name="4">
                        <a name="review"></a>
                        <div class="reviewtitle">
                            <div class="all">全部评价</div>
                            <el-rate v-model="rate" :disabled="true"></el-rate>
                        </div>
                        <div class="allreview">
                            <div class="reviewlist">
                                <div class="reviewuser">
                                    <img src="/img/icon/user_review/portrait_normal.png" alt="">
                                    <div>
                                        <span>user</span>
                                        <el-rate v-model="rate" :disabled="true"></el-rate>
                                    </div>
                                </div>
                                <div class="userbuy">Galaxy S21 Ultra 5G 幽夜黑 16GB+512GB</div>
                                <div class="userbuy">质量很好，物流也不错！</div>
                                <div class="userbuy"></div>
                                <div class="userbuy userdate">2021-07-24 23:22:24</div>
                                <div class="servicereplay">
                                    <img src="/img/icon/user_review/portrait_service.png" alt="">
                                    <div>
                                        <div class="replay"></div>
                                        <div class="replay">您好，感谢您的评价，我们不断的追求，不断的改进，Galaxy S21 Ultra 5G不仅能为您降低有害蓝光,还能自适应调节蓝光，更好地呵护您的眼睛,减缓眼疲劳。夜晚,当您看完喜欢的电影后,仍可轻松入睡。超顺滑120Hz自适应屏幕可快速响应您操作的流畅屏幕。该屏幕反应灵敏,可根据您所看的内容调整刷新率让您能够体验更多喜爱的内容。我们将不断完善，争取做的更好，回报您的厚爱！</div>
                                        <div class="replay servicedate">2021-07-25 16:03:10</div>
                                    </div>
                                    
                                </div>
                            </div>
                            <div class="reviewlist">
                                <div class="reviewuser">
                                    <img src="/img/icon/user_review/portrait_normal.png" alt="">
                                    <div>
                                        <span>user</span>
                                        <el-rate v-model="rate" :disabled="true"></el-rate>
                                    </div>
                                </div>
                                <div class="userbuy">Galaxy S21 Ultra 5G 幽夜黑 16GB+512GB</div>
                                <div class="userbuy">质量很好，物流也不错！</div>
                                <div class="userbuy"></div>
                                <div class="userbuy userdate">2021-07-24 23:22:24</div>
                                <div class="servicereplay">
                                    <img src="/img/icon/user_review/portrait_service.png" alt="">
                                    <div>
                                        <div class="replay"></div>
                                        <div class="replay">您好，感谢您的评价，我们不断的追求，不断的改进，Galaxy S21 Ultra 5G不仅能为您降低有害蓝光,还能自适应调节蓝光，更好地呵护您的眼睛,减缓眼疲劳。夜晚,当您看完喜欢的电影后,仍可轻松入睡。超顺滑120Hz自适应屏幕可快速响应您操作的流畅屏幕。该屏幕反应灵敏,可根据您所看的内容调整刷新率让您能够体验更多喜爱的内容。我们将不断完善，争取做的更好，回报您的厚爱！</div>
                                        <div class="replay servicedate">2021-07-25 16:03:10</div>
                                    </div>
                                    
                                </div>
                            </div>
                            <div class="reviewlist">
                                <div class="reviewuser">
                                    <img src="/img/icon/user_review/portrait_normal.png" alt="">
                                    <div>
                                        <span>user</span>
                                        <el-rate v-model="rate" :disabled="true"></el-rate>
                                    </div>
                                </div>
                                <div class="userbuy">Galaxy S21 Ultra 5G 幽夜黑 16GB+512GB</div>
                                <div class="userbuy">质量很好，物流也不错！</div>
                                <div class="userbuy"></div>
                                <div class="userbuy userdate">2021-07-24 23:22:24</div>
                                <div class="servicereplay">
                                    <img src="/img/icon/user_review/portrait_service.png" alt="">
                                    <div>
                                        <div class="replay"></div>
                                        <div class="replay">您好，感谢您的评价，我们不断的追求，不断的改进，Galaxy S21 Ultra 5G不仅能为您降低有害蓝光,还能自适应调节蓝光，更好地呵护您的眼睛,减缓眼疲劳。夜晚,当您看完喜欢的电影后,仍可轻松入睡。超顺滑120Hz自适应屏幕可快速响应您操作的流畅屏幕。该屏幕反应灵敏,可根据您所看的内容调整刷新率让您能够体验更多喜爱的内容。我们将不断完善，争取做的更好，回报您的厚爱！</div>
                                        <div class="replay servicedate">2021-07-25 16:03:10</div>
                                    </div>
                                    
                                </div>
                            </div>
                            <div class="reviewlist">
                                <div class="reviewuser">
                                    <img src="/img/icon/user_review/portrait_normal.png" alt="">
                                    <div>
                                        <span>user</span>
                                        <el-rate v-model="rate" :disabled="true"></el-rate>
                                    </div>
                                </div>
                                <div class="userbuy">Galaxy S21 Ultra 5G 幽夜黑 16GB+512GB</div>
                                <div class="userbuy">质量很好，物流也不错！</div>
                                <div class="userbuy"></div>
                                <div class="userbuy userdate">2021-07-24 23:22:24</div>
                                <div class="servicereplay">
                                    <img src="/img/icon/user_review/portrait_service.png" alt="">
                                    <div>
                                        <div class="replay"></div>
                                        <div class="replay">您好，感谢您的评价，我们不断的追求，不断的改进，Galaxy S21 Ultra 5G不仅能为您降低有害蓝光,还能自适应调节蓝光，更好地呵护您的眼睛,减缓眼疲劳。夜晚,当您看完喜欢的电影后,仍可轻松入睡。超顺滑120Hz自适应屏幕可快速响应您操作的流畅屏幕。该屏幕反应灵敏,可根据您所看的内容调整刷新率让您能够体验更多喜爱的内容。我们将不断完善，争取做的更好，回报您的厚爱！</div>
                                        <div class="replay servicedate">2021-07-25 16:03:10</div>
                                    </div>
                                    
                                </div>
                            </div>
                            <div class="reviewlist">
                                <div class="reviewuser">
                                    <img src="/img/icon/user_review/portrait_normal.png" alt="">
                                    <div>
                                        <span>user</span>
                                        <el-rate v-model="rate" :disabled="true"></el-rate>
                                    </div>
                                </div>
                                <div class="userbuy">Galaxy S21 Ultra 5G 幽夜黑 16GB+512GB</div>
                                <div class="userbuy">质量很好，物流也不错！</div>
                                <div class="userbuy"></div>
                                <div class="userbuy userdate">2021-07-24 23:22:24</div>
                                <div class="servicereplay">
                                    <img src="/img/icon/user_review/portrait_service.png" alt="">
                                    <div>
                                        <div class="replay"></div>
                                        <div class="replay">您好，感谢您的评价，我们不断的追求，不断的改进，Galaxy S21 Ultra 5G不仅能为您降低有害蓝光,还能自适应调节蓝光，更好地呵护您的眼睛,减缓眼疲劳。夜晚,当您看完喜欢的电影后,仍可轻松入睡。超顺滑120Hz自适应屏幕可快速响应您操作的流畅屏幕。该屏幕反应灵敏,可根据您所看的内容调整刷新率让您能够体验更多喜爱的内容。我们将不断完善，争取做的更好，回报您的厚爱！</div>
                                        <div class="replay servicedate">2021-07-25 16:03:10</div>
                                    </div>
                                    
                                </div>
                            </div>
                            <div class="reviewlist">
                                <div class="reviewuser">
                                    <img src="/img/icon/user_review/portrait_normal.png" alt="">
                                    <div>
                                        <span>user</span>
                                        <el-rate v-model="rate" :disabled="true"></el-rate>
                                    </div>
                                </div>
                                <div class="userbuy">Galaxy S21 Ultra 5G 幽夜黑 16GB+512GB</div>
                                <div class="userbuy">质量很好，物流也不错！</div>
                                <div class="userbuy"></div>
                                <div class="userbuy userdate">2021-07-24 23:22:24</div>
                                <div class="servicereplay">
                                    <img src="/img/icon/user_review/portrait_service.png" alt="">
                                    <div>
                                        <div class="replay"></div>
                                        <div class="replay">您好，感谢您的评价，我们不断的追求，不断的改进，Galaxy S21 Ultra 5G不仅能为您降低有害蓝光,还能自适应调节蓝光，更好地呵护您的眼睛,减缓眼疲劳。夜晚,当您看完喜欢的电影后,仍可轻松入睡。超顺滑120Hz自适应屏幕可快速响应您操作的流畅屏幕。该屏幕反应灵敏,可根据您所看的内容调整刷新率让您能够体验更多喜爱的内容。我们将不断完善，争取做的更好，回报您的厚爱！</div>
                                        <div class="replay servicedate">2021-07-25 16:03:10</div>
                                    </div>
                                    
                                </div>
                            </div>
                            <div class="reviewlist">
                                <div class="reviewuser">
                                    <img src="/img/icon/user_review/portrait_normal.png" alt="">
                                    <div>
                                        <span>user</span>
                                        <el-rate v-model="rate" :disabled="true"></el-rate>
                                    </div>
                                </div>
                                <div class="userbuy">Galaxy S21 Ultra 5G 幽夜黑 16GB+512GB</div>
                                <div class="userbuy">质量很好，物流也不错！</div>
                                <div class="userbuy"></div>
                                <div class="userbuy userdate">2021-07-24 23:22:24</div>
                                <div class="servicereplay">
                                    <img src="/img/icon/user_review/portrait_service.png" alt="">
                                    <div>
                                        <div class="replay"></div>
                                        <div class="replay">您好，感谢您的评价，我们不断的追求，不断的改进，Galaxy S21 Ultra 5G不仅能为您降低有害蓝光,还能自适应调节蓝光，更好地呵护您的眼睛,减缓眼疲劳。夜晚,当您看完喜欢的电影后,仍可轻松入睡。超顺滑120Hz自适应屏幕可快速响应您操作的流畅屏幕。该屏幕反应灵敏,可根据您所看的内容调整刷新率让您能够体验更多喜爱的内容。我们将不断完善，争取做的更好，回报您的厚爱！</div>
                                        <div class="replay servicedate">2021-07-25 16:03:10</div>
                                    </div>
                                    
                                </div>
                            </div>
                            <div class="reviewlist">
                                <div class="reviewuser">
                                    <img src="/img/icon/user_review/portrait_normal.png" alt="">
                                    <div>
                                        <span>user</span>
                                        <el-rate v-model="rate" :disabled="true"></el-rate>
                                    </div>
                                </div>
                                <div class="userbuy">Galaxy S21 Ultra 5G 幽夜黑 16GB+512GB</div>
                                <div class="userbuy">质量很好，物流也不错！</div>
                                <div class="userbuy"></div>
                                <div class="userbuy userdate">2021-07-24 23:22:24</div>
                                <div class="servicereplay">
                                    <img src="/img/icon/user_review/portrait_service.png" alt="">
                                    <div>
                                        <div class="replay"></div>
                                        <div class="replay">您好，感谢您的评价，我们不断的追求，不断的改进，Galaxy S21 Ultra 5G不仅能为您降低有害蓝光,还能自适应调节蓝光，更好地呵护您的眼睛,减缓眼疲劳。夜晚,当您看完喜欢的电影后,仍可轻松入睡。超顺滑120Hz自适应屏幕可快速响应您操作的流畅屏幕。该屏幕反应灵敏,可根据您所看的内容调整刷新率让您能够体验更多喜爱的内容。我们将不断完善，争取做的更好，回报您的厚爱！</div>
                                        <div class="replay servicedate">2021-07-25 16:03:10</div>
                                    </div>
                                    
                                </div>
                            </div>
                            <div class="reviewlist">
                                <div class="reviewuser">
                                    <img src="/img/icon/user_review/portrait_normal.png" alt="">
                                    <div>
                                        <span>user</span>
                                        <el-rate v-model="rate" :disabled="true"></el-rate>
                                    </div>
                                </div>
                                <div class="userbuy">Galaxy S21 Ultra 5G 幽夜黑 16GB+512GB</div>
                                <div class="userbuy">质量很好，物流也不错！</div>
                                <div class="userbuy"></div>
                                <div class="userbuy userdate">2021-07-24 23:22:24</div>
                                <div class="servicereplay">
                                    <img src="/img/icon/user_review/portrait_service.png" alt="">
                                    <div>
                                        <div class="replay"></div>
                                        <div class="replay">您好，感谢您的评价，我们不断的追求，不断的改进，Galaxy S21 Ultra 5G不仅能为您降低有害蓝光,还能自适应调节蓝光，更好地呵护您的眼睛,减缓眼疲劳。夜晚,当您看完喜欢的电影后,仍可轻松入睡。超顺滑120Hz自适应屏幕可快速响应您操作的流畅屏幕。该屏幕反应灵敏,可根据您所看的内容调整刷新率让您能够体验更多喜爱的内容。我们将不断完善，争取做的更好，回报您的厚爱！</div>
                                        <div class="replay servicedate">2021-07-25 16:03:10</div>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                    </el-collapse-item>
                </el-collapse>
            </div>
            <div class="buyproduct">
                <div>
                    <div class="buyname">
                        <div>Galaxy S21 Ultra 5G</div>
                        <div>
                            <span>12GB RAM 256GB ROM</span>
                            <span><span>/ </span>幽夜黑</span>
                        </div>
                    </div>
                    <div class="numprice">
                        <el-input-number v-model="num" @change="handleChange" :min="1"></el-input-number>
                        <span class="text">总价格:<span class="price">￥{{totalprice.toFixed(2)}}</span></span>
                    </div>
                    <div class="buybutton">
                        <el-button round plain>加入购物车</el-button>
                        <el-button type="primary" plain round>立即购买</el-button>
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
    props:['pid'],
    data(){
        return{
            likeimg:"/img/icon/Breadcrumb/like.png",
            num: 1,
            activeNames: ['1'],
            rate:5,
            hide:false,
            maskStyle:{
                left:"0",
                top:"0"
            },
            carousel:[],
            product:{},
            productspc:[],
            ourservice:[],
            internal_storage:[],
            color:[],
            checkourservice:true,
            checkinternal_storage:true,
            ssprice:null,
            count:1,
            opennewone:false
        }
    },
    created(){
        this.loadcarousel(this.pid);
        this.loadproduct(this.pid);
    },
    computed:{
        totalprice(){
            if(this.ssprice==null){
                return this.count*this.product.price;
            }else{
                return this.count*this.ssprice;
            }
            
        }
    },
    methods:{
        price(i){
            this.ssprice=i;
        },
        changeproduct(e){
            var ppid=e.target.dataset.pid;
            this.loadproduct(ppid);
            this.loadcarousel(ppid);
            this.ssprice=null;
            this.opennewone=true;
        },
        changecolor(e){
            var cid=e.currentTarget.dataset.cid;
            this.loadproduct(cid);
            this.loadcarousel(cid);
        },
        loadproduct(id){
            this.axios.get('/detail/product',{
                params:{
                    pid:id
                }
            }).then(res=>{
                res.data.ourservice.splice(4);
                this.product=res.data.product;
                this.productspc=res.data.productspc;
                this.ourservice=res.data.ourservice;
                this.internal_storage=res.data.internal_storage;
                this.color=res.data.color;
                if(this.ourservice[0].ourservice==null){
                this.checkourservice=false;
                }
                if(this.internal_storage[0].internal_storage==null){
                    this.checkinternal_storage=false;
                }
            })
        },
        loadcarousel(id){
            this.axios.get('/detail/carousel',{
                params:{
                    pid:id
                }
            }).then(res=>{
                this.carousel=res.data;
            })
        },
        move(e){
            var left=e.offsetX-25;
            var top=e.offsetY-25;
            if(left<0) left=0; else if(left>500) left=500;
            if(top<0) top=0; else if(top>500) top=500;
            this.maskStyle={
                left:left+"px",
                top:top+"px"
            }
        },
        toggle(){
            this.hide=!this.hide;
        },

        likeit(){
            if(this.likeimg=="/img/icon/Breadcrumb/like.png"){
                this.$message({
                    message: '收藏成功',
                    center: true,
                    offset:300,
                    showClose:true,
                    type: 'success'
                });
                this.likeimg="/img/icon/Breadcrumb/likeblack.png";
            }else{
                this.$message({
                    message: '取消收藏',
                    center: true,
                    offset:300,
                    showClose:true,
                    type: 'success'
                });
                this.likeimg="/img/icon/Breadcrumb/like.png";
            }
        },

        handleChange(value) {
            this.count=value;
        },

        chooseone(e){
            if(e.target.nodeName=="BUTTON"){
                e.target.parentElement.children.forEach(item => {
                    item.style.border="1px solid #ddd";
                });
                e.target.style.border="1px solid #2189ff";
            }
        },

        choosedes(e){
            if(e.target.nodeName=="A"){
                e.target.parentElement.children.forEach(item => {
                    item.style.borderBottom="none";
                });
                e.target.style.borderBottom="3px solid #2189ff";
                this.activeNames=e.target.name;
            }
        }
    }
}
</script>

<style lang="scss">
    .main{
        width: 1440px;
        margin: 0 auto;
        .breadcrumb{
            height: 70px;
            background: #f7f7f7;
            padding-top: 28px;
            padding-left: 24px;
            padding-right: 24px;
            box-sizing: border-box;
            font-weight: bold;
            display: flex;
            justify-content: space-between; 
            position: relative;
            .el-breadcrumb__inner{
                font-weight: bold !important;
                color: #303133 !important;
            }
            >span{
                font-size: 14px;
                img{
                    width: 25px;
                }
                &>:nth-child(1){
                    margin-right: 30px;
                    cursor: pointer;
                }
                &>:nth-child(2){
                    display: inline-block;
                    height: 100%;
                    span,img{
                        cursor: pointer;
                    }
                }
                &>:nth-child(2):hover>.sharepane{
                    display: block;
                }
                .sharepane{
                    display: none;
                    position: absolute;
                    right: 0;
                    top: 70px;
                    line-height: 40px;
                    width: 192px;
                    padding: 15px 10px;
                    padding-left: 20px;
                    background: #ddd;
                    border-radius: 10px;
                    font-weight: 700;
                    z-index: 1000;
                    box-sizing: border-box;
                    img{
                        width: 40px;
                        margin-left: 14px;
                        cursor: pointer;
                    }
                }
            }
        }
        .details{
            padding-left: 70px;
            padding-right: 70px;
            padding-bottom: 60px;
            margin: 60px auto;
            margin-bottom: 0;
            clear: both;
            overflow: hidden;
            display: flex;
            justify-content: space-between;
            .leftpart{
                width: 550px;
                height: 845px;
                .carousel{
                    position: relative;
                    .zoom{
                        position: absolute;
                        background-color: #ccc;
                        opacity: 0.5;
                        width: 50px;
                        height: 50px;
                        z-index: 100;
                    }
                    .zoommask{
                        width: 550px;
                        height: 550px;
                        position: absolute;
                        top: 0;
                        left: 0;
                        z-index: 110;
                    }
                    .zoomarea{
                        width: 1100px;
                        height: 1100px;
                        position: absolute;
                        top: 0;
                        left: 550px;
                        background-image: url('/img/product/phone/Galaxy S21 Ultra 5G/previews1/previews1.jpg');
                        background-size: 2200px 2200px;
                        z-index: 101;
                    }
                    .el-carousel{
                        text-align: center;
                        .el-carousel__container{
                            width: 550px;
                            height: 580px;
                            img{
                                width: 550px;
                                height: 550px;
                            }
                        }
                        .el-carousel__indicators{
                            border-radius: 30px;
                            border: 1px solid #ccc;
                            display: inline-block;
                            padding-left: 20px;
                            padding-right: 20px;
                            height: 24px;
                            box-sizing: border-box;  
                            .el-carousel__indicator{
                                padding-top: 0;
                                padding-bottom: 0;
                            }
                            button{
                                width: 8px;
                                height: 8px;
                                display: inline-block;
                                border-radius: 50%;
                                background: #000;
                            }
                        }
                    }
                }
                .productpromise{
                    width: 100%;
                    border-radius: 10px;
                    background: #f7f7f7;
                    padding: 20px 0;
                    margin-top: 35px;
                    .icontitle{
                        font-size: 16px;
                        font-weight: 700;
                        width: 100%;
                        margin-bottom: 20px;
                        margin-top: 10px;
                        padding-left: 30px;
                    }
                    ul{
                        width: 100%;
                        display: flex;
                        justify-content: space-between;
                        li{
                            text-align: center;
                            width: 25%;
                            img{
                                width: 55px;
                                height: 55px;
                            }
                            div{
                                font: 15px;
                                color: #333333;
                            }
                        }
                    }
                    .lastone{
                        text-align: left;
                        font-size: 15px;
                        font-weight: 700;
                        width: 100%;
                        margin-top: 33px;
                        padding-left: 30px;
                    }
                }
            }
            .rightpart{
                margin-left: 75px;
                .righttop{
                    .righttip{
                      span{
                            display: inline-block;
                            height: 30px;
                            line-height: 32px;
                            padding: 0 15px;
                            color: #fff;
                            background: #2189ff;
                            font-size: 14px;
                            font-weight: 700;
                            border-radius: 30px;
                            margin-right: 5px;
                        }  
                    }
                    h1{
                        font-size: 36px;
                        font-weight: 700;
                        margin-top: 20px;
                    }
                    .rightprice{
                        height: 60px;
                        line-height: 60px;
                        div{
                            font-size: 28px;
                            font-weight: 700;
                            color: #2189ff;
                            float: right;
                        }
                    }
                    .rightpromise{
                            padding: 12px 0;
                            overflow: hidden;
                            font-size: 18px;
                            font-weight: 700;
                            line-height: 1.3;
                        .promisetitle{
                            width: 100px;
                            font-size: 20px;
                            float: left;
                            padding-left: 5px;
                            color: #757575;
                            font-weight: 700;
                        }
                        .promisedetail{
                            width: 560px;
                            float: left;
                            position: relative;
                            padding-right: 80px;
                            span{
                                img{
                                    width: 18px;
                                }
                                span{
                                    color: #2189ff;
                                    margin-right: 10px;
                                    margin-left: 3px;
                                    vertical-align: middle;
                                }
                            }
                        }
                    }
                    .chooseproduct{
                        padding-top: 10px;
                        .chooseone{
                            display: flex;
                            flex-direction: row;
                            justify-content: flex-start;
                            align-items: flex-start;
                            flex-wrap: wrap;
                            .opennew{
                                border: 1px solid #ddd;
                            }
                            button{
                                width: 48%;
                                margin-left: 1%;
                                margin-right: 1%;
                                border-radius: 10px;
                                font-size: 14px;
                                font-weight: 700;
                                margin-top: 10px;
                                color: #333;
                                padding: 18px;
                                background-color: #fff;
                                border: 1px solid #ddd;
                                &:hover{
                                    border: 1px solid #2189ff;
                                }
                            }
                        }
                    }
                }
                .rightbottom{
                    .chooseproduct{
                        padding-top: 10px;
                        .choosetitle{
                            font-size: 24px;
                            margin-top: 24px;
                            margin-bottom: 10px;
                            font-weight: 700;
                        }
                        .chooseone{
                            display: flex;
                            flex-direction: row;
                            justify-content: flex-start;
                            align-items: flex-start;
                            flex-wrap: wrap;
                            button{
                                width: 48%;
                                margin-left: 1%;
                                margin-right: 1%;
                                border-radius: 10px;
                                font-size: 14px;
                                font-weight: 700;
                                margin-top: 10px;
                                color: #333;
                                padding: 18px;
                                background-color: #fff;
                                border: 1px solid #ddd;
                                &:hover{
                                    border: 1px solid #2189ff !important;
                                }
                                img{
                                    width: 80px;
                                    height: 80px;
                                }
                            }
                            .imgbutton{
                                width: 120px;
                                height: 120px;
                                text-align: center;
                                border: 1px solid #fff;
                            }
                        }
                    }
                }
            }
        }
        .detaildes{
            .navbar{
                width: 100%;
                max-width: 1440px;
                margin: 0 auto;
                height: 70px;
                line-height: 70px;
                font-size: 22px;
                font-weight: 700;
                background-color: #f2f2f2;
                display: flex;
                div{
                    margin-left: 70px;
                    margin-right: 150px;
                }
                a{
                    display: inline-block;
                    height: 70px;
                    margin-right: 70px;
                    color: #333;
                    box-sizing: border-box;
                    outline: none;
                    &:hover{
                        border-bottom: 3px solid #2189ff !important;
                    }
                }
            }
            .el-collapse-item__header{
                height: 70px;
                font-size: 22px;
                font-weight: 700;
                background-color: #ddd;
                border: 1px solid #ddd;
                color: #000;
                text-align: center;
                border-bottom: 1px solid #888;
                display: block;
                line-height: 70px;
                padding-bottom: 0;
                i{
                    margin-left: 30px;
                }
            }
            .el-collapse-item__content{
                padding-bottom: 0;
                ul{
                    background: #f5f5f5;
                    padding: 20px 50px;
                    display: flex;
                    justify-content: space-around;
                    li{
                        .contentdetails{
                            width: 310px;
                            height: 460px;
                            background: #fff;
                            border-radius: 20px;
                            margin-right: 20px;
                            padding-top: 25px;
                            display: inline-block;
                            .productimg{
                                margin: 0 auto 15px;
                                text-align: center;
                                img{
                                    width: 10vw;
                                    height: 10vw;
                                }
                            }
                            .productcolor,.productname{
                                text-align: center;
                                padding-right: 5px;
                                width: 240px;
                                margin: 5px auto;
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
                                height: 25px;
                            }
                            .productprice{
                                font-size: 16px;
                                font-weight: 500;
                                color: #2189ff;
                                line-height: 20px;
                                text-align: center;
                            }
                            button{
                                margin-left: 101px;
                                margin-top: 10px;
                            }
                        }
                    }
                }
               .reviewtitle{
                    font-size: 14px;
                    color: #666;
                    height: 66px;
                    background: #f5f5f5;
                    padding-left: 70px;
                    padding-right: 70px;
                    overflow: hidden;
                    .all{
                        margin-top: 16px;
                        width: 250px;
                    }
               }
               .allreview{
                        padding-left: 70px;
                        padding-right: 70px;
                        margin: 30px auto;
                        padding-bottom: 20px;
                        .reviewlist{
                            margin-top: 35px;
                            border-bottom: 1px solid #ddd;
                            padding-bottom: 10px;
                            .reviewuser{
                                display: flex;
                                img{
                                    width: 50px;
                                }
                                >div{
                                    width: 300px;
                                    font-size: 14px;
                                    margin-left: 10px;
                                    margin-top: 5px;
                                    span{
                                        font-weight: 700;
                                        margin-left: 5px;
                                        font-size: 15px;
                                        display: inline-block;
                                        margin-right: 5px;
                                }
                            }
                        }
                        .userbuy{
                            font-size: 16px;
                            font-weight: 700;
                            margin-top: 20px;
                            color: #333
                        }
                        .userdate{
                            color: #555;
                            margin-top: 29px;
                        }
                        .servicereplay{
                                display: flex;
                                flex-direction: row;
                                justify-content: flex-start;
                                align-items: flex-start;
                                padding: 10px;
                                background: #f5f5f5;
                                border-radius: 10px;
                                margin-top: 20px;
                                img{
                                    width: 50px;
                                    margin-right: 10px;
                                }
                                .replay{
                                    margin-top: 5px;
                                    line-height: 1.4;
                                    font-size: 14px;
                                    color: #333
                                }
                                .servicedate{
                                        margin-top: 10px;
                                        color: #555;
                                }
                        }
                    }
                }
            }
            .spec-list{
                padding: 0 30px 30px 30px;
                border-bottom: 1px solid #d0d0d0;
                display: flex;
                flex-wrap: wrap;
                h4{
                    width: 345px;
                    font-size: 16px;
                    font-weight: 700;
                    color: #0071bf;
                    padding-top: 30px;
                    line-height: 21px;
                }
                div{
                    width: 345px;
                    padding-top: 30px;
                    h5{
                        font-size: 14px;
                        font-weight: 700;
                        color: #000;
                        line-height: 19px;
                        padding-right: 15px
                    }
                    p{
                        font-size: 14px;
                        color: #000;
                        margin-bottom: 14px;
                        line-height: 19px;
                        padding-right: 15px;
                    }
                }
                .color{
                    margin-left: 345px;
                }
            }
            .memory_disclaimer{
                font-size: 14px;
                line-height: 18px;
                padding: 20px 30px;
                background-color: #f1f2f4;
            }
        }
        .buyproduct{
            width: 100%;
            padding-top: 15px;
            padding-bottom: 10px;
            position: fixed;
            left: 0;
            bottom: 0;
            background: #fff;
            border-top: 1px solid #ddd;
            z-index: 99;
            >div{
                width: 100%;
                max-width: 1440px;
                margin: 0 auto;
                display: flex;
                flex-direction: row;
                justify-content: flex-start;
                align-items: flex-start;
                flex-wrap: wrap;
                .buyname{
                    width: 45%;
                    padding-left: 70px;
                    box-sizing: border-box;
                    &>:first-child{
                        font-size: 18px;
                        font-weight: 700;
                        min-height: 30px;
                        line-height: 30px;
                    }
                    &>:nth-child(2){
                        font-size: 14px;
                        height: 20px;
                        line-height: 20px;
                        color: #757575;
                    }
                }
                .numprice{
                    width: 35%;
                    margin-top: 12px;
                    padding-left: 1px;
                    box-sizing: border-box;
                    .el-input-number__decrease,.el-input-number__increase{
                        background-color: transparent;
                    }
                    .text{
                        padding-left: 20px;
                        line-height: 30px;
                        height: 30px;
                        font-size: 18px;
                        font-weight: 700;
                        .price{
                            color: #2189ff;
                            font-size: 26px;
                        }
                    }
                }
                .buybutton{
                    width: 20%;
                    margin-top: 12px;
                    box-sizing: border-box;
                    button{
                        padding: 10px 23px;
                    }
                }
            } 
        }
    }    
</style>