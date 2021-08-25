const express=require('express');
const pool=require('../pool');
const r=express.Router();
const svgCaptcha = require('svg-captcha');
var md5=require('md5-node');

var capcode;
//验证码
r.get('/code',(req, res)=>{

	//第一个版本:图形类型的验证码
	// const cap = svgCaptcha.create({
	// 		// 翻转颜色
	// 		inverse: false,
	// 		// 字体大小
	// 		fontSize: 36,
	// 		// 噪声线条数
	// 		noise: 3,
	// 		// 宽度
	// 		width: 80,
	// 		// 高度
	// 		height: 30,
	// 		//是否是彩色
	// 		color:true,
	// 		ignoreChars:"0o1i",
	// 		size:4,//验证码长度
	// 	});
	
	//第二个版本:算术计算
	const cap = svgCaptcha.createMathExpr({
		fontSize: 45,
		mathMin:1,
		mathMax:9,
		mathOperator:"+-",
		width: 110,
	    height: 45,
		color:true,
	})	
	req.session.captcha = cap.text; // session 存储验证码数值
	capcode=req.session.captcha;
	res.type('svg'); // 响应的类型
	res.send(cap.data);
  });

//登录
r.post('/login',(req,res)=>{
    if(req.session.auth){
		res.send("1");
		return;
	}
    var phone=req.body.uphone;
    var upwd=md5(req.body.upwd);
    var sql='select * from ss_user where phone=? and upwd=?';
    pool.query(sql,[phone,upwd],(err,result)=>{
        if(err) throw err;
        if(result.length>0){
			req.session.auth = true;   //登录成功auto
			
			res.send({msg:"success",code:200,phone:result[0].phone});//登录成功
		}else{
			req.session.auth = false;
			res.send({msg:"fail",code:201});//登录失败
		}
    });
});

//注册
r.post("/register",(req,res)=>{
	var obj=req.body;
	//验证用户验证码
	if(obj.code != capcode){
		console.log(obj.code != capcode);
		res.send({msg:"fail",code:203});
		return;
	}
	var sql="INSERT INTO ss_user (uid,phone,upwd,uname,birthday) VALUES (null,?,?,?,?)"; 
	var sql1="select * from ss_user where phone=?"
	pool.query(sql1,[obj.phone],(err,result)=>{
		if(err) throw err;
		console.log(result);
		if(result.length==0){
			pool.query(sql,[obj.phone,md5(obj.upwd),obj.uname,obj.birthday],(err,result)=>{
					if(err) throw err;
					if(result.affectedRows>0){
						res.send({msg:"success",code:200});
					}else{
						res.send({msg:"fail",code:201});
					}
				});
		}else if(result.length!=0){
			res.send({msg:"fail",code:202});
		}
	})
	
});

module.exports=r;