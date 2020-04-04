/**
 * @ description CRUD 操作 **【推荐配合 postman 】**
 * @ author lucas
 */

const router = require('koa-router')()
const {
    find, findById, create, update,
    delete: del, login
} = require('../controllers/users')

router.prefix('/users')

// 获取用户列表
router.get('/', find)
// 创建用户
router.post('/', create)
// 获取指定用户id
router.get('/:id', findById)
// 更改用户
router.patch('/:id', update)
// 删除用户
router.delete('/:id', del)
// 登陆用户
router.post('/login', login)

module.exports = router