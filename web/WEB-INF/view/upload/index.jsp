<%@ page contentType="text/html;charset=UTF-8" %>
<jsp:include page="../public/header.jsp"/>
<jsp:include page="../public/search.jsp"/>

<div class="body">
    <div class="body-div" style="text-align: left;">
        <form action="/upload/upload" method="post"  enctype="multipart/form-data">
            <h1>采用流的方式上传文件</h1>
            <input type="file" name="file">
            <input type="submit" value="upload"/>
        </form>
        <%
            if(request.getAttribute("imgUrl") != null){
                out.print("<img src=\""+request.getAttribute("imgUrl")+"\"/>");
            }
        %>
    </div>
</div>

<jsp:include page="../public/footer.jsp"/>