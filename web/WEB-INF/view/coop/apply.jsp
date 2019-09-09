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
        padding: 0 20px 10px 20px;
    }
    form{
        display: flex;
    }
    .form-left, .form-right{
        width: 50%;
    }
    .form-left input{
        width: 428px;
        padding: 10px;
        font-size: 18px;
        background: white;
        margin-bottom: 20px;
        border-radius: 5px;
        border: 1px solid #00aaee;
    }
    .form-left button{
        color: white;
        width: 450px;
        padding: 10px;
        font-size: 18px;
        font-weight: bold;
        background: #00aaee;
        margin-bottom: 20px;
        border-radius: 5px;
        border: 1px solid #00aaee;
    }
    .form-right textarea{
        width: 450px;
        padding: 10px;
        font-size: 18px;
        background: white;
        margin-bottom: 20px;
        border-radius: 5px;
        min-height: 150px;
        max-height: 150px;
        min-width: 450px;
        max-width: 450px;
        border: 1px solid #00aaee;
    }
</style>

<div class="body">
    <div class="body-div" style="display: flex">
        <jsp:include page="menu.jsp"/>
        <div class="right-div">
            <div class="right-div-title">申请合作</div>
            <hr style="border: 0;border-bottom: 3px solid #ff9000;margin: 0;">
            <div class="right-div-body">
                <div><h2 style="color: #00aaee">填写申请书</h2></div>
                <form action="submit">
                    <div class="form-left" style="display: block">
                        <div><input name="name" placeholder="请输入姓名"/></div>
                        <div><input name="phone" placeholder="请输入手机号"/></div>
                        <div><button type="submit">提&nbsp;&nbsp;交</button></div>
                    </div>
                    <div class="form-right">
                        <textarea name="content" placeholder="请输入申请理由"></textarea>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<jsp:include page="../public/footer.jsp"/>