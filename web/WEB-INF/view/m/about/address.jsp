<%--
  Created by IntelliJ IDEA.
  User: cnzxo
  Date: 2019/8/29
  Time: 12:23
  To change this template use File | Settings | File Templates.
--%>
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
        padding-left: 20px;
        padding-right: 20px;
        overflow:hidden;
    }
    .bottom-nav a{
        color: #ff9000;
    }
    .bottom-about{
        color: #666666;
        font-size: 12px;
        padding-left: 10px;
        padding-right: 10px;
        text-align: center;
    }
</style>

<header>
    <div class="title">办公地址</div>
    <jsp:include page="menu.jsp"/>
</header>

<div class="body">
    <div class="list">
        <div>
            <p>社  团：辽宁科技大学大数据协会</p>
            <p>单  位：辽宁科技大学大电子与信息工程学院</p>
            <p>地  址：辽宁省鞍山市高新区千山中路185—1号</p>
        </div>
        <div id="container" style="width: 100%;height: 300px;margin-bottom: 10px;z-index: -1"></div>
        <script charset="utf-8" src="https://map.qq.com/api/js?v=2.exp&key=XHLBZ-2NA34-RZDUO-XDEOR-URMDE-J6BGC"></script>
        <script>
            $(function(){
                var map = new qq.maps.Map(document.getElementById("container"),{
                    center: new qq.maps.LatLng(41.104017,123.055850),
                    zoom: 15
                });
            })
        </script>
    </div>

    <div class="bottom-about">
        <hr style="border: 0;border-bottom: 1px solid #aaaaaa">
        <div>版权声明：本站是由辽宁科技大学大数据协会项目组倾力打造的商城系统，未经允许禁止将本系统用于商业用途，如经发现一律举报。</div>
        <div style="margin-top: 5px">黔ICP备18000376号 <img style="margin-bottom: -2px" src="http://icon.cnzz.com/img/pic.gif"></div>
    </div>
</div>

<jsp:include page="../public/menu.jsp"/>
<jsp:include page="../public/footer.jsp"/>
