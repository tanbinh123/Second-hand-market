<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Map" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<jsp:include page="../public/header.jsp"/>
<jsp:include page="../public/search.jsp"/>

<style>
    ico{
        color: #ff5000;
        font-size: 14px;
    }
    price{
        font-size: 18px;
        color: #ff5000;
    }
    .body{
        width: 100%;
        margin-top: 0;
    }
    .head{
        width: 100%;
        color: #ff5000;
        font-size: 18px;
        text-align: center;
        padding-top: 5px;
        padding-bottom: 5px;
        margin-top: 10px;
        background: white;
    }
</style>

<div class="body">
    <div class="head">商品详情</div>
    <div class="goods">
        商品不存在
    </div>
</div>

<jsp:include page="../public/menu.jsp"/>
<jsp:include page="../public/footer.jsp"/>