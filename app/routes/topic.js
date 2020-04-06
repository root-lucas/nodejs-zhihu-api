/**
 * @ description 话题路由
 * @ author lucas
 */

const router = require('koa-router')()
const jwt = require('koa-jwt')

router.prefix('/topics')

const {
    find, findById, create, update, checkTopicExist, listFollowers
} = require('../controllers/topic')
const { secret } = require('../config')

// 第三方认证中间件
const auth = jwt({ secret })

// 获取话题列表
router.get('/', find)
// 新增话题
router.post('/', auth, create)
// 查询特定话题
router.get('/:id', checkTopicExist, findById)
// 修改话题
router.patch('/:id', auth, checkTopicExist, update)
// 话题的粉丝列表
router.get('/:id/followers', checkTopicExist, listFollowers)

module.exports = router