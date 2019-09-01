<%--
  Created by IntelliJ IDEA.
  User: cnzxo
  Date: 2019/8/15
  Time: 7:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>

<style>
    header{
        width: 100%;
        display: flex;
        z-index: 99;
        padding-top: 5px;
        padding-bottom: 5px;
    }
    .title{
        color: white;
        height: 30px;
        margin-top: -2px;
        font-size: 24px;
        font-weight: bold;
        padding-left: 10px;
        padding-right: 10px;
    }
    .keyword{
        width: 100%;
        margin-right: 10px;
        color: white;
        height: 30px;
        border: 0;
        border-radius: 5px;
        padding-left: 10px;
        background: #ff5000;
    }
    .keyword::-webkit-input-placeholder, textarea::-webkit-input-placeholder {
        color: white;
        text-align: center;
    }
    .home-top-menu{
        width: 30px;
        height: 30px;
        padding: 0;
        margin-top: 3px;
        margin-left: 10px;
        margin-right: 10px;
    }
    .home-top-menu .ico1{
        width: 4px;
        height: 4px;
        background: white;
        margin-top: 2px;
        margin-bottom: 2px;
    }
    .home-top-menu .ico2{
        width: 15px;
        height: 4px;
        background: white;
        margin-left: 2px;
        margin-top: 2px;
        margin-bottom: 2px;
    }
    .home-top-menu:hover .menu-drop{
        display: block;
    }
</style>

<header>
    <label class="title"><a href="/index/index" style="color: white">转</a></label>
    <form action="/find/index" style="width: 100%">
        <input name="keyword" class="keyword" placeholder=" 🔍 手机 电脑"/>
    </form>
    <label class="home-top-menu">
        <div style="display: flex"><div class="ico1"></div><div class="ico2"></div></div>
        <div style="display: flex"><div class="ico1"></div><div class="ico2"></div></div>
        <div style="display: flex"><div class="ico1"></div><div class="ico2"></div></div>
        <jsp:include page="drop.jsp"/>
    </label>
</header>