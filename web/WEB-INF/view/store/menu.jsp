<%@ page contentType="text/html;charset=UTF-8" %>
<style>
    .store-nav{
        width: 200px;
        margin-top: 10px;
        margin-bottom: 10px;
        background: #ffffff;
        display: inline-block;
    }
    .store-nav-title{
        font-weight: bold;
        padding: 10px 20px 10px 20px;
        border-bottom: 1px solid #cccccc;
    }
    .store-nav-list{
        padding: 10px 20px 10px 20px;
        font-size: 14px;
    }
    .store-nav-list:hover{
        color: white;
        background: #00aaee;
    }
</style>

<!-- 左侧导航栏 -->
<div class="store-nav">
    <div class="store-nav-title">我的店铺</div>
    <a href="${pageContext.request.contextPath}/store/detail"><div class="store-nav-list">查看店铺</div></a>
    <a href="${pageContext.request.contextPath}/store/decorate"><div class="store-nav-list">店铺装修</div></a>
    <a href="${pageContext.request.contextPath}/goods/manager"><div class="store-nav-list">商品管理</div></a>
    <a href="${pageContext.request.contextPath}/store/order"><div class="store-nav-list">订单管理</div></a>
    <a href="${pageContext.request.contextPath}/store/comment"><div class="store-nav-list">评论管理</div></a>
    <a href="${pageContext.request.contextPath}/auction/manager"><div class="store-nav-list">拍卖管理</div></a>
</div>