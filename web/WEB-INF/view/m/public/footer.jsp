
<footer>
    <%=application.getInitParameter("copyright")%>
</footer>

<%
    if(request.getAttribute("msg") != null){
        out.println("<script>alert('"+request.getAttribute("msg")+"')</script>");
    }
%>

</body>
</html>