SET NAMES UTF8;
drop DATABASE if exists samsungeshop;
CREATE DATABASE samsungeshop CHARSET=UTF8;
USE samsungeshop;


/**用户信息**/
CREATE TABLE ss_user(
    uid INT PRIMARY KEY AUTO_INCREMENT,
    phone VARCHAR(16),
    upwd VARCHAR(32),
    uname VARCHAR(24),
    email VARCHAR(64),
    gender bool,
    birthday date
);

INSERT INTO ss_user VALUES(NULL,"13612341234",md5("123456"),"asd","123456@123.com",1,null);
INSERT INTO ss_user VALUES(NULL,"13712341234",md5("456789"),"qwe","456789@123.com",0,null);

/** 用户收货地址**/
CREATE TABLE ss_receiver_address(
    auid INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,                                        #用户编号
    FOREIGN KEY(user_id) references ss_user(uid),       
    phone VARCHAR(16),                                  #用户电话
    province VARCHAR(16),                               #省
    city VARCHAR(16),                                   #市
    county VARCHAR(16),                                 #区县
    address VARCHAR(64)                                 #详细地址
);

/**商品家族分类**/
CREATE TABLE ss_product_family(
    fid INT PRIMARY KEY AUTO_INCREMENT,
    zid INT,
    fname VARCHAR(64),
    pid INT
);

INSERT INTO ss_product_family VALUES(null,1,"Galaxy S21 Ultra 5G",1);
INSERT INTO ss_product_family VALUES(null,1,"Galaxy S21+ 5G",17);
INSERT INTO ss_product_family VALUES(null,1,"Galaxy S21 5G",41);
INSERT INTO ss_product_family VALUES(null,2,"Samsung Galaxy Buds Pro",65);
INSERT INTO ss_product_family VALUES(null,3,"Samsung Galaxy Book Flex 930QCG-K01",68);
INSERT INTO ss_product_family VALUES(null,3,"Samsung Galaxy Book Flex 930QCG-K02",69);
INSERT INTO ss_product_family VALUES(null,3,"Samsung Galaxy Book Flex 930QCG-K03",70);


/**商品列表**/
CREATE TABLE ss_product(
    pid INT PRIMARY KEY AUTO_INCREMENT,
    family_id INT,                                              #家族分类
    pname VARCHAR(64),                                          #商品名称    
    price DECIMAL(7,2),                                         #售价
    internal_storage VARCHAR(64),                               #内存
    size VARCHAR(64),                                           #尺寸
    color VARCHAR(24),                                          #颜色
    ourservice VARCHAR(64),                                     #服务项目
    details VARCHAR(128),                                        #商品详情
	simg VARCHAR(128)                                           #产品小图
);

INSERT INTO ss_product VALUES(NULL,1,"Galaxy S21 Ultra 5G",9399.00,"12GB RAM 256GB ROM",null,"幽夜黑","6个月优惠换屏服务","/img/product/phone/Galaxy S21 Ultra 5G/details/phonedetails.png",'/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor1.jpg');
INSERT INTO ss_product VALUES(NULL,1,"Galaxy S21 Ultra 5G",9399.00,"12GB RAM 256GB ROM",null,"幽夜黑","12个月优惠换屏服务","/img/product/phone/Galaxy S21 Ultra 5G/details/phonedetails.png",'/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor1.jpg');
INSERT INTO ss_product VALUES(NULL,1,"Galaxy S21 Ultra 5G",9399.00,"12GB RAM 256GB ROM",null,"幽夜黑","24个月优惠换屏服务","/img/product/phone/Galaxy S21 Ultra 5G/details/phonedetails.png",'/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor1.jpg');
INSERT INTO ss_product VALUES(NULL,1,"Galaxy S21 Ultra 5G",9399.00,"12GB RAM 256GB ROM",null,"幽夜黑","不需要管家服务","/img/product/phone/Galaxy S21 Ultra 5G/details/phonedetails.png",'/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor1.jpg');
INSERT INTO ss_product VALUES(NULL,1,"Galaxy S21 Ultra 5G",9399.00,"12GB RAM 256GB ROM",null,"幻境银","6个月优惠换屏服务","/img/product/phone/Galaxy S21 Ultra 5G/details/phonedetails.png",'/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg');
INSERT INTO ss_product VALUES(NULL,1,"Galaxy S21 Ultra 5G",9399.00,"12GB RAM 256GB ROM",null,"幻境银","12个月优惠换屏服务","/img/product/phone/Galaxy S21 Ultra 5G/details/phonedetails.png",'/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg');
INSERT INTO ss_product VALUES(NULL,1,"Galaxy S21 Ultra 5G",9399.00,"12GB RAM 256GB ROM",null,"幻境银","24个月优惠换屏服务","/img/product/phone/Galaxy S21 Ultra 5G/details/phonedetails.png",'/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg');
INSERT INTO ss_product VALUES(NULL,1,"Galaxy S21 Ultra 5G",9399.00,"12GB RAM 256GB ROM",null,"幻境银","不需要管家服务","/img/product/phone/Galaxy S21 Ultra 5G/details/phonedetails.png",'/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg');
INSERT INTO ss_product VALUES(NULL,1,"Galaxy S21 Ultra 5G",10699.00,"16GB RAM 512GB ROM",null,"幽夜黑","6个月优惠换屏服务","/img/product/phone/Galaxy S21 Ultra 5G/details/phonedetails.png",'/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor1.jpg');
INSERT INTO ss_product VALUES(NULL,1,"Galaxy S21 Ultra 5G",10699.00,"16GB RAM 512GB ROM",null,"幽夜黑","12个月优惠换屏服务","/img/product/phone/Galaxy S21 Ultra 5G/details/phonedetails.png",'/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor1.jpg');
INSERT INTO ss_product VALUES(NULL,1,"Galaxy S21 Ultra 5G",10699.00,"16GB RAM 512GB ROM",null,"幽夜黑","24个月优惠换屏服务","/img/product/phone/Galaxy S21 Ultra 5G/details/phonedetails.png",'/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor1.jpg');
INSERT INTO ss_product VALUES(NULL,1,"Galaxy S21 Ultra 5G",10699.00,"16GB RAM 512GB ROM",null,"幽夜黑","不需要管家服务","/img/product/phone/Galaxy S21 Ultra 5G/details/phonedetails.png",'/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor1.jpg');
INSERT INTO ss_product VALUES(NULL,1,"Galaxy S21 Ultra 5G",10699.00,"16GB RAM 512GB ROM",null,"幻境银","6个月优惠换屏服务","/img/product/phone/Galaxy S21 Ultra 5G/details/phonedetails.png",'/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg');
INSERT INTO ss_product VALUES(NULL,1,"Galaxy S21 Ultra 5G",10699.00,"16GB RAM 512GB ROM",null,"幻境银","12个月优惠换屏服务","/img/product/phone/Galaxy S21 Ultra 5G/details/phonedetails.png",'/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg');
INSERT INTO ss_product VALUES(NULL,1,"Galaxy S21 Ultra 5G",10699.00,"16GB RAM 512GB ROM",null,"幻境银","24个月优惠换屏服务","/img/product/phone/Galaxy S21 Ultra 5G/details/phonedetails.png",'/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg');
INSERT INTO ss_product VALUES(NULL,1,"Galaxy S21 Ultra 5G",10699.00,"16GB RAM 512GB ROM",null,"幻境银","不需要管家服务","/img/product/phone/Galaxy S21 Ultra 5G/details/phonedetails.png",'/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg');
INSERT INTO ss_product VALUES(NULL,1,"Galaxy S21+ 5G",5499.00,"8GB RAM 128GB ROM",null,"幽夜黑","6个月优惠换屏服务","/img/product/phone/Galaxy S21+ 5G/details/details.png",'/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor1.jpg');
INSERT INTO ss_product VALUES(NULL,1,"Galaxy S21+ 5G",5499.00,"8GB RAM 128GB ROM",null,"幽夜黑","12个月优惠换屏服务","/img/product/phone/Galaxy S21+ 5G/details/details.png",'/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor1.jpg');
INSERT INTO ss_product VALUES(NULL,1,"Galaxy S21+ 5G",5499.00,"8GB RAM 128GB ROM",null,"幽夜黑","24个月优惠换屏服务","/img/product/phone/Galaxy S21+ 5G/details/details.png",'/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor1.jpg');
INSERT INTO ss_product VALUES(NULL,1,"Galaxy S21+ 5G",5499.00,"8GB RAM 128GB ROM",null,"幽夜黑","不需要管家服务","/img/product/phone/Galaxy S21+ 5G/details/details.png",'/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor1.jpg');
INSERT INTO ss_product VALUES(NULL,1,"Galaxy S21+ 5G",5499.00,"8GB RAM 128GB ROM",null,"幻境银","6个月优惠换屏服务","/img/product/phone/Galaxy S21+ 5G/details/details.png",'/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor2.jpg');
INSERT INTO ss_product VALUES(NULL,1,"Galaxy S21+ 5G",5499.00,"8GB RAM 128GB ROM",null,"幻境银","12个月优惠换屏服务","/img/product/phone/Galaxy S21+ 5G/details/details.png",'/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor2.jpg');
INSERT INTO ss_product VALUES(NULL,1,"Galaxy S21+ 5G",5499.00,"8GB RAM 128GB ROM",null,"幻境银","24个月优惠换屏服务","/img/product/phone/Galaxy S21+ 5G/details/details.png",'/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor2.jpg');
INSERT INTO ss_product VALUES(NULL,1,"Galaxy S21+ 5G",5499.00,"8GB RAM 128GB ROM",null,"幻境银","不需要管家服务","/img/product/phone/Galaxy S21+ 5G/details/details.png",'/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor2.jpg');
INSERT INTO ss_product VALUES(NULL,1,"Galaxy S21+ 5G",5499.00,"8GB RAM 128GB ROM",null,"梵梦紫","6个月优惠换屏服务","/img/product/phone/Galaxy S21+ 5G/details/details.png",'/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg');
INSERT INTO ss_product VALUES(NULL,1,"Galaxy S21+ 5G",5499.00,"8GB RAM 128GB ROM",null,"梵梦紫","12个月优惠换屏服务","/img/product/phone/Galaxy S21+ 5G/details/details.png",'/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg');
INSERT INTO ss_product VALUES(NULL,1,"Galaxy S21+ 5G",5499.00,"8GB RAM 128GB ROM",null,"梵梦紫","24个月优惠换屏服务","/img/product/phone/Galaxy S21+ 5G/details/details.png",'/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg');
INSERT INTO ss_product VALUES(NULL,1,"Galaxy S21+ 5G",5499.00,"8GB RAM 128GB ROM",null,"梵梦紫","不需要管家服务","/img/product/phone/Galaxy S21+ 5G/details/details.png",'/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg');
INSERT INTO ss_product VALUES(NULL,1,"Galaxy S21+ 5G",6199.00,"8GB RAM 256GB ROM",null,"幽夜黑","6个月优惠换屏服务","/img/product/phone/Galaxy S21+ 5G/details/details.png",'/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor1.jpg');
INSERT INTO ss_product VALUES(NULL,1,"Galaxy S21+ 5G",6199.00,"8GB RAM 256GB ROM",null,"幽夜黑","12个月优惠换屏服务","/img/product/phone/Galaxy S21+ 5G/details/details.png",'/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor1.jpg');
INSERT INTO ss_product VALUES(NULL,1,"Galaxy S21+ 5G",6199.00,"8GB RAM 256GB ROM",null,"幽夜黑","24个月优惠换屏服务","/img/product/phone/Galaxy S21+ 5G/details/details.png",'/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor1.jpg');
INSERT INTO ss_product VALUES(NULL,1,"Galaxy S21+ 5G",6199.00,"8GB RAM 256GB ROM",null,"幽夜黑","不需要管家服务","/img/product/phone/Galaxy S21+ 5G/details/details.png",'/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor1.jpg');
INSERT INTO ss_product VALUES(NULL,1,"Galaxy S21+ 5G",6199.00,"8GB RAM 256GB ROM",null,"幻境银","6个月优惠换屏服务","/img/product/phone/Galaxy S21+ 5G/details/details.png",'/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor2.jpg');
INSERT INTO ss_product VALUES(NULL,1,"Galaxy S21+ 5G",6199.00,"8GB RAM 256GB ROM",null,"幻境银","12个月优惠换屏服务","/img/product/phone/Galaxy S21+ 5G/details/details.png",'/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor2.jpg');
INSERT INTO ss_product VALUES(NULL,1,"Galaxy S21+ 5G",6199.00,"8GB RAM 256GB ROM",null,"幻境银","24个月优惠换屏服务","/img/product/phone/Galaxy S21+ 5G/details/details.png",'/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor2.jpg');
INSERT INTO ss_product VALUES(NULL,1,"Galaxy S21+ 5G",6199.00,"8GB RAM 256GB ROM",null,"幻境银","不需要管家服务","/img/product/phone/Galaxy S21+ 5G/details/details.png",'/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor2.jpg');
INSERT INTO ss_product VALUES(NULL,1,"Galaxy S21+ 5G",6199.00,"8GB RAM 256GB ROM",null,"梵梦紫","6个月优惠换屏服务","/img/product/phone/Galaxy S21+ 5G/details/details.png",'/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg');
INSERT INTO ss_product VALUES(NULL,1,"Galaxy S21+ 5G",6199.00,"8GB RAM 256GB ROM",null,"梵梦紫","12个月优惠换屏服务","/img/product/phone/Galaxy S21+ 5G/details/details.png",'/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg');
INSERT INTO ss_product VALUES(NULL,1,"Galaxy S21+ 5G",6199.00,"8GB RAM 256GB ROM",null,"梵梦紫","24个月优惠换屏服务","/img/product/phone/Galaxy S21+ 5G/details/details.png",'/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg');
INSERT INTO ss_product VALUES(NULL,1,"Galaxy S21+ 5G",6199.00,"8GB RAM 256GB ROM",null,"梵梦紫","不需要管家服务","/img/product/phone/Galaxy S21+ 5G/details/details.png",'/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg');

