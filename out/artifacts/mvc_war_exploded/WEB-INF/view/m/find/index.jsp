<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<jsp:include page="../public/header.jsp"/>
<jsp:include page="../public/search.jsp"/>

<style>
    ico{
        color: #ff5000;
        font-size: 14px;
    }
    price{
        font-size: 18px;
        color: #ff5000;
    }
    .head{
        width: 100%;
        color: #ff5000;
        font-size: 18px;
        text-align: center;
        padding-top: 5px;
        padding-bottom: 5px;
        margin-top: 10px;
        background: white;
    }
    .list{
        width:100%;
        overflow:hidden;
    }
    .list .div{
        float:left;
        width:47%;
        text-align: center;
        height: 260px;
        margin-left: 2%;
        margin-top: 10px;
        background: white;
    }
    .list .text{
        padding: 10px 10px 0 10px;
        text-align: left;
    }
    .bottom-nav{
        font-size: 12px;
        text-align: center;
        margin-top: 10px;
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

<div class="body">
    <div class="head">搜索结果</div>
    <div class="list">
        <%
            ArrayList list = (ArrayList)request.getAttribute("list");
            for (int i = 1; i < list.size() + 1; i++){
                if(i % 7 ==1){
                    out.print("<a href=\"goods/detail?gid=" + list.get(i - 1) + "\">");
                    out.print("<div class=\"div\">");
                    if(list.get(i + 2) == null){
                        out.print("<div><img src=\"../static/img/demo.png\" width=\"100%\"/></div>");
                    }
                    else{
                        out.print("<img src=\"" + list.get(i + 2) + "\" width=\"100%\"/>");
                    }
                    out.print("<div class=\"text\"><label>"+list.get(i + 1)+"</label></div>");
                    out.print("<div class=\"text\"><ico>￥</ico><price>"+list.get(i)+"</price></div>");
                    out.print("</div>");
                    out.print("</a>");
                }
            }
        %>
    </div>

    <div class="bottom-about">
        <hr style="border: 0;border-bottom: 1px solid #aaaaaa">
        <div>版权声明：本站是由辽宁科技大学大数据协会项目组倾力打造的商城系统，未经允许禁止将本系统用于商业用途，如经发现一律举报。</div>
        <div style="margin-top: 5px">黔ICP备18000376号 <img style="margin-bottom: -2px" src="http://icon.cnzz.com/img/pic.gif"></div>
    </div>
</div>

<jsp:include page="../public/menu.jsp"/>
<jsp:include page="../public/footer.jsp"/>