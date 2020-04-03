/**
 * @ description 入口文件 **【api 测试推荐使用 postman 】**
 * @ author lucas
 */

const Koa = require('koa')
const app = new Koa()
const bodyparser = require('koa-bodyparser')
const error = require('koa-json-error')
const parameter = require('koa-parameter')
const mongoose = require('mongoose')
const routing = require('./routes')
const { mongooseConnectStr } = require('./config')

mongoose.connect(mongooseConnectStr, { useUnifiedTopology: true, useNewUrlParser: true }, () => console.log('MongoDB 连接成功!'))
mongoose.connection.on('error', console.error)

const env = process.env.NODE_ENV
app.use(error({
    // 生产环境不返回 stack (泄露服务器目录信息)
    postFormat: (err, { stack, ...rest }) => env === 'production' ? rest : { stack, ...rest }
}))


app.use(bodyparser())
app.use(parameter(app))
routing(app)

// 监听端口
app.listen(3000, () => console.log('已经打开3000端口'))