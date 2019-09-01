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
    .goods-data-head{
        display: flex;
        padding: 10px;
        border: 1px solid #ff9000;
        border-top: 0;
    }
    .goods-img{
        padding: 20px;
    }
    .goods-about{
        padding: 20px;
        width: 100%;
        display: block;
        line-height: 30px;
    }
    .goods-button{
        width: 100%;
        text-align: right;
    }
    .goods-button button{
        width: 200px;
        padding-top: 10px;
        padding-bottom: 10px;
        border: 0;
        color: white;
        font-size: 20px;
        margin: 0 10px 0 10px;
        background: #ff9000;
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
                <div class="goods-data-title">${list.get(1)}</div>
                <div class="goods-data-head">
                    <div class="goods-img">
                        <img src="${list.get(2)}" width="200px" height="200px"/>
                    </div>
                    <div class="goods-about">
                        <div>商品名称：${list.get(1)}</div>
                        <div style="width: 100%;height: 100px;">
                            <div>
                                商品简介：
                                <div style="display: inline-block">
                                    ${list.get(3)}
                                </div>
                            </div>
                        </div>
                        <div style="font-size: 20px;color: #ff5000;font-weight: bold;">价格：￥${list.get(4)}</div>
                        <div class="goods-button">
                            <a href="../order/add?goods=<%=request.getParameter("gid")%>"><button>立即购买</button></a>
                            <a href="../cart/add?goods=<%=request.getParameter("gid")%>"><button>加入购物车</button></a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- 商品详情 -->
            <div class="goods-data-div" style="margin-top: 10px">
                <div class="goods-data-title">商品详情</div>
                <div class="goods-data-head" style="padding-left: 20px">
                    ${list.get(5)}
                </div>
            </div>
            <!-- 用户评论 -->
            <div class="goods-data-div" style="margin-top: 10px">
                <div class="goods-data-title">用户评论</div>
                <div class="goods-data-head">
                    <jsp:include page="comment.jsp"/>
                </div>
            </div>
        </div>
    </div>
</div>

<jsp:include page="../public/footer.jsp"/>