const express=require('express');
const pool=require('../pool');
const r=express.Router();
var query=require("./query");

r.get('/',(req,res)=>{
    var output={
        count:0,
        pageSize:8,
        pageCount:0,
        pno:req.query.pno||0,
        data:[]
      };
      var sql="select * from ss_product";
      query(sql,[])
      .then(result=>{
        output.count=result.length;
        output.pageCount=
          Math.ceil(output.count/output.pageSize);
        sql+=` limit ?,?`;
        return query(sql,[output.pageSize*output.pno,output.pageSize]);
      })
      .then(result=>{
        output.data=result;
        res.send(output);
      })
})

r.get("/search",(req,res)=>{
    var output={
      count:0,
      pageSize:8,
      pageCount:0,
      pno:req.query.pno||0,
      data:[]
    };
    var kw=req.query.kw||"";
    //"mac i5 128g"
    var kws=kw.split(" ");
    //[mac,i5,128g]
    kws.forEach((elem,i,arr)=>{
      arr[i]=`pname like '%${elem}%'`;
    })
    /*[
      title like '%mac%',
      title like '%i5%',
      title like '%128g%'
    ]*/
    //join(" and ");
    var where=kws.join(" and ");
    //"title like '%mac%' and title like '%i5%' and title like '%128g%'"
    var sql=`select * from ss_product where ${where}`;
    query(sql,[])
    .then(result=>{
      output.count=result.length;
      output.pageCount=
        Math.ceil(output.count/output.pageSize);
      sql+=` limit ?,?`;
      return query(sql,[output.pageSize*output.pno,output.pageSize]);
    })
    .then(result=>{
      output.data=result;
      res.send(output);
    })
  })

module.exports=r;