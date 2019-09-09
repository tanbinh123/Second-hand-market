<%--
  Created by IntelliJ IDEA.
  User: cnzxo
  Date: 2019/8/29
  Time: 12:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<jsp:include page="../public/header.jsp"/>

<style>
    ico{
        color: #ff5000;
        font-size: 14px;
    }
    price{
        font-size: 18px;
        color: #ff5000;
    }
    header{
        width: 100%;
        display: flex;
        padding-top: 5px;
        padding-bottom: 5px;
    }
    .title{
        color: white;
        height: 30px;
        margin: 0 auto;
        font-size: 22px;
        font-weight: bold;
        padding-left: 10px;
        padding-right: 10px;
    }
    .list{
        padding-left: 20px;
        padding-right: 20px;
        overflow:hidden;
    }
    .bottom-nav a{
        color: #ff9000;
    }
    .bottom-about{
        color: #666666;
        font-size: 12px;
        padding-left: 10px;
        padding-right: 10px;
        text-align: center;
    }
</style>

<header>
    <div class="title">开发团队</div>
    <jsp:include page="menu.jsp"/>
</header>

<div class="body">
    <div class="list">
        <div>
            <p>
                领导组织：辽宁科技大学大数据协会
            </p>
            <p>
                团队名称：开发者大赛项目C组
            </p>
            <p>
                小组组长：龙远吉
            </p>
            <p>
                小组成员：李天华 李常丽 张子天 贺自德
            </p>
            <p>
                团队口号：转转，让买卖闲置物品这件事变得更轻松！
            </p>
        </div>
    </div>

    <div class="bottom-about">
        <hr style="border: 0;border-bottom: 1px solid #aaaaaa">
        <div>版权声明：本站是由辽宁科技大学大数据协会项目组倾力打造的商城系统，未经允许禁止将本系统用于商业用途，如经发现一律举报。</div>
        <div style="margin-top: 5px">黔ICP备18000376号 <img style="margin-bottom: -2px" src="http://icon.cnzz.com/img/pic.gif"></div>
    </div>
</div>

<jsp:include page="../public/menu.jsp"/>
<jsp:include page="../public/footer.jsp"/>