INSERT INTO ss_product VALUES(NULL,1,"Galaxy S21 5G",4199.00,"8GB RAM 128GB ROM",null,"墨影灰","6个月优惠换屏服务","/img/product/phone/Galaxy S21 5G/details/details.png",'/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor1.jpg');
INSERT INTO ss_product VALUES(NULL,1,"Galaxy S21 5G",4199.00,"8GB RAM 128GB ROM",null,"墨影灰","12个月优惠换屏服务","/img/product/phone/Galaxy S21 5G/details/details.png",'/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor1.jpg');
INSERT INTO ss_product VALUES(NULL,1,"Galaxy S21 5G",4199.00,"8GB RAM 128GB ROM",null,"墨影灰","24个月优惠换屏服务","/img/product/phone/Galaxy S21 5G/details/details.png",'/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor1.jpg');
INSERT INTO ss_product VALUES(NULL,1,"Galaxy S21 5G",4199.00,"8GB RAM 128GB ROM",null,"墨影灰","不需要管家服务","/img/product/phone/Galaxy S21 5G/details/details.png",'/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor1.jpg');
INSERT INTO ss_product VALUES(NULL,1,"Galaxy S21 5G",4199.00,"8GB RAM 128GB ROM",null,"丝雾白","6个月优惠换屏服务","/img/product/phone/Galaxy S21 5G/details/details.png",'/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor2.jpg');
INSERT INTO ss_product VALUES(NULL,1,"Galaxy S21 5G",4199.00,"8GB RAM 128GB ROM",null,"丝雾白","12个月优惠换屏服务","/img/product/phone/Galaxy S21 5G/details/details.png",'/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor2.jpg');
INSERT INTO ss_product VALUES(NULL,1,"Galaxy S21 5G",4199.00,"8GB RAM 128GB ROM",null,"丝雾白","24个月优惠换屏服务","/img/product/phone/Galaxy S21 5G/details/details.png",'/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor2.jpg');
INSERT INTO ss_product VALUES(NULL,1,"Galaxy S21 5G",4199.00,"8GB RAM 128GB ROM",null,"丝雾白","不需要管家服务","/img/product/phone/Galaxy S21 5G/details/details.png",'/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor2.jpg');
INSERT INTO ss_product VALUES(NULL,1,"Galaxy S21 5G",4199.00,"8GB RAM 128GB ROM",null,"梵梦紫","6个月优惠换屏服务","/img/product/phone/Galaxy S21 5G/details/details.png",'/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg');
INSERT INTO ss_product VALUES(NULL,1,"Galaxy S21 5G",4199.00,"8GB RAM 128GB ROM",null,"梵梦紫","12个月优惠换屏服务","/img/product/phone/Galaxy S21 5G/details/details.png",'/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg');
INSERT INTO ss_product VALUES(NULL,1,"Galaxy S21 5G",4199.00,"8GB RAM 128GB ROM",null,"梵梦紫","24个月优惠换屏服务","/img/product/phone/Galaxy S21 5G/details/details.png",'/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg');
INSERT INTO ss_product VALUES(NULL,1,"Galaxy S21 5G",4199.00,"8GB RAM 128GB ROM",null,"梵梦紫","不需要管家服务","/img/product/phone/Galaxy S21 5G/details/details.png",'/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg');
INSERT INTO ss_product VALUES(NULL,1,"Galaxy S21 5G",4999.00,"8GB RAM 256GB ROM",null,"墨影灰","6个月优惠换屏服务","/img/product/phone/Galaxy S21 5G/details/details.png",'/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor1.jpg');
INSERT INTO ss_product VALUES(NULL,1,"Galaxy S21 5G",4999.00,"8GB RAM 256GB ROM",null,"墨影灰","12个月优惠换屏服务","/img/product/phone/Galaxy S21 5G/details/details.png",'/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor1.jpg');
INSERT INTO ss_product VALUES(NULL,1,"Galaxy S21 5G",4999.00,"8GB RAM 256GB ROM",null,"墨影灰","24个月优惠换屏服务","/img/product/phone/Galaxy S21 5G/details/details.png",'/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor1.jpg');
INSERT INTO ss_product VALUES(NULL,1,"Galaxy S21 5G",4999.00,"8GB RAM 256GB ROM",null,"墨影灰","不需要管家服务","/img/product/phone/Galaxy S21 5G/details/details.png",'/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor1.jpg');
INSERT INTO ss_product VALUES(NULL,1,"Galaxy S21 5G",4999.00,"8GB RAM 256GB ROM",null,"丝雾白","6个月优惠换屏服务","/img/product/phone/Galaxy S21 5G/details/details.png",'/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor2.jpg');
INSERT INTO ss_product VALUES(NULL,1,"Galaxy S21 5G",4999.00,"8GB RAM 256GB ROM",null,"丝雾白","12个月优惠换屏服务","/img/product/phone/Galaxy S21 5G/details/details.png",'/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor2.jpg');
INSERT INTO ss_product VALUES(NULL,1,"Galaxy S21 5G",4999.00,"8GB RAM 256GB ROM",null,"丝雾白","24个月优惠换屏服务","/img/product/phone/Galaxy S21 5G/details/details.png",'/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor2.jpg');
INSERT INTO ss_product VALUES(NULL,1,"Galaxy S21 5G",4999.00,"8GB RAM 256GB ROM",null,"丝雾白","不需要管家服务","/img/product/phone/Galaxy S21 5G/details/details.png",'/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor2.jpg');
INSERT INTO ss_product VALUES(NULL,1,"Galaxy S21 5G",4999.00,"8GB RAM 256GB ROM",null,"梵梦紫","6个月优惠换屏服务","/img/product/phone/Galaxy S21 5G/details/details.png",'/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg');
INSERT INTO ss_product VALUES(NULL,1,"Galaxy S21 5G",4999.00,"8GB RAM 256GB ROM",null,"梵梦紫","12个月优惠换屏服务","/img/product/phone/Galaxy S21 5G/details/details.png",'/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg');
INSERT INTO ss_product VALUES(NULL,1,"Galaxy S21 5G",4999.00,"8GB RAM 256GB ROM",null,"梵梦紫","24个月优惠换屏服务","/img/product/phone/Galaxy S21 5G/details/details.png",'/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg');
INSERT INTO ss_product VALUES(NULL,1,"Galaxy S21 5G",4999.00,"8GB RAM 256GB ROM",null,"梵梦紫","不需要管家服务","/img/product/phone/Galaxy S21 5G/details/details.png",'/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg');

INSERT INTO ss_product VALUES(NULL,2,"Samsung Galaxy Buds Pro",1079.00,null,null,"梵梦紫",null,"/img/product/budspro/details/budsprodetails.png",'/img/product/budspro/choosecolor/choosecolor1.jpg');
INSERT INTO ss_product VALUES(NULL,2,"Samsung Galaxy Buds Pro",1069.00,null,null,"幽夜黑",null,"/img/product/budspro/details/budsprodetails.png",'/img/product/budspro/choosecolor/choosecolor2.jpg');
INSERT INTO ss_product VALUES(NULL,2,"Samsung Galaxy Buds Pro",1069.00,null,null,"幻境银",null,"/img/product/budspro/details/budsprodetails.png",'/img/product/budspro/choosecolor/choosecolor3.jpg');

