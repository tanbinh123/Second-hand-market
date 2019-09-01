<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<jsp:include page="../public/header.jsp"/>
<jsp:include page="../public/search.jsp"/>

<style>
    .goods-data{
        width: 100%;
        margin-top: 10px;
        margin-left: 10px;
        margin-bottom: 10px;
        display: inline-block;
    }
    .goods-data-div{
        background: #ffffff;
    }
    .goods-data-title{
        font-weight: bold;
        padding: 10px 20px 10px 20px;
        border-bottom: 1px solid #cccccc;
    }
    .goods-data-menu{
        padding-left: 20px;
        padding-right: 20px;
        padding-bottom: 20px;
    }
    .goods-data-list{
        font-size: 14px;
        margin-top: 20px;
        padding: 5px;
        border: 1px solid #efefef;
    }
    .goods-list{
        width: 980px;
        box-shadow: 2px 2px 5px #aaccdd;
        margin-top: 20px;
        border-spacing: 0;
    }
    .goods-list th{
        color: white;
        padding: 5px 10px 5px 10px;
        font-size: 14px;
        border-left: 1px solid #ffffff;
        background: #00aaee;
    }
    .goods-list td{
        background: #cceeff;
        border-top: 1px solid white;
        padding: 5px 10px 5px 10px;
    }
</style>

<div class="body">
    <div class="body-div" style="text-align: left; display: flex;">
        <!-- 左侧导航栏 -->
        <jsp:include page="menu.jsp"/>
        <!-- 数据信息 -->
        <div class="goods-data">
            <div class="goods-data-div">
                <div class="goods-data-title">正在出售</div>
                <div class="goods-data-menu">
                    <table class="goods-list">
                        <tr>
                            <th style="border-left: 1px solid #00aaee;width: 60px;">图片展示</th>
                            <th>商品名称</th>
                            <th>商品简介</th>
                            <th>所属类别</th>
                            <th>价格</th>
                            <th>状态</th>
                            <th width="80px">操作</th>
                        </tr>
                        <%
                            ArrayList list = (ArrayList)request.getAttribute("list");
                            for (int i=0; i<list.size(); i++){
                                if(i % 7 == 0){
                                    out.println("<tr>");
                                    out.println("<td><img src=\"" + list.get(i + 3) + "\" width=\"50px\" height=\"50px\"/></td>");
                                    out.println("<td>" + list.get(i + 2) + "</td>");
                                    out.println("<td>" + list.get(i + 4) + "</td>");
                                    out.println("<td>" + list.get(i + 5) + "</td>");
                                    out.println("<td>" + list.get(i + 1) + "</td>");
                                    String state = list.get(i + 6).equals("1") ? "出售中" : "已下架";
                                    out.println("<td>" + state + "</td>");
                                    out.println("<td>" +
                                            "<a href=\"add_online?gid=" + list.get(i + 0) +"\">上架</a>&nbsp;&nbsp;" +
                                            "<a href=\"del_online?gid=" + list.get(i + 0) +"\">下架</a>" +
                                            "</td>");
                                    out.println("</tr>");
                                }
                            }
                        %>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<jsp:include page="../public/footer.jsp"/>