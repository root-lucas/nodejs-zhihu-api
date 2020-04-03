/*
 * @Description  : 临时数据库
 * @Author       : lucas
 */

const User = require('../models/users')

class UsersCtl {
    async find(ctx) {
        ctx.body = await User.find()
    }
    async findById(ctx) {
        const user = await User.findById(ctx.params.id)
        if (!user) { ctx.throw(404, '用户不存在') }
        ctx.body = user
    }
    async create(ctx) {
        // 校验数据
        ctx.verifyParams({
            name: { type: 'string', required: true },
            age: { type: 'number', required: false }
        })
        const user = await new User(ctx.request.body).save()
        ctx.body = user
    }
    async update(ctx) {
        // 校验数据
        ctx.verifyParams({
            name: { type: 'string', required: true },
            age: { type: 'number', required: false }
        })
        const user = await User.findByIdAndUpdate(ctx.params.id, ctx.request.body)
        if (!user) { ctx.throw(404, '用户不存在') }
        ctx.body = user
    }
    async delete(ctx) {
        const user = await User.findByIdAndRemove(ctx.params.id)
        if (!user) { ctx.throw(404, '用户不存在') }
        ctx.status = 204
    }
}

module.exports = new UsersCtl()