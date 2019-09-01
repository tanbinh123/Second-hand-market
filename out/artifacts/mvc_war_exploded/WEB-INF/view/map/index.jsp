<%@ page contentType="text/html;charset=UTF-8" %>
<jsp:include page="../public/header.jsp"/>
<jsp:include page="../public/search.jsp"/>

<style>
    ico{
        width: 5px;
        height: 20px;
        margin-right: 10px;
        background: #ff9000;
    }
    .map{
        width: 1160px;
        text-align: left;
        margin-top: 10px;
        margin-bottom: 10px;
        background: white;
    }
    .title{
        color: #ff9000;
        font-weight: bold;
        border-bottom: 3px solid #ff9000;
        padding: 10px 20px 10px 20px;
        margin-bottom: 20px;
    }
    .list{
        padding: 0 20px 20px 20px;
        overflow: hidden;
        line-height: 40px;
    }
    .list label{
        display: flex;
        align-items: center;
    }
    .list label a{
        align-items: center;
    }
    .list-div{
        float: left;
        width: 25%;
        text-align: center;
        padding: 20px 0 20px 0;
        background: rgba(0, 180, 220, 0.1);
    }
    .list-div a{
        margin: 0 auto;
    }
</style>

<div class="body">
    <div class="body-div">
        <div class="map">
            <div class="title">网站地图</div>
            <div class="list">
                <label>
                    <ico></ico>
                    <a href="${pageContext.request.contextPath}/store/index">卖家中心</a>
                </label>
                <div class="list-div">
                    <label>
                        <a href="${pageContext.request.contextPath}/store/detail">>> 查看店铺</a>
                    </label>
                </div>
                <div class="list-div">
                    <label>
                        <a href="${pageContext.request.contextPath}/goods/manager">>> 商品管理</a>
                    </label>
                </div>
                <div class="list-div">
                    <label>
                        <a href="${pageContext.request.contextPath}/store/order">>> 订单管理</a>
                    </label>
                </div>
                <div class="list-div">
                    <label>
                        <a href="${pageContext.request.contextPath}/store/comment">>> 评论管理</a>
                    </label>
                </div>
            </div>
            <div class="list">
                <label>
                    <ico></ico>
                    <a href="${pageContext.request.contextPath}/about/index">关于我们</a>
                </label>
                <div class="list-div">
                    <label>
                        <a href="${pageContext.request.contextPath}/about/index">>> 网站简介</a>
                    </label>
                </div>
                <div class="list-div">
                    <label>
                        <a href="${pageContext.request.contextPath}/about/team">>> 开发团队</a>
                    </label>
                </div>
                <div class="list-div">
                    <label>
                        <a href="${pageContext.request.contextPath}/about/contact">>> 联系方式</a>
                    </label>
                </div>
                <div class="list-div">
                    <label>
                        <a href="${pageContext.request.contextPath}/about/address">>> 办公地址</a>
                    </label>
                </div>
            </div>
            <div class="list">
                <label>
                    <ico></ico>
                    <a href="${pageContext.request.contextPath}/coop/index">商务合作</a>
                </label>
                <div class="list-div">
                    <label>
                        <a href="${pageContext.request.contextPath}/coop/index">>> 关于合作</a>
                    </label>
                </div>
                <div class="list-div">
                    <label>
                        <a href="${pageContext.request.contextPath}/coop/case">>> 成功案例</a>
                    </label>
                </div>
                <div class="list-div">
                    <label>
                        <a href="${pageContext.request.contextPath}/coop/course">>> 发展历程</a>
                    </label>
                </div>
                <div class="list-div">
                    <label>
                        <a href="${pageContext.request.contextPath}/coop/apply">>> 申请合作</a>
                    </label>
                </div>
            </div>
        </div>
    </div>
</div>

<jsp:include page="../public/footer.jsp"/>