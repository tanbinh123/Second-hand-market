<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<jsp:include page="../public/header.jsp"/>
<jsp:include page="../public/search.jsp"/>

<style>
    .show-head{
        padding-top: 20px;
        display: flex;
    }
    .show-head-tip{
        width: 5px;
        height: 20px;
        margin-right: 10px;
        margin-left: 20px;
        background: #ff5000;
    }

    .body-div-list{
        width: 1200px;
        text-align: left;
        background: white;
        padding-bottom: 20px;
        margin-bottom: 20px;
    }
    .show-list{
        margin: 10px 20px 0 20px;
        overflow: hidden;
    }
    .show-list li{
        float: left;
        width: 190px;
        height: 280px;
        padding: 20px;
        border: 1px solid #efefef;
        list-style: none;
    }
    .show-list li:hover{
        border: 1px solid #ff5000;
    }
    .show-list .title{
        height: 50px;
        font-size: 14px;
        margin-top: 10px;
    }
    .show-list .title:hover{
        color: #ff5000;
    }
    .show-list .price{
        color: #ff5000;
        font-size: 20px;
    }
</style>

<div class="body">
    <div class="body-div" style="text-align: left;">
        <div class="body-div-list">
            <div class="show-head">
                <div class="show-head-tip"></div>
                <div class="show-head-title">全部商品</div>
            </div>
            <div class="show-list">
                <%
                    ArrayList list = (ArrayList)request.getAttribute("list");
                    if(list.size() == 0){
                        out.print("找不到该商品！");
                    }
                    else{
                        for (int i = 1; i < list.size() + 1; i++){
                            if(i % 7 ==1){
                                out.print("<a href=\"../goods/detail?gid=" + list.get(i - 1) + "\">");
                                out.print("<li>");
                                if(list.get(i + 2) == null){
                                    out.print("<img src=\"../static/img/login.png\" width=\"100%\"/>");
                                }
                                else{
                                    out.print("<img src=\"" + list.get(i + 2) + "\" width=\"100%\"/>");
                                }
                                out.print("<div class=\"title\">"+list.get(i + 1)+"</div>");
                                out.print("<div class=\"price\">¥"+list.get(i)+"</div>");
                                out.print("</li>");
                                out.print("</a>");
                            }
                        }
                    }
                %>
            </div>
        </div>
    </div>
</div>

<jsp:include page="../public/footer.jsp"/>