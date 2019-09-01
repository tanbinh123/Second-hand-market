<%--
  Created by IntelliJ IDEA.
  User: cnzxo
  Date: 2019/8/29
  Time: 11:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>

<style>
    .menu-drop{
        top: 40px;
        right: 0;
        float: right;
        color: white;
        width: 200px;
        display: none;
        padding-top: 20px;
        padding-bottom: 20px;
        line-height: 30px;
        background: rgba(0, 0, 0, 0.7);
        box-shadow: 0 2px 5px #666666;
        position: absolute;
    }
    .menu-drop a{
        font-size: 18px;
        color: white;
    }
    .menu-drop-list{
        padding: 2px 20px 2px 20px;
    }
    .menu-drop-list:hover{
        background: rgba(255, 255, 255, 0.4);
    }
</style>

<div class="menu-drop">
    <a href="${pageContext.request.contextPath}/index/index">
        <div class="menu-drop-list">首页</div>
    </a>
    <a href="${pageContext.request.contextPath}/user/index">
        <div class="menu-drop-list">个人中心</div>
    </a>
    <a href="${pageContext.request.contextPath}/order/index">
        <div class="menu-drop-list">我的订单</div>
    </a>
    <a href="${pageContext.request.contextPath}/cart/index">
        <div class="menu-drop-list">购物车</div>
    </a>
    <a href="${pageContext.request.contextPath}/feedback/page">
        <div class="menu-drop-list">在线反馈</div>
    </a>
    <a href="${pageContext.request.contextPath}/about/contact">
        <div class="menu-drop-list">联系我们</div>
    </a>
</div>