INSERT INTO ss_product VALUES(NULL,3,"Samsung Galaxy Book Flex 930QCG-K01",12699.00,"i7-1065G7","13.3英寸","皇家蓝",null,"/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K01/details/laptopdetails.png",'/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K01/choosecolor/choosecolor1.jpg');
INSERT INTO ss_product VALUES(NULL,3,"Samsung Galaxy Book Flex 930QCG-K02",10199.00,"i5-1035G4","13.3英寸","皇家蓝",null,"/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K02/details/laptopdetails.png",'/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K02/choosecolor/choosecolor1.jpg');
INSERT INTO ss_product VALUES(NULL,3,"Samsung Galaxy Book Flex 930QCG-K03",12699.00,"i7-1065G7","13.3英寸","幻境银",null,"/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K03/details/details.png",'/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K03/choosecolor/choosecolor1.jpg');

/****首页轮播广告商品****/
CREATE TABLE ss_index_carousel(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  title VARCHAR(64),
  href VARCHAR(128)
);

INSERT INTO ss_index_carousel VALUES(NULL, '/img/index/index_carousel/carousel1.jpg','轮播广告商品1','product_details.html?lid=28');
INSERT INTO ss_index_carousel VALUES(NULL, '/img/index/index_carousel/carousel2.jpg','轮播广告商品2','product_details.html?lid=19');
INSERT INTO ss_index_carousel VALUES(NULL, '/img/index/index_carousel/carousel3.jpg','轮播广告商品3','lookforward.html');
INSERT INTO ss_index_carousel VALUES(NULL, '/img/index/index_carousel/carousel4.jpg','轮播广告商品4','lookforward.html');
INSERT INTO ss_index_carousel VALUES(NULL, '/img/index/index_carousel/carousel5.jpg','轮播广告商品5','lookforward.html');
INSERT INTO ss_index_carousel VALUES(NULL, '/img/index/index_carousel/carousel6.jpg','轮播广告商品6','lookforward.html');

/**笔记本电脑图片**/
CREATE TABLE ss_product_pic(
  ppid INT PRIMARY KEY AUTO_INCREMENT,
  product_id INT,              #产品编号
  sm VARCHAR(128),            #小图片路径
  lg VARCHAR(128)             #大图片路径
);


INSERT INTO ss_product_pic VALUES(NULL, 1, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews1/previews1.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 1, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews1/previews2.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 1, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews1/previews3.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 1, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews1/previews4.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 1, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews1/previews5.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 1, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews1/previews6.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 1, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews1/previews7.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 1, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews1/previews8.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 1, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews1/previews9.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 1, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews1/previews10.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 2, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews1/previews1.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 2, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews1/previews2.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 2, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews1/previews3.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 2, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews1/previews4.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 2, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews1/previews5.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 2, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews1/previews6.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 2, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews1/previews7.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 2, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews1/previews8.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 2, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews1/previews9.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 2, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews1/previews10.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 3, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews1/previews1.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 3, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews1/previews2.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 3, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews1/previews3.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 3, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews1/previews4.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 3, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews1/previews5.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 3, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews1/previews6.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 3, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews1/previews7.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 3, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews1/previews8.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 3, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews1/previews9.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 3, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews1/previews10.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 4, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews1/previews1.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 4, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews1/previews2.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 4, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews1/previews3.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 4, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews1/previews4.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 4, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews1/previews5.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 4, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews1/previews6.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 4, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews1/previews7.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 4, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews1/previews8.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 4, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews1/previews9.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 4, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews1/previews10.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 5, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews1.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 5, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews2.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 5, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews3.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 5, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews4.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 5, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews5.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 5, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews6.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 5, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews7.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 5, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews8.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 5, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews9.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 6, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews1.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 6, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews2.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 6, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews3.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 6, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews4.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 6, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews5.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 6, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews6.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 6, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews7.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 6, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews8.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 6, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews9.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 7, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews1.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 7, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews2.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 7, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews3.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 7, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews4.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 7, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews5.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 7, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews6.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 7, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews7.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 7, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews8.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 7, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews9.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 8, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews1.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 8, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews2.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 8, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews3.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 8, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews4.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 8, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews5.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 8, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews6.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 8, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews7.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 8, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews8.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 8, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews9.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 9, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews1.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 9, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews2.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 9, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews3.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 9, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews4.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 9, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews5.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 9, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews6.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 9, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews7.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 9, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews8.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 9, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews9.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 10, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews1.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 10, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews2.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 10, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews3.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 10, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews4.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 10, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews5.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 10, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews6.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 10, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews7.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 10, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews8.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 10, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews9.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 11, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews1.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 11, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews2.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 11, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews3.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 11, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews4.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 11, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews5.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 11, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews6.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 11, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews7.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 11, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews8.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 11, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews9.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 12, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews1.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 12, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews2.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 12, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews3.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 12, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews4.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 12, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews5.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 12, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews6.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 12, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews7.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 12, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews8.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 12, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews9.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 13, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews1.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 13, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews2.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 13, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews3.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 13, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews4.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 13, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews5.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 13, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews6.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 13, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews7.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 13, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews8.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 13, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews9.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 14, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews1.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 14, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews2.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 14, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews3.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 14, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews4.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 14, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews5.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 14, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews6.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 14, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews7.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 14, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews8.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 14, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews9.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 15, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews1.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 15, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews2.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 15, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews3.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 15, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews4.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 15, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews5.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 15, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews6.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 15, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews7.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 15, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews8.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 15, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews9.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 16, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews1.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 16, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews2.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 16, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews3.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 16, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews4.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 16, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews5.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 16, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews6.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 16, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews7.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 16, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews8.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 16, '/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 Ultra 5G/previews2/previews9.jpg');

INSERT INTO ss_product_pic VALUES(NULL, 17, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21+ 5G/previews1/previews1.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 17, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21+ 5G/previews1/previews2.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 17, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21+ 5G/previews1/previews3.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 17, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21+ 5G/previews1/previews4.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 17, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21+ 5G/previews1/previews5.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 17, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21+ 5G/previews1/previews6.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 17, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21+ 5G/previews1/previews7.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 17, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21+ 5G/previews1/previews8.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 17, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21+ 5G/previews1/previews9.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 18, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21+ 5G/previews1/previews1.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 18, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21+ 5G/previews1/previews2.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 18, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21+ 5G/previews1/previews3.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 18, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21+ 5G/previews1/previews4.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 18, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21+ 5G/previews1/previews5.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 18, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21+ 5G/previews1/previews6.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 18, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21+ 5G/previews1/previews7.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 18, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21+ 5G/previews1/previews8.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 18, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21+ 5G/previews1/previews9.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 19, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21+ 5G/previews1/previews1.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 19, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21+ 5G/previews1/previews2.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 19, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21+ 5G/previews1/previews3.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 19, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21+ 5G/previews1/previews4.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 19, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21+ 5G/previews1/previews5.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 19, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21+ 5G/previews1/previews6.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 19, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21+ 5G/previews1/previews7.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 19, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21+ 5G/previews1/previews8.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 19, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21+ 5G/previews1/previews9.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 20, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21+ 5G/previews1/previews1.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 20, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21+ 5G/previews1/previews2.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 20, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21+ 5G/previews1/previews3.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 20, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21+ 5G/previews1/previews4.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 20, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21+ 5G/previews1/previews5.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 20, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21+ 5G/previews1/previews6.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 20, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21+ 5G/previews1/previews7.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 20, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21+ 5G/previews1/previews8.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 20, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21+ 5G/previews1/previews9.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 21, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21+ 5G/previews2/previews1.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 21, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21+ 5G/previews2/previews2.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 21, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21+ 5G/previews2/previews3.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 21, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21+ 5G/previews2/previews4.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 21, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21+ 5G/previews2/previews5.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 21, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21+ 5G/previews2/previews6.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 21, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21+ 5G/previews2/previews7.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 21, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21+ 5G/previews2/previews8.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 21, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21+ 5G/previews2/previews9.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 22, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21+ 5G/previews2/previews1.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 22, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21+ 5G/previews2/previews2.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 22, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21+ 5G/previews2/previews3.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 22, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21+ 5G/previews2/previews4.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 22, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21+ 5G/previews2/previews5.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 22, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21+ 5G/previews2/previews6.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 22, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21+ 5G/previews2/previews7.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 22, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21+ 5G/previews2/previews8.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 22, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21+ 5G/previews2/previews9.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 23, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21+ 5G/previews2/previews1.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 23, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21+ 5G/previews2/previews2.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 23, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21+ 5G/previews2/previews3.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 23, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21+ 5G/previews2/previews4.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 23, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21+ 5G/previews2/previews5.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 23, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21+ 5G/previews2/previews6.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 23, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21+ 5G/previews2/previews7.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 23, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21+ 5G/previews2/previews8.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 23, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21+ 5G/previews2/previews9.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 24, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21+ 5G/previews2/previews1.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 24, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21+ 5G/previews2/previews2.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 24, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21+ 5G/previews2/previews3.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 24, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21+ 5G/previews2/previews4.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 24, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21+ 5G/previews2/previews5.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 24, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21+ 5G/previews2/previews6.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 24, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21+ 5G/previews2/previews7.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 24, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21+ 5G/previews2/previews8.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 24, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21+ 5G/previews2/previews9.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 25, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews1.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 25, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews2.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 25, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews3.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 25, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews4.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 25, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews5.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 25, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews6.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 25, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews7.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 25, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews8.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 25, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews9.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 26, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews1.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 26, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews2.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 26, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews3.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 26, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews4.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 26, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews5.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 26, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews6.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 26, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews7.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 26, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews8.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 26, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews9.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 27, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews1.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 27, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews2.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 27, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews3.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 27, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews4.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 27, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews5.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 27, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews6.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 27, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews7.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 27, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews8.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 27, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews9.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 28, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews1.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 28, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews2.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 28, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews3.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 28, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews4.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 28, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews5.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 28, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews6.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 28, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews7.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 28, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews8.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 28, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews9.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 29, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews1.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 29, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews2.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 29, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews3.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 29, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews4.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 29, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews5.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 29, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews6.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 29, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews7.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 29, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews8.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 29, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews9.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 30, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews1.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 30, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews2.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 30, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews3.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 30, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews4.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 30, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews5.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 30, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews6.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 30, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews7.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 30, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews8.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 30, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews9.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 31, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews1.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 31, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews2.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 31, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews3.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 31, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews4.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 31, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews5.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 31, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews6.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 31, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews7.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 31, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews8.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 31, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews9.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 32, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews1.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 32, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews2.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 32, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews3.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 32, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews4.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 32, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews5.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 32, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews6.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 32, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews7.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 32, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews8.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 32, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews9.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 33, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews1.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 33, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews2.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 33, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews3.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 33, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews4.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 33, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews5.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 33, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews6.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 33, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews7.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 33, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews8.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 33, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews9.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 34, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews1.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 34, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews2.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 34, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews3.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 34, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews4.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 34, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews5.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 34, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews6.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 34, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews7.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 34, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews8.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 34, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews9.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 35, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews1.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 35, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews2.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 35, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews3.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 35, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews4.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 35, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews5.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 35, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews6.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 35, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews7.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 35, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews8.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 35, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews9.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 36, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews1.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 36, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews2.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 36, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews3.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 36, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews4.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 36, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews5.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 36, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews6.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 36, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews7.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 36, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews8.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 36, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews9.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 37, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews1.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 37, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews2.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 37, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews3.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 37, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews4.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 37, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews5.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 37, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews6.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 37, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews7.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 37, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews8.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 37, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews9.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 38, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews1.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 38, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews2.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 38, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews3.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 38, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews4.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 38, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews5.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 38, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews6.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 38, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews7.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 38, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews8.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 38, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews9.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 39, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews1.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 39, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews2.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 39, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews3.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 39, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews4.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 39, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews5.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 39, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews6.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 39, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews7.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 39, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews8.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 39, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews9.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 40, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews1.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 40, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews2.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 40, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews3.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 40, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews4.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 40, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews5.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 40, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews6.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 40, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews7.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 40, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews8.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 40, '/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21+ 5G/previews3/previews9.jpg');

