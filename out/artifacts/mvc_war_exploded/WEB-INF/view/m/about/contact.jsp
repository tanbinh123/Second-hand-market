<%--
  Created by IntelliJ IDEA.
  User: cnzxo
  Date: 2019/8/29
  Time: 12:23
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
    <div class="title">联系方式</div>
    <jsp:include page="menu.jsp"/>
</header>

<div class="body">
    <div class="list">
        <div>
            <p>开发团队：开发者大赛项目C组</p>
            <p>联系电话：15121355220</p>
            <p>
                在线咨询：
                <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&amp;uin=2217709027&amp;site=qq&amp;menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:2217709027:51" alt="2217709027" title="2217709027"></a>
                <a target="_blank" href="//shang.qq.com/wpa/qunwpa?idkey=7f275e215ec592e031900e29be73db5c7f4ddad3b08c640b5fec31a3322ec28e"><img border="0" src="//pub.idqqimg.com/wpa/images/group.png" alt="大数据项目组" title="大数据项目组"></a>
            </p>
            <p>
                <img src="../static/img/QR.png" width="200px;">
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
