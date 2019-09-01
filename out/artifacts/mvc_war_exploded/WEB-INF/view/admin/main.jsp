<%@ page contentType="text/html;charset=UTF-8" %>

<style>
    .title{
        color: #33aacc;
        font-size: 12px;
        padding: 12px 10px 0 10px;
        font-weight: bold;
    }
    .info{
        font-size: 14px;
        line-height: 30px;
        padding: 0 10px 10px 10px;
    }
</style>

<div class="title">
    <label>服务器信息</label>
    <hr/>
</div>
<div class="info">
    <%
        out.print("操作系统：" + System.getProperty("os.name") + "<br>");
        out.print("系统版本：" + System.getProperty("os.version") + "<br>");
        out.print("用户名称：" + System.getProperty("user.name") + "<br>");
        out.print("用户路径：" + System.getProperty("user.home") + "<br>");
        out.print("服务器名称：" + request.getServerName() + "<br>");
        out.print("服务器端口：" + request.getServerPort() + "<br>");
        out.print("当前路径：" + request. getRequestURI() + "<br>");
        out.print("JDK版本：" + System.getProperty("java.version") + "<br>");
    %>
</div>
<div class="title">
    <label>客户端信息</label>
    <hr/>
</div>
<div class="info">
    <%
        out.print("浏览器版本：" + request.getHeader("user-agent") + "<br>");
        out.print("服务协议：" + request.getProtocol() + "<br>");
        out.print("本机名称：" + request.getRemoteHost() + "<br>");
        out.print("数据长度：" + request.getContentLength() + "<br>");
        out.print("请求页面：" + request.getServletPath() + "<br>");
    %>
</div>