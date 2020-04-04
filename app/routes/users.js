/**
 * @ description CRUD 操作 **【推荐配合 postman 】**
 * @ author lucas
 */

const router = require('koa-router')()
const jsonwebtoken = require('jsonwebtoken')

router.prefix('/users')

const {
    find, findById, create, update,
    delete: del, login, checkOwner
} = require('../controllers/users')
const { secret } = require('../config')

// 手写认证中间件
const auth = async (ctx, next) => {
    const { authorization = '' } = ctx.request.header // header 会把所有头改为小写
    // const token = authorization.split(' ')[1]
    const token = authorization.replace('Bearer ', '') // 注意空格
    try {
        const user = jsonwebtoken.verify(token, secret)
        ctx.state.user = user
    } catch (err) {
        ctx.throw(401, err.message)
    }
    await next()
}

// 获取用户列表
router.get('/', find)
// 创建用户
router.post('/', create)
// 获取指定用户id
router.get('/:id', findById)
// 更改用户
router.patch('/:id', auth, checkOwner, update)
// 删除用户
router.delete('/:id', auth, checkOwner, del)
// 登陆用户
router.post('/login', login)

module.exports = router