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
                <img src="../static/img/logo.png" width="200px" title="θ½¬θ½¬η½"/>
            </a>
        </div>
        <div class="search">
            <form action="/find/index">
                <div class="search-left">
                    <input name="keyword" class="search-input" placeholder="π ζζΊ η΅θ θ―Ύζ¬ θ‘£ζ ι"/>
                </div>
                <div class="search-right">
                    <input type="submit" class="search-button" value="ζη΄’"/>
                </div>
            </form>
        </div>
    </div>
</div>

<div class="body">
    <div class="body-div" style="display: flex">
        <div class="left-div">
            <div class="left-div-title">ει¦</div>
            <hr style="border: 0;border-bottom: 3px solid #ff9000;margin: 0;">
            <a href="page"><div class="left-div-list">ζδΊ€ει¦</div></a>
            <a href="query"><div class="left-div-list">ζ₯θ―’ει¦</div></a>
        </div>
        <div class="right-div">
            <div class="right-div-title">ζδΊ€ει¦</div>
            <hr style="border: 0;border-bottom: 3px solid #ff9000;margin: 0;">
            <div class="right-div-body">
                <form action= "add" method= "post">
                    <table bgcolor= "#B3B3FF" >
                        <caption> ζ¬’θΏζδΊ€ει¦ </caption>
                        <tr>
                            <td> η¨ζ·εοΌ </td>
                            <td><input type= "text" name= "author" size= "40" ></td>
                        </tr>
                        <tr>
                            <td> δΈ»ι’οΌ </td>
                            <td><input type= "text" name= "title" size= "40" ></td>
                        </tr>
                        <tr>
                            <td> εε?ΉοΌ </td>
                            <td>
                                <textarea name= "content" rows= "10" cols= "40" ></textarea>
                            </td>
                        </tr>
                        <tr>
                            <td> ζΆι΄οΌ </td>
                            <td><input type= "text" name= "date"></td>
                        </tr>
                        <tr>
                            <td><input type= "submit" value= " ζδΊ€ " ></td>
                        </tr>
                    </table>
                </form>
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