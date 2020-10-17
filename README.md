这是一个 node.js koa2 框架来模仿一个知识社区知乎平台网站的服务端核心模块，所有实现基于的 RESTful API 的概念和设计原则均来自 [GitHub 标准文档](https://developer.github.com/v3/issues/comments/)

`https://api.github.com/users`

## Usage Install

安装依赖： `yarn install`

启动项目：`yarn run dev`

推荐测试工具：`postman`

导入数据库 1：使用`Navicat Premium 15`新建 `zhihu` 数据库名, 运行脚本导入上面的`zhihu_RESTful.sql`文件。

导入数据库 2：使用`Studio 3T`新建 `zhihu` 数据库名, 导入`SQL/` 目录里所有以`.json`后缀名的文件。

> 上面俩种导入数据库方式选择方便的一种即可

API 测试文档：用`postman`工具导入上面的 `API测试文档.json` 文件即可测试，全部 api 请求数据内容都已编写完成, 开箱即用。

## 实现的功能模块

-   用户认证与授权模块
-   图片上传模块
-   个人资料模块
-   问题模块
-   话题模块
-   关注与粉丝模块
-   答案模块
-   评论模块

## 目录注解

1. 路由层：routes
2. 控制层：controllers
3. 数据层：models 数据库 scheme

## 中间件

-   ### 路由中间件

    -   处理不同的 url
    -   处理不同的 http 方法
    -   解析 url 上的参数
    -   koa:prefix,多中间件

-   ### 控制器中间件

    -   处理 HTTP 请求参数
    -   处理业务逻辑
    -   发送 HTTP 响应

## 数据存储

### 客户端存储

-   用户登陆认证和授权采用 JWT（而不是 session 和 redis） 验证
-   替代了传统的`session和redis`认证
-   用户验证数据存储在客户端，字节占用很小，更便于传输的服务端保存会话信息,
-   减少服务器压力

### 服务端存储

-   用户持久化数据采用 MongoDB
-   使用云数据库 MongoDB-Atlas
-   Mongoose 连接 MongoDB
-   创建对应模型的 Schema
