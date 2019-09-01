<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    .user-body-list{
        padding: 20px;
    }
    .user-list-body li{
        padding-left: 20px;
        line-height: 40px;
    }
    .user-list-body li:hover{
        color: white;
        background: #00aaee;
        cursor: pointer;
    }
</style>

<div class="body">
    <div class="body-div" style="text-align: left;display: flex">
        <jsp:include page="../public/userdiv.jsp"/>
        <div class="user-body">
            <div class="user-body-head">联系人</div>
            <div class="user-body-list">
                <div class="user-list-title" style="color: #ff9000;font-weight: bold;">新用户</div>
                <hr style="border: 0;border-bottom: 2px solid #ff9000;"/>
                <div class="user-list-body">
                    <%
                        ArrayList list = (ArrayList)request.getAttribute("list");
                        for (int i=0; i<list.size(); i++){
                            out.println("<li>" + list.get(i) + "</li>");
                        }
                    %>
                </div>
            </div>
        </div>
    </div>
</div>

<jsp:include page="../public/footer.jsp"/>