#   Spring MVC项目实战

##################################################################<br>
项目地址：https://github.com/cnzxo/c2c<br>
##################################################################<br>
项目名称：二手跳蚤市场<br>
开发团队：开发者大赛C组<br>
组长：龙远吉(后端)<br>
成员：李常丽(美工) 李天华(前端) 张子天(前端) 贺自德(后端)<br>
##################################################################<br>

#	【20190725 龙远吉】
刚放假回家有很多事要忙，所以这idea开发环境搭了一周，今天终于大功告成了！<br>
SpringMVC基础框架已经搭好了，现在可以直接使用MVC开发模式进行开发<br>
M:Model模型，目录【src/com/model】<br>
V:View视图，目录【web/WEB-INF/view】<br>
C:Controller控制器，目录【src/com/controller】<br>
配置静态资源路径为static目录下，调用方法：../static/文件名<br>
数据库已经配置好，配置文件在Db.java包里<br>

# 【20190804 龙远吉】
开发新模块：卖家中心、订单管理、用户中心等。

# 【20190901 龙远吉】
项目仓库转移，由原来的team2仓库转移到c2c仓库。

# 【20190921 龙远吉】
* Java类注释规范<br>
/**<br>
*@program: ${PROJECT_NAME}<br>
*@description: ${description}<br>
*@author: ${USER}<br>
*@create: ${YEAR}-${MONTH}-${DAY} ${HOUR}:${MINUTE}<br>
*/<br>

* Tomcat中文乱码<br>
打开文件Tomcat\conf\logging.properties<br>
找到java.util.logging.ConsoleHandler.encoding = UTF-8<br>
将UTF-8改成GBK即可<br>