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
    .address{
        line-height: 40px;
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
            <div class="right-div-title">联系方式</div>
            <hr style="border: 0;border-bottom: 3px solid #ff9000;margin: 0;">
            <div class="right-div-body">
                <div class="address">
                    <div>开发团队：开发者大赛项目C组</div>
                    <div>联系电话：15121355220</div>
                    <div>
                        在线咨询：
                        <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=2217709027&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:2217709027:51" alt="2217709027" title="2217709027"/></a>
                        <a target="_blank" href="//shang.qq.com/wpa/qunwpa?idkey=7f275e215ec592e031900e29be73db5c7f4ddad3b08c640b5fec31a3322ec28e"><img border="0" src="//pub.idqqimg.com/wpa/images/group.png" alt="大数据项目组" title="大数据项目组"></a>
                    </div>
                    <div>
                        <img src="../static/img/QR.png" width="200px;"/>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<jsp:include page="../public/footer.jsp"/>