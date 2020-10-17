/*
 Navicat Premium Data Transfer

 Source Server         : Mongodb
 Source Server Type    : MongoDB
 Source Server Version : 40401
 Source Host           : localhost:27017
 Source Schema         : RESTful

 Target Server Type    : MongoDB
 Target Server Version : 40401
 File Encoding         : 65001

 Date: 17/10/2020 21:36:32
*/


// ----------------------------
// Collection structure for answers
// ----------------------------
db.getCollection("answers").drop();
db.createCollection("answers");

// ----------------------------
// Documents of answers
// ----------------------------
db.getCollection("answers").insert([ {
    _id: ObjectId("5e8b37a4183c9c15d4ffe6a6"),
    content: "MongoDB 是一个简单好用的数据库",
    answerer: ObjectId("5e87c7930b69c730c8af70cb"),
    questionId: "5e8b0cd4fad3c63f807c93ab",
    __v: NumberInt("0"),
    voteCount: NumberInt("0")
} ]);
db.getCollection("answers").insert([ {
    _id: ObjectId("5e8c1d130b1a9910b4ed53c9"),
    voteCount: NumberInt("0"),
    content: "node.js 使用koa2框架是后端很好用的哦",
    answerer: ObjectId("5e87c7930b69c730c8af70cb"),
    questionId: "5e8af53af1deb026404f235c",
    __v: NumberInt("0")
} ]);
db.getCollection("answers").insert([ {
    _id: ObjectId("5e9477ecc8e1603ac09f12ae"),
    content: "华南理工大学确实不错!",
    answerer: ObjectId("5e8ec10583276137209e91c0"),
    questionId: "5e90a276674bd32050f3db74",
    __v: NumberInt("0"),
    voteCount: NumberInt("-9")
} ]);
db.getCollection("answers").insert([ {
    _id: ObjectId("5e9491c082efd63d50a2c6e1"),
    content: "华南理工大学确实不错2!",
    answerer: ObjectId("5e8ec10583276137209e91c0"),
    questionId: "5e90a276674bd32050f3db74",
    __v: NumberInt("0")
} ]);
db.getCollection("answers").insert([ {
    _id: ObjectId("5e995ffd34201512e4491de0"),
    content: "答案1：北京理工大学是个好大学",
    answerer: ObjectId("5e968fbad07a710ed4c2ecac"),
    questionId: "5e96e20760fffe389866bbb5",
    __v: NumberInt("0"),
    voteCount: NumberInt("0")
} ]);
db.getCollection("answers").insert([ {
    _id: ObjectId("5e996fcee376372408c90600"),
    voteCount: NumberInt("0"),
    content: "答案2：北京理工大学是个好大学",
    answerer: ObjectId("5e968fbad07a710ed4c2ecac"),
    questionId: "5e96e20760fffe389866bbb5",
    __v: NumberInt("0")
} ]);

// ----------------------------
// Collection structure for bookcategories
// ----------------------------
db.getCollection("bookcategories").drop();
db.createCollection("bookcategories");

// ----------------------------
// Documents of bookcategories
// ----------------------------

// ----------------------------
// Collection structure for comments
// ----------------------------
db.getCollection("comments").drop();
db.createCollection("comments");

