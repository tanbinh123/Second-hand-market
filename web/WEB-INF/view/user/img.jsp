<%@ page contentType="text/html;charset=UTF-8" %>
<jsp:include page="../public/header.jsp"/>
<jsp:include page="../public/search.jsp"/>

<style>
    .user-body{
        width: 100%;
        margin: 10px;
        background: white;
        display: inline-block;
    }
    .user-body-head{
        color: white;
        padding: 5px 10px 5px 10px;
        font-weight: bold;
        background: #ff9000;
    }
</style>

<div class="body">
    <div class="body-div" style="text-align: left;display: flex">
        <jsp:include page="../public/userdiv.jsp"/>
        <div class="user-body">
            <div class="user-body-head">修改资料</div>
            <div style="padding: 20px;">
                <div style="padding: 20px;border: 1px solid #00aaee">
                    <img src="${info[0]}" width="200px" title="志心科技" alt=""/>
                </div>
                <form action="/user/userImg" method="post" enctype="multipart/form-data">
                    <div style="padding: 20px;border: 1px solid #00aaee;margin-top: 10px">
                        <input type="file" name="file"/>
                        <input type="submit" value="上传头像" style="padding: 5px 30px 5px 30px;background: #00aaee;border: 0;color: white;cursor: pointer"/>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<jsp:include page="../public/footer.jsp"/>