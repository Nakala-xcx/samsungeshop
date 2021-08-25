const express=require('express');
const pool=require('../pool');
const r=express.Router();
var query=require("./query");


r.get("/carousel",(req,res)=>{
  var pid=req.query.pid;
  var sql="SELECT * FROM ss_product_pic where product_id = ?";
  pool.query(sql,[pid],(err,result)=>{
    if(err) throw err;
    let pcarousel=result
    res.send(pcarousel);
});
});

r.get("/product",(req,res)=>{
    var fid;
    var pid=req.query.pid;
    var output={};
    var sql="SELECT * FROM `ss_product` where pid=?";
    query(sql,[pid])
    //open(result)->then(result=>{...})
    .then(result=>{
      output.product=result[0];
      fid=output.product.family_id;
      var sql="SELECT ourservice FROM `ss_product` where family_id=?";
      //要想继续用then，必须返回Promise对象
      return query(sql,[fid])//return Promise
    })
    //open(result)->then(result=>{...})
    .then(result=>{
      output.ourservice=result;
      var sql="SELECT * FROM `ss_product_family` where zid=?";
      return query(sql,[fid])
    })
    //open(result)->then(result=>{...})
    .then(result=>{
      output.productspc=result;
      var sql="SELECT * FROM `ss_product_notice` where p_id=?";
      return query(sql,[pid])
      // res.send(output);
    })
    .then(result=>{
      output.internal_storage=result;
      var sql="SELECT * FROM `ss_product_color` where pid=?";
      return query(sql,[pid])
      // res.send(output);
    })
    .then(result=>{
      output.color=result;
      res.send(output);
    })
    //err(error)->catch(error=>{...})
    .catch(error=>console.log(error))
  })

module.exports=r;