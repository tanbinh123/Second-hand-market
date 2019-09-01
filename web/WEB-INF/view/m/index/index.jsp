<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Map" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<jsp:include page="../public/header.jsp"/>
<jsp:include page="../public/search.jsp"/>
<jsp:include page="banner.jsp"/>

<style>
    ico{
        color: #ff5000;
        font-size: 14px;
    }
    price{
        font-size: 18px;
        color: #ff5000;
    }
    .body{
        width: 100%;
        margin-top: 0;
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
    #more{
        color: #666666;
        padding-top: 5px;
        padding-bottom: 5px;
        overflow-y: scroll;
        font-size: 18px;
        text-align: center;
        margin-top: 10px;
        background: white;
    }
    #more:hover{
        color: white;
        font-weight: bold;
        background: #ff9000;
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
    <div class="head">商品推荐</div>
    <div class="list">
        <%
            ArrayList re = (ArrayList)request.getAttribute("recommend");
            for(int i=0; i<re.size()-1; i++){
                Map map = (Map)re.get(i);
                for(Object key:map.keySet()){
                    if("gid".equals(key)){
                        out.print("<a href=\"/goods/detail?gid=" + map.get(key) + "\">");
                        out.print("<div class=\"div\" style=\"height:220px\">");
                    }
                }
                for(Object key:map.keySet()){
                    if("image".equals(key)){
                        out.print("<img src=\"" + map.get(key) + "\" width=\"100%\"/>");
                    }
                }
                for(Object key:map.keySet()){
                    if("title".equals(key)){
                        out.print("<div class=\"text\"><label>"+map.get(key)+"</label></div>");
                        out.print("</div>");
                        out.print("</a>");
                    }
                }
            }
        %>
    </div>
    <div class="head">全部商品</div>
    <div class="list">
        <%
            ArrayList list = (ArrayList)request.getAttribute("goodsList");
            for (int i = 1; i < list.size() + 1; i++){
                if(i % 7 ==1){
                    out.print("<a href=\"/goods/detail?gid=" + list.get(i - 1) + "\">");
                    out.print("<div class=\"div\">");
                    if(list.get(i + 2) == null){
                        out.print("<div><img style='border-bottom: 1px solid #efefef' src=\"../static/img/demo.png\" width=\"100%\"/></div>");
                    }
                    else{
                        out.print("<img style='border-bottom: 1px solid #efefef' src=\"" + list.get(i + 2) + "\" width=\"100%\"/>");
                    }
                    out.print("<div class=\"text\"><label>"+list.get(i + 1)+"</label></div>");
                    out.print("<div class=\"text\"><ico>￥</ico><price>"+list.get(i)+"</price></div>");
                    out.print("</div>");
                    out.print("</a>");
                }
            }
        %>
    </div>
    <div>
        <a href="${pageContext.request.contextPath}/goods/list">
            <div id="more">查看更多</div>
        </a>
    </div>

    <div class="bottom-nav">
        <a href="${pageContext.request.contextPath}/about/index">关于我们</a> |
        <a href="${pageContext.request.contextPath}/coop/index">商务合作</a> |
        <a href="${pageContext.request.contextPath}/about/contact">联系我们</a> |
        <a href="${pageContext.request.contextPath}/map/index">网站导航</a>
    </div>

    <div class="bottom-about">
        <hr style="border: 0;border-bottom: 1px solid #aaaaaa">
        <div>版权声明：本站是由辽宁科技大学大数据协会项目组倾力打造的商城系统，未经允许禁止将本系统用于商业用途，如经发现一律举报。</div>
        <div style="margin-top: 5px">黔ICP备18000376号 <img style="margin-bottom: -2px" src="http://icon.cnzz.com/img/pic.gif"></div>
    </div>
</div>

<script>
    $(function () {
        $(".body").scroll(function () {
            $(this).height()
        })
    })
</script>

<jsp:include page="../public/menu.jsp"/>
<jsp:include page="../public/footer.jsp"/>