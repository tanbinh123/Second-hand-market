<%--
  Created by IntelliJ IDEA.
  User: cnzxo
  Date: 2019/8/27
  Time: 21:20
  To change this template use File | Settings | File Templates.
--%>
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
        <!-- 数据信息 -->
        <div class="goods-data">
            <div class="goods-data-div">
                <div class="goods-data-title">商品简介</div>
                <div class="goods-data-head">
                    <div class="goods-img">
                        <img class="detail-img" width="200px" height="200px" alt="" src=""/>
                    </div>
                    <div class="goods-about">
                        <div>商品名称：<label class="detail-title"></label></div>
                        <div style="width: 100%;height: 100px;">
                            <div>
                                商品简介：
                                <div class="detail-about" style="display: inline-block"></div>
                            </div>
                        </div>
                        <div class="detail-price" style="font-size: 20px;color: #ff5000;font-weight: bold;">价格：￥${list.get(4)}</div>
                        <div class="goods-button">
                            <a href="${pageContext.request.contextPath}/order/add?goods=<%=request.getParameter("gid")%>"><button>立即购买</button></a>
                            <a href="${pageContext.request.contextPath}/cart/add?goods=<%=request.getParameter("gid")%>"><button>加入购物车</button></a>
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
        </div>
    </div>
</div>

<jsp:include page="../public/footer.jsp"/>

<script>
    $(function () {
        $.post("check", {gid:'<%=request.getParameter("gid")%>'}, function (res) {
            let data = res[0];
            $(".detail-img").attr("src",data.image);
            $(".detail-title").text(data.title);
            $(".detail-about").html(data.content);
            $(".detail-price").append(data.begin_price);
        });
        const timer = setInterval(function () {
            const time1 = new Date("2019-08-15 21:42:00:123").getTime();
            const time2 = new Date().getTime();
            const time = Math.floor((time1 - time2) / 1000);
            if (time <= 0) {
                //$("body").html("<script>alert('时间到')<\/script>");
                clearInterval(timer);
                return;
            }
            $("body").html("结束时间：" + time + "秒");
        }, 1000);
    })
</script>
