## 本项目实现的最终作用是基于JSP校园二手物品交易信息平台
## 分为2个角色
### 第1个角色为管理员角色，实现了如下功能：
 - 二手交易管理
 - 物品分类管理
 - 物品租借管理
 - 用户信息管理
 - 留言板管理
 - 管理员登录
 - 网站公告管理
 - 订单管理
### 第2个角色为用户角色，实现了如下功能：
 - 二手物品查看
 - 优惠活动管理
 - 加入购物车
 - 我的二手交易
 - 查看我的购物车
 - 物品租借查看
 - 用户首页
## 数据库设计如下：
# 数据库设计文档

**数据库名：** xiaoyuan_ptai

**文档版本：** 


| 表名                  | 说明       |
| :---: | :---: |
| [fwly](#fwly) |  |
| [fwpl](#fwpl) |  |
| [hbnews](#hbnews) |  |
| [messages](#messages) |  |
| [proscar](#proscar) |  |
| [prosorders](#prosorders) |  |
| [scj](#scj) |  |
| [secondhand](#secondhand) |  |
| [users](#users) |  |
| [wpfl](#wpfl) |  |
| [yqlj](#yqlj) |  |
| [zdatadic](#zdatadic) |  |

**表名：** <a id="fwly">fwly</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | title |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 标题  |
|  3   | saver |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 上传者  |
|  4   | content |   text   | 65535 |   0    |    Y     |  N   |   NULL    | 内容  |
|  5   | savetime |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 保存时间  |

**表名：** <a id="fwpl">fwpl</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | fwid |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | saver |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 上传者  |
|  4   | saverimg |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | content |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 内容  |
|  6   | savetime |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 保存时间  |

**表名：** <a id="hbnews">hbnews</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | title |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 标题  |
|  3   | author |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 作者  |
|  4   | filename |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 文件名  |
|  5   | content |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 内容  |
|  6   | savetime |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 保存时间  |

**表名：** <a id="messages">messages</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | saver |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 上传者  |
|  3   | savetime |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 保存时间  |
|  4   | content |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 内容  |
|  5   | resaver |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | recontent |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | resavetime |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="proscar">proscar</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | uname |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 用户名  |
|  3   | touname |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | pname |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 商品名称  |
|  5   | price |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 价格  |
|  6   | filename |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 文件名  |
|  7   | status |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 状态  |
|  8   | savetime |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 保存时间  |
|  9   | nums |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="prosorders">prosorders</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | uname |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 用户名  |
|  3   | touname |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | ddinfo |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | lxr |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 联系人  |
|  6   | lxtel |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | lxqq |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  8   | addrs |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  9   | fkfs |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  10   | status |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 状态  |
|  11   | savetime |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 保存时间  |

**表名：** <a id="scj">scj</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | sctype |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | uname |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 用户名  |
|  4   | wid |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="secondhand">secondhand</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | title |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 标题  |
|  3   | wpbei |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | filename |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 文件名  |
|  5   | lxr |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 联系人  |
|  6   | lxtel |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | lxaddrs |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  8   | lxqq |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  9   | price |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 价格  |
|  10   | uname |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 用户名  |
|  11   | savetime |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 保存时间  |
|  12   | infotype |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 信息类型  |
|  13   | wptype |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="users">users</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | username |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 用户名  |
|  3   | userpass |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | truename |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | sex |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 性别  |
|  6   | QQ |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | QQ号码  |
|  7   | phoneno |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  8   | email |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 邮箱  |
|  9   | dizhi |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  10   | usertype |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 用户类型  |
|  11   | filename |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 文件名  |
|  12   | savetime |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 保存时间  |

**表名：** <a id="wpfl">wpfl</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | typename |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 类型名称  |

**表名：** <a id="yqlj">yqlj</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | ljname |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | ljurl |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="zdatadic">zdatadic</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | datatype |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | content |   text   | 65535 |   0    |    Y     |  N   |   NULL    | 内容  |

**运行不出来可以微信 javape 我的公众号：源码码头**
