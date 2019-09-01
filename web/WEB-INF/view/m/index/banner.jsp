<%--
  Created by IntelliJ IDEA.
  User: cnzxo
  Date: 2019/8/14
  Time: 23:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>

<style>
    .body-div-banner{
        width: 100%;
        height: 120px;
        margin: 40px auto 0 auto;
    }
</style>

<div class="body-div-banner">
    <div id="lunbobox">
        <div id="toleft">&lt;</div>
        <div class="lunbo">
            <a href="#"><img src="../../static/img/banner5.png"></a>
            <a href="#"><img src="../static/img/banner4.png"></a>
            <a href="#"><img src="../static/img/banner3.png"></a>
            <a href="#"><img src="../static/img/banner2.png"></a>
            <a href="#"><img src="../static/img/banner1.png"></a>
        </div>
        <div id="toright">&gt;</div>
        <ul>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
        </ul>
        <span></span>
    </div>
</div>

<style>
    #lunbobox {
        width:100%;
        height: 120px;
        margin: 0 auto;
        position:relative;
    }
    .lunbo {
        width:100%;
        height: 120px;
    }
    .lunbo img {
        width:100%;
        height: 120px;
        position:absolute;
        top:0px;
        left:0px;
    }
    #lunbobox ul {
        width:644px;
        position:absolute;
        bottom:10px;
        right:0px;
        z-index: 1;
    }
    #lunbobox ul li {
        cursor:pointer;
        width:10px;
        height:4px;
        border:1px solid #cccccc;
        float:left;
        list-style:none;
        background:#cccccc;
        text-align:center;
        margin:0px 5px 0px 0px;
    }
    #toleft {
        top: 10px;
        width:30px;
        height:100px;
        font-size:20px;
        line-height:100px;
        text-align:center;
        color:#f4f4f4;
        position:absolute;
        cursor:pointer;
        z-index: 2;
        opacity:0.4;
    }
    #toright {
        top: 10px;
        width:30px;
        height:100px;
        font-size:20px;
        line-height:100px;
        text-align:center;
        color:#f4f4f4;
        position:absolute;
        right:0px;
        cursor:pointer;
        z-index:99;
        opacity:0.4;
    }
</style>

<script>
    $(function() {
        $('#toright').hover(function() {
            $("#toleft").hide()
        }, function() {
            $("#toleft").show()
        })
        $('#toleft').hover(function() {
            $("#toright").hide()
        }, function() {
            $("#toright").show()
        })
    })

    var t;
    var index = 0;
    t = setInterval(play, 3000)
    function play() {
        index++;
        if (index > 4) {
            index = 0
        }
        // console.log(index)
        $("#lunbobox ul li").eq(index).css({
            "background": "#999",
            "border": "1px solid #ffffff"
        }).siblings().css({
            "background": "#cccccc",
            "border": ""
        })

        $(".lunbo a ").eq(index).fadeIn(1000).siblings().fadeOut(1000);
    };
    $("#lunbobox ul li").click(function() {
        $(this).css({
            "background": "#999",
            "border": "1px solid #ffffff"
        }).siblings().css({
            "background": "#cccccc"
        })
        var index = $(this).index();
        $(".lunbo a ").eq(index).fadeIn(1000).siblings().fadeOut(1000); // siblings  找到 兄弟节点(不包括自己）
    });

    /////////////上一张、下一张切换
    $("#toleft").click(function() {
        index--;
        if (index <= 0) index = 4;
        $("#lunbobox ul li").eq(index).css({
            "background": "#999",
            "border": "1px solid #ffffff"
        }).siblings().css({
            "background": "#cccccc"
        })
        $(".lunbo a ").eq(index).fadeIn(1000).siblings().fadeOut(1000); // siblings  找到 兄弟节点(不包括自己）必须要写
    });
    $("#toright").click(function() {
        index++;
        if (index > 4) {
            index = 0
        }
        console.log(index);
        $(this).css({
            "opacity": "0.5"
        })
        $("#lunbobox ul li").eq(index).css({
            "background": "#999",
            "border": "1px solid #ffffff"
        }).siblings().css({
            "background": "#cccccc"
        })
        $(".lunbo a ").eq(index).fadeIn(1000).siblings().fadeOut(1000); // siblings  找到 兄弟节点(不包括自己）
    });
    $("#toleft,#toright").hover(function() {
            $(this).css({
                "color": "black"
            })
        },
        function() {
            $(this).css({
                "opacity": "0.3",
                "color": ""
            })
        }
    )
    $("#lunbobox ul li,.lunbo a img,#toright,#toleft ").hover(
        function() {
            $('#toright,#toleft').show()
            clearInterval(t);
        },
        function() {
            t = setInterval(play, 3000)
            function play() {
                index++;
                if (index > 4) {
                    index = 0
                }
                $("#lunbobox ul li").eq(index).css({
                    "background": "#999",
                    "border": "1px solid #ffffff"
                }).siblings().css({
                    "background": "#cccccc"
                })
                $(".lunbo a ").eq(index).fadeIn(1000).siblings().fadeOut(1000);
            }
        }
    )
</script>