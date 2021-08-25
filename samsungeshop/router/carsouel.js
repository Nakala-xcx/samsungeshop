const express=require('express');
const pool=require('../pool');
const r=express.Router();

r.get('/',(req,res)=>{
    let sql="select * from ss_index_carousel order by cid"
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        let carousel=result
        res.send(carousel);
    })
})

module.exports=r;