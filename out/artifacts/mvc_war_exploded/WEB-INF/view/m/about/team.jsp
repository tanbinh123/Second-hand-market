<%--
  Created by IntelliJ IDEA.
  User: cnzxo
  Date: 2019/8/29
  Time: 12:22
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
    <div class="title">关于我们</div>
    <jsp:include page="menu.jsp"/>
</header>

<div class="body">
    <div class="list">
        <div>
            <div style="float: right">
                <img src="${pageContext.request.contextPath}/static/img/login.png" width="170px" alt=""/>
            </div>
            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                转转网是辽宁科技大学大数据协会项目组倾力打造的闲置二手交易平台。全力打造最专业的校园二手交易平台，为用户提供更有保障的、专业的、放心的产品与服务。在转转，我们努力让买卖闲置物品这件事变得更轻松！
            </p>
            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                二手跳蚤市场顾名思义就是一个提供给个人或商家发布二手物品交易信息的网络平台，一般为免费发布。二手商品交易网是电子商务的一种具体应用，是一个虚拟化的市场，借助Internet为买卖双方提供一个快捷方便的交易平台。凡是想要在网上买卖二手商品的人，只要在二手商品交易网上注册，找到或发布需要交易的商品，留下相应的信息，买卖双方取得联系即可进行交易。二手物品：离开销售商环节后，在消费者层面再次流通的所有物品。一旦货物进入消费者个人或企业，由消费者个人或企业发起转让的所有物品。一般说来，一个完整的二手商品交易网要具备如下三个部分：
            </p>
            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                客户：在网上购物中，客户一般都使用浏览器进行浏览、购买商品等操作。
            </p>
            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                商家：在交易流程中，商家要发布或者修改商品信息、送货、收款、处理退货等。
            </p>
            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                管理员：对客户、商家和商品进行管理，删除客户和商家的信息，对发布的商品进行整理等。
            </p>
        </div>
    </div>

    <div class="bottom-about">
        <hr style="border: 0;border-bottom: 1px solid #aaaaaa">
        <div>版权声明：本站是由辽宁科技大学大数据协会项目组倾力打造的商城系统，未经允许禁止将本系统用于商业用途，如经发现一律举报。</div>
        <div style="margin-top: 5px">黔ICP备18000376号 <img style="margin-bottom: -2px" src="http://icon.cnzz.com/img/pic.gif"></div>
    </div>
</div>

<jsp:include page="../public/menu.jsp"/>
<jsp:include page="../public/footer.jsp"/>