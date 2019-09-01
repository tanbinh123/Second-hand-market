<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<%@ page contentType="text/html;charset=UTF-8"%>

<div class="head">
    <div class="head-div">
        <div class="logo">
            <a href="../../">
                <img src="../static/img/logo.png" width="200px" title="转转网"/>
            </a>
        </div>
        <div class="search">
            <form action="/find/index">
                <div class="search-left">
                    <input name="keyword" class="search-input" placeholder="🔍 手机 电脑 课本 衣服 鞋"/>
                </div>
                <div class="search-right">
                    <input type="submit" class="search-button" value="搜索"/>
                </div>
            </form>
        </div>
        <div class="contact">
            <a href="wtai://wp/mc;15121355220">客服热线：15121355220</a>
        </div>
    </div>
    <div class="head-menu">
        <div class="head-menu-list">
            <div class="menu-main">
                <a href="/goods/list"><div style="width: 100%;color: white">全部分类</div></a>
                <div class="menu-main-drop">
                    <div class="menu-main-list">
                        <%
                            List classify = (List)request.getAttribute("classify");
                            for(int i=0; i<classify.size(); i++){
                                Map map = (Map)classify.get(i);
                                for(Object key : map.keySet()) {
                                    if("path".equals(key)){
                                        out.print("<a href=\"");
                                        out.print(map.get(key));
                                        out.print("\">");
                                    }
                                }
                                for(Object key : map.keySet()) {
                                    if("name".equals(key)){
                                        out.print(map.get(key));
                                        out.print("</a>");
                                    }
                                }
                                for(Object key : map.keySet()) {
                                    if("next".equals(key)){
                                        int n = Integer.parseInt(map.get(key).toString());
                                        if(n == 1){
                                            out.print("<br>");
                                        }
                                        else{
                                            out.print(" / ");
                                        }
                                    }
                                }
                            }
                        %>
                    </div>
                </div>
            </div>
            <div class="menu-nav-list"><a href="/goods/list?classify=手机">手机</a></div>
            <div class="menu-nav-list"><a href="/goods/list?classify=电脑">电脑</a></div>
            <div class="menu-nav-list"><a href="/goods/list?classify=学习">学习</a></div>
            <div class="menu-nav-list"><a href="/goods/list?classify=办公">办公</a></div>

        </div>
    </div>
</div>