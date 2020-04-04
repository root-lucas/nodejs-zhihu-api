const mongoose = require('mongoose')

const { Schema, model } = mongoose

const userSchema = new Schema({
    __v: { type: Number, select: false },
    name: { type: String, required: true },
    password: { type: String, required: true, select: false } // 密码不返回给客户端
})

module.exports = model('User', userSchema)