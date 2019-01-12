<!DOCTYPE HTML>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->

<html>
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
    <title>用户注册_泡泡社交</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Marital Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <script type="text/javascript">
        function disable()
        {
            document.getElementById("accept").disabled=true
        }
        function enable()
        {
            document.getElementById("accept").disabled=false
        }
    </script>
    <%--DropZone--%>
    <link rel="stylesheet" href="/static/assets/global/plugins/dropzone/dropzone.min.css" />
    <link rel="stylesheet" href="/static/assets/global/plugins/dropzone/basic.min.css" />
    <%--DropZone--%>
    <link href="/static/cpts/css/bootstrap-3.1.1.min.css" rel='stylesheet' type='text/css' />

    <!-- Custom Theme files -->
    <link href="/static/cpts/css/style.css" rel='stylesheet' type='text/css' />
    <!----font-Awesome----->
    <link href="/static/cpts/css/font-awesome.css" rel="stylesheet">
    <!----font-Awesome----->
    <!----city Select----->
    <link href="/static/selectcity/css/cityselect.css" rel="stylesheet">
    <!----city Select----->

    <%--choose sex--%>
    <style>
        .demo--label{margin:20px 20px 0 0;display:inline-block}
        .demo--radio{display:none}
        .demo--radioInput{background-color:#fff;border:2px solid rgba(0,0,0,0.15);border-radius:100%;display:inline-block;height:36px;margin-right:10px;margin-top:-1px;vertical-align:middle;width:36px;line-height:1}
        .demo--radio:checked + .demo--radioInput:after{background-color:#c32143;border-radius:100%;content:"";display:inline-block;height:26px;margin-left:3px;margin-top:3px;width:26px}
        .demo--checkbox.demo--radioInput,.demo--radio:checked + .demo--checkbox.demo--radioInput:after{border-radius:0}
        .demo--radio:checked + .demo--radioInput{border:2px solid #c32143;}
    </style>
    <%--choose sex--%>
</head>
<body>
<!-- ============================  Navigation Start =========================== -->
<div class="navbar navbar-inverse-blue navbar">
    <!--<div class="navbar navbar-inverse-blue navbar-fixed-top">-->
    <div class="navbar-inner">
        <div class="container">
            <div class="navigation">

            </div>
            <a class="brand" href="/main"><img src="/static/cpts/images/logo1.png" alt="logo"></a>
            <div class="pull-right">
                <nav class="navbar nav_bottom" role="navigation">
                </nav>
            </div> <!-- end pull-right -->
            <div class="clearfix"> </div>
        </div> <!-- end container -->
    </div> <!-- end navbar-inner -->
</div>
<!-- ============================  Navigation End ============================ -->
<div class="grid_3">
    <div class="container">
        <div class="breadcrumb1">
            <ul>
                <a href="/main"><i class="fa fa-home home_1">首页</i></a>
                <span class="divider">&nbsp;|&nbsp;</span>
                <li class="current-page">用户注册</li>
            </ul>
        </div>
        <div class="services">
            <div class="col-sm-6 login_left">
                <form id="inputForm" action="/add" method="post">
                    <input type="hidden" name="id" />
                    <input type="hidden" name="status" value="1" />
                    <div class="form-group">
                        <label >用户名 <span class="form-required" title="This field is required.">*</span></label>
                        <input type="text"  name="username"  size="60" maxlength="60" class="form-text required"/>
                    </div>
                    <div class="form-group">
                        <label >密码 <span class="form-required" title="This field is required.">*</span></label>
                        <input type="password"  name="password" size="60" maxlength="128" class="form-text required"/>
                    </div>
                    <div class="form-group">
                        <label >性别 </label>
                        <label class="demo--label">
                            <input class="demo--radio " type="radio" name="sex" value="男" checked/>
                            <span class="demo--radioInput"></span>男
                        </label>
                        <label class="demo--label">
                            <input class="demo--radio " type="radio" name="sex" value="女">
                            <span class="demo--radioInput"></span>女
                        </label>
                    </div>
                    <div class="form-group" id="demo">
                        <label >城市<span class="form-required" title="This field is required.">*</span></label>
                        <input id="city" type="text" name="city" size="60" maxlength="60" class="form-text required"/>
                    </div>
                    <div class="form-group">
                        <label >年龄 <span class="form-required" title="This field is required.">*</span></label>
                        <input  name="age" type="text" size="60" maxlength="60" class="form-control required"/>
                    </div>
                    <div class="form-group">
                        <label >身高 <span class="form-required" title="This field is required.">*</span></label>
                        <input type="text" name="height"  size="60" maxlength="60" class="form-text required"/>
                    </div>
                    <div class="form-group">
                        <label >手机号码 <span class="form-required" title="This field is required.">*</span></label>
                        <input type="text" name="phone"  size="60" maxlength="60" class="form-text  required mobile"/>
                    </div>
                    <div class="form-group">
                        <label >邮箱地址 <span class="form-required" title="This field is required."></span></label>
                        <input type="text" name="email" size="60" maxlength="60" class="form-text email">
                    </div>
                    <div class="form-group">
                        <label >上传头像 <span class="form-required" title="This field is required."></span></label>
                        <input type="hidden" id="headPic" name="headPic"  size="60" maxlength="60" class="form-text "/>
                        <div id="dropz" class="dropzone dropzone-file-area">
                            <h3 class="sbold">拖动文件到这里或点击上传</h3>
                            <%--<p> 文件上传 </p>--%>
                        </div>
                    </div>
                    <div class="form-group">
                        <label >个性签名 <span class="form"></span></label>
                        <textarea name="userDesc" class="form-control bio" placeholder="" rows="3"></textarea>
                    </div>
                    <div class="form-group margin-top-20 margin-bottom-20">
                        <label class="mt-checkbox mt-checkbox-outline ">
                            <input type="checkbox" name="tnc" onclick="if (this.checked) {enable()} else {disable()}"/> 我已阅读并同意
                            <a href="javascript:;"> 《泡泡用户注册协议》 </a>
                            <span></span>
                        </label>
                        <%--<input type="hidden" class="form-control required"/>--%>
                        <div id="register_tnc_error"> </div>
                    </div>
                    <div class="form-actions">
                        <input type="submit" id="accept"  disabled="true" value="注册" class="btn_1 submit"/>
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

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="/static/cpts/js/jquery.min.js"></script>
<script src="/static/cpts/js/bootstrap.min.js"></script>
<!-- jQuery Validation 1.14.0 -->
<script src="/static/assets/global/plugins/jquery-validation/js/jquery.validate.min.js"></script>
<script src="/static/assets/global/plugins/jquery-validation/js/additional-methods.min.js"></script>
<script src="/static/assets/global/plugins/jquery-validation/js/localization/messages_zh.min.js"></script>
<%--SelectCity--%>
<script src="/static/selectcity/js/cityselect.js"></script>
<%--SelectCity--%>
<%--DropZone--%>
<script src="/static/assets/global/plugins/dropzone/dropzone.min.js"></script>
<%--DropZone--%>
<%--App--%>
<script src="static/assets/apps/model/validate.js"></script>
<script>
    var test=new Vcity.CitySelector({input:'city'});

    var myDropzone = new Dropzone("#dropz", {
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
</script>
</body>
</html>