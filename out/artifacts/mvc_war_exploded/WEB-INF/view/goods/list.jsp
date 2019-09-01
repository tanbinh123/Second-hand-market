<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<jsp:include page="../public/header.jsp"/>
<jsp:include page="../public/search.jsp"/>

<style>
    .goods-nav{
        width: 200px;
        margin-top: 10px;
        margin-bottom: 10px;
        background: #ffffff;
        display: inline-block;
    }
    .goods-nav-title{
        color: white;
        background: #ff9000;
        font-weight: bold;
        padding: 10px 20px 10px 20px;
    }
    .goods-nav-list div{
        padding: 10px 20px 10px 20px;
        font-size: 14px;
    }
    .goods-nav-list div:hover{
        color: white;
        background: #00aaee;
    }

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
        color: white;
        background: #ff9000;
        font-weight: bold;
        padding: 10px 20px 10px 20px;
    }
    .goods-data-menu{
        padding-left: 20px;
        padding-right: 20px;
        padding-bottom: 20px;
    }

    .list{
        width: 100%;
        font-size: 14px;
        background: white;
        margin-top: 10px;
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
    .list button{
        color: white;
        border: 0;
        padding: 5px 10px 5px 10px;
        background: #ff5000;
    }
    .goods-list{
        width: 980px;
        margin-top: 20px;
        overflow: hidden;
    }
    .goods-list div{
        width: 203px;
        height: 300px;
        float: left;
        padding: 20px;
        background: white;
        border: 1px solid #efefef;
    }
    .goods-list div:hover{
        border: 1px solid #ff5000;
    }
    .goods-list img{
        width: 203px;
        height: 203px;
    }
    .goods-list h2{
        color: #ff5000;
    }
</style>

<div class="body">
    <div class="body-div" style="text-align: left; display: flex;">
        <!-- 左侧导航栏 -->
        <div class="goods-nav">
            <a href="/goods/list"><div class="goods-nav-title">全部分类</div></a>
            <div class="goods-nav-list">
                <a href="/goods/list?classify=手机">
                    <div>手机</div>
                </a>
            </div>
            <div class="goods-nav-list">
                <a href="/goods/list?classify=电脑">
                    <div>电脑</div>
                </a>
            </div>
            <div class="goods-nav-list">
                <a href="/goods/list?classify=学习">
                    <div>学习</div>
                </a>
            </div>
            <div class="goods-nav-list">
                <a href="/goods/list?classify=生活">
                    <div>生活</div>
                </a>
            </div>
        </div>
        <!-- 数据信息 -->
        <div class="goods-data">
            <div class="goods-data-div">
                <div class="goods-data-title">商品列表</div>
                <div class="goods-data-menu">
                    <div class="goods-list">
                        <%
                            List list = (List)request.getAttribute("list");
                            for(int i=0; i<list.size(); i++){
                                Map map = (Map)list.get(i);
                                String url = null;
                                for(Object key : map.keySet()) {
                                    if("gid".equals(key)){
                                        url = "/goods/detail?gid=" + (String)map.get(key);
                                    }
                                }
                                out.print("<a href=\"" + url + "\"><div>");
                                for(Object key : map.keySet()) {
                                    if("image".equals(key)) out.print("<img src=\"" + map.get(key) + "\"/>");
                                }
                                for(Object key : map.keySet()) {
                                    if("title".equals(key)) out.print("<h>" + map.get(key) + "</h>");
                                }
                                for(Object key : map.keySet()) {
                                    if("price".equals(key)) out.print("<h2>￥" + map.get(key) + "</h2>");
                                }
                                out.print("</div></a>");
                            }
                        %>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<jsp:include page="../public/footer.jsp"/>
