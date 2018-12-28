<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8" />
    <title>后台数据展示-泡泡社交</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1" name="viewport" />
    <meta content="Preview page of Metronic Admin Theme #2 for responsive bootstrap table demos" name="description" />
    <meta content="" name="author" />
    <!-- BEGIN GLOBAL MANDATORY STYLES -->
    <link href="/static/assets/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="/static/assets/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css" />
    <link href="/static/assets/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="/static/assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css" rel="stylesheet" type="text/css" />
    <!-- END GLOBAL MANDATORY STYLES -->
    <!-- BEGIN THEME GLOBAL STYLES -->
    <link href="/static/assets/global/css/components-rounded.min.css" rel="stylesheet" id="style_components" type="text/css" />
    <link href="/static/assets/global/css/plugins.min.css" rel="stylesheet" type="text/css" />
    <!-- END THEME GLOBAL STYLES -->
    <!-- BEGIN THEME LAYOUT STYLES -->
    <link href="/static/assets/layouts/layout2/css/layout.min.css" rel="stylesheet" type="text/css" />
    <link href="/static/assets/layouts/layout2/css/themes/blue.min.css" rel="stylesheet" type="text/css" id="style_color" />
    <link href="/static/assets/layouts/layout2/css/custom.min.css" rel="stylesheet" type="text/css" />
    <!-- END THEME LAYOUT STYLES -->
</head>
<!-- END HEAD -->

<body class="page-header-fixed page-sidebar-closed-hide-logo page-container-bg-solid">
<!-- BEGIN HEADER -->
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">
                <img alt="Logo" src="/static/assets/pages/img/login/logo2.png">
            </a>
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">菜单导航</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">泡泡交友</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">

            <div class="navbar-form navbar-right">
                <a href="/admin/logout">
                    <button class="btn btn-default">退出登录</button>
                </a>
            </div>
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">更多功能<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">敬请期待</a></li>
                    </ul>
                </li>

            </ul>
        </div>
    </div>
</nav>
<!-- END HEADER -->

<!-- BEGIN HEADER & CONTENT DIVIDER -->
<!-- END HEADER & CONTENT DIVIDER -->
<!-- BEGIN CONTAINER -->
<div class="page-container">
    <!-- BEGIN SIDEBAR -->
    <div class="page-sidebar-wrapper">
        <!-- END SIDEBAR -->
        <!-- DOC: Set data-auto-scroll="false" to disable the sidebar from auto scrolling/focusing -->
        <!-- DOC: Change data-auto-speed="200" to adjust the sub menu slide up/down speed -->
        <div class="page-sidebar navbar-collapse collapse">
            <ul class="page-sidebar-menu  page-header-fixed page-sidebar-menu-hover-submenu " data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200">
                <li class="nav-item start ">
                    <a href="/admin/adindex" class="nav-link nav-toggle">
                        <i class="icon-home"></i>
                        <span class="title">后台主页</span>
                        <span class="arrow"></span>
                    </a>
                </li>
                <li class="nav-item  ">
                    <a href="javascript:;" class="nav-link nav-toggle">
                        <i class="icon-user"></i>
                        <span class="title">用户管理</span>
                        <span class="arrow"></span>
                    </a>
                    <ul class="sub-menu">
                        <li class="nav-item  ">
                            <a href="/admin/adlist" class="nav-link ">
                                <span class="title">用户信息列表</span>
                            </a>
                        </li>
                        <li class="nav-item  ">
                            <a href="#" class="nav-link ">
                                <span class="title">更多功能</span>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="nav-item  ">
                    <a href="javascript:;" class="nav-link nav-toggle">
                        <i class="icon-bar-chart"></i>
                        <span class="title">数据表</span>
                        <span class="arrow"></span>
                    </a>
                    <ul class="sub-menu">
                        <li class="nav-item">
                            <a href="#" class="nav-link ">
                                <span class="title">敬请期待</span>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a href="javascript:;" class="nav-link nav-toggle">
                        <i class="icon-doc"></i>
                        <span class="title">文件公告</span>
                        <span class="arrow"></span>
                    </a>
                    <ul class="sub-menu">
                        <li class="nav-item">
                            <a href="#" class="nav-link ">
                                <span class="title">敬请期待</span>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="nav-item  active open">
                    <a href="javascript:;" class="nav-link nav-toggle">
                        <i class="icon-wrench"></i>
                        <span class="title">设置</span>
                        <span class="selected"></span>
                        <span class="arrow open"></span>
                    </a>
                    <ul class="sub-menu">
                        <li class="nav-item">
                            <a href="#" class="nav-link ">
                                <span class="title">敬请期待</span>
                            </a>
                        </li>
                    </ul>
                </li>
            </ul>
            <!-- END SIDEBAR MENU -->
        </div>
        <!-- END SIDEBAR -->
    </div>
    <!-- END SIDEBAR -->
    <!-- BEGIN CONTENT -->
    <div class="page-content-wrapper">
        <!-- BEGIN CONTENT BODY -->
        <div class="page-content">
            <!-- BEGIN PAGE HEADER-->
            <h1 class="page-title"> 泡泡后台管理
            </h1>
            <div class="page-bar">
                <ul class="page-breadcrumb">
                    <li>
                        <i class="icon-home"></i>
                        <a href="/admin/adindex">主页</a>
                    </li>
                </ul>
            </div>

            <div class="row search-area " style="display: none;">
                <div class="col-md-12">
                    <div class="portlet light bordered">
                        <div class="portlet-title">
                            <div class="caption">
                                <span class="caption-subject bold uppercase " style="color:#32c5d2">高级搜索</span>
                            </div>
                        </div>
                        <div class="portlet-body form">
                            <!-- BEGIN FORM-->
                            <div class="horizontal-form">
                                <div class="form-body">
                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label class="control-label">姓名</label>
                                                <input id="username" type="text" class="form-control" placeholder="姓名">
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label class="control-label">手机</label>
                                                <input id="phone" type="text" class="form-control" placeholder="手机">
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label class="control-label">邮箱</label>
                                                <input id="email" type="text" class="form-control" placeholder="邮箱">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-actions right">
                                    <button type="button" class="btn green" onclick="search();"> 搜索</button>
                                </div>
                            </div>
                            <!-- END FORM-->
                        </div>
                    </div>
                </div>
            </div>
            <!-- END PAGE HEADER-->

            <div class="row">
                <div class="col-md-12">
                    <!-- BEGIN SAMPLE TABLE PORTLET-->
                    <div class="portlet box green">
                        <div class="portlet-title">
                            <div class="caption">
                                <i class="fa fa-cogs"></i>用户数据管理</div>
                            <div class="tools">
                                <a href="javascript:;" class="collapse"> </a>
                            </div>
                            <div class="actions">
                                <a class="btn btn-circle  btn-default" href="javascript:;" title="搜索" onclick="$('.search-area').toggle('fast');">
                                    <i class="icon-magnifier"></i>
                                </a>
                            </div>
                        </div>

                        <div class="portlet-body flip-scroll">
                            <table id="dataTable" class="table table-bordered table-striped table-condensed flip-content">
                                <thead class="flip-content">
                                <tr>
                                    <th> 姓名 </th>
                                    <th> 密码 </th>
                                    <th> 性别 </th>
                                    <th> 年龄 </th>
                                    <th> 身高 </th>
                                    <th> 城市 </th>
                                    <th> 手机 </th>
                                    <th> 邮箱 </th>
                                    <th> 个性签名 </th>
                                    <th> 头像 </th>
                                    <th> 生活照</th>
                                    <th> 用户状态</th>
                                    <th> 操作1</th>
                                    <th> 操作2</th>
                                </tr>
                                </thead>
                            </table>
                        </div>
                    </div>
                    <!-- END SAMPLE TABLE PORTLET-->

                </div>
            </div>
        </div>
        <!-- END CONTENT BODY -->
    </div>
    <!-- END CONTENT -->

    <!-- FOOTER -->
    <div class="page-footer" style="text-align: center">
        <div class="page-footer-inner"> 2018 &copy; PaoPaoKeJi
            <div class="scroll-to-top">
                <i class="icon-arrow-up"></i>
            </div>
        </div>
        <!-- END FOOTER -->
    </div>
