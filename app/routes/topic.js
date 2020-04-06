/**
 * @ description 话题路由
 * @ author lucas
 */

const router = require('koa-router')()
const jwt = require('koa-jwt')

router.prefix('/topics')

const {
    find, findById, create, update
} = require('../controllers/topic')
const { secret } = require('../config')

// 第三方认证中间件
const auth = jwt({ secret })

// 获取话题列表
router.get('/', find)
// 新增话题
router.post('/', auth, create)
// 查询特定话题
router.get('/:id', findById)
// 修改话题
router.patch('/:id', auth, update)

module.exports = router