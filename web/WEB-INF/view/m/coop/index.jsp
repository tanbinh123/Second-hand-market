<%--
  Created by IntelliJ IDEA.
  User: cnzxo
  Date: 2019/9/10
  Time: 0:44
  To change this template use File | Settings | File Templates.
--%>
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
    <div class="title">关于合作</div>
    <jsp:include page="menu.jsp"/>
</header>

<div class="body">
    <div class="list">
        <div style="padding-top: 8px">
            <p>
                腾讯以技术丰富互联网用户的生活。每天，数以亿计的用户通过我们的整合平台在线沟通、分享经历、获取资讯、寻求娱乐和网上购物。通过投资创新、为合作伙伴提供良好的环境和贴近用户的需求，我们致力与互联网共同发展。
            </p>
            <p>
                腾讯游戏是腾讯五大网络平台之一，是全球领先的游戏开发和运营机构，也是国内最大的网络游戏社区。总部位于中国深圳，在国内设有北京、成都、上海三个分公司及全国各地30多个办事处，并在香港、波士顿、首尔和硅谷设有国际办事处。
            </p>
            <p>
                商务合作是腾讯游戏一直以来进行的重要的市场推广手段之一，在经过了数年的探索和发展以后，不但获得了十分有效可观的合作成果，并且还沉淀了一套专业规范的经验和方法论。腾讯游戏愿意与不同行业的优秀品牌进行合作，通过资源互换的方式，整合双方的优势，达到共赢的目的。
            </p>
            <p>
                腾讯游戏的商务合作，是通过挖掘市场活动的商业价值，增强部门自我造血功能，在不增加市场费用的基础上，通过和异业合作伙伴优势资源互换，来获得有力的市场推广支持。通常，是将腾讯游戏强势的线上资源，主要包括游戏道具礼包、游戏官网和客户端广告、游戏内植入合作伙伴信息以及游戏线下活动等，来置换合作伙伴的线下资源，主要包括游戏定制产品，游戏内容在合作伙伴产品包装和商超渠道上的曝光，实物和现金的活动赞助，电视、户外等媒介资源以及联合市场推广活动等。
            </p>
            <p>
                迄今为止，腾讯游戏已经和快速消费品、IT产品、服装、电视媒体以及金融行业的多个异业品牌有了很多成功的合作的案例，非常有力的促进了合作伙伴的产品销售。更多商务合作案例，请参见商务合作新闻
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