</div>
<!-- END CONTAINER -->


<!-- BEGIN CORE PLUGINS -->
<script src="/static/assets/global/plugins/jquery.min.js" type="text/javascript"></script>
<script src="/static/assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="/static/assets/global/plugins/js.cookie.min.js" type="text/javascript"></script>
<script src="/static/assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<script src="/static/assets/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
<script src="/static/assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js" type="text/javascript"></script>
<!-- END CORE PLUGINS -->
<!-- BEGIN THEME GLOBAL SCRIPTS -->
<script src="/static/assets/global/scripts/app.min.js" type="text/javascript"></script>
<!-- END THEME GLOBAL SCRIPTS -->
<!-- BEGIN THEME LAYOUT SCRIPTS -->
<script src="/static/assets/layouts/layout2/scripts/layout.min.js" type="text/javascript"></script>
<script src="/static/assets/layouts/layout2/scripts/demo.min.js" type="text/javascript"></script>
<script src="/static/assets/layouts/global/scripts/quick-sidebar.min.js" type="text/javascript"></script>
<script src="/static/assets/layouts/global/scripts/quick-nav.min.js" type="text/javascript"></script>
<!-- END THEME LAYOUT SCRIPTS -->

<script src="/static/assets/global/scripts/datatable.js" type="text/javascript"></script>
<script src="/static/assets/global/plugins/datatables/datatables.min.js" type="text/javascript"></script>
<script src="/static/assets/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.js" type="text/javascript"></script>
<script src="/static/assets/apps/modal/datatables.js" type="text/javascript"></script>
<script>
    var grid;
    $(function () {
        grid = DataTables.initDataTable("/page", [
            { "data": "username" },
            { "data": "password" },
            { "data": "sex" },
            { "data": "age" },
            { "data": "height" },
            { "data": "city" },
            { "data": "phone" },
            { "data": "email" },
            { "data": "userDesc" },
            { "data": "headPic" },
            { "data": "pic" },
            { "data": "status" },
            {
                "data": function (row, type, set, meta) {
                    return'<a href="/admin/callback?id='+row.id+'" class="btn default green-stripe">还原</a>';
                }
            },
            {
                "data": function (row, type, set, meta) {
                    return'<a href="/admin/delete?id='+row.id+'" class="btn default red-stripe">删除</a>';
                }
            }
        ]);
    });

    function search() {
        var username = $("#username").val();
        var phone = $("#phone").val();
        var email = $("#email").val();

        if (username.length != 0) {
            grid.setAjaxParam("username", username);
        }

        if (phone.length != 0) {
            grid.setAjaxParam("phone", phone);
        }

        if (email.length != 0) {
            grid.setAjaxParam("email", email);
        }

        // 重新加载 Ajax 数据
        grid.getDataTable().ajax.reload();

        // 清理传递的参数
        grid.clearAjaxParams();
    }


</script>


</body>

</html>