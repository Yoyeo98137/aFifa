// 首页路由器
const express = require("express");
const pool = require("../pool")
// 创建路由器对象
var router = express.Router();
// 添加路由
router.get('/',(req,res)=>{
    // res.send("1");
    var sql =`
        select * from Top20;
    `;
    pool.query(sql,[req.query.tid],(err,result)=>{
        if(err) throw err;
        res.send(result);
    });
});
// 导出路由器
module.exports = router;