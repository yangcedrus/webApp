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
    <title>Big store a Ecommerce Online Shopping Category Flat Bootstrap Responsive Website Template | Login :: w3layouts</title>
    <!-- for-mobile-apps -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta property="og:title" content="Vide" />
    <meta name="keywords" content="Big store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
    function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- //for-mobile-apps -->
    <link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
    <!-- Custom Theme files -->
    <link href="css/style.css" rel='stylesheet' type='text/css' />
    <!-- js -->
    <script src="js/jquery-1.11.1.min.js"></script>
    <!-- //js -->
    <!-- start-smoth-scrolling -->
    <script type="text/javascript" src="js/move-top.js"></script>
    <script type="text/javascript" src="js/easing.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function($) {
            $(".scroll").click(function(event){
                event.preventDefault();
                $('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
            });
        });
    </script>
    <!-- start-smoth-scrolling -->
    <link href="css/font-awesome.css" rel="stylesheet">
    <link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
    <link href='//fonts.googleapis.com/css?family=Noto+Sans:400,700' rel='stylesheet' type='text/css'>
    <!--- start-rate---->
    <script src="js/jstarbox.js"></script>
    <link rel="stylesheet" href="css/jstarbox.css" type="text/css" media="screen" charset="utf-8" />
    <script type="text/javascript">
        jQuery(function() {
            jQuery('.starbox').each(function() {
                var starbox = jQuery(this);
                starbox.starbox({
                    average: starbox.attr('data-start-value'),
                    changeable: starbox.hasClass('unchangeable') ? false : starbox.hasClass('clickonce') ? 'once' : true,
                    ghosting: starbox.hasClass('ghosting'),
                    autoUpdateAverage: starbox.hasClass('autoupdate'),
                    buttons: starbox.hasClass('smooth') ? false : starbox.attr('data-button-count') || 5,
                    stars: starbox.attr('data-star-count') || 5
                }).bind('starbox-value-changed', function(event, value) {
                    if(starbox.hasClass('random')) {
                        var val = Math.random();
                        starbox.next().text(' '+val);
                        return val;
                    }
                })
            });
        });
    </script>
    <!---//End-rate---->

</head>
<body>
<!--header-->
<div class="header">

    <div class="container">

        <div class="logo">
            <h1 ><a href="index.jsp">四次元口袋<span>Dimensional Pockets</span></a></h1>
        </div>
        <div class="head-t">
            <ul class="card">
                <%
                    String username=(String)request.getSession().getAttribute("info");
                    if(username==null){
                        out.print("<li><a href=\"login.jsp\"><i class=\"fa fa-user\" aria-hidden=\"true\"></i>登录</a></li>");
                    }else{
                        if(username.equals("登录失败"))
                            out.print("<li><a href=\"login.jsp\"><i class=\"fa fa-user\" aria-hidden=\"true\"></i>登录失败,重新登录</a></li>");
                        else {
                            // TODO: 2018/7/15 注销功能待实现
                            out.print("<li><a href=\"javascript:if(confirm('确实要注销吗?'))location='login.jsp\"><i class=\"fa fa-user\" aria-hidden=\"true\"></i>您好," + username + "</a></li>");
                            pageContext.setAttribute("username",username);
                        }
                    }
                    if(username==null){
                        out.print("<li><a href=\"register.jsp\"><i class=\"fa fa-arrow-right\" aria-hidden=\"true\"></i>注册</a></li>");
                    }else {
                        out.print("<li><a href=\"###\"><i class=\"fa fa-file-text-o\" aria-hidden=\"true\"></i>卖家个人</a></li>");
                    }
                %>
            </ul>
        </div>

        <div class="nav-top">
            <nav class="navbar navbar-default">

                <div class="navbar-header nav_2">
                    <button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
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
        <h3 >个人中心</h3>
        <h4><a href="index.jsp">主页</a><label>/</label>卖家个人中心</h4>
        <div class="clearfix"> </div>
    </div>
</div>

