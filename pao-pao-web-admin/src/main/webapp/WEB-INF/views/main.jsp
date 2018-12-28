<!DOCTYPE HTML>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head5r>
    <title>首页_泡泡社交</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Marital Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <link href="/static/cpts/css/bootstrap-3.1.1.min.css" rel='stylesheet' type='text/css' />
    <link rel="stylesheet" type="text/css" href="/static/cpts/css/audio.css">
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
</head5r>
<body>
<!-- ============================  Navigation Start =========================== -->
<%@ include file="include/nav.jsp" %>
<!-- ============================  Navigation End ============================ -->
<div class="banner">
    <div class="container">
        <div class="banner_info">
            <a href="/info?id=${sessionScope.user.id}" class="hvr-shutter-out-horizontal">查看您的个人空间</a>
        </div>
    </div>
    <div class="profile_search">
        <div class="container wrap_1">
            <form action="/show">
                <div class="search_top">
                    <div class="inline-block">
                        <label class="gender_1">我正在寻找着...</label>
                    </div>
                    <div class="inline-block">
                        <label class="gender_1">您希望的对象性别是：</label>
                        <input type="text" name="sex" size="30" maxlength="30" class="form-text required">
                    </div>
                    <div class="inline-block">
                        <label class="gender_1">请输入您的城市：</label>
                        <input type="text" name="city" size="30" maxlength="30" class="form-text required">
                    </div>
                </div>
                <div class="submit inline-block">
                    <input id="submit-btn" class="hvr-wobble-vertical" type="submit" value="开始匹配">
                </div>
            </form>
        </div>
    </div>
</div>
<div class="grid_1">
    <div class="container">
        <h1>"泡"出你所爱</h1>
        <div class="heart-divider">
            <span class="grey-line"></span>
            <i class="fa fa-heart pink-heart"></i>
            <i class="fa fa-heart grey-heart"></i>
            <span class="grey-line"></span>
        </div>
        <ul id="flexiselDemo3">
            <li><div class="col_1">
                <a href="view_profile.html">
                <img src="/static/cpts/images/1.jpg" alt="img" class="hover-animation image-zoom-in img-responsive"/>
                <div class="layer m_1 hidden-link hover-animation delay1 fade-in">
                    <div class="center-middle">认识"他/她？"</div>
                </div>
                <h3><br>20, 锋桑, 广州<br>单身</h3>
            </a>
            </div>
            </li>
            <li><div class="col_1">
                <a href="view_profile.html">
                    <img src="/static/cpts/images/5.jpg" alt="img" class="hover-animation image-zoom-in img-responsive"/>
                    <div class="layer m_1 hidden-link hover-animation delay1 fade-in">
                        <div class="center-middle">认识"他/她？"</div>
                    </div>
                    <h3><br>20, 甜桑,岳阳<br>单身</h3>
                </a>
            </div>
            </li>
            <li><div class="col_1">
                <a href="view_profile.html">
                    <img src="/static/cpts/images/3.jpg" alt="img" class="hover-animation image-zoom-in img-responsive"/>
                    <div class="layer m_1 hidden-link hover-animation delay1 fade-in">
                        <div class="center-middle">认识"他/她？"</div>
                    </div>
                    <h3><br>20, 斌桑, 佛山<br>单身</h3>
                </a>
            </div>
            </li>
            <li><div class="col_1">
                <a href="view_profile.html">
                    <img src="/static/cpts/images/4.jpg" alt="img" class="hover-animation image-zoom-in img-responsive"/>
                    <div class="layer m_1 hidden-link hover-animation delay1 fade-in">
                        <div class="center-middle">认识"他/她？"</div>
                    </div>
                    <h3><br>18, 林酱, 杭州<br>单身</h3>
                </a>
            </div>
            </li>

            <li><div class="col_1">
                <a href="view_profile.html">
                    <img src="/static/cpts/images/2.jpg" alt="img" class="hover-animation image-zoom-in img-responsive"/>
                    <div class="layer m_1 hidden-link hover-animation delay1 fade-in">
                        <div class="center-middle">认识"他/她？"</div>
                    </div>
                    <h3><br>18, 玲酱, 成都<br>单身</h3>
                </a>
            </div>
            </li>

            <li><div class="col_1">
                <a href="view_profile.html">
                    <img src="/static/cpts/images/6.jpg" alt="img" class="hover-animation image-zoom-in img-responsive"/>
                    <div class="layer m_1 hidden-link hover-animation delay1 fade-in">
                        <div class="center-middle">认识"他/她？"</div>
                    </div>
                    <h3><br>21, 莉酱, 上海<br>单身</h3>
                </a>
            </div>
            </li>
        </ul>
        <script type="text/javascript">
            $(window).load(function() {
                $("#flexiselDemo3").flexisel({
                    visibleItems: 6,
                    animationSpeed: 1000,
                    autoPlay:false,
                    autoPlaySpeed: 3000,
                    pauseOnHover: true,
                    enableResponsiveBreakpoints: true,
                    responsiveBreakpoints: {
                        portrait: {
                            changePoint:480,
                            visibleItems: 1
                        },
                        landscape: {
                            changePoint:640,
                            visibleItems: 2
                        },
                        tablet: {
                            changePoint:768,
                            visibleItems: 3
                        }
                    }
                });

            });
        </script>
        <script type="text/javascript" src="/static/cpts/js/jquery.flexisel.js"></script>
    </div>
