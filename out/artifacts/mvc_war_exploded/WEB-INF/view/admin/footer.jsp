<%--
  Created by IntelliJ IDEA.
  User: cnzxo
  Date: 2019/8/12
  Time: 22:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>

<%
    if(request.getAttribute("msg") != null){
        out.println("<script>alert('"+request.getAttribute("msg")+"')</script>");
    }
%>

<footer>
    <div class="copyright">
        <%=application.getInitParameter("copyright")%>
    </div>
</footer>
</body>
</html>