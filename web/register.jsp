<%--
  Created by IntelliJ IDEA.
  User: 22278
  Date: 2018/7/13
  Time: 16:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Big store a Ecommerce Online Shopping Category Flat Bootstrap Responsive Website Template | Register ::
        w3layouts</title>
    <!-- for-mobile-apps -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta property="og:title" content="Vide"/>
    <meta name="keywords" content="Big store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design"/>
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);

    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>
    <!-- //for-mobile-apps -->
    <link href="css/bootstrap.css" rel='stylesheet' type='text/css'/>
    <!-- Custom Theme files -->
    <link href="css/style.css" rel='stylesheet' type='text/css'/>
    <!-- js -->
    <script src="js/jquery-1.11.1.min.js"></script>
    <!-- //js -->
    <!-- start-smoth-scrolling -->
    <script type="text/javascript" src="js/move-top.js"></script>
    <script type="text/javascript" src="js/easing.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function ($) {
            $(".scroll").click(function (event) {
                event.preventDefault();
                $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);
            });
        });
    </script>
    <!-- start-smoth-scrolling -->
    <link href="css/font-awesome.css" rel="stylesheet">
    <link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
    <link href='//fonts.googleapis.com/css?family=Noto+Sans:400,700' rel='stylesheet' type='text/css'>
    <!--- start-rate---->
    <script src="js/jstarbox.js"></script>
    <link rel="stylesheet" href="css/jstarbox.css" type="text/css" media="screen" charset="utf-8"/>
    <script type="text/javascript">
        jQuery(function () {
            jQuery('.starbox').each(function () {
                var starbox = jQuery(this);
                starbox.starbox({
                    average: starbox.attr('data-start-value'),
                    changeable: starbox.hasClass('unchangeable') ? false : starbox.hasClass('clickonce') ? 'once' : true,
                    ghosting: starbox.hasClass('ghosting'),
                    autoUpdateAverage: starbox.hasClass('autoupdate'),
                    buttons: starbox.hasClass('smooth') ? false : starbox.attr('data-button-count') || 5,
                    stars: starbox.attr('data-star-count') || 5
                }).bind('starbox-value-changed', function (event, value) {
                    if (starbox.hasClass('random')) {
                        var val = Math.random();
                        starbox.next().text(' ' + val);
                        return val;
                    }
                })
            });
        });
    </script>
    <!---//End-rate---->

</head>
<body>
<div class="header">

    <div class="container">

        <div class="logo">
            <h1><a href="index.jsp">四次元口袋<span>Dimensional Pockets</span></a></h1>
        </div>
        <div class="head-t">
            <ul class="card">
                <li><a href="login.jsp"><i class="fa fa-user" aria-hidden="true"></i>登 录</a></li>
                <li><a href="register.jsp"><i class="fa fa-arrow-right" aria-hidden="true"></i>注 册</a></li>
            </ul>
        </div>

        <div class="nav-top">
            <nav class="navbar navbar-default">

                <div class="navbar-header nav_2">
                    <button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse"
                            data-target="#bs-megadropdown-tabs">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>
            </nav>
            <div class="clearfix"></div>
        </div>

    </div>
</div>
<!---->

<!--banner-->
<div class="banner-top">
    <div class="container">
        <h3>注册</h3>
        <h4><a href="index.jsp">首页</a><label>/</label>注册</h4>
        <div class="clearfix"></div>
    </div>
</div>

<!--user-->