</div>
<div class="clearfix"> </div>
</div>
</div>
</div>
<div class="bg">
    <div class="container">
        <h3>客户案例</h3>
        <div class="heart-divider">
            <span class="grey-line"></span>
            <i class="fa fa-heart pink-heart"></i>
            <i class="fa fa-heart grey-heart"></i>
            <span class="grey-line"></span>
        </div>
        <div class="col-sm-6">
            <div class="bg_left">
                <h4>感谢"泡泡"</h4>
                <h5>一条多年的男士单身狗</h5>
                <p> 通过"泡泡"让我遇到了对的人</p>

            </div>
        </div>
        <div class="col-sm-6">
            <div class="bg_left">
                <h4>感谢"泡泡"</h4>
                <h5>一条多年的女士单身狗</h5>
                <p>通过"泡泡"让我遇见了那个"他"</p>

            </div>
        </div>
        <div class="clearfix"> </div>
    </div>
</div>
<%@ include file="include/footer.jsp" %>


<div class="audio-box">
    <div class="audio-container">
        <div class="audio-cover"></div>
        <div class="audio-view">
            <h3 class="audio-title">未知歌曲</h3>
            <div class="audio-body">
                <div class="audio-backs">
                    <div class="audio-this-time">00:00</div>
                    <div class="audio-count-time">00:00</div>
                    <div class="audio-setbacks">
                        <i class="audio-this-setbacks">
                            <span class="audio-backs-btn"></span>
                        </i>
                        <span class="audio-cache-setbacks">
							</span>
                    </div>
                </div>
            </div>
            <div class="audio-btn">
                <div class="audio-select">
                    <div class="audio-prev"></div>
                    <div class="audio-play"></div>
                    <div class="audio-next"></div>
                    <div class="audio-menu"></div>
                    <div class="audio-volume"></div>
                </div>
                <div class="audio-set-volume">
                    <div class="volume-box">
                        <i><span></span></i>
                    </div>
                </div>
                <div class="audio-list">
                    <div class="audio-list-head">
                        <p>PP播放</p>
                        <span class="menu-close">关闭</span>
                    </div>
                    <ul class="audio-inline">
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
<script type="text/javascript" src="/static/cpts/js/audio.js"></script>
<script type="text/javascript">
    $(function(){
        var song = [

            {
                'cover' : 'static/cpts/images/cover1.jpg',
                'src' : 'http://m10.music.126.net/20181224150627/f1dba22cea13ac445960ecd5d451d49f/ymusic/2087/0e9a/89c5/3a7fe466f11c872349eb792e454f77c6.mp3',
                'title' : '远走高飞'
            },
            {
                'cover' : 'static/cpts/images/bg.jpg',
                'src' : 'http://fdfs.xmcdn.com/group47/M03/AB/95/wKgKm1tVNk7Ap3X0ABo8QMh0dX4377.mp3',
                'title' : 'Girlfriend'
            }
        ];

        var audioFn = audioPlay({
            song : song,
            autoPlay : false  //是否立即播放第一首，autoPlay为true且song为空，会alert文本提示并退出
        });

        /* 暂停播放 */
       //audioFn.stopAudio();

        /* 开启播放 */
        //audioFn.playAudio();

        /* 选择歌单中索引为3的曲目(索引是从0开始的)，第二个参数true立即播放该曲目，false则不播放 */
        //audioFn.selectMenu(3,true);

        /* 查看歌单中的曲目 */
        //console.log(audioFn.song);

        /* 当前播放曲目的对象 */
        //console.log(audioFn.audio);
    });
</script>
</html>