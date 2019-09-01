<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<style>
    .user-div{
        width: 300px;
        margin-top: 10px;
        margin-bottom: 10px;
        background: #ffffff;
        display: inline-block;
    }
    .user-logo{
        width: 300px;
        padding-top: 50px;
        padding-bottom: 50px;
        text-align: center;
        background: linear-gradient(150deg, #00aaee, #00eeaa);
    }
    .user-logo-img{
        width: 80px;
        height: 80px;
        margin: 0 auto;
        border-radius: 40px;
        background: url('/static/img/login.png');
        background-size: cover;
    }
    .user-info-menu{
        width: 100%;
        text-align: center;
        box-shadow: 0 0 1px #efefef;
        background: rgba(0, 220, 180, 0.7);
    }
    .user-info-menu div{
        color: white;
        border-radius: 15px;
        font-size: 14px;
        padding-top: 2px;
        padding-bottom: 2px;
    }
    .user-info-menu div:hover{
        color: #00aaee;
        background: white;
    }
    .user-info-title{
        font-size: 14px;
        line-height: 40px;
        border-bottom: 1px solid #efefef;
        padding: 10px 30px 20px 30px;
    }
    .user-info-title div{
        border-bottom: 1px dashed #00aaee;
    }
    .user-info-body{
        color: #ffffff;
        display: flex;
        padding: 10px 20px 10px 20px;
    }
    .user-info-body a{
        color: #ffffff;
        margin: 10px auto;
        font-size: 14px;
        padding: 2px 15px 2px 15px;
        background: #ff9000;
    }
    .user-info-body a:hover{
        color: aqua;
    }
</style>

<div class="user-div">
    <div class="user-logo">
        <div class="user-logo-img">
            <img src="${info[0]}" title="志心科技" style="width: 80px;border-radius: 40px;" alt=""/>
        </div>
    </div>
    <div class="user-info">
        <table class="user-info-menu">
            <tr>
                <td><a href="/user/img"><div>修改头像</div></a></td>
                <td><a href="/user/info"><div>修改资料</div></a></td>
                <td><a href="/order/index"><div>我的订单</div></a></td>
            </tr>
        </table>
        <div class="user-info-title">
            <div>昵称：<span>${info[1]}</span></div>
            <div>账号：<span>${info[2]}</span></div>
            <div>学院：<span>${info[3]}</span></div>
            <div>宿舍：<span>${info[4]}</span></div>
        </div>
        <div class="user-info-body">
            <a href="/cart/index" title="购物车"><div>购物车</div></a>
            <a href="/collect/index" title="收藏夹"><div>收藏夹</div></a>
            <a href="/user/link" title="联系人"><div>联系人</div></a>
        </div>
    </div>
</div>