<div class="login">
    <div class="main-agileits">
        <div class="form-w3agile form1">
            <h3>注册</h3>
            <form action="user_register" method="post">
                <div class="key">
                    <i class="fa fa-user" aria-hidden="true"></i>

                    <input type="text" value="用户名" name="Username" onfocus="this.value = '';"
                           onblur="if (this.value == '') {this.value = '用户名';}" required="">
                    <div class="clearfix"></div>
                </div>
                <div class="key1" style="background: #fff;margin-bottom: 2em;">
                    <!--<i class="fa fa-envelope" aria-hidden="true"></i>-->
                    <input type="radio" value="male" name="sex" checked style="margin-right: 15px;margin-left: 100px"> 男
                    <input type="radio" value="female" name="sex" style="margin-right: 15px;margin-left: 80px"> 女
                    <div class="clearfix"></div>
                </div>
                <div class="key1"
                     style="background: #fff;margin-bottom: 2em;border-color: #999;border-style: solid;border-top-width: 0px;border-right-width: 0px;border-bottom-width: 1px;border-left-width: 0px;">
                </div>
                <div class="key1" style="background: #fff;margin-bottom: 2em;">
                    <!--<i class="fa fa-envelope" aria-hidden="true"></i>-->
                    <input type="radio" value="customer" name="register_type" checked
                           style="margin-right: 15px;margin-left: 100px"> 顾客
                    <input type="radio" value="store" name="register_type" style="margin-right: 15px;margin-left: 67px"> 商家
                    <div class="clearfix"></div>
                </div>
                <div class="key">
                    <i class="fa fa-phone" aria-hidden="true"></i>
                    <input type="text" value="手机号" name="Phone" onfocus="this.value = '';"
                           onblur="if (this.value == '') {this.value = '手机号';}" required="">
                    <div class="clearfix"></div>
                </div>
                <div class="key">
                    <i class="fa fa-lock" aria-hidden="true"></i>
                    <input type="password" value="请输入密码" name="Password" onfocus="this.value = '';"
                           onblur="if (this.value == '') {this.value = '';}" required="">
                    <div class="clearfix"></div>
                </div>
                <div class="key">
                    <i class="fa fa-lock" aria-hidden="true"></i>
                    <input type="password" value="请确认密码" name="Confirm Password" onfocus="this.value = '';"
                           onblur="if (this.value == '') {this.value = '';}" required="">
                    <div class="clearfix"></div>
                </div>
                <input type="submit" value="立即注册">
                <a href="login.jsp"
                   style="float: right;text-align: center;padding: 10px 0;border: none;font-size: 1em;outline: none;width: 32%;cursor: pointer;margin-bottom:30px;">已有账号？登录</a>
            </form>
        </div>
    </div>
</div>
<!--footer-->
<div class="footer">
    <div class="container">
        <div class="clearfix"></div>
        <div class="footer-bottom">
            <h2><a href="index.jsp">四次元口袋<span>Dimensional Pockets</span></a></h2>
            <div class=" address">
                <div class="col-md-4 fo-grid1">
                    <p><i class="fa fa-home" aria-hidden="true"></i>12K Street , 45 Building Road Canada.</p>
                </div>
                <div class="col-md-4 fo-grid1">
                    <p><i class="fa fa-phone" aria-hidden="true"></i>+1234 758 839 , +1273 748 730</p>
                </div>
                <div class="col-md-4 fo-grid1">
                    <p><a href="mailto:info@example.com"><i class="fa fa-envelope-o" aria-hidden="true"></i>info@example1.com</a>
                    </p>
                </div>
                <div class="clearfix"></div>

            </div>
        </div>
        <div class="copy-right">
            <p> &copy; 2016 Big store. All Rights Reserved | Design by W3layouts</p>
        </div>
    </div>
</div>
<!-- //footer-->
<!-- smooth scrolling //回到顶部操作-->
<script type="text/javascript">
    $(document).ready(function () {
        /*
            var defaults = {
            containerID: 'toTop', // fading element id
            containerHoverID: 'toTopHover', // fading element hover id
            scrollSpeed: 1200,
            easingType: 'linear'
            };
        */
        $().UItoTop({easingType: 'easeOutQuart'});
    });
</script>
<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
<!-- //smooth scrolling -->
<!-- for bootstrap working -->
<script src="js/bootstrap.js"></script>


</body>
</html>