INSERT INTO ss_product_pic VALUES(NULL, 41, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21 5G/previews1/previews1.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 41, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21 5G/previews1/previews2.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 41, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21 5G/previews1/previews3.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 41, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21 5G/previews1/previews4.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 41, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21 5G/previews1/previews5.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 41, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21 5G/previews1/previews6.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 41, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21 5G/previews1/previews7.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 41, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21 5G/previews1/previews8.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 41, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21 5G/previews1/previews9.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 42, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21 5G/previews1/previews1.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 42, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21 5G/previews1/previews2.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 42, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21 5G/previews1/previews3.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 42, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21 5G/previews1/previews4.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 42, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21 5G/previews1/previews5.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 42, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21 5G/previews1/previews6.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 42, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21 5G/previews1/previews7.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 42, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21 5G/previews1/previews8.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 42, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21 5G/previews1/previews9.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 43, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21 5G/previews1/previews1.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 43, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21 5G/previews1/previews2.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 43, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21 5G/previews1/previews3.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 43, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21 5G/previews1/previews4.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 43, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21 5G/previews1/previews5.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 43, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21 5G/previews1/previews6.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 43, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21 5G/previews1/previews7.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 43, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21 5G/previews1/previews8.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 43, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21 5G/previews1/previews9.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 44, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21 5G/previews1/previews1.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 44, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21 5G/previews1/previews2.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 44, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21 5G/previews1/previews3.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 44, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21 5G/previews1/previews4.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 44, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21 5G/previews1/previews5.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 44, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21 5G/previews1/previews6.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 44, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21 5G/previews1/previews7.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 44, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21 5G/previews1/previews8.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 44, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor1.jpg','/img/product/phone/Galaxy S21 5G/previews1/previews9.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 45, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 5G/previews2/previews1.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 45, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 5G/previews2/previews2.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 45, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 5G/previews2/previews3.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 45, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 5G/previews2/previews4.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 45, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 5G/previews2/previews5.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 45, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 5G/previews2/previews6.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 45, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 5G/previews2/previews7.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 45, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 5G/previews2/previews8.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 45, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 5G/previews2/previews9.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 46, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 5G/previews2/previews1.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 46, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 5G/previews2/previews2.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 46, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 5G/previews2/previews3.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 46, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 5G/previews2/previews4.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 46, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 5G/previews2/previews5.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 46, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 5G/previews2/previews6.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 46, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 5G/previews2/previews7.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 46, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 5G/previews2/previews8.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 46, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 5G/previews2/previews9.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 47, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 5G/previews2/previews1.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 47, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 5G/previews2/previews2.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 47, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 5G/previews2/previews3.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 47, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 5G/previews2/previews4.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 47, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 5G/previews2/previews5.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 47, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 5G/previews2/previews6.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 47, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 5G/previews2/previews7.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 47, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 5G/previews2/previews8.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 47, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 5G/previews2/previews9.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 48, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 5G/previews2/previews1.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 48, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 5G/previews2/previews2.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 48, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 5G/previews2/previews3.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 48, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 5G/previews2/previews4.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 48, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 5G/previews2/previews5.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 48, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 5G/previews2/previews6.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 48, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 5G/previews2/previews7.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 48, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 5G/previews2/previews8.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 48, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor2.jpg','/img/product/phone/Galaxy S21 5G/previews2/previews9.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 49, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews1.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 49, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews2.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 49, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews3.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 49, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews4.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 49, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews5.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 49, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews6.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 49, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews7.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 49, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews8.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 49, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews9.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 50, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews1.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 50, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews2.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 50, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews3.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 50, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews4.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 50, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews5.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 50, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews6.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 50, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews7.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 50, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews8.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 50, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews9.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 51, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews1.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 51, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews2.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 51, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews3.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 51, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews4.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 51, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews5.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 51, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews6.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 51, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews7.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 51, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews8.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 51, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews9.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 52, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews1.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 52, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews2.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 52, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews3.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 52, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews4.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 52, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews5.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 52, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews6.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 52, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews7.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 52, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews8.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 52, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews9.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 53, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews1.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 53, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews2.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 53, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews3.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 53, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews4.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 53, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews5.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 53, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews6.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 53, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews7.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 53, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews8.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 53, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews9.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 54, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews1.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 54, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews2.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 54, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews3.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 54, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews4.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 54, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews5.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 54, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews6.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 54, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews7.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 54, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews8.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 54, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews9.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 55, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews1.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 55, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews2.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 55, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews3.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 55, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews4.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 55, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews5.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 55, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews6.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 55, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews7.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 55, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews8.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 55, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews9.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 56, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews1.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 56, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews2.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 56, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews3.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 56, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews4.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 56, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews5.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 56, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews6.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 56, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews7.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 56, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews8.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 56, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews9.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 57, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews1.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 57, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews2.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 57, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews3.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 57, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews4.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 57, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews5.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 57, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews6.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 57, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews7.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 57, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews8.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 57, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews9.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 58, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews1.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 58, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews2.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 58, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews3.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 58, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews4.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 58, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews5.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 58, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews6.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 58, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews7.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 58, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews8.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 58, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews9.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 59, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews1.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 59, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews2.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 59, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews3.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 59, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews4.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 59, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews5.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 59, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews6.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 59, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews7.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 59, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews8.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 59, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews9.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 60, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews1.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 60, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews2.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 60, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews3.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 60, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews4.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 60, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews5.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 60, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews6.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 60, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews7.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 60, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews8.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 60, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews9.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 61, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews1.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 61, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews2.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 61, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews3.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 61, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews4.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 61, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews5.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 61, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews6.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 61, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews7.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 61, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews8.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 61, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews9.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 62, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews1.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 62, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews2.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 62, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews3.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 62, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews4.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 62, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews5.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 62, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews6.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 62, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews7.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 62, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews8.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 62, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews9.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 63, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews1.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 63, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews2.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 63, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews3.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 63, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews4.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 63, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews5.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 63, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews6.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 63, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews7.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 63, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews8.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 63, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews9.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 64, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews1.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 64, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews2.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 64, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews3.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 64, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews4.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 64, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews5.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 64, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews6.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 64, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews7.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 64, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews8.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 64, '/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg','/img/product/phone/Galaxy S21 5G/previews3/previews9.jpg');

INSERT INTO ss_product_pic VALUES(NULL, 65, '/img/product/budspro/choosecolor/choosecolor1.jpg','/img/product/budspro/preview/color1/preview1.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 65, '/img/product/budspro/choosecolor/choosecolor1.jpg','/img/product/budspro/preview/color1/preview2.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 65, '/img/product/budspro/choosecolor/choosecolor1.jpg','/img/product/budspro/preview/color1/preview3.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 65, '/img/product/budspro/choosecolor/choosecolor1.jpg','/img/product/budspro/preview/color1/preview4.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 65, '/img/product/budspro/choosecolor/choosecolor1.jpg','/img/product/budspro/preview/color1/preview5.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 65, '/img/product/budspro/choosecolor/choosecolor1.jpg','/img/product/budspro/preview/color1/preview6.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 65, '/img/product/budspro/choosecolor/choosecolor1.jpg','/img/product/budspro/preview/color1/preview7.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 65, '/img/product/budspro/choosecolor/choosecolor1.jpg','/img/product/budspro/preview/color1/preview8.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 65, '/img/product/budspro/choosecolor/choosecolor1.jpg','/img/product/budspro/preview/color1/preview9.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 66, '/img/product/budspro/choosecolor/choosecolor2.jpg','/img/product/budspro/preview/color2/preview1.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 66, '/img/product/budspro/choosecolor/choosecolor2.jpg','/img/product/budspro/preview/color2/preview2.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 66, '/img/product/budspro/choosecolor/choosecolor2.jpg','/img/product/budspro/preview/color2/preview3.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 66, '/img/product/budspro/choosecolor/choosecolor2.jpg','/img/product/budspro/preview/color2/preview4.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 67, '/img/product/budspro/choosecolor/choosecolor3.jpg','/img/product/budspro/preview/color3/preview1.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 67, '/img/product/budspro/choosecolor/choosecolor3.jpg','/img/product/budspro/preview/color3/preview2.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 67, '/img/product/budspro/choosecolor/choosecolor3.jpg','/img/product/budspro/preview/color3/preview3.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 67, '/img/product/budspro/choosecolor/choosecolor3.jpg','/img/product/budspro/preview/color3/preview4.jpg');

