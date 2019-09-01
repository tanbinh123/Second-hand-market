<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="../public/header.jsp"/>
<jsp:include page="../public/search.jsp"/>

<style>
    .user-body{
        width: 880px;
        margin: 10px;
        background: white;
        display: inline-block;
    }
    .user-body-head{
        color: white;
        padding: 5px 10px 5px 10px;
        font-weight: bold;
        background: #ff9000;
    }
    .user-body-info{
        line-height: 40px;
        padding: 20px;
    }
    .user-body-form input{
        border: 1px solid #ff9000;
        padding: 2px 5px 2px 5px;
    }
    .user-body-button input{
        margin-right: 10px;
    }
</style>

<div class="body">
    <div class="body-div" style="text-align: left;display: flex">
        <jsp:include page="../public/userdiv.jsp"/>
        <div class="user-body">
            <div class="user-body-head">修改资料</div>
            <div class="user-body-info">
                <form action="/user/update" method="post">
                    <div class="user-body-form" style="padding: 20px;border: 1px solid #00aaee">
                        <div>昵&nbsp;&nbsp;称：<input name="nickname" value="${info[1]}"/></div>
                        <div>账&nbsp;&nbsp;号：<span>${info[2]}</span></div>
                        <div>学&nbsp;&nbsp;院：<input name="college" value="${info[3]}"/></div>
                        <div>宿&nbsp;&nbsp;舍：<input name="room" value="${info[4]}"/></div>
                    </div>
                    <div class="user-body-button" style="padding: 20px;border: 1px solid #00aaee;margin-top: 10px">
                        <input type="submit" value="提交" style="padding: 5px 30px 5px 30px;background: #00aaee;border: 0;color: white;cursor: pointer">
                        <input type="reset" value="重置" style="padding: 5px 30px 5px 30px;background: #00aaee;border: 0;color: white;cursor: pointer">
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<jsp:include page="../public/footer.jsp"/>