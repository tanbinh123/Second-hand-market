<%@ page contentType="text/html;charset=UTF-8" %>

<style>
    .goods-nav{
        width: 200px;
        margin-top: 10px;
        margin-bottom: 10px;
        background: #ffffff;
        display: inline-block;
    }
    .goods-nav-title{
        font-weight: bold;
        padding: 10px 20px 10px 20px;
        border-bottom: 1px solid #cccccc;
    }
    .goods-nav-list{
        padding: 10px 20px 10px 20px;
        font-size: 14px;
    }
    .goods-nav-list:hover{
        color: white;
        background: #00aaee;
    }
</style>

<div class="goods-nav">
    <div class="goods-nav-title">商品管理</div>
    <a href="manager"><div class="goods-nav-list">全部商品</div></a>
    <a href="add"><div class="goods-nav-list">添加商品</div></a>
    <a href="online"><div class="goods-nav-list">上架下架</div></a>
    <a href="auction"><div class="goods-nav-list">商品拍卖</div></a>
</div>