INSERT INTO ss_product_pic VALUES(NULL, 68, '/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K01/choosecolor/choosecolor1.jpg','/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K01/previews1/previews1.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 68, '/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K01/choosecolor/choosecolor1.jpg','/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K01/previews1/previews2.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 68, '/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K01/choosecolor/choosecolor1.jpg','/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K01/previews1/previews3.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 68, '/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K01/choosecolor/choosecolor1.jpg','/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K01/previews1/previews4.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 68, '/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K01/choosecolor/choosecolor1.jpg','/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K01/previews1/previews5.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 68, '/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K01/choosecolor/choosecolor1.jpg','/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K01/previews1/previews6.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 68, '/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K01/choosecolor/choosecolor1.jpg','/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K01/previews1/previews7.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 68, '/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K01/choosecolor/choosecolor1.jpg','/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K01/previews1/previews8.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 68, '/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K01/choosecolor/choosecolor1.jpg','/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K01/previews1/previews9.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 68, '/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K01/choosecolor/choosecolor1.jpg','/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K01/previews1/previews10.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 68, '/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K01/choosecolor/choosecolor1.jpg','/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K01/previews1/previews11.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 68, '/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K01/choosecolor/choosecolor1.jpg','/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K01/previews1/previews12.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 68, '/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K01/choosecolor/choosecolor1.jpg','/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K01/previews1/previews13.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 68, '/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K01/choosecolor/choosecolor1.jpg','/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K01/previews1/previews14.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 68, '/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K01/choosecolor/choosecolor1.jpg','/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K01/previews1/previews15.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 68, '/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K01/choosecolor/choosecolor1.jpg','/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K01/previews1/previews16.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 68, '/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K01/choosecolor/choosecolor1.jpg','/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K01/previews1/previews17.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 68, '/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K01/choosecolor/choosecolor1.jpg','/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K01/previews1/previews18.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 69, '/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K02/choosecolor/choosecolor1.jpg','/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K02/previews1/previews1.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 69, '/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K02/choosecolor/choosecolor1.jpg','/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K02/previews1/previews2.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 69, '/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K02/choosecolor/choosecolor1.jpg','/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K02/previews1/previews3.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 69, '/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K02/choosecolor/choosecolor1.jpg','/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K02/previews1/previews4.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 69, '/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K02/choosecolor/choosecolor1.jpg','/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K02/previews1/previews5.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 69, '/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K02/choosecolor/choosecolor1.jpg','/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K02/previews1/previews6.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 69, '/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K02/choosecolor/choosecolor1.jpg','/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K02/previews1/previews7.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 69, '/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K02/choosecolor/choosecolor1.jpg','/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K02/previews1/previews8.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 69, '/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K02/choosecolor/choosecolor1.jpg','/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K02/previews1/previews9.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 69, '/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K02/choosecolor/choosecolor1.jpg','/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K02/previews1/previews10.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 69, '/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K02/choosecolor/choosecolor1.jpg','/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K02/previews1/previews11.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 69, '/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K02/choosecolor/choosecolor1.jpg','/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K02/previews1/previews12.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 69, '/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K02/choosecolor/choosecolor1.jpg','/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K02/previews1/previews13.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 69, '/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K02/choosecolor/choosecolor1.jpg','/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K02/previews1/previews14.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 69, '/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K02/choosecolor/choosecolor1.jpg','/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K02/previews1/previews15.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 69, '/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K02/choosecolor/choosecolor1.jpg','/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K02/previews1/previews16.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 69, '/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K02/choosecolor/choosecolor1.jpg','/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K02/previews1/previews17.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 69, '/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K02/choosecolor/choosecolor1.jpg','/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K02/previews1/previews18.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 70, '/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K03/choosecolor/choosecolor1.jpg','/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K03/previews1/previews1.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 70, '/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K03/choosecolor/choosecolor1.jpg','/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K03/previews1/previews2.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 70, '/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K03/choosecolor/choosecolor1.jpg','/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K03/previews1/previews3.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 70, '/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K03/choosecolor/choosecolor1.jpg','/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K03/previews1/previews4.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 70, '/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K03/choosecolor/choosecolor1.jpg','/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K03/previews1/previews5.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 70, '/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K03/choosecolor/choosecolor1.jpg','/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K03/previews1/previews6.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 70, '/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K03/choosecolor/choosecolor1.jpg','/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K03/previews1/previews7.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 70, '/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K03/choosecolor/choosecolor1.jpg','/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K03/previews1/previews8.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 70, '/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K03/choosecolor/choosecolor1.jpg','/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K03/previews1/previews9.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 70, '/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K03/choosecolor/choosecolor1.jpg','/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K03/previews1/previews10.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 70, '/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K03/choosecolor/choosecolor1.jpg','/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K03/previews1/previews11.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 70, '/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K03/choosecolor/choosecolor1.jpg','/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K03/previews1/previews12.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 70, '/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K03/choosecolor/choosecolor1.jpg','/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K03/previews1/previews13.jpg');
INSERT INTO ss_product_pic VALUES(NULL, 70, '/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K03/choosecolor/choosecolor1.jpg','/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K03/previews1/previews14.jpg');

CREATE TABLE ss_index_product(
  ipid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(64),
  pic VARCHAR(128),
  price DECIMAL(7,2)
);

