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
    .user-body-menu{
        text-align: center;
        display: flex;
    }
    .user-body-menu .menu-li{
        width: 220px;
        display: block;
        padding-top: 50px;
        padding-bottom: 50px;
    }
    .user-body-menu .menu-li label{
        color: blue;
        font-size: 24px;
    }
    .user-body-menu .menu-li:hover label{
        color: #ff5000;
    }
    .user-body-menu .menu-li:hover div{
        color: #ff5000;
    }
</style>

<div class="body">
    <div class="body-div" style="text-align: left;display: flex">
        <jsp:include page="../public/userdiv.jsp"/>
        <div class="user-body">
            <div class="user-body-head">用户中心</div>
            <div class="user-body-menu">
                <a href="/user/message">
                    <div class="menu-li">
                        <label>0</label>
                        <div>消息中心</div>
                    </div>
                </a>
                <a href="/order/index">
                    <div class="menu-li">
                        <label>0</label>
                        <div>我的订单</div>
                    </div>
                </a>
                <a href="/cart/index">
                    <div class="menu-li">
                        <label>0</label>
                        <div>购物车</div>
                    </div>
                </a>
                <a href="/collect/index">
                    <div class="menu-li">
                        <label>0</label>
                        <div>收藏夹</div>
                    </div>
                </a>
            </div>
            <hr style="border: 0;border-bottom: 1px solid #ff9000;"/>
        </div>
    </div>
</div>

<jsp:include page="../public/footer.jsp"/>