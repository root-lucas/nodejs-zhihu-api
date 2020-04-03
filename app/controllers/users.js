/*
 * @Description  : 临时数据库
 * @Author       : lucas
 */

const db = [{ name: 'root' }, { name: 'lucas' }]

class UsersCtl {
    async find(ctx) {
        ctx.body = db
    }
    async findById(ctx) {
        if (ctx.params.id * 1 >= db.length) {
            ctx.throw(412, '先决条件失败: id 大于用户列表长度')
        }
        ctx.body = db[ctx.params.id * 1]
    }
    async create(ctx) {
        // 校验数据
        ctx.verifyParams({
            name: { type: 'string', required: true },
            age: { type: 'number', required: false }
        })

        db.push(ctx.request.body)
        ctx.body = ctx.request.body
    }
    async update(ctx) {
        if (ctx.params.id * 1 >= db.length) {
            ctx.throw(412, '先决条件失败: id 大于用户列表长度')
        }
        // 校验数据
        ctx.verifyParams({
            name: { type: 'string', required: true },
            age: { type: 'number', required: false }
        })
        db[ctx.params.id * 1] = ctx.request.body
        ctx.body = ctx.request.body
    }
    async delete(ctx) {
        db.splice(ctx.params.id * 1, 1)
        ctx.status = 204
    }
}

module.exports = new UsersCtl()