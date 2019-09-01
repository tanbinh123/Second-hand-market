<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<jsp:include page="../public/header.jsp"/>

<style>
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
    .top-menu{
        top: 4px;
        right: 10px;
        width: 30px;
        height: 30px;
        color: #ff9000;
        text-align: center;
        font-size: 22px;
        font-weight: bold;
        background: white;
        border-radius: 20px;
        position: absolute;
    }
</style>

<header>
    <div class="title">用户中心</div>
    <a href="logout"><div class="top-menu">退</div></a>
</header>

<div class="body">
    index
</div>
<jsp:include page="../public/menu.jsp"/>
<jsp:include page="../public/footer.jsp"/>