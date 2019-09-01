<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<jsp:include page="../public/header.jsp"/>
<jsp:include page="header.jsp"/>
<jsp:include page="banner.jsp"/>

<style>
    .body-div-show{
        width: 1200px;
        text-align: left;
        margin-bottom: 10px;
        background: #ffffff;
    }
    .show-head{
        padding-top: 20px;
        display: flex;
    }
    .show-head-tip{
        width: 5px;
        height: 20px;
        margin-right: 10px;
        margin-left: 20px;
        background: #ff5000;
    }
    .show-body{
        display: flex;
        margin-top: 10px;
        padding-left: 20px;
        padding-right: 20px;
        padding-bottom: 20px;
    }
    .show-body-div{
        width: 230px;
        display: block;
        padding-top: 10px;
        padding-bottom: 10px;
        text-align: center;
        border: 1px solid #efefef;
    }
    .show-body-div:hover{
        border: 1px solid #ff9000;
    }

    .body-div-two{
        display: flex;
    }

    .body-div-left{
        width: 595px;
        overflow: hidden;
        display: inline-block;
        text-align: left;
        margin-bottom: 10px;
        background: #ffffff;
    }
    .left-head{
        width: 555px;
        padding-top: 20px;
        display: flex;
    }
    .left-head-tip{
        width: 5px;
        height: 20px;
        margin-right: 10px;
        margin-left: 20px;
        background: #ff5000;
    }
    .left-body{
        width: 555px;
        display: flex;
        overflow: hidden;
        padding: 10px 20px 10px 20px;
    }
    .left-body-div{
        width: 267px;
        display: block;
        padding-top: 10px;
        padding-bottom: 10px;
        text-align: center;
    }

    .body-div-right{
        width: 595px;
        display: inline-block;
        text-align: left;
        margin-left: 10px;
        margin-bottom: 10px;
        background: #ffffff;
    }
    .right-head{
        padding-top: 20px;
        display: flex;
    }
    .right-head-tip{
        width: 5px;
        height: 20px;
        margin-right: 10px;
        margin-left: 20px;
        background: #ff5000;
    }
    .right-body{
        width: 565px;
        display: flex;
        overflow: hidden;
        padding: 10px 20px 10px 20px;
    }
    .right-body-div{
        width: 267px;
        display: block;
        padding-top: 10px;
        padding-bottom: 10px;
        text-align: center;
    }

    .body-div-list{
        width: 1200px;
        text-align: left;
        background: white;
        padding-bottom: 20px;
        margin-bottom: 20px;
    }
    .show-list{
        margin: 10px 20px 0 20px;
        overflow: hidden;
    }
    .show-list li{
        float: left;
        width: 190px;
        height: 280px;
        padding: 20px;
        border: 1px solid #efefef;
        list-style: none;
    }
    .show-list li:hover{
        border: 1px solid #ff5000;
    }
    .show-list .title{
        height: 50px;
        font-size: 14px;
        margin-top: 10px;
    }
    .show-list .title:hover{
        color: #ff5000;
    }
    .show-list .price{
        color: #ff5000;
        font-size: 20px;
    }
</style>

<div class="body">
    <div class="body-div">
        <div class="body-div-show">
            <div class="show-head">
                <div class="show-head-tip"></div>
                <div class="show-head-title">新品推荐</div>
            </div>
            <div class="show-body">
                <%
                    ArrayList re = (ArrayList)request.getAttribute("recommend");
                    for(int i=0; i<re.size(); i++){
                        Map map = (Map)re.get(i);
                        for(Object key:map.keySet()){
                            if("gid".equals(key)){
                                out.print("<a href=\"/goods/detail?gid=" + map.get(key) + "\">");
                                out.print("<div class=\"show-body-div\">");
                            }
                        }
                        for(Object key:map.keySet()){
                            if("image".equals(key)){
                                out.print("<img src=\"" + map.get(key) + "\" width=\"190px\" title=\"转转网\"/>");
                            }
                        }
                        for(Object key:map.keySet()){
                            if("title".equals(key)){
                                out.print("<div><h>" + map.get(key) + "</h></div>");
                                out.print("</div>");
                                out.print("</a>");
                            }
                        }
                    }
                %>
            </div>
        </div>
        <div class="body-div-two">
            <div class="body-div-left">
                <div class="left-head">
                    <div class="left-head-tip"></div>
                    <div class="left-head-title">学习生活</div>
                </div>
                <div class="left-body">
                    <%
                        List cg1 = (List)request.getAttribute("classLeft");
                        for(int i=0; i<cg1.size(); i++){
                            Map map = (Map)cg1.get(i);
                            for(Object key:map.keySet()){
                                if("gid".equals(key)){
                                    out.print("<a href=\"/goods/detail?gid=" + map.get(key) + "\">");
                                    out.print("<div class=\"left-body-div\">");
                                }
                            }
                            for(Object key:map.keySet()){
                                if("image".equals(key)){
                                    out.print("<img src=\"" + map.get(key) + "\" width=\"190px\" title=\"转转网\"/>");
                                }
                            }
                            for(Object key:map.keySet()){
                                if("title".equals(key)){
                                    out.print("<div><h>" + map.get(key) + "</h></div>");
                                    out.print("</div>");
                                    out.print("</a>");
                                }
                            }
                        }
                    %>
                </div>
            </div>
            <div class="body-div-right">
                <div class="right-head">
                    <div class="right-head-tip"></div>
                    <div class="right-head-title">数码设备</div>
                </div>
                <div class="right-body">
                    <%
                        List cg2 = (List)request.getAttribute("classRight");
                        for(int i=0; i<cg2.size(); i++){
                            Map map = (Map)cg2.get(i);
                            for(Object key:map.keySet()){
                                if("gid".equals(key)){
                                    out.print("<a href=\"/goods/detail?gid=" + map.get(key) + "\">");
                                    out.print("<div class=\"right-body-div\">");
                                }
                            }
                            for(Object key:map.keySet()){
                                if("image".equals(key)){
                                    out.print("<img src=\"" + map.get(key) + "\" width=\"190px\" title=\"转转网\"/>");
                                }
                            }
                            for(Object key:map.keySet()){
                                if("title".equals(key)){
                                    out.print("<div><h>" + map.get(key) + "</h></div>");
                                    out.print("</div>");
                                    out.print("</a>");
                                }
                            }
                        }
                    %>
                </div>
            </div>
        </div>
        <div class="body-div-list">
            <div class="show-head">
                <div class="show-head-tip"></div>
                <div class="show-head-title">全部商品</div>
            </div>
            <div class="show-list">
                <%
                    ArrayList list = (ArrayList)request.getAttribute("goodsList");
                    for (int i = 1; i < list.size() + 1; i++){
                        if(i % 7 ==1){
                            out.print("<a href=\"goods/detail?gid=" + list.get(i - 1) + "\">");
                            out.print("<li>");
                            if(list.get(i + 2) == null){
                                out.print("<img src=\"../static/img/login.png\" width=\"100%\"/>");
                            }
                            else{
                                out.print("<img src=\"" + list.get(i + 2) + "\" width=\"100%\"/>");
                            }
                            out.print("<div class=\"title\">"+list.get(i + 1)+"</div>");
                            out.print("<div class=\"price\">¥"+list.get(i)+"</div>");
                            out.print("</li>");
                            out.print("</a>");
                        }
                    }
                %>
            </div>
        </div>
    </div>
</div>

<jsp:include page="../public/footer.jsp"/>