<%@ page contentType="text/html;charset=UTF-8" %>
<jsp:include page="../public/header.jsp"/>
<jsp:include page="../public/search.jsp"/>

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
        color: #ff5000;
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
        color: #ff5000;
        font-weight: bold;
        padding: 10px 20px 10px 20px;
    }
    .right-div-body{
        padding: 10px 20px 10px 20px;
    }
</style>

<div class="body">
    <div class="body-div" style="display: flex">
        <jsp:include page="menu.jsp"/>
        <div class="right-div">
            <div class="right-div-title">成功案例</div>
            <hr style="border: 0;border-bottom: 3px solid #ff9000;margin: 0;">
            <div class="right-div-body">
                <p>
                    华为是我们的长期合作伙伴，多年来我们一直在使用华为产品和服务。无论技术创新和实践经验，还是产品质量和服务响应，华为都是强大而且优秀的，我们非常满意。而在Wi-Fi 6上，华为更是独树一帜融合了5G技术。这也是我们选择华为作为合作伙伴共同构建我们有线+无线融合的新型商业模式的原因
                </p>
                <p>
                    菲律宾Puregold集团隶属于Cosco资本，是菲律宾规模最大的超大型自助及百货连锁超市运营商，经营着全境409家卖场，涵盖Puregold超市、S&amp;R会员量贩店以及S&amp;R纽约风披萨品牌店。作为一家百货零售集团，Puregold拥有多元化的业务组合，在商业地产，酒类经销，专业领域零售以及石油矿产领域迅速扩展版图，并于2011年在菲律宾证券交易所挂牌上市。
                </p>
                <p>
                    兰州拉面之所以被誉为“中华第一面”，是因为从和面开始，它便融入了拉面师傅们独特的技巧和精湛的工艺，去保证面的劲道滑爽。
                </p>
                <p>
                    通过义数云提供的实时大数据分析，动态调用产能，报价周期从6天缩减0.5天，IT投入成本节约了40%，有效提升了我们公司的核心竞争力。
                </p>
            </div>
        </div>
    </div>
</div>

<jsp:include page="../public/footer.jsp"/>