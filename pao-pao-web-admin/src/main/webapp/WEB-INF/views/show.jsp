<!DOCTYPE HTML>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>匹配展示_泡泡社交</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Marital Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <link href="/static/cpts/css/bootstrap-3.1.1.min.css" rel='stylesheet' type='text/css' />
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="/static/cpts/js/jquery.min.js"></script>
    <script src="/static/cpts/js/bootstrap.min.js"></script>
    <!-- Custom Theme files -->
    <link href="/static/cpts/css/style.css" rel='stylesheet' type='text/css' />
    <!----font-Awesome----->
    <link href="/static/cpts/css/font-awesome.css" rel="stylesheet">
    <!----font-Awesome----->
    <script>
        $(document).ready(function(){
            $(".dropdown").hover(
                function() {
                    $('.dropdown-menu', this).stop( true, true ).slideDown("fast");
                    $(this).toggleClass('open');
                },
                function() {
                    $('.dropdown-menu', this).stop( true, true ).slideUp("fast");
                    $(this).toggleClass('open');
                }
            );
        });
    </script>
</head>
<body>
<!-- ============================  Navigation Start =========================== -->
<%@ include file="include/nav.jsp" %>
<!-- ============================  Navigation End ============================ -->
<div class="grid_3">
    <div class="container">
        <div class="breadcrumb1">
            <ul>
                <a href="/main"><i class="fa fa-home home_1">首页</i></a>
                <span class="divider">&nbsp;|&nbsp;</span>
                <li class="current-page">匹配结果</li>
            </ul>
        </div>

    <div class="col-md-9 profile_left2">
        <c:forEach var="user"  items="${list}">

            <div class="profile_top">
                <h2>${user.username}</h2>
                <div class="col-sm-3 profile_left-top">
                    <img src="/static/upload/${user.headPic}" class="img-responsive" alt="img"/>
                </div>
                <div class="col-sm-3">
                    <ul class="login_details1">
                        <li><p>${user.userDesc}</p></li>
                    </ul>
                </div>
                <div class="col-sm-6">
                    <table class="table_working_hours">
                        <tbody>
                        <tr class="opened_1">
                            <td class="day_label1">性别:</td>
                            <td class="day_value">${user.sex}</td>
                        </tr>
                        <tr class="opened">
                            <td class="day_label1">年龄:</td>
                            <td class="day_value">${user.age}</td>
                        </tr>
                        <tr class="opened">
                            <td class="day_label1">身高:</td>
                            <td class="day_value">${user.height}cm</td>
                        </tr>
                        <tr class="opened">
                            <td class="day_label1">城市:</td>
                            <td class="day_value">${user.city}</td>
                        </tr>
                        </tbody>
                    </table>
                    <div class="buttons">
                        <a href="/other/info?id=${user.id}"><div class="vertical">进入"他/她"的空间</div></a>
                        <a><div class="vertical">加个好友？</div></a>
                    </div>
                </div>
                <div class="clearfix"> </div>
            </div>
        </c:forEach>
    </div>
        <div class="col-md-3 match_right">
            <ul class="menu">
                <li class="item1"><h3 class="m_2">希望在这里您能"泡"到另一半~</h3>
                    <ul class="cute">
                        <li class="subitem1"><a href="#">"泡"~很简单</a></li>
                    </ul>
                </li>
                <li class="item1"><h3 class="m_2">脱单组参上！</h3>
                    <ul class="cute">
                        <li class="subitem1"><a href="#">Naruto</a></li>
                    </ul>
                </li>
                <li class="item1"><h3 class="m_2">欢迎推荐给别人！</h3>
                    <ul class="cute">
                        <li class="subitem1"><a href="#">我们开发小组期待您的支持！</a></li>
                    </ul>
                </li>
            </ul>
        </div>
        <div class="clearfix"> </div>
    </div>
</div>
<%@ include file="include/footer.jsp" %>
</body>
</html>