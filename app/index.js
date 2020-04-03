/**
 * @ description 入口文件 **【api 测试推荐使用 postman 】**
 * @ author lucas
 */

const Koa = require('koa')
const app = new Koa()
const bodyparser = require('koa-bodyparser')
const routing = require('./routes')

app.use(bodyparser())
routing(app)

// 监听端口
app.listen(3000, () => console.log('已经打开3000端口'))