<%@ page contentType="text/html;charset=UTF-8"%>
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
        color: #ff5000;
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
        color: #ff5000;
        font-weight: bold;
        padding: 10px 20px 10px 20px;
    }
    .right-div-body{
        display: flex;
        padding: 10px 20px 10px 20px;
    }
</style>

<div class="head">
    <div class="head-div">
        <div class="logo">
            <a href="../../">
                <img src="../static/img/logo.png" width="200px" title="转转网"/>
            </a>
        </div>
        <div class="search">
            <form action="/find/index">
                <div class="search-left">
                    <input name="keyword" class="search-input" placeholder="🔍 手机 电脑 课本 衣服 鞋"/>
                </div>
                <div class="search-right">
                    <input type="submit" class="search-button" value="搜索"/>
                </div>
            </form>
        </div>
    </div>
</div>

<div class="body">
    <div class="body-div" style="display: flex">
        <div class="left-div">
            <div class="left-div-title">反馈</div>
            <hr style="border: 0;border-bottom: 3px solid #ff9000;margin: 0;">
            <a href="page"><div class="left-div-list">提交反馈</div></a>
            <a href="query"><div class="left-div-list">查询反馈</div></a>
        </div>
        <div class="right-div">
            <div class="right-div-title">查询反馈</div>
            <hr style="border: 0;border-bottom: 3px solid #ff9000;margin: 0;">
            <div class="right-div-body">
                <form action= "/feedback/result" method= "post">
                    <table bgcolor= "#B3B3FF" >
                        <caption> 欢迎查询反馈 </caption>
                        <tr>
                            <td> 用户名： </td>
                            <td><input type= "text" name= "author" size= "40" ></td>
                        </tr>
                        <tr>
                            <td><input type= "submit" value= " 查询 " ></td>
                        </tr>
                    </table>
                </form>
                <div>
                    ${list}
                </div>
            </div>
        </div>
    </div>
</div>

<%
    if(request.getAttribute("msg") != null){
        out.println("<script>alert('"+request.getAttribute("msg")+"')</script>");
    }
%>

<jsp:include page="../public/footer.jsp"/>