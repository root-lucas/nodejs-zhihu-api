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
    listFollowers, checkUserExist,
    followTopic, unFollowTopic, listFollowingTopics,
    listQuestions,
    listLikingAnswers, likeAnswer, unlikeAnswer,
    listDislikingAnswers, dislikeAnswer, undislikeAnswer,
    listCollectingAnswers, collectAnswer, uncollectAnswer
} = require('../controllers/users')
const { secret } = require('../config')
const { checkTopicExist } = require('../controllers/topic')
const { checkAnswerExist } = require('../controllers/answers')

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
// 获取某个用户的关注话题列表
router.get('/:id/followingTopics', listFollowingTopics)
// 用户关注话题
router.put('/followingTopics/:id', auth, checkTopicExist, followTopic)
// 用户取消关注话题
router.delete('/followingTopics/:id', auth, checkTopicExist, unFollowTopic)
// 用户的问题列表
router.get('/:id/questions', listQuestions)

// 获取某个用户赞过的答案列表
router.get('/:id/likingAnswers', listLikingAnswers)
// 赞答案（增加 undislikeAnswer 实现与踩互斥）
router.put('/likingAnswers/:id', auth, checkAnswerExist, likeAnswer, undislikeAnswer)
// 取消赞答案
router.delete('/likingAnswers/:id', auth, checkAnswerExist, unlikeAnswer)
// 获取某个用户踩过的答案列表
router.get('/:id/dislikingAnswers', listDislikingAnswers)
// 踩答案 （互斥关系）
router.put('/dislikingAnswers/:id', auth, checkAnswerExist, dislikeAnswer, unlikeAnswer)
// 取消踩答案
router.delete('/dislikingAnswers/:id', auth, checkAnswerExist, undislikeAnswer)
// 获取某个用户收藏的答案列表
router.get('/:id/collectingAnswers', listCollectingAnswers)
// 收藏答案
router.put('/collectingAnswers/:id', auth, checkAnswerExist, collectAnswer)
// 取消收藏答案
router.delete('/collectingAnswers/:id', auth, checkAnswerExist, uncollectAnswer)

module.exports = router