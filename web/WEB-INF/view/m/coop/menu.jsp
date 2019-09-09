<%--
  Created by IntelliJ IDEA.
  User: cnzxo
  Date: 2019/8/28
  Time: 21:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>

<style>
    .top-menu{
        top: 10px;
        right: 0;
        position: absolute;
    }
    .top-menu-ico{
        width: 22px;
        height: 4px;
        margin-right: 10px;
        margin-bottom: 4px;
        background: white;
    }
    .top-menu:hover .top-menu-list{
        display: block;
    }
    .top-menu-list{
        display: none;
        color: #cccccc;
        top: 30px;
        right: 0;
        position: absolute;
        width: 200px;
        padding-top: 30px;
        padding-bottom: 30px;
        line-height: 30px;
        background: rgba(0, 0, 0, 0.7);
        box-shadow: 0 2px 10px #666666;
    }
    .top-menu-list .menu-div{
        font-size: 18px;
        margin-top: -1px;
        border-top: 1px solid #cccccc;
        border-bottom: 1px solid #cccccc;
        padding: 5px 20px 5px 20px;
    }
    .top-menu-list a{
        color: white;
    }
</style>

<div class="top-menu">
    <div class="top-menu-ico"></div>
    <div class="top-menu-ico"></div>
    <div class="top-menu-ico"></div>
    <div class="top-menu-list">
        <a href="${pageContext.request.contextPath}/coop/index">
            <div class="menu-div">关于合作</div>
        </a>
        <a href="${pageContext.request.contextPath}/coop/case">
            <div class="menu-div">成功案例</div>
        </a>
        <a href="${pageContext.request.contextPath}/coop/course">
            <div class="menu-div">发展历程</div>
        </a>
        <a href="${pageContext.request.contextPath}/coop/apply">
            <div class="menu-div">申请合作</div>
        </a>
    </div>
</div>
