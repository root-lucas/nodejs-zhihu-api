const mongoose = require('mongoose')

const { Schema, model } = mongoose

const userSchema = new Schema({
    __v: { type: Number, select: false },
    name: { type: String, required: true },
    // select默认为 true, false 表示字段不返回给客户端
    password: { type: String, required: true, select: true }
})

module.exports = model('User', userSchema)