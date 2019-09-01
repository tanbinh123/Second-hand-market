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
        top: 14px;
        right: 0;
        position: absolute;
    }
    .top-menu-ico{
        width: 20px;
        height: 3px;
        margin-right: 10px;
        margin-bottom: 5px;
        background: white;
    }
    .top-menu:hover .top-menu-list{
        display: block;
    }
    .top-menu-list{
        display: none;
        color: #cccccc;
        top: 26px;
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
    <div class="top-menu-list">
        <a href="${pageContext.request.contextPath}/about/index">
            <div class="menu-div">关于我们</div>
        </a>
        <a href="${pageContext.request.contextPath}/about/team">
            <div class="menu-div">开发团队</div>
        </a>
        <a href="${pageContext.request.contextPath}/about/contact">
            <div class="menu-div">联系方式</div>
        </a>
        <a href="${pageContext.request.contextPath}/about/address">
            <div class="menu-div">办公地址</div>
        </a>
    </div>
</div>
