<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<jsp:include page="../public/header.jsp"/>
<jsp:include page="../public/search.jsp"/>

<style>
    .title{
        color: white;
        width: 1160px;
        margin-top: 10px;
        font-weight: bold;
        background: #ff9000;
        padding: 5px 20px 5px 20px;
    }
    .store{
        display: flex;
        padding: 20px;
        background: white;
    }
    .store-detail{
        line-height: 30px;
        margin-left: 20px;
    }
    .goods{
        display: flex;
        padding: 20px;
        background: white;
    }
</style>

<div class="body">
    <div class="body-div" style="text-align: left;padding-top: 0;padding-bottom: 10px">
        <div class="title">店铺详情</div>
        <div class="store">
            <div class="store-img">
                <img src="${info[1]}"/>
            </div>
            <div class="store-detail">
                <div>店长名：<span>${info[0]}</span></div>
                <div>店铺名：<span>${info[2]}</span></div>
                <div>店铺简介：<span>${info[3]}</span></div>
            </div>
        </div>
        <div class="title">商品列表</div>
        <div class="goods">
            <%
                List goods = (List)request.getAttribute("goods");
                for(int i=0; i<goods.size(); i++){
                    Map map = (Map)goods.get(i);
                    for(Object key:map.keySet()){
                        if("title".equals(key)){
                            out.print(map.get(key) + "<br>");
                        }
                    }
                    for(Object key:map.keySet()){
                        if("title".equals(key)){
                            out.print(map.get(key) + "<br>");
                        }
                    }
                }
            %>
        </div>
    </div>
</div>

<jsp:include page="../public/footer.jsp"/>