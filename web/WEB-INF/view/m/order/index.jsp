<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<jsp:include page="../public/header.jsp"/>

<style>
    ico{
        color: #ff5000;
        font-size: 14px;
    }
    price{
        font-size: 18px;
        color: #ff5000;
    }
    header{
        width: 100%;
        display: flex;
        padding-top: 5px;
        padding-bottom: 5px;
    }
    .title{
        color: white;
        height: 30px;
        margin: 0 auto;
        font-size: 22px;
        font-weight: bold;
        padding-left: 10px;
        padding-right: 10px;
    }
    .list{
        width:100%;
        overflow:hidden;
    }
    .list div{
        padding: 10px 20px 10px 20px;
        margin-top: 20px;
        background: white;
        border-radius: 10px;
    }
    .list ul{
        padding: 0;
        margin: 10px;
        overflow: hidden;
    }
    button{
        width: 100%;
        border: 0;
        float: right;
        padding-top: 10px;
        padding-bottom: 10px;
        font-weight: bold;
        background: #ff9000;
    }
    button a{
        color: white;
    }
</style>

<header>
    <div class="title">购物车 </div>
</header>

<div class="body">
    <div class="list">
        <%
            List list = (List)request.getAttribute("list");
            for(int i=0; i<list.size(); i++){
                out.print("<div>");
                Map map = (Map)list.get(i);
                for(Object key : map.keySet()) {
                    if("oid".equals(key)) out.print("<ul>订单号：" + map.get(key) + "</ul>");
                }
                for(Object key : map.keySet()) {
                    if("title".equals(key)) out.print("<ul>商品名称：" + map.get(key) + "</ul>");
                }
                for(Object key : map.keySet()) {
                    if("time".equals(key)) out.print("<ul>添加时间：" + map.get(key) + "</ul>");
                }
                for(Object key : map.keySet()) {
                    if("price".equals(key)) out.print("<ul>商品价格：<ico>￥<ico><price>" + map.get(key) + "</price></ul>");
                }
                for(Object key : map.keySet()) {
                    if("oid".equals(key)){
                        String url = "<a href=\"../order/del?oid=" + map.get(key) + "\">删除订单</a>";
                        out.print("<ul><button>" + url + "</button></ul>");
                    }
                }
                out.print("</div>");
            }
        %>
    </div>
</div>

<jsp:include page="../public/menu.jsp"/>
<jsp:include page="../public/footer.jsp"/>