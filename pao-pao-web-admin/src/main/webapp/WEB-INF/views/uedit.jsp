<!DOCTYPE HTML>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户个人信息编辑_泡泡社交</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Marital Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <link href="/static/cpts/css/bootstrap-3.1.1.min.css" rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="/static/assets/global/plugins/dropzone/dropzone.min.css" />
    <link rel="stylesheet" href="/static/assets/global/plugins/dropzone/basic.min.css" />
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
                <li class="current-page">用户个人信息编辑</li>
            </ul>
        </div>
        <div class="services">
            <div class="col-sm-6 login_left">
                <form action="/edit" method="post">

                    <input type="hidden" name="id" value="${user.id}"/>
                    <div class="form-group">
                        <label for="edit-name">用户名 <span class="form-required" title="This field is required.">*</span></label>
                        <input type="text"  id="edit-name" name="username" value="${user.username}" size="60" maxlength="60" class="form-text required">
                    </div>
                    <div class="form-group">
                        <label for="edit-name">邮箱地址 <span class="form-required" title="This field is required.">*</span></label>
                        <input type="text"  name="email" value="${user.email}" size="60" maxlength="60" class="form-text required">
                    </div>
                    <div class="form-group">
                        <label for="edit-name">性别 <span class="form-required" title="This field is required.">*</span></label>
                        <input type="text"  name="sex" value="${user.sex}" size="60" maxlength="60" class="form-text required">
                    </div>
                    <div class="form-group">
                        <label for="edit-name">年龄 <span class="form-required" title="This field is required.">*</span></label>
                        <input type="text"  name="age" value="${user.age}" size="60" maxlength="60" class="form-text required">
                    </div>
                    <div class="form-group">
                        <label for="edit-name">身高 <span class="form-required" title="This field is required.">*</span></label>
                        <input type="text"  name="height" value="${user.height}" size="60" maxlength="60" class="form-text required">
                    </div>
                    <div class="form-group">
                        <label for="edit-name">城市 <span class="form-required" title="This field is required.">*</span></label>
                        <input type="text" name="city" value="${user.city}" size="60" maxlength="60" class="form-text required">
                    </div>
                    <div class="form-group">
                        <label for="edit-name">联系方式 <span class="form-required" title="This field is required.">*</span></label>
                        <input type="text"  name="phone" value="${user.phone}" size="60" maxlength="60" class="form-text required">
                    </div>
                    <div class="form-group">
                        <label for="edit-name">头像上传（限1张） </label>
                        <input  id="headPic" type="hidden"  name="headPic" value="" size="60" maxlength="60" class="form-text">
                    </div>
                    <div id="dropz_headPic" class="dropzone" >
                    </div>
                    <div class="form-group">
                        <label for="edit-name">生活照上传（限4张）</label>
                        <input  id="pic" type="hidden"  name="pic" value="" size="60" maxlength="60" class="form-text">
                    </div>
                    <div id="dropz_pic" class="dropzone">
                    </div>
                    <div class="form-group">
                        <label for="edit-name">个性签名 <span class="form"></span></label>
                        <input type="text" name="userDesc" class="form-control bio" rows="3" value="${user.userDesc}" class="form-text">
                    </div>
                    <div class="form-actions">

                            <input type="submit" id="edit-submit" name="op" value="确定修改？" class="btn_1 submit">

                        <a href="/info">
                            <input type="button" id="ri" name="ri" value="返回您的空间"  class="btn_1">
                        </a>
                    </div>

                </form>
            </div>
            <div class="col-sm-6">
                <ul class="sharing">
                    <li><a href="#" class="facebook" title="Facebook"><i class="fa fa-boxed fa-fw fa-facebook"></i> 通过Facebook关注我们</a></li>
                    <li><a href="#" class="mail" title="Email"><i class="fa fa-boxed fa-fw fa-envelope-o"></i> 通过E-mail联系我们</a></li>
                </ul>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<%@ include file="include/footer.jsp" %>
<script src="/static/assets/global/plugins/dropzone/dropzone.min.js"></script>
<script>
    var myDropzone = new Dropzone("#dropz_headPic", {
        url: "/upload",
        dictDefaultMessage: '拖动文件至此或者点击上传', // 设置默认的提示语句
        paramName: "dropzFile", // 传到后台的参数名称
        init: function () {
            this.on("success", function (file, data) {
                // 上传成功触发的事件
                $("#headPic").val(data.fileName);
            });
        }
    });

    var myDropzone2 = new Dropzone("#dropz_pic", {
        url: "/upload",
        dictDefaultMessage: '拖动文件至此或者点击上传', // 设置默认的提示语句
        paramName: "dropzFile", // 传到后台的参数名称
        init: function () {
            this.on("success", function (file, data) {
                // 上传成功触发的事件
                $("#pic").val(data.fileName);
            });
        }
    });

</script>
</body>
</html>