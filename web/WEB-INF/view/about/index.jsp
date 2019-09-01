<%@ page contentType="text/html;charset=UTF-8" %>
<jsp:include page="../public/header.jsp"/>

<style>
    p{
        font-size: 14px;
    }
    .left-div{
        width: 200px;
        background: white;
        margin-top: 10px;
        margin-bottom: 10px;
        text-align: left;
        padding-bottom: 20px;
    }
    .left-div-title{
        color: #ff9000;
        font-weight: bold;
        padding: 10px 20px 10px 20px;
    }
    .left-div-list{
        font-size: 14px;
        border-bottom: 1px solid #cccccc;
        padding: 10px 20px 10px 20px;
    }
    .left-div-list:hover{
        color: #ffffff;
        cursor: pointer;
        background: #ff9000;
    }
    .right-div{
        width: 990px;
        margin-top: 10px;
        margin-left: 10px;
        margin-bottom: 10px;
        background: white;
        text-align: left;
    }
    .right-div-title{
        color: #ff9000;
        font-weight: bold;
        padding: 10px 20px 10px 20px;
    }
    .right-div-body{
        display: flex;
        padding: 10px 20px 10px 20px;
    }
    .right-div-body p{
        line-height: 30px;
    }
</style>

<jsp:include page="../public/search.jsp"/>

<div class="body">
    <div class="body-div" style="display: flex">
        <div class="left-div">
            <div class="left-div-title">关于我们</div>
            <hr style="border: 0;border-bottom: 3px solid #ff9000;margin: 0;">
            <a href="index"><div class="left-div-list">网站简介</div></a>
            <a href="team"><div class="left-div-list">开发团队</div></a>
            <a href="contact"><div class="left-div-list">联系方式</div></a>
            <a href="address"><div class="left-div-list">办公地址</div></a>
        </div>
        <div class="right-div">
            <div class="right-div-title">网站简介</div>
            <hr style="border: 0;border-bottom: 3px solid #ff9000;margin: 0;">
            <div class="right-div-body">
                <div>
                    <p>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;转转网是辽宁科技大学大数据协会项目组倾力打造的闲置二手交易平台。全力打造最专业的校园二手交易平台，为用户提供更有保障的、专业的、放心的产品与服务。在转转，我们努力让买卖闲置物品这件事变得更轻松！
                    </p>
                    <p>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;二手跳蚤市场顾名思义就是一个提供给个人或商家发布二手物品交易信息的网络平台，一般为免费发布。二手商品交易网是电子商务的一种具体应用，是一个虚拟化的市场，借助Internet为买卖双方提供一个快捷方便的交易平台。凡是想要在网上买卖二手商品的人，只要在二手商品交易网上注册，找到或发布需要交易的商品，留下相应的信息，买卖双方取得联系即可进行交易。二手物品：离开销售商环节后，在消费者层面再次流通的所有物品。一旦货物进入消费者个人或企业，由消费者个人或企业发起转让的所有物品。一般说来，一个完整的二手商品交易网要具备如下三个部分：
                    </p>
                    <p>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;客户：在网上购物中，客户一般都使用浏览器进行浏览、购买商品等操作。
                    </p>
                    <p>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;商家：在交易流程中，商家要发布或者修改商品信息、送货、收款、处理退货等。
                    </p>
                    <p>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;管理员：对客户、商家和商品进行管理，删除客户和商家的信息，对发布的商品进行整理等。
                    </p>
                </div>
                <div style="padding: 20px;">
                    <img src="../static/img/login.png"/>
                </div>
            </div>
        </div>
    </div>
</div>

<jsp:include page="../public/footer.jsp"/>