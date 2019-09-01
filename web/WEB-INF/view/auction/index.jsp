<%--
  Created by IntelliJ IDEA.
  User: cnzxo
  Date: 2019/8/27
  Time: 21:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<jsp:include page="../public/header.jsp"/>

<style>
    .auction{
        text-align: left;
        margin-top: 10px;
        background: #00aaee;
    }
    .auction-title{
        color: white;
        font-weight: bold;
        background: #ff9000;
        padding: 5px 10px 5px 10px;
    }
    .auction-list{
        padding: 20px;
        background: white;
        overflow: hidden;
    }
    .auction-div{
        float: left;
        width: 190px;
        height: 250px;
        padding: 20px;
        line-height: 25px;
        font-size: 14px;
        border: 1px solid #efefef;
    }
    .auction-div:hover{
        cursor: pointer;
        border: 1px solid #ff9000;
    }
</style>

<jsp:include page="../public/search.jsp"/>

<div class="body">
    <div class="body-div" style="margin-top: 5px;margin-bottom: 10px">
        <div class="banner" style="overflow: hidden">
            <img src="../static/img/auction_banner.png" width="100%" height="300px"/>
            <div style="font-size: 160px;font-weight: bold;margin-top: -280px;color: #ff5000">拍卖会</div>
        </div>
        <div class="auction">
            <div class="auction-title">正在拍卖</div>
            <div class="auction-list">
                <%
                    for (Object o:(List)request.getAttribute("list")){
                        Map map = (Map) o;
                        for (Object key : map.keySet()) {
                            if ("gid".equals(key)) {
                                out.print("<a href='detail?gid="+map.get(key)+"'>");
                                out.print("<div class='auction-div'>");
                            }
                        }
                        for (Object key : map.keySet()) {
                            if ("image".equals(key)) {
                                out.print("<div style='width:100%;height:200px;border:1px'><img src='"+map.get(key)+"' width='100%' height='200px' alt=''/></div>");
                            }
                        }
                        for (Object key : map.keySet()) {
                            if ("title".equals(key)) {
                                out.print("<div style='margin-top:5px'>商品名称："+map.get(key)+"</div>");
                            }
                        }
                        for (Object key : map.keySet()) {
                            if ("content".equals(key)) {
                                out.print("<div>商品简介："+map.get(key)+"</div>");
                                out.print("</div>");
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
