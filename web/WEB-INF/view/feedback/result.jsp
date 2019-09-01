<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<jsp:include page="../public/header.jsp"/>

<style>
    p{
        font-size: 14px;
    }
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
        display: flex;
        padding: 10px 20px 10px 20px;
    }
</style>

<div class="head">
    <div class="head-div">
        <div class="logo">
            <a href="../../">
                <img src="../static/img/logo.png" width="200px" title="转转网"/>
            </a>
        </div>
        <div class="search">
            <form action="/find/index">
                <div class="search-left">
                    <input name="keyword" class="search-input" placeholder="🔍 手机 电脑 课本 衣服 鞋"/>
                </div>
                <div class="search-right">
                    <input type="submit" class="search-button" value="搜索"/>
                </div>
            </form>
        </div>
    </div>
</div>

<div class="body">
    <div class="body-div" style="display: flex">
        <div class="left-div">
            <div class="left-div-title">反馈</div>
            <hr style="border: 0;border-bottom: 3px solid #ff9000;margin: 0;">
            <a href="page"><div class="left-div-list">提交反馈</div></a>
            <a href="query"><div class="left-div-list">查询反馈</div></a>
        </div>
        <div class="right-div">
            <div class="right-div-title">查询到的信息</div>
            <hr style="border: 0;border-bottom: 3px solid #ff9000;margin: 0;">
            <div class="right-div-body">
                <%
                    List list = (List) request.getAttribute ("list");
                    for(int i=0; i<list.size (); i++){
                        Map map = (Map)list.get (i);
                        for(Object key:map.keySet ()){
                            if("author".equals (key)){
                                out.print ("用户：" + map.get (key) + "<br>");
                            }
                        }
                        for(Object key:map.keySet ()){
                            if("title".equals (key)){
                                out.print ("标题：" + map.get (key) + "<br>");
                            }
                        }
                        for(Object key:map.keySet ()){
                            if("content".equals (key)){
                                out.print ("内容：" + map.get (key) + "<br>");
                            }
                        }
                        for(Object key:map.keySet ()){
                            if("date".equals (key)){
                                out.print ("时间：" + map.get (key) + "<br>");
                            }
                        }
                    }
                %>
            </div>
        </div>
    </div>
</div>

<%
    if(request.getAttribute("msg") != null){
        out.println("<script>alert('"+request.getAttribute("msg")+"')</script>");
    }
%>

<jsp:include page="../public/footer.jsp"/>