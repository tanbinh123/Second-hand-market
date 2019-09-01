<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<jsp:include page="../public/header.jsp"/>
<jsp:include page="../public/search.jsp"/>

<style>
    .user-body{
        width: 100%;
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
    .user-body-list li{
        list-style: none;
        padding: 10px;
        margin: 10px;
        display: flex;
    }
    .user-body-list img{
        width: 40px;
        height: 40px;
        margin: 10px;
        border-radius: 20px;
    }
    .user-body-list .msg{
        padding: 20px;
        border: 2px solid #00aaee;
    }
</style>

<div class="body">
    <div class="body-div" style="text-align: left;display: flex">
        <jsp:include page="../public/userdiv.jsp"/>
        <div class="user-body">
            <div class="user-body-head">用户中心</div>
            <div class="user-body-list">
                <%
                    List list = (List)request.getAttribute("list");
                    for(int i=0; i<list.size(); i++){
                        out.print("<li>");
                        out.print("<img src=\"../static/img/login.png\"/>");
                        Map map = (Map)list.get(i);
                        for(Object key:map.keySet()){
                            if("content".equals(key)){
                                out.print("<div class=\"msg\">");
                                out.print(map.get(key));
                                out.print("</div>");
                            }
                        }
                        out.print("</li>");
                    }
                %>
            </div>
        </div>
    </div>
</div>

<jsp:include page="../public/footer.jsp"/>