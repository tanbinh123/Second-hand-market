<%--
  Created by IntelliJ IDEA.
  User: cnzxo
  Date: 2019/8/28
  Time: 14:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%
    //接收参数并打印
    System.out.println(request.getParameter("username"));
    System.out.println(request.getParameter("password"));
%>

<script>
    function get() {
        const httpRequest = new XMLHttpRequest();
        httpRequest.open("GET", "index?msg=ok", true);
        httpRequest.send();
    }
    get();
</script>

</body>
</html>
