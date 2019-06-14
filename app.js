const express = require("express");
const bodyParser = require("body-parser");
const index = require("./routes/indexrouter");
const user = require("./routes/user");

// 创建web服务器
var server = express();

//跨域配置
const cors = require("cors");
server.use(cors({
   origin:["http://localhost:9418"],
   credentials:true
}))

server.listen(9418);
// 托管静态资源到public目录下
server.use( express.static("public") );
// 使用body-parser中间件
server.use( bodyParser.urlencoded({
    extended: false
}));
// 挂载路由器,挂载到/index
server.use( "/index",index );
server.use( "/user",user );


