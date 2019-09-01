<%@ page contentType="text/html;charset=UTF-8" %>
<jsp:include page="../public/header.jsp"/>
<jsp:include page="../public/search.jsp"/>

<div class="body">
    <div class="body-div" style="text-align: left;">
        <!-- 提交表单 -->
        <form method="post">
            店铺名：<input name="title"/>
            店铺简介：<input name="about"/>
            <input type="submit" value="提交申请"/>
        </form>
    </div>
</div>

<jsp:include page="../public/footer.jsp"/>