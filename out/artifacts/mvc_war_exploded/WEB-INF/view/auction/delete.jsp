<%--
  Created by IntelliJ IDEA.
  User: cnzxo
  Date: 2019/8/27
  Time: 22:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<jsp:include page="../public/header.jsp"/>

<style>
    p{
        font-size: 14px;
    }
    .left-div{
        width: 200px;
        background: white;
        margin-top: 10px;
        margin-bottom: 10px;
        text-align: left;
        padding-bottom: 20px;
    }
    .left-div-title{
        color: #ff9000;
        font-weight: bold;
        padding: 10px 20px 10px 20px;
    }
    .left-div-list{
        font-size: 14px;
        border-bottom: 1px solid #cccccc;
        padding: 10px 20px 10px 20px;
    }
    .left-div-list:hover{
        color: #ffffff;
        cursor: pointer;
        background: #ff9000;
    }
    .right-div{
        width: 990px;
        margin-top: 10px;
        margin-left: 10px;
        margin-bottom: 10px;
        background: white;
        text-align: left;
    }
    .right-div-title{
        color: #ff9000;
        font-weight: bold;
        padding: 10px 20px 10px 20px;
    }
    .right-div-body{
        display: flex;
        padding: 10px 20px 10px 20px;
    }
    .right-div-body p{
        line-height: 30px;
    }
</style>

<jsp:include page="../public/search.jsp"/>

<div class="body">
    <div class="body-div" style="display: flex">
        <div class="left-div">
            <div class="left-div-title">拍卖管理</div>
            <hr style="border: 0;border-bottom: 3px solid #ff9000;margin: 0;">
            <a href="manager"><div class="left-div-list">我的拍卖</div></a>
            <a href="add"><div class="left-div-list">添加拍卖</div></a>
            <a href="delete"><div class="left-div-list">删除拍卖</div></a>
            <a href="order"><div class="left-div-list">竞拍管理</div></a>
        </div>
        <div class="right-div">
            <div class="right-div-title">删除拍卖</div>
            <hr style="border: 0;border-bottom: 3px solid #ff9000;margin: 0;">
            <div class="right-div-body">
                <div class="auction">
                    <form action="del">
                        <input name="gid" value="123456"/>
                        <input type="submit"/>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<jsp:include page="../public/footer.jsp"/>