INSERT INTO ss_index_product VALUES(NULL,"Galaxy F52 5G 薄暮黑","/img/index/newsales/newsales1.jpg",1999);
INSERT INTO ss_index_product VALUES(NULL,"Galaxy S21 Ultra 5G 幽夜黑","/img/index/newsales/newsales2.jpg",9699);
INSERT INTO ss_index_product VALUES(NULL,"Galaxy Z Fold2 5G 迷雾金","/img/index/newsales/newsales3.jpg",14999);
INSERT INTO ss_index_product VALUES(NULL,"Galaxy Tab S7 FE LTE 山茶青","/img/index/newsales/newsales4.jpg",3899);
INSERT INTO ss_index_product VALUES(NULL,"65英寸级 三星Neo QLED光质量子点电视QN85A","/img/index/newsales/newsales5.jpg",16499);
INSERT INTO ss_index_product VALUES(NULL,"Galaxy F52 5G 薄暮黑","/img/index/phone/phone1.jpg",1999);
INSERT INTO ss_index_product VALUES(NULL,"Galaxy F52 5G 薄暮黑","/img/index/phone/phone2.jpg",1999);
INSERT INTO ss_index_product VALUES(NULL,"Galaxy F52 5G 薄暮黑","/img/index/phone/phone3.jpg",1999);
INSERT INTO ss_index_product VALUES(NULL,"Galaxy F52 5G 薄暮黑","/img/index/phone/phone4.jpg",1999);
INSERT INTO ss_index_product VALUES(NULL,"Galaxy F52 5G 薄暮黑","/img/index/phone/phonecarousel1.jpg",3999);
INSERT INTO ss_index_product VALUES(NULL,"Galaxy F52 5G 薄暮黑","/img/index/phone/phonecarousel2.jpg",3999);
INSERT INTO ss_index_product VALUES(NULL,"Galaxy F52 5G 薄暮黑","/img/index/phone/phonecarousel3.jpg",1999);
INSERT INTO ss_index_product VALUES(NULL,"Galaxy F52 5G 薄暮黑","/img/index/phone/phonecarousel4.jpg",3999);
INSERT INTO ss_index_product VALUES(NULL,"Galaxy F52 5G 薄暮黑","/img/index/phone/phonecarousel5.jpg",1999);
INSERT INTO ss_index_product VALUES(NULL,"Galaxy F52 5G 薄暮黑","/img/index/phone/phonecarousel6.jpg",3999);
INSERT INTO ss_index_product VALUES(NULL,"Galaxy F52 5G 薄暮黑","/img/index/phone/phonecarousel7.jpg",1999);
INSERT INTO ss_index_product VALUES(NULL,"Galaxy F52 5G 薄暮黑","/img/index/phone/phonecarousel8.jpg",1999);
INSERT INTO ss_index_product VALUES(NULL,"Samsung Galaxy Buds Pro","/img/index/wearabledivice/wearabldevice1.jpg",1069);
INSERT INTO ss_index_product VALUES(NULL,"Samsung Galaxy Buds Pro","/img/index/wearabledivice/wearabldevice2.jpg",1069);
INSERT INTO ss_index_product VALUES(NULL,"Samsung Galaxy Buds Pro","/img/index/wearabledivice/wearabldevice3.jpg",1069);
INSERT INTO ss_index_product VALUES(NULL,"Samsung Galaxy Buds Pro","/img/index/wearabledivice/wearabldevice4.jpg",1069);
INSERT INTO ss_index_product VALUES(NULL,"Samsung Galaxy Buds Pro","/img/index/wearabledivice/wearabldevicecarousel1.jpg",1069);
INSERT INTO ss_index_product VALUES(NULL,"Samsung Galaxy Buds Pro","/img/index/wearabledivice/wearabldevicecarousel2.jpg",1069);
INSERT INTO ss_index_product VALUES(NULL,"Samsung Galaxy Buds Pro","/img/index/wearabledivice/wearabldevicecarousel3.jpg",1069);
INSERT INTO ss_index_product VALUES(NULL,"Samsung Galaxy Buds Pro","/img/index/wearabledivice/wearabldevicecarousel4.jpg",1069);
INSERT INTO ss_index_product VALUES(NULL,"Samsung Galaxy Buds Pro","/img/index/wearabledivice/wearabldevicecarousel5.jpg",1069);
INSERT INTO ss_index_product VALUES(NULL,"Samsung Galaxy Buds Pro","/img/index/wearabledivice/wearabldevicecarousel6.jpg",1069);
INSERT INTO ss_index_product VALUES(NULL,"Samsung Galaxy Buds Pro","/img/index/wearabledivice/wearabldevicecarousel7.jpg",1069);
INSERT INTO ss_index_product VALUES(NULL,"Samsung Galaxy Buds Pro","/img/index/wearabledivice/wearabldevicecarousel8.jpg",1069);
INSERT INTO ss_index_product VALUES(NULL,"Galaxy Tab S7+ Wi-Fi 键盘套装","/img/index/PC_tablaturePC_storage/PC_tablaturePC_storage1.jpg",7899);
INSERT INTO ss_index_product VALUES(NULL,"Galaxy Tab S7+ Wi-Fi 键盘套装","/img/index/PC_tablaturePC_storage/PC_tablaturePC_storage2.jpg",7899);
INSERT INTO ss_index_product VALUES(NULL,"Galaxy Tab S7+ Wi-Fi 键盘套装","/img/index/PC_tablaturePC_storage/PC_tablaturePC_storage3.jpg",7899);
INSERT INTO ss_index_product VALUES(NULL,"Galaxy Tab S7+ Wi-Fi 键盘套装","/img/index/PC_tablaturePC_storage/PC_tablaturePC_storage4.jpg",7899);
INSERT INTO ss_index_product VALUES(NULL,"Galaxy Tab S7+ Wi-Fi 键盘套装","/img/index/PC_tablaturePC_storage/PC_tablaturePC_storagecarousel1.jpg",7899);
INSERT INTO ss_index_product VALUES(NULL,"Galaxy Tab S7+ Wi-Fi 键盘套装","/img/index/PC_tablaturePC_storage/PC_tablaturePC_storagecarousel2.jpg",7899);
INSERT INTO ss_index_product VALUES(NULL,"Galaxy Tab S7+ Wi-Fi 键盘套装","/img/index/PC_tablaturePC_storage/PC_tablaturePC_storagecarousel3.jpg",7899);
INSERT INTO ss_index_product VALUES(NULL,"Galaxy Tab S7+ Wi-Fi 键盘套装","/img/index/PC_tablaturePC_storage/PC_tablaturePC_storagecarousel4.jpg",7899);
INSERT INTO ss_index_product VALUES(NULL,"Galaxy Tab S7+ Wi-Fi 键盘套装","/img/index/PC_tablaturePC_storage/PC_tablaturePC_storagecarousel5.jpg",7899);
INSERT INTO ss_index_product VALUES(NULL,"Galaxy Tab S7+ Wi-Fi 键盘套装","/img/index/PC_tablaturePC_storage/PC_tablaturePC_storagecarousel6.jpg",7899);
INSERT INTO ss_index_product VALUES(NULL,"Galaxy Tab S7+ Wi-Fi 键盘套装","/img/index/PC_tablaturePC_storage/PC_tablaturePC_storagecarousel7.jpg",7899);
INSERT INTO ss_index_product VALUES(NULL,"Galaxy Tab S7+ Wi-Fi 键盘套装","/img/index/PC_tablaturePC_storage/PC_tablaturePC_storagecarousel8.jpg",7899);
INSERT INTO ss_index_product VALUES(NULL,"Galaxy S21+ 5G 镜面智能保护套","/img/index/fittings/fittings1.png",359);
INSERT INTO ss_index_product VALUES(NULL,"Galaxy S21+ 5G 镜面智能保护套","/img/index/fittings/fittings2.png",359);
INSERT INTO ss_index_product VALUES(NULL,"Galaxy S21+ 5G 镜面智能保护套","/img/index/fittings/fittings3.jpg",359);
INSERT INTO ss_index_product VALUES(NULL,"Galaxy S21+ 5G 镜面智能保护套","/img/index/fittings/fittings4.png",359);
INSERT INTO ss_index_product VALUES(NULL,"Galaxy S21+ 5G 镜面智能保护套","/img/index/fittings/fittingscarousel1.png",359);
INSERT INTO ss_index_product VALUES(NULL,"Galaxy S21+ 5G 镜面智能保护套","/img/index/fittings/fittingscarousel2.png",359);
INSERT INTO ss_index_product VALUES(NULL,"Galaxy S21+ 5G 镜面智能保护套","/img/index/fittings/fittingscarousel3.png",359);
INSERT INTO ss_index_product VALUES(NULL,"Galaxy S21+ 5G 镜面智能保护套","/img/index/fittings/fittingscarousel4.png",359);
INSERT INTO ss_index_product VALUES(NULL,"Galaxy S21+ 5G 镜面智能保护套","/img/index/fittings/fittingscarousel5.png",359);
INSERT INTO ss_index_product VALUES(NULL,"Galaxy S21+ 5G 镜面智能保护套","/img/index/fittings/fittingscarousel6.jpg",359);
INSERT INTO ss_index_product VALUES(NULL,"Galaxy S21+ 5G 镜面智能保护套","/img/index/fittings/fittingscarousel7.png",359);
INSERT INTO ss_index_product VALUES(NULL,"75英寸级 三星Neo QLED 8K光质量子点电视QN900A","/img/index/TV_media/TV_media1.jpg",69999);
INSERT INTO ss_index_product VALUES(NULL,"75英寸级 三星Neo QLED 8K光质量子点电视QN900A","/img/index/TV_media/TV_media2.jpg",69999);
INSERT INTO ss_index_product VALUES(NULL,"75英寸级 三星Neo QLED 8K光质量子点电视QN900A","/img/index/TV_media/TV_media3.jpg",69999);
INSERT INTO ss_index_product VALUES(NULL,"75英寸级 三星Neo QLED 8K光质量子点电视QN900A","/img/index/TV_media/TV_media4.jpg",69999);
INSERT INTO ss_index_product VALUES(NULL,"75英寸级 三星Neo QLED 8K光质量子点电视QN900A","/img/index/TV_media/TV_mediacarousel1.jpg",69999);
INSERT INTO ss_index_product VALUES(NULL,"75英寸级 三星Neo QLED 8K光质量子点电视QN900A","/img/index/TV_media/TV_mediacarousel2.jpg",69999);
INSERT INTO ss_index_product VALUES(NULL,"75英寸级 三星Neo QLED 8K光质量子点电视QN900A","/img/index/TV_media/TV_mediacarousel3.jpg",69999);
INSERT INTO ss_index_product VALUES(NULL,"75英寸级 三星Neo QLED 8K光质量子点电视QN900A","/img/index/TV_media/TV_mediacarousel4.jpg",69999);
INSERT INTO ss_index_product VALUES(NULL,"75英寸级 三星Neo QLED 8K光质量子点电视QN900A","/img/index/TV_media/TV_mediacarousel5.jpg",69999);
INSERT INTO ss_index_product VALUES(NULL,"75英寸级 三星Neo QLED 8K光质量子点电视QN900A","/img/index/TV_media/TV_mediacarousel6.jpg",69999);
INSERT INTO ss_index_product VALUES(NULL,"75英寸级 三星Neo QLED 8K光质量子点电视QN900A","/img/index/TV_media/TV_mediacarousel7.jpg",69999);
INSERT INTO ss_index_product VALUES(NULL,"75英寸级 三星Neo QLED 8K光质量子点电视QN900A","/img/index/TV_media/TV_mediacarousel8.jpg",69999);


/**购物车条目**/
CREATE TABLE ss_shoppingcart_item(
  iid INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT,      #用户编号
  product_id INT,   #商品编号
  count INT,        #购买数量
  is_checked BOOLEAN #是否已勾选，确定购买
);

/**用户订单**/
CREATE TABLE ss_order(
  oid INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT,
  address_id INT,
  status INT,             #订单状态  1-等待付款  2-等待发货  3-运输中  4-已签收  5-已取消
  order_time BIGINT,      #下单时间
  pay_time BIGINT,        #付款时间
  deliver_time BIGINT,    #发货时间
  received_time BIGINT    #签收时间
)AUTO_INCREMENT=10000000;

/**用户订单**/
CREATE TABLE ss_order_detail(
  odid INT PRIMARY KEY AUTO_INCREMENT,
  order_id INT,           #订单编号
  product_id INT,         #产品编号
  count INT               #购买数量
);

CREATE TABLE ss_product_notice(
    pnid INT PRIMARY KEY AUTO_INCREMENT,
    p_id INT,    
    price DECIMAL(7,2),                                         #售价
    internal_storage VARCHAR(64)                               #内存
);

