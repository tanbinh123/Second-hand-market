<%@ page contentType="text/html;charset=UTF-8" %>

<%
    if(request.getAttribute("msg") != null){
        out.println("<script>alert('"+request.getAttribute("msg")+"')</script>");
    }
%>

<style>
    .bottom-about{
        color: #666666;
        font-size: 12px;
        padding: 10px;
        text-align: center;
    }
</style>

<footer>
    <div class="bottom-menu">
        <table class="friend-link-list">
            <tr>
                <td><a href="${pageContext.request.contextPath}/about/index">关于我们</a></td>
                <td><span class="cut-line">&nbsp;&nbsp;</span></td>
                <td><a href="${pageContext.request.contextPath}/about/contact">联系方式</a></td>
                <td><span class="cut-line">&nbsp;&nbsp;</span></td>
                <td><a href="${pageContext.request.contextPath}/coop/index">商务合作</a></td>
                <td><span class="cut-line">&nbsp;&nbsp;</span></td>
                <td><a href="${pageContext.request.contextPath}/feedback/page">在线反馈</a></td>
                <td><span class="cut-line">&nbsp;&nbsp;</span></td>
                <td><a href="${pageContext.request.contextPath}/admin/index">后台管理</a></td>
                <td><span class="cut-line">&nbsp;&nbsp;</span></td>
            </tr>
        </table>
    </div>
    <hr class="boundary"/>
    <div class="friend-link">
        <table class="friend-link-list">
            <tr>
                <td><a href="http://taobao.com">淘宝网</a></td>
                <td><span class="cut-line">&nbsp;&nbsp;|&nbsp;&nbsp;</span></td>
                <td><a href="http://tmall.com">天猫</a></td>
                <td><span class="cut-line">&nbsp;&nbsp;|&nbsp;&nbsp;</span></td>
                <td><a href="http://xiami.com">虾米音乐</a></td>
                <td><span class="cut-line">&nbsp;&nbsp;|&nbsp;&nbsp;</span></td>
                <td><a href="http://aliyun.com">阿里云计算</a></td>
                <td><span class="cut-line">&nbsp;&nbsp;|&nbsp;&nbsp;</span></td>
                <td><a href="http://net.cn">万网</a></td>
                <td><span class="cut-line">&nbsp;&nbsp;|&nbsp;&nbsp;</span></td>
                <td><a href="http://alipay.com">支付宝</a></td>
                <td><span class="cut-line">&nbsp;&nbsp;|&nbsp;&nbsp;</span></td>
                <td><a href="http://baidu.com">百度一下</a></td>
                <td><span class="cut-line">&nbsp;&nbsp;|&nbsp;&nbsp;</span></td>
                <td><a href="http://sogou.com">搜狗搜索</a></td>
            </tr>
        </table>
    </div>
    <hr class="boundary"/>

    <div class="bottom-about">
        <div>版权声明：本站是由辽宁科技大学大数据协会项目组倾力打造的商城系统，未经允许禁止将本系统用于商业用途，如经发现一律举报，并移交公安机关处理。</div>
        <div style="margin-top: 5px">黔ICP备18000376号 <img style="margin-bottom: -2px" src="http://icon.cnzz.com/img/pic.gif"></div>
    </div>
    <div class="copyright"><%=application.getInitParameter("copyright")%> 版权所有</div>
</footer>