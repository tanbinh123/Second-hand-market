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
        padding: 10px 20px 20px 20px;
    }

    .address{
        line-height: 30px;
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
            <div class="right-div-title">办公地址</div>
            <hr style="border: 0;border-bottom: 3px solid #ff9000;margin: 0;">
            <div class="right-div-body">
                <div class="address">
                    <div>社&nbsp;&nbsp;团：辽宁科技大学大数据协会</div>
                    <div>单&nbsp;&nbsp;位：辽宁科技大学大电子与信息工程学院</div>
                    <div>地&nbsp;&nbsp;址：辽宁省鞍山市高新区千山中路185—1号</div>
                </div>
                <script charset="utf-8" src="https://map.qq.com/api/js?v=2.exp&key=XHLBZ-2NA34-RZDUO-XDEOR-URMDE-J6BGC"></script>
                <script>
                    $(function(){
                        var map = new qq.maps.Map(document.getElementById("container"),{
                            center: new qq.maps.LatLng(41.104017,123.055850),
                            zoom: 15
                        });
                    })
                </script>
                <div id="container" style="width: 100%;height: 300px;"></div>
            </div>
        </div>
    </div>
</div>

<jsp:include page="../public/footer.jsp"/>