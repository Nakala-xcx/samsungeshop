const express=require('express');
const pool=require('../pool');
const r=express.Router();

r.get('/',(req,res)=>{
    let sql="select * from ss_index_product order by ipid"
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        let index=result
        res.send(index);
    });
})

module.exports=r;