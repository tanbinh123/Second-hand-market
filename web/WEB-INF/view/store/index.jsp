<%@ page contentType="text/html;charset=UTF-8" %>
<jsp:include page="../public/header.jsp"/>
<jsp:include page="../public/search.jsp"/>

<style>
    .blue{
        color: blue;
        font-size: 24px;
    }
    .store-data{
        width: 100%;
        margin-top: 10px;
        margin-left: 10px;
        margin-bottom: 10px;
        display: inline-block;
    }
    .store-data-div{
        background: #ffffff;
    }
    .store-data-title{
        font-weight: bold;
        padding: 10px 20px 10px 20px;
        border-bottom: 1px solid #cccccc;
    }
    .store-data-menu{
        display: flex;
    }
    .store-data-list{
        width: 25%;
        font-size: 14px;
        text-align: center;
        padding-top: 30px;
        padding-bottom: 30px;
    }
</style>

<div class="body">
    <div class="body-div" style="text-align: left; display: flex;">
        <jsp:include page="menu.jsp"/>
        <div class="store-data">
            <div class="store-data-div">
                <div class="store-data-title">基本信息</div>
                <div class="store-data-menu">
                    <div class="store-data-list"><div class="blue">0</div>商品数</div>
                    <div class="store-data-list"><div class="blue">0</div>订单数</div>
                    <div class="store-data-list"><div class="blue">0</div>成交数</div>
                    <div class="store-data-list"><div class="blue">0</div>交易中</div>
                </div>
            </div>
            <div class="store-data-div" style="margin-top: 10px;">
                <div class="store-data-title">访客数据</div>
                <div class="store-data-menu">
                    <div class="store-data-list"><div class="blue">0</div>访客数</div>
                    <div class="store-data-list"><div class="blue">0</div>电脑端</div>
                    <div class="store-data-list"><div class="blue">0</div>移动端</div>
                    <div class="store-data-list"><div class="blue">0</div>排行榜</div>
                </div>
            </div>
        </div>
    </div>
</div>

<jsp:include page="../public/footer.jsp"/>