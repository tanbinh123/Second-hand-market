<%--
  Created by IntelliJ IDEA.
  User: cnzxo
  Date: 2019/8/12
  Time: 22:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta charset="UTF-8">
    <title>${title} - <%=application.getInitParameter("website")%></title>
    <link rel="shortcut icon" href="../static/img/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" type="text/css" href="../../static/css/admin.css" />
    <script src="../static/js/jquery.js"></script>
    <script src="../static/js/admin.js"></script>
    <META HTTP-EQUIV="pragma" CONTENT="no-cache">
    <META HTTP-EQUIV="Cache-Control" CONTENT="no-cache, must-revalidate">
    <META HTTP-EQUIV="expires" CONTENT="Wed, 26 Feb 1997 08:21:57 GMT">
</head>
<body>
<header>
    <div class="logo">
        <img class="logo-img" src="../static/img/login.png" width="50px"/>
        <div class="logo-title">后台管理</div>
    </div>
    <div class="nav">
        <a href="/index/index"><img src="../static/img/admin_nav1.png" width="40px" title="前端首页"/></a>
        <a href="/index/index"><img src="../static/img/admin_nav2.png" width="40px" title="通知公告"/></a>
        <a href="/index/index"><img src="../static/img/admin_nav3.png" width="40px" title="订单管理"/></a>
        <a href="/index/index"><img src="../static/img/admin_nav4.png" width="40px" title="添加商品"/></a>
        <a href="/index/index"><img src="../static/img/admin_nav5.png" width="40px" title="标签管理"/></a>
        <a href="/index/index"><img src="../static/img/admin_nav6.png" width="40px" title="电子邮件"/></a>
        <a href="/index/index"><img src="../static/img/admin_nav7.png" width="40px" title="消息中心"/></a>
        <a href="/index/index"><img src="../static/img/admin_nav8.png" width="40px" title="用户管理"/></a>
    </div>
</header>