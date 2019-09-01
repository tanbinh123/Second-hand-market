<%--
  Created by IntelliJ IDEA.
  User: cnzxo
  Date: 2019/8/12
  Time: 22:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
    <title>${title} - 二手跳蚤市场</title>
    <link rel="shortcut icon" href="../static/img/favicon.ico" type="image/x-icon" />
    <script src="../static/js/jquery.js"></script>
    <META HTTP-EQUIV="pragma" CONTENT="no-cache">
    <META HTTP-EQUIV="Cache-Control" CONTENT="no-cache, must-revalidate">
    <META HTTP-EQUIV="expires" CONTENT="Wed, 26 Feb 1997 08:21:57 GMT">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<style>
    body{
        margin: 0;
        padding: 0;
        background: #33aacc;
        text-align: center;
    }
    .title{
        color: #aaffee;
        font-size: 28px;
        margin: 140px auto 0 auto;
    }
    .login{
        width: 400px;
        margin: 20px auto 0 auto;
        padding-top: 50px;
        padding-bottom: 30px;
        background: white;
        border-radius: 5px;
        box-shadow: 0 0 5px #666666;
    }
    .login table{
        color: #33aacc;
        margin: 0 auto;
        font-weight: bold;
    }
    .login button{
        width: 80px;
        height: 30px;
        border: 0;
        margin: 5px;
        color: white;
        font-size: 14px;
        cursor: pointer;
        background: #00aaee;
        border-radius: 20px;
    }
    .login td{
        padding-top: 10px;
        padding-bottom: 10px;
    }
    .vcode{
        width: 63px;
        height: 20px;
        margin-left: 10px;
        cursor: pointer;
    }
    .copyright{
        color: #aaffee;
        padding: 5px;
        font-size: 12px;
    }
</style>
<body>

<div class="title">
    后台管理系统
</div>

<div class="login">
    <form method="post">
        <input name="submit" type="hidden" value="提交"/>
        <table>
            <tr>
                <td>账&nbsp;&nbsp;&nbsp;号</td>
                <td><input name="username"/></td>
            </tr>
            <tr>
                <td>密&nbsp;&nbsp;&nbsp;码</td>
                <td><input name="password" type="password"/></td>
            </tr>
            <tr>
                <td>验证码</td>
                <td style="display: flex">
                    <input name="vcode" maxlength="4" style="width: 100px"/>
                    <img class="vcode" src="/vcode/vcode" onclick="this.src='/vcode/vcode?' + Math.random()"/>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center">
                    <button type="submit">登 录</button>
                    <button type="reset">重 置</button>
                </td>
            </tr>
        </table>
    </form>
</div>

<div class="copyright">
    版权所有 &copy; 辽宁科技大学大数据协会
</div>

<%
    if(request.getAttribute("msg") != null){
        out.println("<script>alert('"+request.getAttribute("msg")+"')</script>");
    }
%>

</body>
</html>
