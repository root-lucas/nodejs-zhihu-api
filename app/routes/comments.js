const jwt = require('koa-jwt')
const Router = require('koa-router')
// 三级嵌套路由
const router = new Router({ prefix: '/questions/:questionId/answers/:answerId/comments' })
const {
    find, findById, create, update, delete: del,
    checkCommentExist, checkCommentator,
} = require('../controllers/comments')

const { secret } = require('../config')

const auth = jwt({ secret })

// 获取某个答案的评论列表
router.get('/', find)
// 新建评论
router.post('/', auth, create)
// 获取某个答案的特定评论
router.get('/:id', checkCommentExist, findById)
// 修改评论
router.patch('/:id', auth, checkCommentExist, checkCommentator, update)
// 删除评论
router.delete('/:id', auth, checkCommentExist, checkCommentator, del)

module.exports = router