INSERT INTO ss_product_notice VALUES(NULL,1,9399.00,"12GB RAM 256GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,1,10699.00,"16GB RAM 512GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,2,9399.00,"12GB RAM 256GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,2,10699.00,"16GB RAM 512GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,3,9399.00,"12GB RAM 256GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,3,10699.00,"16GB RAM 512GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,4,9399.00,"12GB RAM 256GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,4,10699.00,"16GB RAM 512GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,5,9399.00,"12GB RAM 256GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,5,10699.00,"16GB RAM 512GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,6,9399.00,"12GB RAM 256GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,6,10699.00,"16GB RAM 512GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,7,9399.00,"12GB RAM 256GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,7,10699.00,"16GB RAM 512GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,8,9399.00,"12GB RAM 256GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,8,10699.00,"16GB RAM 512GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,9,9399.00,"12GB RAM 256GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,9,10699.00,"16GB RAM 512GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,10,9399.00,"12GB RAM 256GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,10,10699.00,"16GB RAM 512GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,11,9399.00,"12GB RAM 256GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,11,10699.00,"16GB RAM 512GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,12,9399.00,"12GB RAM 256GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,12,10699.00,"16GB RAM 512GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,13,9399.00,"12GB RAM 256GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,13,10699.00,"16GB RAM 512GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,14,9399.00,"12GB RAM 256GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,14,10699.00,"16GB RAM 512GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,15,9399.00,"12GB RAM 256GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,15,10699.00,"16GB RAM 512GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,16,9399.00,"12GB RAM 256GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,16,10699.00,"16GB RAM 512GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,17,5499.00,"8GB RAM 128GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,17,6199.00,"8GB RAM 256GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,18,5499.00,"8GB RAM 128GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,18,6199.00,"8GB RAM 256GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,19,5499.00,"8GB RAM 128GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,19,6199.00,"8GB RAM 256GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,20,5499.00,"8GB RAM 128GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,20,6199.00,"8GB RAM 256GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,21,5499.00,"8GB RAM 128GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,21,6199.00,"8GB RAM 256GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,22,5499.00,"8GB RAM 128GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,22,6199.00,"8GB RAM 256GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,23,5499.00,"8GB RAM 128GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,23,6199.00,"8GB RAM 256GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,24,5499.00,"8GB RAM 128GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,24,6199.00,"8GB RAM 256GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,25,5499.00,"8GB RAM 128GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,25,6199.00,"8GB RAM 256GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,26,5499.00,"8GB RAM 128GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,26,6199.00,"8GB RAM 256GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,27,5499.00,"8GB RAM 128GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,27,6199.00,"8GB RAM 256GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,28,5499.00,"8GB RAM 128GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,28,6199.00,"8GB RAM 256GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,29,5499.00,"8GB RAM 128GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,29,6199.00,"8GB RAM 256GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,30,5499.00,"8GB RAM 128GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,30,6199.00,"8GB RAM 256GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,31,5499.00,"8GB RAM 128GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,31,6199.00,"8GB RAM 256GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,32,5499.00,"8GB RAM 128GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,32,6199.00,"8GB RAM 256GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,33,5499.00,"8GB RAM 128GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,33,6199.00,"8GB RAM 256GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,34,5499.00,"8GB RAM 128GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,34,6199.00,"8GB RAM 256GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,35,5499.00,"8GB RAM 128GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,35,6199.00,"8GB RAM 256GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,36,5499.00,"8GB RAM 128GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,36,6199.00,"8GB RAM 256GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,37,5499.00,"8GB RAM 128GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,37,6199.00,"8GB RAM 256GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,38,5499.00,"8GB RAM 128GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,38,6199.00,"8GB RAM 256GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,39,5499.00,"8GB RAM 128GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,39,6199.00,"8GB RAM 256GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,40,5499.00,"8GB RAM 128GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,40,6199.00,"8GB RAM 256GB ROM");


INSERT INTO ss_product_notice VALUES(NULL,41,4199.00,"8GB RAM 128GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,41,4999.00,"8GB RAM 256GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,42,4199.00,"8GB RAM 128GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,42,4999.00,"8GB RAM 256GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,43,4199.00,"8GB RAM 128GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,43,4999.00,"8GB RAM 256GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,44,4199.00,"8GB RAM 128GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,44,4999.00,"8GB RAM 256GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,45,4199.00,"8GB RAM 128GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,45,4999.00,"8GB RAM 256GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,46,4199.00,"8GB RAM 128GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,46,4999.00,"8GB RAM 256GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,47,4199.00,"8GB RAM 128GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,47,4999.00,"8GB RAM 256GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,48,4199.00,"8GB RAM 128GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,48,4999.00,"8GB RAM 256GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,49,4199.00,"8GB RAM 128GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,49,4999.00,"8GB RAM 256GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,50,4199.00,"8GB RAM 128GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,50,4999.00,"8GB RAM 256GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,51,4199.00,"8GB RAM 128GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,51,4999.00,"8GB RAM 256GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,52,4199.00,"8GB RAM 128GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,52,4999.00,"8GB RAM 256GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,53,4199.00,"8GB RAM 128GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,53,4999.00,"8GB RAM 256GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,54,4199.00,"8GB RAM 128GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,54,4999.00,"8GB RAM 256GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,55,4199.00,"8GB RAM 128GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,55,4999.00,"8GB RAM 256GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,56,4199.00,"8GB RAM 128GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,56,4999.00,"8GB RAM 256GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,57,4199.00,"8GB RAM 128GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,57,4999.00,"8GB RAM 256GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,58,4199.00,"8GB RAM 128GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,58,4999.00,"8GB RAM 256GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,59,4199.00,"8GB RAM 128GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,59,4999.00,"8GB RAM 256GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,60,4199.00,"8GB RAM 128GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,60,4999.00,"8GB RAM 256GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,61,4199.00,"8GB RAM 128GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,61,4999.00,"8GB RAM 256GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,62,4199.00,"8GB RAM 128GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,62,4999.00,"8GB RAM 256GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,63,4199.00,"8GB RAM 128GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,63,4999.00,"8GB RAM 256GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,64,4199.00,"8GB RAM 128GB ROM");
INSERT INTO ss_product_notice VALUES(NULL,64,4999.00,"8GB RAM 256GB ROM");

INSERT INTO ss_product_notice VALUES(NULL,65,1079.00,null);
INSERT INTO ss_product_notice VALUES(NULL,66,1069.00,null);
INSERT INTO ss_product_notice VALUES(NULL,67,1069.00,null);

INSERT INTO ss_product_notice VALUES(NULL,68,12699.00,"i7-1065G7");
INSERT INTO ss_product_notice VALUES(NULL,69,10199.00,"i5-1035G4");
INSERT INTO ss_product_notice VALUES(NULL,70,12699.00,"i7-1065G7");

CREATE TABLE ss_product_color(
    pnid INT PRIMARY KEY AUTO_INCREMENT,
    pid INT,    
    color VARCHAR(128),                                          #颜色
    ppid INT
);

INSERT INTO ss_product_color VALUES(NULL,1,"/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor1.jpg",1);
INSERT INTO ss_product_color VALUES(NULL,1,"/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg",5);
INSERT INTO ss_product_color VALUES(NULL,2,"/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor1.jpg",1);
INSERT INTO ss_product_color VALUES(NULL,2,"/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg",5);
INSERT INTO ss_product_color VALUES(NULL,3,"/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor1.jpg",1);
INSERT INTO ss_product_color VALUES(NULL,3,"/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg",5);
INSERT INTO ss_product_color VALUES(NULL,4,"/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor1.jpg",1);
INSERT INTO ss_product_color VALUES(NULL,4,"/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg",5);
INSERT INTO ss_product_color VALUES(NULL,5,"/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor1.jpg",1);
INSERT INTO ss_product_color VALUES(NULL,5,"/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg",5);
INSERT INTO ss_product_color VALUES(NULL,6,"/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor1.jpg",1);
INSERT INTO ss_product_color VALUES(NULL,6,"/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg",5);
INSERT INTO ss_product_color VALUES(NULL,7,"/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor1.jpg",1);
INSERT INTO ss_product_color VALUES(NULL,7,"/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg",5);
INSERT INTO ss_product_color VALUES(NULL,8,"/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor1.jpg",1);
INSERT INTO ss_product_color VALUES(NULL,8,"/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg",5);
INSERT INTO ss_product_color VALUES(NULL,9,"/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor1.jpg",1);
INSERT INTO ss_product_color VALUES(NULL,9,"/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg",5);
INSERT INTO ss_product_color VALUES(NULL,10,"/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor1.jpg",1);
INSERT INTO ss_product_color VALUES(NULL,10,"/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg",5);
INSERT INTO ss_product_color VALUES(NULL,11,"/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor1.jpg",1);
INSERT INTO ss_product_color VALUES(NULL,11,"/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg",5);
INSERT INTO ss_product_color VALUES(NULL,12,"/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor1.jpg",1);
INSERT INTO ss_product_color VALUES(NULL,12,"/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg",5);
INSERT INTO ss_product_color VALUES(NULL,13,"/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor1.jpg",1);
INSERT INTO ss_product_color VALUES(NULL,13,"/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg",5);
INSERT INTO ss_product_color VALUES(NULL,14,"/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor1.jpg",1);
INSERT INTO ss_product_color VALUES(NULL,14,"/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg",5);
INSERT INTO ss_product_color VALUES(NULL,15,"/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor1.jpg",1);
INSERT INTO ss_product_color VALUES(NULL,15,"/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg",5);
INSERT INTO ss_product_color VALUES(NULL,16,"/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor1.jpg",1);
INSERT INTO ss_product_color VALUES(NULL,16,"/img/product/phone/Galaxy S21 Ultra 5G/choosecolor/choosecolor2.jpg",5);


INSERT INTO ss_product_color VALUES(NULL,17,"/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor1.jpg",17);
INSERT INTO ss_product_color VALUES(NULL,17,"/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor2.jpg",21);
INSERT INTO ss_product_color VALUES(NULL,17,"/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg",25);
INSERT INTO ss_product_color VALUES(NULL,18,"/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor1.jpg",17);
INSERT INTO ss_product_color VALUES(NULL,18,"/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor2.jpg",21);
INSERT INTO ss_product_color VALUES(NULL,18,"/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg",25);
INSERT INTO ss_product_color VALUES(NULL,19,"/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor1.jpg",17);
INSERT INTO ss_product_color VALUES(NULL,19,"/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor2.jpg",21);
INSERT INTO ss_product_color VALUES(NULL,19,"/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg",25);
INSERT INTO ss_product_color VALUES(NULL,20,"/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor1.jpg",17);
INSERT INTO ss_product_color VALUES(NULL,20,"/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor2.jpg",21);
INSERT INTO ss_product_color VALUES(NULL,20,"/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg",25);
INSERT INTO ss_product_color VALUES(NULL,21,"/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor1.jpg",17);
INSERT INTO ss_product_color VALUES(NULL,21,"/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor2.jpg",21);
INSERT INTO ss_product_color VALUES(NULL,21,"/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg",25);
INSERT INTO ss_product_color VALUES(NULL,22,"/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor1.jpg",17);
INSERT INTO ss_product_color VALUES(NULL,22,"/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor2.jpg",21);
INSERT INTO ss_product_color VALUES(NULL,22,"/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg",25);
INSERT INTO ss_product_color VALUES(NULL,23,"/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor1.jpg",17);
INSERT INTO ss_product_color VALUES(NULL,23,"/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor2.jpg",21);
INSERT INTO ss_product_color VALUES(NULL,23,"/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg",25);
INSERT INTO ss_product_color VALUES(NULL,24,"/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor1.jpg",17);
INSERT INTO ss_product_color VALUES(NULL,24,"/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor2.jpg",21);
INSERT INTO ss_product_color VALUES(NULL,24,"/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg",25);
INSERT INTO ss_product_color VALUES(NULL,25,"/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor1.jpg",17);
INSERT INTO ss_product_color VALUES(NULL,25,"/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor2.jpg",21);
INSERT INTO ss_product_color VALUES(NULL,25,"/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg",25);
INSERT INTO ss_product_color VALUES(NULL,26,"/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor1.jpg",17);
INSERT INTO ss_product_color VALUES(NULL,26,"/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor2.jpg",21);
INSERT INTO ss_product_color VALUES(NULL,26,"/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg",25);
INSERT INTO ss_product_color VALUES(NULL,27,"/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor1.jpg",17);
INSERT INTO ss_product_color VALUES(NULL,27,"/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor2.jpg",21);
INSERT INTO ss_product_color VALUES(NULL,27,"/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg",25);
INSERT INTO ss_product_color VALUES(NULL,28,"/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor1.jpg",17);
INSERT INTO ss_product_color VALUES(NULL,28,"/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor2.jpg",21);
INSERT INTO ss_product_color VALUES(NULL,28,"/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg",25);
INSERT INTO ss_product_color VALUES(NULL,29,"/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor1.jpg",17);
INSERT INTO ss_product_color VALUES(NULL,29,"/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor2.jpg",21);
INSERT INTO ss_product_color VALUES(NULL,29,"/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg",25);
INSERT INTO ss_product_color VALUES(NULL,30,"/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor1.jpg",17);
INSERT INTO ss_product_color VALUES(NULL,30,"/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor2.jpg",21);
INSERT INTO ss_product_color VALUES(NULL,30,"/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg",25);
INSERT INTO ss_product_color VALUES(NULL,31,"/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor1.jpg",17);
INSERT INTO ss_product_color VALUES(NULL,31,"/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor2.jpg",21);
INSERT INTO ss_product_color VALUES(NULL,31,"/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg",25);
INSERT INTO ss_product_color VALUES(NULL,32,"/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor1.jpg",17);
INSERT INTO ss_product_color VALUES(NULL,32,"/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor2.jpg",21);
INSERT INTO ss_product_color VALUES(NULL,32,"/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg",25);
INSERT INTO ss_product_color VALUES(NULL,33,"/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor1.jpg",17);
INSERT INTO ss_product_color VALUES(NULL,33,"/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor2.jpg",21);
INSERT INTO ss_product_color VALUES(NULL,33,"/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg",25);
INSERT INTO ss_product_color VALUES(NULL,34,"/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor1.jpg",17);
INSERT INTO ss_product_color VALUES(NULL,34,"/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor2.jpg",21);
INSERT INTO ss_product_color VALUES(NULL,34,"/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg",25);
INSERT INTO ss_product_color VALUES(NULL,35,"/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor1.jpg",17);
INSERT INTO ss_product_color VALUES(NULL,35,"/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor2.jpg",21);
INSERT INTO ss_product_color VALUES(NULL,35,"/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg",25);
INSERT INTO ss_product_color VALUES(NULL,36,"/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor1.jpg",17);
INSERT INTO ss_product_color VALUES(NULL,36,"/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor2.jpg",21);
INSERT INTO ss_product_color VALUES(NULL,36,"/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg",25);
INSERT INTO ss_product_color VALUES(NULL,37,"/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor1.jpg",17);
INSERT INTO ss_product_color VALUES(NULL,37,"/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor2.jpg",21);
INSERT INTO ss_product_color VALUES(NULL,37,"/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg",25);
INSERT INTO ss_product_color VALUES(NULL,38,"/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor1.jpg",17);
INSERT INTO ss_product_color VALUES(NULL,38,"/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor2.jpg",21);
INSERT INTO ss_product_color VALUES(NULL,38,"/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg",25);
INSERT INTO ss_product_color VALUES(NULL,39,"/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor1.jpg",17);
INSERT INTO ss_product_color VALUES(NULL,39,"/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor2.jpg",21);
INSERT INTO ss_product_color VALUES(NULL,39,"/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg",25);
INSERT INTO ss_product_color VALUES(NULL,40,"/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor1.jpg",17);
INSERT INTO ss_product_color VALUES(NULL,40,"/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor2.jpg",21);
INSERT INTO ss_product_color VALUES(NULL,40,"/img/product/phone/Galaxy S21+ 5G/choosecolor/choosecolor3.jpg",25);


INSERT INTO ss_product_color VALUES(NULL,41,"/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor1.jpg",41);
INSERT INTO ss_product_color VALUES(NULL,41,"/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor2.jpg",45);
INSERT INTO ss_product_color VALUES(NULL,41,"/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg",49);
INSERT INTO ss_product_color VALUES(NULL,42,"/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor1.jpg",41);
INSERT INTO ss_product_color VALUES(NULL,42,"/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor2.jpg",45);
INSERT INTO ss_product_color VALUES(NULL,42,"/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg",49);
INSERT INTO ss_product_color VALUES(NULL,43,"/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor1.jpg",41);
INSERT INTO ss_product_color VALUES(NULL,43,"/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor2.jpg",45);
INSERT INTO ss_product_color VALUES(NULL,43,"/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg",49);
INSERT INTO ss_product_color VALUES(NULL,44,"/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor1.jpg",41);
INSERT INTO ss_product_color VALUES(NULL,44,"/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor2.jpg",45);
INSERT INTO ss_product_color VALUES(NULL,44,"/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg",49);
INSERT INTO ss_product_color VALUES(NULL,45,"/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor1.jpg",41);
INSERT INTO ss_product_color VALUES(NULL,45,"/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor2.jpg",45);
INSERT INTO ss_product_color VALUES(NULL,45,"/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg",49);
INSERT INTO ss_product_color VALUES(NULL,46,"/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor1.jpg",41);
INSERT INTO ss_product_color VALUES(NULL,46,"/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor2.jpg",45);
INSERT INTO ss_product_color VALUES(NULL,46,"/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg",49);
INSERT INTO ss_product_color VALUES(NULL,47,"/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor1.jpg",41);
INSERT INTO ss_product_color VALUES(NULL,47,"/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor2.jpg",45);
INSERT INTO ss_product_color VALUES(NULL,47,"/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg",49);
INSERT INTO ss_product_color VALUES(NULL,48,"/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor1.jpg",41);
INSERT INTO ss_product_color VALUES(NULL,48,"/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor2.jpg",45);
INSERT INTO ss_product_color VALUES(NULL,48,"/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg",49);
INSERT INTO ss_product_color VALUES(NULL,49,"/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor1.jpg",41);
INSERT INTO ss_product_color VALUES(NULL,49,"/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor2.jpg",45);
INSERT INTO ss_product_color VALUES(NULL,49,"/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg",49);
INSERT INTO ss_product_color VALUES(NULL,50,"/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor1.jpg",41);
INSERT INTO ss_product_color VALUES(NULL,50,"/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor2.jpg",45);
INSERT INTO ss_product_color VALUES(NULL,50,"/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg",49);
INSERT INTO ss_product_color VALUES(NULL,51,"/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor1.jpg",41);
INSERT INTO ss_product_color VALUES(NULL,51,"/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor2.jpg",45);
INSERT INTO ss_product_color VALUES(NULL,51,"/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg",49);
INSERT INTO ss_product_color VALUES(NULL,52,"/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor1.jpg",41);
INSERT INTO ss_product_color VALUES(NULL,52,"/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor2.jpg",45);
INSERT INTO ss_product_color VALUES(NULL,52,"/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg",49);
INSERT INTO ss_product_color VALUES(NULL,53,"/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor1.jpg",41);
INSERT INTO ss_product_color VALUES(NULL,53,"/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor2.jpg",45);
INSERT INTO ss_product_color VALUES(NULL,53,"/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg",49);
INSERT INTO ss_product_color VALUES(NULL,54,"/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor1.jpg",41);
INSERT INTO ss_product_color VALUES(NULL,54,"/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor2.jpg",45);
INSERT INTO ss_product_color VALUES(NULL,54,"/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg",49);
INSERT INTO ss_product_color VALUES(NULL,55,"/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor1.jpg",41);
INSERT INTO ss_product_color VALUES(NULL,55,"/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor2.jpg",45);
INSERT INTO ss_product_color VALUES(NULL,55,"/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg",49);
INSERT INTO ss_product_color VALUES(NULL,56,"/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor1.jpg",41);
INSERT INTO ss_product_color VALUES(NULL,56,"/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor2.jpg",45);
INSERT INTO ss_product_color VALUES(NULL,56,"/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg",49);
INSERT INTO ss_product_color VALUES(NULL,57,"/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor1.jpg",41);
INSERT INTO ss_product_color VALUES(NULL,57,"/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor2.jpg",45);
INSERT INTO ss_product_color VALUES(NULL,57,"/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg",49);
INSERT INTO ss_product_color VALUES(NULL,58,"/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor1.jpg",41);
INSERT INTO ss_product_color VALUES(NULL,58,"/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor2.jpg",45);
INSERT INTO ss_product_color VALUES(NULL,58,"/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg",49);
INSERT INTO ss_product_color VALUES(NULL,59,"/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor1.jpg",41);
INSERT INTO ss_product_color VALUES(NULL,59,"/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor2.jpg",45);
INSERT INTO ss_product_color VALUES(NULL,59,"/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg",49);
INSERT INTO ss_product_color VALUES(NULL,60,"/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor1.jpg",41);
INSERT INTO ss_product_color VALUES(NULL,60,"/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor2.jpg",45);
INSERT INTO ss_product_color VALUES(NULL,60,"/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg",49);
INSERT INTO ss_product_color VALUES(NULL,61,"/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor1.jpg",41);
INSERT INTO ss_product_color VALUES(NULL,61,"/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor2.jpg",45);
INSERT INTO ss_product_color VALUES(NULL,61,"/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg",49);
INSERT INTO ss_product_color VALUES(NULL,62,"/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor1.jpg",41);
INSERT INTO ss_product_color VALUES(NULL,62,"/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor2.jpg",45);
INSERT INTO ss_product_color VALUES(NULL,62,"/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg",49);
INSERT INTO ss_product_color VALUES(NULL,63,"/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor1.jpg",41);
INSERT INTO ss_product_color VALUES(NULL,63,"/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor2.jpg",45);
INSERT INTO ss_product_color VALUES(NULL,63,"/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg",49);
INSERT INTO ss_product_color VALUES(NULL,64,"/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor1.jpg",41);
INSERT INTO ss_product_color VALUES(NULL,64,"/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor2.jpg",45);
INSERT INTO ss_product_color VALUES(NULL,64,"/img/product/phone/Galaxy S21 5G/choosecolor/choosecolor3.jpg",49);


INSERT INTO ss_product_color VALUES(NULL,65,"/img/product/budspro/choosecolor/choosecolor1.jpg",65);
INSERT INTO ss_product_color VALUES(NULL,65,"/img/product/budspro/choosecolor/choosecolor2.jpg",66);
INSERT INTO ss_product_color VALUES(NULL,65,"/img/product/budspro/choosecolor/choosecolor3.jpg",67);
INSERT INTO ss_product_color VALUES(NULL,66,"/img/product/budspro/choosecolor/choosecolor1.jpg",65);
INSERT INTO ss_product_color VALUES(NULL,66,"/img/product/budspro/choosecolor/choosecolor2.jpg",66);
INSERT INTO ss_product_color VALUES(NULL,66,"/img/product/budspro/choosecolor/choosecolor3.jpg",67);
INSERT INTO ss_product_color VALUES(NULL,67,"/img/product/budspro/choosecolor/choosecolor1.jpg",65);
INSERT INTO ss_product_color VALUES(NULL,67,"/img/product/budspro/choosecolor/choosecolor2.jpg",66);
INSERT INTO ss_product_color VALUES(NULL,67,"/img/product/budspro/choosecolor/choosecolor3.jpg",67);

INSERT INTO ss_product_color VALUES(NULL,68,"/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K01/choosecolor/choosecolor1.jpg",68);
INSERT INTO ss_product_color VALUES(NULL,69,"/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K02/choosecolor/choosecolor1.jpg",69);
INSERT INTO ss_product_color VALUES(NULL,70,"/img/product/laptop/Samsung Galaxy Book Flex 930QCG-K03/choosecolor/choosecolor1.jpg",70);

