/**
 * @ description CRUD 操作 **【推荐配合 postman 】**
 * @ author lucas
 */

const router = require('koa-router')()
const jwt = require('koa-jwt')

router.prefix('/users')

const {
    find, findById, create, update,
    delete: del, login, checkOwner,
    listFollowing, follow, unFollow,
    listFollowers, checkUserExist
} = require('../controllers/users')
const { secret } = require('../config')

// 第三方认证中间件
const auth = jwt({ secret })


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
// 获取某个用户的关注人列表
router.get('/:id/following', listFollowing)
// 获取某个用户的粉丝列表
router.get('/:id/followers', listFollowers)
// 关注某个用户
router.put('/follow/:id', auth, checkUserExist, follow)
// 取消关注
router.delete('/unFollow/:id', auth, checkUserExist, unFollow)

module.exports = router