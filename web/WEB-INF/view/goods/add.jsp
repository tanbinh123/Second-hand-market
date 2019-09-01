<%@ page contentType="text/html;charset=UTF-8" %>
<jsp:include page="../public/header.jsp"/>
<jsp:include page="../public/search.jsp"/>

<style>
    .goods-data{
        width: 100%;
        margin-top: 10px;
        margin-left: 10px;
        margin-bottom: 10px;
        display: inline-block;
    }
    .goods-data-div{
        background: #ffffff;
    }
    .goods-data-title{
        font-weight: bold;
        padding: 10px 20px 10px 20px;
        border-bottom: 1px solid #cccccc;
    }
    .goods-data-menu{
        padding-left: 20px;
        padding-right: 20px;
        padding-bottom: 20px;
    }
    .goods-data-list{
        font-size: 14px;
        margin-top: 20px;
        padding: 5px;
        line-height: 40px;
        border: 1px solid #efefef;
    }
</style>

<div class="body">
    <div class="body-div" style="text-align: left; display: flex;">
        <!-- 左侧导航栏 -->
        <jsp:include page="menu.jsp"/>
        <!-- 数据信息 -->
        <div class="goods-data">
            <div class="goods-data-div">
                <div class="goods-data-title">添加商品</div>
                <div class="goods-data-menu">
                    <div class="goods-data-list">
                        <form id="uploadForm" action="upload" method="post" enctype="multipart/form-data">
                            商品图片：<input type="file" name="file"/>
                            <input type="submit" value="上传"/>
                        </form>
                        <form method="post">
                            商品名称：<input name="title" maxlength="26"/>
                            商品简介：<input name="about"/>
                            商品价格：<input name="price" maxlength="10"/>
                            <select name="classify">
                                <option>手机</option>
                                <option>电脑</option>
                                <option>学习</option>
                                <option>生活</option>
                            </select>
                            <input type="submit" value="添加商品"/>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<jsp:include page="../public/footer.jsp"/>