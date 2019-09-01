<%@ page contentType="text/html;charset=UTF-8" %>
<jsp:include page="../public/header.jsp"/>

<style>
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
        padding: 10px 20px 10px 20px;
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
            <div class="right-div-title">开发团队</div>
            <hr style="border: 0;border-bottom: 3px solid #ff9000;margin: 0;">
            <div class="right-div-body">
                <p>领导组织：辽宁科技大学大数据协会</p>
                <p>团队名称：开发者大赛项目C组</p>
                <p>小组组长：龙远吉</p>
                <p>小组成员：李天华 李常丽 张子天 贺自德</p>
                <p>团队口号：转转，让买卖闲置物品这件事变得更轻松！</p>
            </div>
        </div>
    </div>
</div>

<jsp:include page="../public/footer.jsp"/>