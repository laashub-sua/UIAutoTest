# language: zh-CN
@rpa
功能: 用户发帖
发帖不同场景

  背景: 用户登录
    假如导航到用户登录页面
    当用户名输入"testuser3"
    * 密码输入"123456"
    * 登录系统并显示用户名"testuser3"

  场景大纲: 发布话题
    那么打开发布话题按钮
    当选择板块"<tab>"
    那么输入标题"<title>"
    那么输入正文"<content>"
    那么点击提交,"<status>"校验点"<checkpoint>"
    例子: 
      | tab | title        | content | status | checkpoint   |
      | 分享  | 1231         | 12312   | 失败     | 标题字数太多或太少。   |
      |     | 123          | 1231231 | 板块为空   | 必须选择一个版块！    |
      | 问答  | 软件测试五六七八九十   |         | 失败     | 内容不可为空       |
      | 分享  | ￥￥%@#￥@%……&* | 测试      | 成功     | ￥￥%@#￥@%……&* |
      |     | 什么是软件测试一二三   | 你在干嘛    | 板块为空   | 必须选择一个版块！    |
      | 招聘  | 一二三四五六七八九十   | 你在干嘛    | 成功     | 一二三四五六七八九十   |