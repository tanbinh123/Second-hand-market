<%@ page contentType="text/html;charset=UTF-8" %>
<jsp:include page="../public/header.jsp"/>
<jsp:include page="../public/search.jsp"/>

<style>
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
            <div class="right-div-title">申请合作</div>
            <hr style="border: 0;border-bottom: 3px solid #ff9000;margin: 0;">
            <div class="right-div-body">
                <form action="submit">
                    姓名：<input name="name"/>
                    电话：<input name="phone"/>
                    内容：<input name="content"/>
                    <button type="submit">提交</button>
                </form>
            </div>
        </div>
    </div>
</div>

<jsp:include page="../public/footer.jsp"/>