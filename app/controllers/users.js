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
        ctx.body = db[ctx.params.id * 1]
    }
    async create(ctx) {
        db.push(ctx.request.body)
        ctx.body = ctx.request.body
    }
    async update(ctx) {
        db[ctx.params.id * 1] = ctx.request.body
        ctx.body = ctx.request.body
    }
    async delete(ctx) {
        db.splice(ctx.params.id * 1, 1)
        ctx.status = 204
    }
}

module.exports = new UsersCtl()