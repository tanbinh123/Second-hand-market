<%@ page contentType="text/html;charset=UTF-8"%>
<jsp:include page="../public/header.jsp"/>

<style>
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
    ico{
        color: #ff5000;
        font-size: 16px;
    }
    price{
        color: #ff5000;
        font-size: 24px;
        font-weight: bold;
    }
    .goods button{
        color: white;
        width: 100%;
        border: 0;
        font-size: 20px;
        margin-top: 20px;
        border-radius: 23px;
        background: #ff9000;
        padding: 10px 50px 10px 50px;
    }
    .bottom-about{
        color: #666666;
        font-size: 12px;
        margin-top: 20px;
        padding-left: 10px;
        padding-right: 10px;
        text-align: center;
    }
    .comment{
        margin-top: 10px;
        background: white;
        padding: 10px 20px 10px 20px;
    }
    .comment-title{
        color: #ff9000;
        font-weight: bold;
    }
    .goods-about{
        margin-top: 10px;
        background: white;
    }
    .goods-about-title{
        color: white;
        font-weight: bold;
        padding: 5px 10px 5px 10px;
        background: #ff9000;
    }
    .goods-about-body{

        padding: 5px 10px 5px 10px;
    }
</style>

<header>
    <div class="title">商品详情</div>
</header>

<div class="body">
    <div class="goods">
        <div><img src="${list.get(2)}" width="100%"/></div>
        <div style="background: white;padding: 5px 20px 10px 20px">
            <ico>￥</ico>
            <price>${list.get(4)}</price>
        </div>
        <div style="margin-top: 10px;background: white;padding: 10px 20px 20px 20px;line-height: 30px">
            <div>商品名称：${list.get(1)}</div>
            <div>
                商品简介：<div style="display: inline-block">${list.get(3)}</div>
            </div>
            <div style="text-align: center">
                <a href="/order/add?goods=<%=request.getParameter("gid")%>"><button>立即购买</button></a>
            </div>
            <div style="text-align: center">
                <a href="/cart/add?goods=<%=request.getParameter("gid")%>"><button>加入购物车</button></a>
            </div>
        </div>

        <div class="goods-about">
            <div class="goods-about-title">
                商品简介
            </div>
            <div class="goods-about-body">
                商品简介
            </div>
        </div>

        <div class="comment">
            <div class="comment-title">
                <div>用户评论</div>
                <hr style="border: 0;border-bottom: 1px solid #ff9000">
            </div>
            <div class="comment-body">
                <jsp:include page="comment.jsp"/>
            </div>
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