<%--
  Created by IntelliJ IDEA.
  User: cnzxo
  Date: 2019/8/27
  Time: 22:06
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
            <div class="right-div-title">添加拍卖</div>
            <hr style="border: 0;border-bottom: 3px solid #ff9000;margin: 0;">
            <div class="right-div-body">
                <div class="auction">
                    <%
                        if(request.getAttribute("img") != null){
                            String img = (String)request.getAttribute("img");
                            out.println("<img src=\""+img+"\" width=\"100px\"/>");
                        }
                    %>
                    <form id="uploadForm" action="upload" method="post" enctype="multipart/form-data">
                        商品图片：<input type="file" name="file"/>
                        <input type="submit" value="上传"/>
                    </form>
                    <form action="add">
                        <div>商品名称：<input name="title" /></div>
                        <div>商品简介：<input name="content" /></div>
                        <div>截止时间：<input name="date" type="datetime-local"/></div>
                        <div>起拍价格：<input name="price" value="88"/></div>
                        <div><input type="submit"/></div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<jsp:include page="../public/footer.jsp"/>

