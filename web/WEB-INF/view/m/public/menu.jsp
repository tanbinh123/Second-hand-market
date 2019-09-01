<%--
  Created by IntelliJ IDEA.
  User: cnzxo
  Date: 2019/8/15
  Time: 11:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>

<style>
    menu{
        width: 100%;
        padding: 0;
        margin: 0;
        bottom: 0;
        display: flex;
        background: white;
        position: fixed;
        border-top: 2px solid #dddddd;
    }
    menu list{
        width: 20%;
        padding-top: 4px;
        padding-bottom: 4px;
        text-align: center;
        display: block;
    }
    menu img{
        width: 20px;
        height: 20px;
    }
    menu label{
        color: #666666;
        font-size: 10px;
    }
    menu a:hover{
        color: #ff9000;
    }
</style>

<menu>
    <list>
        <a href="${pageContext.request.contextPath}/index/index">
            <div><img src="${pageContext.request.contextPath}/static/img/bottom_menu1.png"  alt=""/></div>
            <div><label>首页</label></div>
        </a>
    </list>
    <list>
        <a href="${pageContext.request.contextPath}/cart/index">
            <div><img src="${pageContext.request.contextPath}/static/img/bottom_menu2.png"  alt=""/></div>
            <div><label>购物车</label></div>
        </a>
    </list>
    <list>
        <a href="${pageContext.request.contextPath}/goods/list">
            <div><img src="${pageContext.request.contextPath}/static/img/bottom_menu3.png"  alt=""/></div>
            <div><label>发现宝贝</label></div>
        </a>
    </list>
    <list>
        <a href="${pageContext.request.contextPath}/order/index">
            <div><img src="${pageContext.request.contextPath}/static/img/bottom_menu4.png"  alt=""/></div>
            <div><label>订单列表</label></div>
        </a>
    </list>
    <list>
        <a href="/user/index">
            <div><img src="${pageContext.request.contextPath}/static/img/bottom_menu5.png" /></div>
            <div><label>我的</label></div>
        </a>
    </list>
</menu>