<!--me-->
<div class="faq-w3 main-grid-border">
    <div class="container">
        <div class="spec ">
            <h3>个人信息</h3>
            <div class="ser-t">
                <b></b>
                <span><i></i></span>
                <b class="line"></b>
            </div>
        </div>
        <div class="panel-group" id="accordion">
            <!--显示可操作信息-->
            <!--设置个人信息-->
            <div class="col-md-3 m-wthree">
                <div class="col-m">
                    <a href="#" data-toggle="modal" data-target="#myModal1" class="offer-img">
                        <img src="images/of.png" class="img-responsive" alt="">
                    </a>
                    <div class="mid-1">
                        <div class="add">
                            <h2 class="t-button">
                                <a href="get_my_info?info=${username}"><button class="label label-warning">设置个人信息</button></a>
                            </h2>
                        </div>
                    </div>
                </div>
            </div>
            <!--我的购物车-->
            <div class="col-md-3 m-wthree">
                <div class="col-m">
                    <a href="#" data-toggle="modal" data-target="#myModal1" class="offer-img">
                        <img src="images/of.png" class="img-responsive" alt="">
                    </a>
                    <div class="mid-1">
                        <div class="add">
                            <h2 class="t-button">
                                <a href="store_item?info=${username}"><button class="label label-warning">我的店铺</button></a>
                            </h2>
                        </div>
                    </div>
                </div>
            </div>
            <!--我的订单-->
            <div class="col-md-3 m-wthree">
                <div class="col-m">
                    <a href="#" data-toggle="modal" data-target="#myModal1" class="offer-img">
                        <img src="images/of.png" class="img-responsive" alt="">
                    </a>
                    <div class="mid-1">
                        <div class="add">
                            <h2 class="t-button">
                                <a href="store_orders_list?info=${username}"><button class="label label-warning">我的订单</button></a>
                            </h2>
                            </span>
                        </div>
                    </div>
                </div>
            </div>
            <!--商品管理-->
            <div class="col-md-3 m-wthree">
                <div class="col-m">
                    <a href="#" data-toggle="modal" data-target="#myModal1" class="offer-img">
                        <img src="images/of.png" class="img-responsive" alt="">
                    </a>
                    <div class="mid-1">
                        <div class="add">
                            <h2 class="t-button">
                                <a href="item_manage?info=${username}"><button class="label label-warning">商品管理</button></a>
                            </h2>
                            </span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!--footer-->
<div class="footer">
    <div class="container">
        <div class="clearfix"></div>
        <div class="footer-bottom">
            <h2 ><a href="index.jsp">四次元口袋<span>The Best Supermarket</span></a></h2>
            <div class=" address">
                <div class="col-md-4 fo-grid1">
                    <p><i class="fa fa-home" aria-hidden="true"></i>12K Street , 45 Building Road Canada.</p>
                </div>
                <div class="col-md-4 fo-grid1">
                    <p><i class="fa fa-phone" aria-hidden="true"></i>+1234 758 839 , +1273 748 730</p>
                </div>
                <div class="col-md-4 fo-grid1">
                    <p><a href="mailto:info@example.com"><i class="fa fa-envelope-o" aria-hidden="true"></i>info@example1.com</a></p>
                </div>
                <div class="clearfix"></div>

            </div>
        </div>
        <div class="copy-right">
            <p> &copy; 2016 Big store. All Rights Reserved | Design by  <a href="http://w3layouts.com/"> W3layouts</a></p>
        </div>
    </div>
</div>
<!-- //footer-->
<!-- smooth scrolling -->
<script type="text/javascript">
    $(document).ready(function() {
        /*
            var defaults = {
            containerID: 'toTop', // fading element id
            containerHoverID: 'toTopHover', // fading element hover id
            scrollSpeed: 1200,
            easingType: 'linear'
            };
        */
        $().UItoTop({ easingType: 'easeOutQuart' });
    });
</script>
<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
<!-- //smooth scrolling -->
<!-- for bootstrap working -->
<script src="js/bootstrap.js"></script>
<!-- //for bootstrap working -->
<script type='text/javascript' src="js/jquery.mycart.js"></script>
<script type="text/javascript">

</script>

</body>
</html>