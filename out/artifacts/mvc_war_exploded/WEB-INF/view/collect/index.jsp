<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<jsp:include page="../public/header.jsp"/>

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

<jsp:include page="../public/search.jsp"/>

<div class="body">
    <div class="body-div" style="text-align: left;display: flex">
        <jsp:include page="../public/userdiv.jsp"/>
        <div class="user-body">
            <div class="user-body-head">收藏夹</div>
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
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<jsp:include page="../public/footer.jsp"/>