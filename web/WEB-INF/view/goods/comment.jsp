<%@ page contentType="text/html;charset=UTF-8" %>

<style>
    .comment{
        display: flex;
        overflow: hidden;
        padding-left: 10px;
        padding-right: 10px;
    }
    .comment-left{
        width: 640px;
    }
    .comment-right{
        margin-left: 20px;
        width: 330px;
    }
    .comment-div{
        padding: 10px;
        margin-top: 5px;
        border-radius: 5px;
        margin-bottom: 15px;
        border: 1px solid #00aaee;
    }
    .comment-content{
        font-size: 14px;
        line-height: 20px;
        height: 70px;
    }
    .comment-time{
        font-size: 12px;
        text-align: right;
    }
</style>

<div class="comment">
    <div class="comment-left">
        <div>评论列表</div>
        <div class="comment-list"></div>
    </div>
    <div class="comment-right">
        <div>我的评论</div>
        <div><input class="nickname" style="width: 300px;padding: 5px;margin-top: 5px" placeholder="请输入昵称"/></div>
        <div><textarea class="content" name="content" style="min-height: 100px;min-width: 302px;margin-top: 10px;padding: 5px" placeholder="请输入评论内容"></textarea></div>
        <div><input class="submit" type="button" value="提 交" style="margin-top: 5px;padding: 5px 50px 5px 50px;border: 0;color: white;background: #00aaee"/></div>
    </div>
</div>

<script>
    $(function () {
        $.post("comment_list", {gid:'<%=request.getParameter("gid")%>'}, function (res) {
            let list = res;
            let html = "";
            for(let i = 0; i<list.length;i++){
                html += "<div class='comment-div'>";
                html += "<div class='comment-content'>";
                html += "<div>昵 称：" + (list[i].nickname!='null'?list[i].nickname:"转转网") + "</div>";
                html += "<div>内 容：" + (list[i].content!='null'?list[i].content:"转转网") + "</div></div><hr style='margin: 0'>";
                html += "<div class='comment-time'>" + list[i].date + "</div>";
                html += "</div>"
            }
            $(".comment-list").html(html);
        });
        $(".submit").click(function () {
            $.post("comment", {gid:'<%=request.getParameter("gid")%>', nickname:$(".nickname").val(), content:$(".content").val()}, function () {
                alert("提交成功");
                location.reload();
            })
        })
    })
</script>