// ----------------------------
// Documents of comments
// ----------------------------
db.getCollection("comments").insert([ {
    _id: ObjectId("5e8c922bf07e87396cff7917"),
    content: "嗯，应该是的100",
    replyTo: ObjectId("5e87c7930b69c730c8af70cb"),
    commentator: ObjectId("5e87c7930b69c730c8af70cb"),
    questionId: "5e87c7930b69c730c8af70cb",
    answerId: "5e8b37a4183c9c15d4ffe6a6",
    __v: NumberInt("0")
} ]);
db.getCollection("comments").insert([ {
    _id: ObjectId("5e8c9252f07e87396cff7918"),
    content: "嗯，应该是的100",
    rootCommentId: "5e8c915ef07e87396cff7916",
    replyTo: ObjectId("5e87c7930b69c730c8af70cb"),
    commentator: ObjectId("5e87c7930b69c730c8af70cb"),
    questionId: "5e87c7930b69c730c8af70cb",
    answerId: "5e8b37a4183c9c15d4ffe6a6",
    __v: NumberInt("0")
} ]);
db.getCollection("comments").insert([ {
    _id: ObjectId("5e8c940af07e87396cff791a"),
    content: "嗯，应该是的100分",
    rootCommentId: "5e8c93dbf07e87396cff7919",
    replyTo: ObjectId("5e87c7930b69c730c8af70cb"),
    commentator: ObjectId("5e87c7930b69c730c8af70cb"),
    questionId: "5e87c7930b69c730c8af70cb",
    answerId: "5e8b37a4183c9c15d4ffe6a6",
    __v: NumberInt("0")
} ]);
db.getCollection("comments").insert([ {
    _id: ObjectId("5e8c950df07e87396cff791b"),
    content: "嗯，应该是的100分",
    rootCommentId: "5e8c93dbf07e87396cff7919",
    replyTo: ObjectId("5e87c7930b69c730c8af70cb"),
    commentator: ObjectId("5e87c7930b69c730c8af70cb"),
    questionId: "5e8b0cd4fad3c63f807c93ab",
    answerId: "5e8b37a4183c9c15d4ffe6a6",
    __v: NumberInt("0")
} ]);
db.getCollection("comments").insert([ {
    _id: ObjectId("5e8c9610f07e87396cff791c"),
    content: "嗯，应该是的100分1111",
    rootCommentId: "5e8c93dbf07e87396cff7919",
    replyTo: ObjectId("5e87c7930b69c730c8af70cb"),
    commentator: ObjectId("5e87c7930b69c730c8af70cb"),
    questionId: "5e8b0cd4fad3c63f807c93ab",
    answerId: "5e8b37a4183c9c15d4ffe6a6",
    __v: NumberInt("0")
} ]);
db.getCollection("comments").insert([ {
    _id: ObjectId("5e8c9743f07e87396cff791d"),
    content: "你回答的太好啦, MongoDB 确实很好用的1",
    commentator: ObjectId("5e87c7930b69c730c8af70cb"),
    questionId: "5e8b0cd4fad3c63f807c93ab",
    answerId: "5e8b37a4183c9c15d4ffe6a6",
    __v: NumberInt("0")
} ]);
db.getCollection("comments").insert([ {
    _id: ObjectId("5e8c9801f07e87396cff791e"),
    content: "嗯，应该是的100分11113",
    rootCommentId: "5e8c93dbf07e87396cff7919",
    replyTo: ObjectId("5e87c7930b69c730c8af70cb"),
    commentator: ObjectId("5e87c7930b69c730c8af70cb"),
    questionId: "5e8b0cd4fad3c63f807c93ab",
    answerId: "5e8b37a4183c9c15d4ffe6a6",
    __v: NumberInt("0")
} ]);
db.getCollection("comments").insert([ {
    _id: ObjectId("5e8c98d264330c3bd83dd013"),
    content: "你回答的太好啦, MongoDB 确实很好用的2",
    commentator: ObjectId("5e87c7930b69c730c8af70cb"),
    questionId: "5e8b0cd4fad3c63f807c93ab",
    answerId: "5e8b37a4183c9c15d4ffe6a6",
    createdAt: ISODate("2020-04-07T15:14:26Z"),
    updatedAt: ISODate("2020-04-07T15:14:26Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("comments").insert([ {
    _id: ObjectId("5e8c991c4778093d280d1391"),
    content: "你回答的太好啦, MongoDB 确实很好用的3",
    commentator: ObjectId("5e87c7930b69c730c8af70cb"),
    questionId: "5e8b0cd4fad3c63f807c93ab",
    answerId: "5e8b37a4183c9c15d4ffe6a6",
    createdAt: ISODate("2020-04-07T15:15:40Z"),
    updatedAt: ISODate("2020-04-07T15:15:40Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("comments").insert([ {
    _id: ObjectId("5e958e2a2203623ad0c431fb"),
    content: "我是第一条评论",
    commentator: ObjectId("5e8ec10583276137209e91c0"),
    questionId: "5e90a276674bd32050f3db74",
    answerId: "5e9477ecc8e1603ac09f12ae",
    __v: NumberInt("0")
} ]);
db.getCollection("comments").insert([ {
    _id: ObjectId("5e95984de31036382c41eacd"),
    content: "我是第二条评论",
    commentator: ObjectId("5e8ec10583276137209e91c0"),
    questionId: "5e90a276674bd32050f3db74",
    answerId: "5e9477ecc8e1603ac09f12ae",
    createdAt: ISODate("2020-04-14T11:02:37Z"),
    updatedAt: ISODate("2020-04-14T11:02:37Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("comments").insert([ {
    _id: ObjectId("5e9598c0e31036382c41eace"),
    content: "我是第一条二级评论",
    rootCommentId: "5e958e2a2203623ad0c431fb",
    replyTo: ObjectId("5e8ec10583276137209e91c0"),
    commentator: ObjectId("5e8ec10583276137209e91c0"),
    questionId: "5e90a276674bd32050f3db74",
    answerId: "5e9477ecc8e1603ac09f12ae",
    createdAt: ISODate("2020-04-14T11:04:32Z"),
    updatedAt: ISODate("2020-04-14T11:04:32Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("comments").insert([ {
    _id: ObjectId("5e9981ef6ca9be33e8927e98"),
    content: "我是一级评论1",
    commentator: ObjectId("5e968fbad07a710ed4c2ecac"),
    questionId: "5e986c10e51c5a24cc87a4c7",
    answerId: "5e995ffd34201512e4491de0",
    __v: NumberInt("0")
} ]);
db.getCollection("comments").insert([ {
    _id: ObjectId("5e9987d62294d2111cdfae12"),
    content: "我是一级评论2",
    commentator: ObjectId("5e968fbad07a710ed4c2ecac"),
    questionId: "5e986c10e51c5a24cc87a4c7",
    answerId: "5e995ffd34201512e4491de0",
    __v: NumberInt("0"),
    updatedAt: ISODate("2020-04-17T14:51:24Z")
} ]);
db.getCollection("comments").insert([ {
    _id: ObjectId("5e99c0e9c317942ca007d75d"),
    content: "我是一级评论3",
    commentator: ObjectId("5e968fbad07a710ed4c2ecac"),
    questionId: "5e986c10e51c5a24cc87a4c7",
    answerId: "5e995ffd34201512e4491de0",
    createdAt: ISODate("2020-04-17T14:44:57Z"),
    updatedAt: ISODate("2020-04-17T14:52:23Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("comments").insert([ {
    _id: ObjectId("5e99c4f6aff98d2b3c3b202b"),
    content: "我是第一条二级评论",
    rootCommentId: "5e9981ef6ca9be33e8927e98",
    replyTo: ObjectId("5e968fbad07a710ed4c2ecac"),
    commentator: ObjectId("5e968fbad07a710ed4c2ecac"),
    questionId: "5e986c10e51c5a24cc87a4c7",
    answerId: "5e995ffd34201512e4491de0",
    createdAt: ISODate("2020-04-17T15:02:14Z"),
    updatedAt: ISODate("2020-04-17T15:02:14Z"),
    __v: NumberInt("0")
} ]);

// ----------------------------
// Collection structure for managers
// ----------------------------
db.getCollection("managers").drop();
db.createCollection("managers");

// ----------------------------
// Documents of managers
// ----------------------------
db.getCollection("managers").insert([ {
    _id: ObjectId("5efb8d8ce5950b1364c71bb3"),
    userName: "admin",
    password: "$2a$10$Vrnir1jB3ckywwB5miTyJu.w.Jzxv7E6MB9rFjlpfkoSShRGfn1aG",
    nickName: "超级管理员",
    createdAt: ISODate("2020-06-30T19:07:56Z"),
    updatedAt: ISODate("2020-06-30T19:07:56Z"),
    __v: NumberInt("0")
} ]);

// ----------------------------
// Collection structure for questions
// ----------------------------
db.getCollection("questions").drop();
db.createCollection("questions");

// ----------------------------
// Documents of questions
// ----------------------------
db.getCollection("questions").insert([ {
    _id: ObjectId("5e8af500f1deb026404f235b"),
    title: "Koa2 是什么?",
    questioner: ObjectId("5e87c7930b69c730c8af70cb"),
    __v: NumberInt("0"),
    topics: [
        ObjectId("5e89d740e0ef043d38a5ffff"),
        ObjectId("5e89d754e0ef043d38a60001")
    ]
} ]);
db.getCollection("questions").insert([ {
    _id: ObjectId("5e8af53af1deb026404f235c"),
    title: "nodejs 做后端开发好吗",
    questioner: ObjectId("5e87c7930b69c730c8af70cb"),
    __v: NumberInt("0"),
    topics: [
        ObjectId("5e89d740e0ef043d38a5ffff"),
        ObjectId("5e89d754e0ef043d38a60001")
    ]
} ]);
db.getCollection("questions").insert([ {
    _id: ObjectId("5e8af603cc990e2a80d34fff"),
    title: "nodejs 和 JavaScript 有什么关系?",
    questioner: ObjectId("5e87c7930b69c730c8af70cb"),
    __v: NumberInt("0"),
    topics: [
        ObjectId("5e89d740e0ef043d38a5ffff"),
        ObjectId("5e89d754e0ef043d38a60001")
    ]
} ]);
db.getCollection("questions").insert([ {
    _id: ObjectId("5e8b0cd4fad3c63f807c93ab"),
    topics: [ ],
    title: "MongoDB 是什么?",
    questioner: ObjectId("5e87c7930b69c730c8af70cb"),
    __v: NumberInt("0")
} ]);
db.getCollection("questions").insert([ {
    _id: ObjectId("5e90a276674bd32050f3db74"),
    title: "了解下华南理工大学!",
    description: "这是我创建的第一个问题",
    questioner: ObjectId("5e8ec10583276137209e91c0"),
    __v: NumberInt("0")
} ]);
db.getCollection("questions").insert([ {
    _id: ObjectId("5e986c10e51c5a24cc87a4c7"),
    title: "我是测试1的问题",
    description: "我是测试1的描述",
    questioner: ObjectId("5e968fbad07a710ed4c2ecac"),
    __v: NumberInt("0"),
    topics: [
        ObjectId("5e96e20760fffe389866bbb5")
    ]
} ]);
db.getCollection("questions").insert([ {
    _id: ObjectId("5e994c0d5a987122987e43d7"),
    topics: [ ],
    title: "我是测试2的问题",
    description: "我是测试2的描述",
    questioner: ObjectId("5e968fbad07a710ed4c2ecac"),
    __v: NumberInt("0")
} ]);

// ----------------------------
// Collection structure for topics
// ----------------------------
db.getCollection("topics").drop();
db.createCollection("topics");

// ----------------------------
// Documents of topics
// ----------------------------
db.getCollection("topics").insert([ {
    _id: ObjectId("5e89d736e0ef043d38a5fffe"),
    name: "阿里巴巴",
    __v: NumberInt("0"),
    "avatar_url": "http://localhost:3000/uploads/upload_1cfd1f985d841755b450bbc3d4c4ba29.png",
    introduction: "阿里巴巴是马云创建的一个电商购物网站"
} ]);
db.getCollection("topics").insert([ {
    _id: ObjectId("5e89d740e0ef043d38a5ffff"),
    name: "前端专家",
    __v: NumberInt("0")
} ]);
db.getCollection("topics").insert([ {
    _id: ObjectId("5e89d74ce0ef043d38a60000"),
    name: "清华大学",
    __v: NumberInt("0")
} ]);
db.getCollection("topics").insert([ {
    _id: ObjectId("5e89d754e0ef043d38a60001"),
    name: "计算机科学",
    __v: NumberInt("0")
} ]);
db.getCollection("topics").insert([ {
    _id: ObjectId("5e8a7b63ccace4233c45bda8"),
    name: "杭州",
    __v: NumberInt("0")
} ]);
db.getCollection("topics").insert([ {
    _id: ObjectId("5e8a7b68ccace4233c45bda9"),
    name: "北京",
    __v: NumberInt("0")
} ]);
db.getCollection("topics").insert([ {
    _id: ObjectId("5e8a7b6dccace4233c45bdaa"),
    name: "互联网",
    __v: NumberInt("0")
} ]);
db.getCollection("topics").insert([ {
    _id: ObjectId("5e8fd2b6ad0fa72ccc871fd0"),
    name: "华南理工大学",
    introduction: "广东重点大学",
    __v: NumberInt("0"),
    topicsUser: [ ]
} ]);
db.getCollection("topics").insert([ {
    _id: ObjectId("5e96e20760fffe389866bbb5"),
    name: "北京理工大学",
    introduction: "位于北京市",
    __v: NumberInt("0")
} ]);

// ----------------------------
// Collection structure for users
// ----------------------------
db.getCollection("users").drop();
db.createCollection("users");

// ----------------------------
// Documents of users
// ----------------------------
db.getCollection("users").insert([ {
    _id: ObjectId("5e87c7930b69c730c8af70cb"),
    name: "lucas3",
    password: "123",
    __v: NumberInt("0"),
    "avatar_url": "http://localhost:3000/uploads/upload_1cfd1f985d841755b450bbc3d4c4ba29.png",
    business: ObjectId("5e8a7b6dccace4233c45bdaa"),
    educations: [
        {
            _id: ObjectId("5f2c36dab0434754d8e00d8f"),
            school: ObjectId("5e89d74ce0ef043d38a60000"),
            major: ObjectId("5e89d754e0ef043d38a60001"),
            diploma: NumberInt("3"),
            "entrance_year": NumberInt("2014"),
            "graduation_year": NumberInt("2018")
        }
    ],
    employments: [
        {
            _id: ObjectId("5f2c36dab0434754d8e00d8e"),
            company: ObjectId("5e89d736e0ef043d38a5fffe"),
            job: ObjectId("5e89d740e0ef043d38a5ffff")
        }
    ],
    gender: "male",
    headline: "我是许景天",
    locations: [
        ObjectId("5e8a7b63ccace4233c45bda8"),
        ObjectId("5e8a7b68ccace4233c45bda9")
    ],
    following: [
        ObjectId("5e87c693f009da2504aa6bdf"),
        ObjectId("5e87c693f009da2504aa6bdb"),
        ObjectId("5e87c693f009da2504aa6bda")
    ],
    followingTopics: [
        ObjectId("5e89d736e0ef043d38a5fffe")
    ],
    likingAnswers: [ ],
    dislikingAnswers: [ ],
    collectingAnswers: [ ],
    updatedAt: ISODate("2020-08-06T16:59:06Z")
} ]);
db.getCollection("users").insert([ {
    _id: ObjectId("5e87cae094d34532fc7b0134"),
    name: "lucas4",
    password: "123",
    __v: NumberInt("0"),
    followingTopics: [
        ObjectId("5e89d736e0ef043d38a5fffe")
    ],
    gender: "male"
} ]);
db.getCollection("users").insert([ {
    _id: ObjectId("5e89e32113e62c0a5c0cff15"),
    gender: "male",
    locations: [ ],
    following: [ ],
    name: "lucas5",
    password: "123",
    employments: [ ],
    educations: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("users").insert([ {
    _id: ObjectId("5e89e32813e62c0a5c0cff16"),
    gender: "male",
    locations: [ ],
    following: [ ],
    name: "lucas6",
    password: "123",
    employments: [ ],
    educations: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("users").insert([ {
    _id: ObjectId("5e8ec10583276137209e91c0"),
    name: "test1",
    password: "123",
    __v: NumberInt("0"),
    "avatar_url": "http://localhost:3000/uploads/upload_1cfd1f985d841755b450bbc3d4c4ba29.png",
    business: ObjectId("5e8a7b6dccace4233c45bdaa"),
    educations: [
        {
            _id: ObjectId("5e8fe19b6c25b2376cee4106"),
            school: ObjectId("5e8fd2b6ad0fa72ccc871fd0"),
            major: ObjectId("5e89d754e0ef043d38a60001"),
            diploma: NumberInt("3"),
            "entrance_year": NumberInt("2014"),
            "graduation_year": NumberInt("2018")
        }
    ],
    employments: [
        {
            _id: ObjectId("5e8fe19b6c25b2376cee4105"),
            company: ObjectId("5e89d736e0ef043d38a5fffe"),
            job: ObjectId("5e89d740e0ef043d38a5ffff")
        }
    ],
    gender: "male",
    headline: "我是许景天2",
    locations: [
        ObjectId("5e8a7b63ccace4233c45bda8"),
        ObjectId("5e8a7b68ccace4233c45bda9")
    ],
    following: [
        ObjectId("5e8f244440e9b00af8ff0b68")
    ],
    followingTopics: [
        ObjectId("5e8fd2b6ad0fa72ccc871fd0")
    ],
    likingAnswers: [ ],
    dislikingAnswers: [
        ObjectId("5e9477ecc8e1603ac09f12ae")
    ],
    collectingAnswers: [ ]
} ]);
db.getCollection("users").insert([ {
    _id: ObjectId("5e8f244440e9b00af8ff0b68"),
    gender: "male",
    locations: [ ],
    following: [ ],
    name: "test2",
    password: "123",
    employments: [ ],
    educations: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("users").insert([ {
    _id: ObjectId("5e968fbad07a710ed4c2ecac"),
    name: "测试账号1",
    password: "123",
    __v: NumberInt("0"),
    "avatar_url": "http://localhost:3000/uploads/xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.png",
    business: ObjectId("5e8a7b6dccace4233c45bdaa"),
    educations: [
        {
            _id: ObjectId("5e970d7bdc491f35148bdccb"),
            school: ObjectId("5e96e20760fffe389866bbb5"),
            major: ObjectId("5e89d754e0ef043d38a60001"),
            diploma: NumberInt("3"),
            "entrance_year": NumberInt("2014"),
            "graduation_year": NumberInt("2018")
        }
    ],
    employments: [
        {
            _id: ObjectId("5e970d7bdc491f35148bdcca"),
            company: ObjectId("5e89d736e0ef043d38a5fffe"),
            job: ObjectId("5e89d740e0ef043d38a5ffff")
        }
    ],
    gender: "male",
    headline: "我是lucas",
    locations: [
        ObjectId("5e8a7b68ccace4233c45bda9"),
        ObjectId("5e8a7b63ccace4233c45bda8")
    ],
    following: [
        ObjectId("5e96a3b87a3def3010f215c0")
    ],
    followingTopics: [
        ObjectId("5e96e20760fffe389866bbb5")
    ],
    likingAnswers: [ ],
    dislikingAnswers: [ ],
    collectingAnswers: [ ]
} ]);
db.getCollection("users").insert([ {
    _id: ObjectId("5e96a3b87a3def3010f215c0"),
    gender: "male",
    locations: [ ],
    name: "测试账号2",
    password: "123",
    employments: [ ],
    educations: [ ],
    __v: NumberInt("0")
} ]);
