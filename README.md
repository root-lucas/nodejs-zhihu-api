这是一个node.js koa2框架来模仿一个知识社区知乎平台网站的服务端核心模，所有实现基于的RESTful API的概念和设计原则均来自 [GitHub标准文档](https://developer.github.com/v3/issues/comments/)

`https://api.github.com/users`

## Usage Install

安装依赖： `yarn install`

启动项目：`yarn run dev`

推荐测试工具：`postman`

在线测试API文档：`https://documenter.getpostman.com/view/11117394/Szf549XL?version=latest`

## 实现的功能模块

- 用户认证与授权模块
- 图片上传模块
- 个人资料模块
- 问题模块
- 话题模块
- 关注与粉丝模块
- 答案模块
- 评论模块

## 目录注解

1. 路由层：routes 
2. 控制层：controllers 
3. 数据层：models 数据库 scheme

## 中间件

- ### 路由中间件

  - 处理不同的url
  - 处理不同的http方法
  - 解析url上的参数
  - koa:prefix,多中间件

- ### 控制器中间件

  - 处理HTTP请求参数
  - 处理业务逻辑
  - 发送HTTP响应

## 数据存储

### 客户端存储

- 用户登陆认证和授权采用 JWT（而不是session 和 redis） 验证
- 替代了传统的`session和redis`认证
- 用户验证数据存储在客户端，字节占用很小，更便于传输的服务端保存会话信息, 
- 减少服务器压力

### 服务端存储

- 用户持久化数据采用 MongoDB
- 使用云数据库MongoDB-Atlas
- Mongoose连接MongoDB
- 创建对应模型的Schema