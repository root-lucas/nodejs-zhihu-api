/**
 * @ description 入口文件 **【api 测试推荐使用 postman 】**
 * @ author lucas
 */

const Koa = require('koa')
const app = new Koa()
const koaBody = require('koa-body')
const koaStatic = require('koa-static')
const error = require('koa-json-error')
const parameter = require('koa-parameter')
const mongoose = require('mongoose')
const path = require('path')
const routing = require('./routes')
const { mongooseConnectStr } = require('./config')

mongoose.connect(mongooseConnectStr, { useUnifiedTopology: true, useNewUrlParser: true, useFindAndModify: false }, () => console.log('MongoDB 连接成功!'))
mongoose.connection.on('error', console.error)

app.use(koaStatic(path.join(__dirname, 'public')))

const env = process.env.NODE_ENV
app.use(error({
    // 生产环境不返回 stack (泄露服务器目录信息)
    postFormat: (err, { stack, ...rest }) => env === 'production' ? rest : { stack, ...rest }
}))


app.use(koaBody({
    multipart: true,  // 支持文件上传
    formidable: {
        uploadDir: path.join(__dirname, '/public/uploads'),
        keepExtensions: true   // 保留原来的文件后缀
    }
}))
app.use(parameter(app))
routing(app)

// 监听端口
app.listen(3000, () => console.log('已经打开3000端口'))