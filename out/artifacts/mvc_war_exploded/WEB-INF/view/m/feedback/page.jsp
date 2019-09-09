<%--
  Created by IntelliJ IDEA.
  User: cnzxo
  Date: 2019/9/10
  Time: 2:19
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
    form input, textarea{
        width: 100%;
        padding: 10px;
        font-size: 18px;
        margin-bottom: 20px;
        border: 1px solid #00aaee;
        border-radius: 5px;
    }
    form button{
        color: white;
        width: 100%;
        padding: 10px;
        font-size: 22px;
        font-weight: bold;
        background: #00aaee;
        border: 1px solid #00aaee;
        border-radius: 5px;
    }
    form textarea{
        min-height: 200px;
        max-height: 400px;
    }
</style>

<header>
    <div class="title">申请合作</div>
</header>

<div class="body">
    <div class="list">
        <form action= "add" method= "post">
            <div><h2 style="color: #00aaee">欢迎提交反馈</h2></div>
            <div><input type= "text" name= "author" size= "40" placeholder="请输入用户名"></div>
            <div><input type= "text" name= "title" size= "40" placeholder="请输入标题"></div>
            <div><textarea name= "content" rows= "10" cols= "40" placeholder="请输入反馈内容"></textarea></div>
            <div><input name= "date" type="date"></div>
            <div><button type="submit">提&nbsp;&nbsp;交</button></div>
        </form>
    </div>

    <div class="bottom-about">
        <hr style="border: 0;border-bottom: 1px solid #aaaaaa">
        <div>版权声明：本站是由辽宁科技大学大数据协会项目组倾力打造的商城系统，未经允许禁止将本系统用于商业用途，如经发现一律举报。</div>
        <div style="margin-top: 5px">黔ICP备18000376号 <img style="margin-bottom: -2px" src="http://icon.cnzz.com/img/pic.gif"></div>
    </div>
</div>

<jsp:include page="../public/menu.jsp"/>
<jsp:include page="../public/footer.jsp"/>

