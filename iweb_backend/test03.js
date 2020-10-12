/*使用node.js创建一个最简单的动态web服务器*/

//引入Node.js官方提供的http模块，可用于处理客户端请求
const http = require('http')

//创建一个人动态web服务器
let server = http.createServer( function(req,res){
	//当接收到客户端请求后，向客户端输出一个欢迎消息
	res.end('Welcome to My Site')
} )

//启动web服务器，就是让它监听在特定端口上
server.listen(8080)