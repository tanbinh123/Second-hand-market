<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<%@ page contentType="text/html;charset=UTF-8"%>
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

    .list{
        width: 100%;
        font-size: 14px;
        background: white;
        margin-bottom: 15px;
        border-spacing: 0;
    }
    .list tr{
        border-bottom: 1px solid #efefef;
    }
    .list th{
        border: 0;
        padding: 5px 10px 5px 10px;
        border-left: 1px solid #efefef;
        background: #00aaee;
    }
    .list td{
        background: #cceeff;
        padding: 5px 10px 5px 10px;
        border-top: 1px solid #ffffff;
    }
</style>

<div class="body">
    <div class="body-div" style="text-align: left;display: flex">
        <jsp:include page="../public/userdiv.jsp"/>
        <div class="user-body">
            <div class="user-body-head">购物车</div>
            <div style="padding: 20px;">
                <div style="box-shadow: 2px 2px 5px #aaccdd;">
                    <table class="list">
                        <tr style="color: white;">
                            <th style="width: 40px;border-left: 0;">序号</th>
                            <th>订单号</th>
                            <th>商品名称</th>
                            <th>下单时间</th>
                            <th>价格</th>
                            <th>操作</th>
                        </tr>
                        <%
                            List list = (List)request.getAttribute("list");
                            for(int i=0; i<list.size(); i++){
                                out.print("<tr>");
                                Map map = (Map)list.get(i);
                                out.print("<td>" + (i + 1) + "</td>");
                                for(Object key : map.keySet()) {
                                    if("oid".equals(key)) out.print("<td>" + map.get(key) + "</td>");
                                }
                                for(Object key : map.keySet()) {
                                    if("title".equals(key)) out.print("<td>" + map.get(key) + "</td>");
                                }
                                for(Object key : map.keySet()) {
                                    if("time".equals(key)) out.print("<td>" + map.get(key) + "</td>");
                                }
                                for(Object key : map.keySet()) {
                                    if("price".equals(key)) out.print("<td>" + map.get(key) + "</td>");
                                }
                                for(Object key : map.keySet()) {
                                    if("oid".equals(key)){
                                        String url = "<a href=\"../cart/del?oid=" + map.get(key) + "\">删除订单</a>";
                                        out.print("<td>" + url + "</td>");
                                    }
                                }
                                out.print("</tr>");
                            }
                        %>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<jsp:include page="../public/footer.jsp"/>