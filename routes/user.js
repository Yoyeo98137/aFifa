// 用户路由器
const express = require("express");
const pool = require("../pool")
// 创建路由器对象
var router = express.Router();
// 添加路由
// 登录
router.get('/',(req,res)=>{
    var $user = req.query.fname;
    var $pwd = req.query.fpwd;
    // console.log($pwd);
    // console.log($user);
    var sql = `
    select * from fUser where fname=? and fpwd=?;
    `;
    pool.query(sql,[$user,$pwd],(err,result)=>{
        if(err) throw err;
        // console.log(result);
        if(result.length>0){
            // console.log(result[0]);
            res.send(result[0]);
        }else{
            res.send({code:-1});
        }
    });
});
// 注册
router.get('/add',(req,res)=>{
    var $user = req.query.fname;
    var $pwd = req.query.fpwd;
    var $eml = req.query.email;

    var sql1 = `
    select * from fUser where fname=?
    `;
    var sql2 = `
    insert into fUser set ?;
    `;
    pool.query(sql1,[$user,$pwd,$eml],(err,result)=>{
        if(err) throw err;
        if(result.length>0){
            res.send({code:-2});
        }else{
            pool.query(sql2,[req.query],(err,result)=>{
                if(err) throw err;
                res.send({code:1});
            })
        }
    });
});

// 导出路由器
module.exports = router;