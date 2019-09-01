<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="../public/header.jsp"/>
<jsp:include page="../public/search.jsp"/>

<style>
    .body-div{
        display: flex;
        background: #ffffff;
        margin-top: 10px;
        margin-bottom: 10px;
    }
    .body-div-logo{
        margin: 70px 200px 70px 200px;
    }
    .form-title{
        color: #ff9000;
        font-size: 20px;
        font-weight: bold;
        padding-top: 30px;
        padding-bottom: 10px;
        background: #efefef;
    }
    .form-div{
        width: 300px;
        height: 250px;
        line-height: 50px;
        background: #efefef;
    }
    .form-div input{
        border: 0;
        width: 180px;
        padding: 10px;
    }
    .form-div button{
        color: white;
        width: 200px;
        border: 0;
        cursor: pointer;
        padding-top: 10px;
        padding-bottom: 10px;
        background: #33aacc;
    }
    #b1,#b3{
        cursor: pointer;
    }
    #b1:hover,#b3:hover,#button1:hover,#button2:hover{
        color: #ff5000;
    }
    #button1,#button2{
        font-size: 12px;
        cursor: pointer;
    }
</style>

<div class="body">
    <div class="body-div">
        <div class="body-div-logo">
            <img src="../static/img/login.png"/>
        </div>
        <div class="form" style="margin: 50px;">
            <div class="form-title">
                用户登录
            </div>
            <div class="form-div">
                <form id="form1" method="post">
                    <div>
                        <input name="username" id="phone" placeholder="请输入手机号"/>
                    </div>
                    <div>
                        <input name="password" type="password" placeholder="请输入密码"/>
                    </div>
                    <div style="text-align: left;padding-left: 50px">
                        <input name="vcode" placeholder="短信验证码" style="width: 100px;"/>
                        <label style="font-size: 12px;margin-left: 5px" id="b1">获取验证码</label>
                        <label style="font-size: 12px;display: none" id="b2">剩余60秒</label>
                    </div>
                    <div>
                        <button type="submit">登录</button>
                    </div>
                    <div id="button1">使用邮箱登录</div>
                </form>
                <form id="form2" method="post" style="display: none">
                    <div>
                        <input name="username" id="email" placeholder="请输入邮箱"/>
                    </div>
                    <div>
                        <input name="password" type="password" placeholder="请输入密码"/>
                    </div>
                    <div style="text-align: left;padding-left: 50px">
                        <input name="vcode" placeholder="邮箱验证码" style="width: 100px;"/>
                        <label style="font-size: 12px;margin-left: 5px" id="b3">获取验证码</label>
                        <label style="font-size: 12px;display: none" id="b4">剩余60秒</label>
                    </div>
                    <div>
                        <button type="submit">登录</button>
                    </div>
                    <div id="button2">使用手机号登录</div>
                </form>
            </div>
        </div>
    </div>
</div>

<script>
    // 验证手机号
    function isPhone(phone) {
        const pattern = /^1[34578]\d{9}$/;
        return pattern.test(phone);
    }
    // 验证邮箱
    function isEmail(email) {
        const pattern = /^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/;
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

<jsp:include page="../public/footer.jsp"/>