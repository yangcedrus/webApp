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
    <title>Big store a Ecommerce Online Shopping Category Flat Bootstrap Responsive Website Template | Login ::
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
                <li><a href="login.jsp"><i class="fa fa-user" aria-hidden="true"></i>登录</a></li>
                <li><a href="register.jsp"><i class="fa fa-arrow-right" aria-hidden="true"></i>注册</a></li>
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
    <!--banner-->
    <div class="banner-top">
        <div class="container">
            <h3>登录</h3>
            <h4><a href="index.jsp">主页</a><label>/</label>登录</h4>
            <div class="clearfix"></div>
        </div>
    </div>
    <!--login-->

    <div class="login">

        <div class="main-agileits">
            <div class="form-w3agile">
                <h3>登录</h3>
                <form action="customer_login" method="post">
                    <div class="key">
                        <i class="fa fa-envelope" aria-hidden="true"></i>
                        <input type="text" value="Name" name="Name" onfocus="this.value = '';"
                               onblur="if (this.value == '') {this.value = 'Email';}" required="">
                        <div class="clearfix"></div>
                    </div>
                    <div class="key">
                        <i class="fa fa-lock" aria-hidden="true"></i>
                        <input type="password" value="Password" name="Password" onfocus="this.value = '';"
                               onblur="if (this.value == '') {this.value = 'Password';}" required="">
                        <div class="clearfix"></div>
                    </div>
                    <div class="form-group">
                        <label class="radio-inline">
                            <input type="radio" value="customer" name="login_type" id="login_customer" checked="checked">买家
                        </label>
                        <label class="radio-inline">
                            <input type="radio" value="store" name="login_type" id="login_store">卖家
                        </label>
                        <label class="radio-inline">
                            <input type="radio" value="admin" name="login_type" id="login_admin">管理员
                        </label>
                    </div>

                    <!--跳转接接口而不是链接-->

                    <input type="submit" value="登录">
                </form>
            </div>
            <div class="forg">
                <a href="#" class="forg-left">忘记密码</a>
                <a href="register.jsp" class="forg-right">注册</a>
                <div class="clearfix"></div>
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
                        <p><i class="fa fa-home" aria-hidden="true"></i>幻想鄉</p>
                    </div>
                    <div class="col-md-4 fo-grid1">
                        <p><i class="fa fa-phone" aria-hidden="true"></i>0800-36778920</p>
                    </div>
                    <div class="col-md-4 fo-grid1">
                        <p><a href="mailto:info@example.com"><i class="fa fa-envelope-o" aria-hidden="true"></i>yan19961212@2980.com</a>
                        </p>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
            <div class="copy-right">
                <p> &copy; 2018 Dimensional Pockets. All Rights Reserved | Design by <a href="http://452535853@qq.com/">
                    TeamTwo</a></p>
                <!--此处可附加链接，href可跳转-->
            </div>
        </div>
    </div>
    <!-- //footer-->
    <!-- smooth scrolling -->
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
    <!-- //for bootstrap working -->
    <script type='text/javascript' src="js/jquery.mycart.js"></script>
    <script type="text/javascript">
        $(function () {

            var goToCartIcon = function ($addTocartBtn) {
                var $cartIcon = $(".my-cart-icon");
                var $image = $('<img width="30px" height="30px" src="' + $addTocartBtn.data("image") + '"/>').css({
                    "position": "fixed",
                    "z-index": "999"
                });
                $addTocartBtn.prepend($image);
                var position = $cartIcon.position();
                $image.animate({
                    top: position.top,
                    left: position.left
                }, 500, "linear", function () {
                    $image.remove();
                });
            }

            $('.my-cart-btn').myCart({
                classCartIcon: 'my-cart-icon',
                classCartBadge: 'my-cart-badge',
                affixCartIcon: true,
                checkoutCart: function (products) {
                    $.each(products, function () {
                        console.log(this);
                    });
                },
                clickOnAddToCart: function ($addTocart) {
                    goToCartIcon($addTocart);
                },
                getDiscountPrice: function (products) {
                    var total = 0;
                    $.each(products, function () {
                        total += this.quantity * this.price;
                    });
                    return total * 1;
                }
            });

        });
    </script>
</div>
</body>
</html>