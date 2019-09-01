<%--
  Created by IntelliJ IDEA.
  User: cnzxo
  Date: 2019/8/28
  Time: 14:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="${pageContext.request.contextPath}/static/js/jquery.js"></script>
</head>
<body>

<input id="id" />
<button onclick="get()">提交</button>
<%
    if(request.getParameter("id")!=null){
        System.out.println(request.getParameter("id"));
    }
%>
<script type="text/javascript">
    function get() {
        const httpRequest = new XMLHttpRequest();
        httpRequest.open("GET", "?id=" + document.getElementById("id").value, true);
        httpRequest.send();
    }
</script>

</body>
</html>
