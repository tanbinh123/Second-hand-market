<%--
  Created by IntelliJ IDEA.
  User: cnzxo
  Date: 2019/9/10
  Time: 0:55
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
    <div class="title">成功案例</div>
    <jsp:include page="menu.jsp"/>
</header>

<div class="body">
    <div class="list">
        <div style="padding-top: 8px">
            <p>
                华为是我们的长期合作伙伴，多年来我们一直在使用华为产品和服务。无论技术创新和实践经验，还是产品质量和服务响应，华为都是强大而且优秀的，我们非常满意。而在Wi-Fi 6上，华为更是独树一帜融合了5G技术。这也是我们选择华为作为合作伙伴共同构建我们有线+无线融合的新型商业模式的原因
            </p>
            <p>
                菲律宾Puregold集团隶属于Cosco资本，是菲律宾规模最大的超大型自助及百货连锁超市运营商，经营着全境409家卖场，涵盖Puregold超市、S&R会员量贩店以及S&R纽约风披萨品牌店。作为一家百货零售集团，Puregold拥有多元化的业务组合，在商业地产，酒类经销，专业领域零售以及石油矿产领域迅速扩展版图，并于2011年在菲律宾证券交易所挂牌上市。
            </p>
            <p>
                兰州拉面之所以被誉为“中华第一面”，是因为从和面开始，它便融入了拉面师傅们独特的技巧和精湛的工艺，去保证面的劲道滑爽。
            </p>
            <p>
                通过义数云提供的实时大数据分析，动态调用产能，报价周期从6天缩减0.5天，IT投入成本节约了40%，有效提升了我们公司的核心竞争力。
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
