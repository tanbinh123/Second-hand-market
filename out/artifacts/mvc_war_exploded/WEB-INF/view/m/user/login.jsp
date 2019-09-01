<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<jsp:include page="../public/header.jsp"/>
<jsp:include page="../public/search.jsp"/>

<style>
    header{
        width: 100%;
        display: flex;
        padding-top: 5px;
        padding-bottom: 5px;
    }
    .title{
        color: white;
        height: 30px;
        margin: 0 auto;
        font-size: 22px;
        font-weight: bold;
        padding-left: 10px;
        padding-right: 10px;
    }
    .top-menu{
        top: 4px;
        right: 10px;
        width: 30px;
        height: 30px;
        color: #ff9000;
        text-align: center;
        font-size: 22px;
        font-weight: bold;
        background: white;
        border-radius: 20px;
        position: absolute;
    }
    .login{
        padding: 50px;
    }
    .login-title{
        text-align: center;
        color: #ff9000;
        font-size: 26px;
        font-weight: bold;
        padding-top: 30px;
        padding-bottom: 50px;
        background: #efefef;
    }
    .login input{
        border: 0;
        width: 100%;
        padding: 10px;
        font-size: 18px;
        margin-bottom: 20px;
    }
    .login button{
        border: 0;
        width: 100%;
        color: white;
        cursor: pointer;
        font-size: 18px;
        margin-bottom: 10px;
        padding-top: 10px;
        padding-bottom: 10px;
        background: #33aacc;
    }
</style>

<header>
    <div class="title">用户登录</div>
    <a href="register"><div class="top-menu">注</div></a>
</header>

<div class="body">

    <div class="login">
        <div class="login-title">欢迎使用转转</div>
        <form method="post" id="form1">
            <div>
                <input name="username" id="phone" placeholder="请输入手机号"/>
            </div>
            <div>
                <input name="password" type="password" placeholder="请输入密码"/>
            </div>
            <div>
                <input name="vcode" placeholder="短信验证码" style="width: 150px;margin-right: 5px"/>
                <label id="b1">获取验证码</label>
                <label style="display: none" id="b2">剩余60秒</label>
            </div>
            <div>
                <button type="submit">登&nbsp;&nbsp;录</button>
            </div>
            <div id="button1">使用邮箱登录</div>
        </form>
        <form method="post" id="form2" style="display: none">
            <div>
                <input name="username" id="email" placeholder="请输入邮箱"/>
            </div>
            <div>
                <input name="password" type="password" placeholder="请输入密码"/>
            </div>
            <div>
                <input name="vcode" placeholder="邮箱验证码" style="width: 150px;margin-right: 5px"/>
                <label id="b3">获取验证码</label>
                <label style="display: none" id="b4">剩余60秒</label>
            </div>
            <div>
                <button type="submit">登&nbsp;&nbsp;录</button>
            </div>
            <div id="button2">使用手机登录</div>
        </form>
    </div>

</div>

<script>
    // 验证手机号
    function isPhone(phone) {
        var pattern = /^1[34578]\d{9}$/;
        return pattern.test(phone);
    }
    // 验证邮箱
    function isEmail(email) {
        var pattern = /^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/;
        return pattern.test(email);
    }
    //执行操作
    $(function () {
        $("#b1").click(function () {
            if ($.trim($("#phone").val()).length === 0) {
                alert("请输入手机号");
                return;
            } else {
                if (isPhone($.trim($("#phone").val())) === false) {
                    alert("手机号格式不正确");
                    return;
                }
            }
            var time = 60;
            var run = setInterval(function (){
                if(time===60){
                    $.post("/sms/send",{"phone":$("#phone").val()});
                }
                if(time<0){
                    $("#b2").hide();
                    $("#b1").show();
                    clearInterval(run);
                    return;
                }
                $("#b1").hide();
                $("#b2").show();
                $("#b2").html("剩余" + time-- + "秒");
            }, 1000);
            alert("已发送到您的手机上，请注意查收");
        })
        $("#b3").click(function () {
            if ($.trim($("#email").val()).length === 0) {
                alert("请输入邮箱");
                return;
            } else {
                if (isEmail($.trim($("#email").val())) === false) {
                    alert("邮箱格式不正确");
                    return;
                }
            }
            var time = 60;
            var run = setInterval(function (){
                if(time===60){
                    $.post("/email/send",{"email":$("#email").val()});
                }
                if(time<0){
                    $("#b4").hide();
                    $("#b3").show();
                    clearInterval(run);
                    return;
                }
                $("#b3").hide();
                $("#b4").show();
                $("#b4").html("剩余" + time-- + "秒");
            }, 1000);
            alert("已发送到您的邮箱上，请注意查收");
        })
        $("#button1").click(function () {
            $("#form1").hide();
            $("#form2").show();
        })
        $("#button2").click(function () {
            $("#form2").hide();
            $("#form1").show();
        })
    })
</script>

<jsp:include page="../public/menu.jsp"/>
<jsp:include page="../public/footer.jsp"/>