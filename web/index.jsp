<%--
  Created by IntelliJ IDEA.
  User: 22278
  Date: 2018/7/13
  Time: 16:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>四次元口袋在线购物网站</title>
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
            <h1><a href="index,jsp">四次元口袋<span>Dimensional Pockets</span></a></h1>
        </div>
        <div class="head-t">
            <ul class="card">
                <li><a href="login.jsp"><i class="fa fa-user" aria-hidden="true"></i>
                    <%
                        String username=(String)request.getSession().getAttribute("info");
                        if(username==null){
                            out.print("登录");
                        }else{
                            out.print("您好,"+username);
                        }
                    %>
                </a></li>
                <li><a href="register.html"><i class="fa fa-arrow-right" aria-hidden="true"></i>注册</a></li>
                <li><a href="customer_me.html"><i class="fa fa-file-text-o" aria-hidden="true"></i>买家个人</a></li>
                <li><a href="store_me.html"><i class="fa fa-ship" aria-hidden="true"></i>卖家个人</a></li>
                <li><a href="admin_me.html"><i class="fa fa-ship" aria-hidden="true"></i>管理员个人</a></li>
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
<div data-vide-bg="video/video">
    <div class="container">
        <div class="banner-info">
            <h3> 做你生活中的四次元口袋 </h3>
            <div class="search-form">
                <form action="search.html" method="post">
                    <input type="text" placeholder="搜索..." name="Search...">
                    <input type="submit" value=" ">
                </form>
            </div>
        </div>
    </div>
</div>

<script>window.jQuery || document.write('<script src="js/jquery-1.11.1.min	.js"><\/script>')</script>
<script src="js/jquery.vide.min.js"></script>

<!--content-->
<div class="product ">
    <div class="container ">
        <div class="spec ">
            <h3>今日商品</h3>
            <div class="ser-t">
                <b></b>
                <span><i></i></span>
                <b class="line"></b>
            </div>
        </div>
        <div class="con-w3l wthree-of">
            <!--四个推荐商品-->
            <div class="col-md-3 pro-1">
                <div class="col-m">
                    <a href="item_details.html" target="_blank" class="offer-img">
                        <img src="images/of16.png" class="img-responsive" alt="">
                    </a>
                    <div class="mid-1">
                        <div class="women">
                            <h6><a href="item_details.html" target="_blank">Moisturiser</a>(500 g)</h6>
                        </div>
                        <div class="mid-2">
                            <p><label>$7.00</label><em class="item_price">$6.00</em></p>
                            <div class="clearfix"></div>
                        </div>
                        <div class="add add-2">
                            <button class="btn btn-danger my-cart-btn my-cart-b" data-image="images/of16.png">添加到购物车
                            </button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 pro-1">
                <div class="col-m">
                    <a href="#" data-toggle="modal" data-target="#myModal18" class="offer-img">
                        <img src="images/of17.png" class="img-responsive" alt="">
                    </a>
                    <div class="mid-1">
                        <div class="women">
                            <h6><a href="single.html"> Lady Finger</a>(250 g)</h6>
                        </div>
                        <div class="mid-2">
                            <p><label>$5.00</label><em class="item_price">$4.50</em></p>
                            <div class="block">
                                <div class="starbox small ghosting"></div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="add">
                            <button class="btn btn-danger my-cart-btn my-cart-b" data-id="1" data-name="product 1"
                                    data-summary="summary 1" data-price="4.50" data-quantity="1"
                                    data-image="images/of17.png">Add to Cart
                            </button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 pro-1">
                <div class="col-m">
                    <a href="#" data-toggle="modal" data-target="#myModal19" class="offer-img">
                        <img src="images/of18.png" class="img-responsive" alt="">
                    </a>
                    <div class="mid-1">
                        <div class="women">
                            <h6><a href="single.html"> Ribbon</a>(1 pc)</h6>
                        </div>
                        <div class="mid-2">
                            <p><label>$4.00</label><em class="item_price">$3.50</em></p>
                            <div class="block">
                                <div class="starbox small ghosting"></div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="add">
                            <button class="btn btn-danger my-cart-btn my-cart-b" data-id="1" data-name="product 1"
                                    data-summary="summary 1" data-price="3.50" data-quantity="1"
                                    data-image="images/of18.png">Add to Cart
                            </button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 pro-1">
                <div class="col-m">
                    <a href="#" data-toggle="modal" data-target="#myModal20" class="offer-img">
                        <img src="images/of19.png" class="img-responsive" alt="">
                    </a>
                    <div class="mid-1">
                        <div class="women">
                            <h6><a href="single.html">Grapes</a>(500 g)</h6>
                        </div>
                        <div class="mid-2">
                            <p><label>$1.00</label><em class="item_price">$0.80</em></p>
                            <div class="block">
                                <div class="starbox small ghosting"></div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="add">
                            <button class="btn btn-danger my-cart-btn my-cart-b" data-id="1" data-name="product 1"
                                    data-summary="summary 1" data-price="0.80" data-quantity="1"
                                    data-image="images/of19.png">Add to Cart
                            </button>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-3 pro-1">
                <div class="col-m">
                    <a href="#" data-toggle="modal" data-target="#myModal21" class="offer-img">
                        <img src="images/of20.png" class="img-responsive" alt="">
                    </a>
                    <div class="mid-1">
                        <div class="women">
                            <h6><a href="single.html">Clips</a>(1 pack)</h6>
                        </div>
                        <div class="mid-2">
                            <p><label>$7.00</label><em class="item_price">$6.00</em></p>
                            <div class="block">
                                <div class="starbox small ghosting"></div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="add">
                            <button class="btn btn-danger my-cart-btn my-cart-b" data-id="1" data-name="product 1"
                                    data-summary="summary 1" data-price="6.00" data-quantity="1"
                                    data-image="images/of20.png">Add to Cart
                            </button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 pro-1">
                <div class="col-m">
                    <a href="#" data-toggle="modal" data-target="#myModal22" class="offer-img">
                        <img src="images/of21.png" class="img-responsive" alt="">
                    </a>
                    <div class="mid-1">
                        <div class="women">
                            <h6><a href="single.html">Conditioner</a>(250 g)</h6>
                        </div>
                        <div class="mid-2">
                            <p><label>$5.00</label><em class="item_price">$4.50</em></p>
                            <div class="block">
                                <div class="starbox small ghosting"></div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="add">
                            <button class="btn btn-danger my-cart-btn my-cart-b" data-id="1" data-name="product 1"
                                    data-summary="summary 1" data-price="4.50" data-quantity="1"
                                    data-image="images/of21.png">Add to Cart
                            </button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 pro-1">
                <div class="col-m">
                    <a href="#" data-toggle="modal" data-target="#myModal23" class="offer-img">
                        <img src="images/of22.png" class="img-responsive" alt="">
                    </a>
                    <div class="mid-1">
                        <div class="women">
                            <h6><a href="single.html">Cleaner</a>(250 kg)</h6>
                        </div>
                        <div class="mid-2">
                            <p><label>$4.00</label><em class="item_price">$3.50</em></p>
                            <div class="block">
                                <div class="starbox small ghosting"></div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="add">
                            <button class="btn btn-danger my-cart-btn my-cart-b" data-id="1" data-name="product 1"
                                    data-summary="summary 1" data-price="3.50" data-quantity="1"
                                    data-image="images/of22.png">Add to Cart
                            </button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 pro-1">
                <div class="col-m">
                    <a href="#" data-toggle="modal" data-target="#myModal24" class="offer-img">
                        <img src="images/of23.png" class="img-responsive" alt="">
                    </a>
                    <div class="mid-1">
                        <div class="women">
                            <h6><a href="single.html">Gel</a>(150 g)</h6>
                        </div>
                        <div class="mid-2">
                            <p><label>$1.00</label><em class="item_price">$0.80</em></p>
                            <div class="block">
                                <div class="starbox small ghosting"></div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="add">
                            <button class="btn btn-danger my-cart-btn my-cart-b" data-id="1" data-name="product 1"
                                    data-summary="summary 1" data-price="0.80" data-quantity="1"
                                    data-image="images/of23.png">Add to Cart
                            </button>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-3 pro-1">
                <div class="col-m">
                    <a href="item_details.html" target="_blank" class="offer-img">
                        <img src="images/of16.png" class="img-responsive" alt="">
                    </a>
                    <div class="mid-1">
                        <div class="women">
                            <h6><a href="item_details.html" target="_blank">Moisturiser</a>(500 g)</h6>
                        </div>
                        <div class="mid-2">
                            <p><label>$7.00</label><em class="item_price">$6.00</em></p>
                            <div class="clearfix"></div>
                        </div>
                        <div class="add add-2">
                            <button class="btn btn-danger my-cart-btn my-cart-b" data-image="images/of16.png">添加到购物车
                            </button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 pro-1">
                <div class="col-m">
                    <a href="#" data-toggle="modal" data-target="#myModal18" class="offer-img">
                        <img src="images/of17.png" class="img-responsive" alt="">
                    </a>
                    <div class="mid-1">
                        <div class="women">
                            <h6><a href="single.html"> Lady Finger</a>(250 g)</h6>
                        </div>
                        <div class="mid-2">
                            <p><label>$5.00</label><em class="item_price">$4.50</em></p>
                            <div class="block">
                                <div class="starbox small ghosting"></div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="add">
                            <button class="btn btn-danger my-cart-btn my-cart-b" data-id="1" data-name="product 1"
                                    data-summary="summary 1" data-price="4.50" data-quantity="1"
                                    data-image="images/of17.png">Add to Cart
                            </button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 pro-1">
                <div class="col-m">
                    <a href="#" data-toggle="modal" data-target="#myModal19" class="offer-img">
                        <img src="images/of18.png" class="img-responsive" alt="">
                    </a>
                    <div class="mid-1">
                        <div class="women">
                            <h6><a href="single.html"> Ribbon</a>(1 pc)</h6>
                        </div>
                        <div class="mid-2">
                            <p><label>$4.00</label><em class="item_price">$3.50</em></p>
                            <div class="block">
                                <div class="starbox small ghosting"></div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="add">
                            <button class="btn btn-danger my-cart-btn my-cart-b" data-id="1" data-name="product 1"
                                    data-summary="summary 1" data-price="3.50" data-quantity="1"
                                    data-image="images/of18.png">Add to Cart
                            </button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 pro-1">
                <div class="col-m">
                    <a href="#" data-toggle="modal" data-target="#myModal20" class="offer-img">
                        <img src="images/of19.png" class="img-responsive" alt="">
                    </a>
                    <div class="mid-1">
                        <div class="women">
                            <h6><a href="single.html">Grapes</a>(500 g)</h6>
                        </div>
                        <div class="mid-2">
                            <p><label>$1.00</label><em class="item_price">$0.80</em></p>
                            <div class="block">
                                <div class="starbox small ghosting"></div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="add">
                            <button class="btn btn-danger my-cart-btn my-cart-b" data-id="1" data-name="product 1"
                                    data-summary="summary 1" data-price="0.80" data-quantity="1"
                                    data-image="images/of19.png">Add to Cart
                            </button>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-3 pro-1">
                <div class="col-m">
                    <a href="#" data-toggle="modal" data-target="#myModal21" class="offer-img">
                        <img src="images/of20.png" class="img-responsive" alt="">
                    </a>
                    <div class="mid-1">
                        <div class="women">
                            <h6><a href="single.html">Clips</a>(1 pack)</h6>
                        </div>
                        <div class="mid-2">
                            <p><label>$7.00</label><em class="item_price">$6.00</em></p>
                            <div class="block">
                                <div class="starbox small ghosting"></div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="add">
                            <button class="btn btn-danger my-cart-btn my-cart-b" data-id="1" data-name="product 1"
                                    data-summary="summary 1" data-price="6.00" data-quantity="1"
                                    data-image="images/of20.png">Add to Cart
                            </button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 pro-1">
                <div class="col-m">
                    <a href="#" data-toggle="modal" data-target="#myModal22" class="offer-img">
                        <img src="images/of21.png" class="img-responsive" alt="">
                    </a>
                    <div class="mid-1">
                        <div class="women">
                            <h6><a href="single.html">Conditioner</a>(250 g)</h6>
                        </div>
                        <div class="mid-2">
                            <p><label>$5.00</label><em class="item_price">$4.50</em></p>
                            <div class="block">
                                <div class="starbox small ghosting"></div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="add">
                            <button class="btn btn-danger my-cart-btn my-cart-b" data-id="1" data-name="product 1"
                                    data-summary="summary 1" data-price="4.50" data-quantity="1"
                                    data-image="images/of21.png">Add to Cart
                            </button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 pro-1">
                <div class="col-m">
                    <a href="#" data-toggle="modal" data-target="#myModal23" class="offer-img">
                        <img src="images/of22.png" class="img-responsive" alt="">
                    </a>
                    <div class="mid-1">
                        <div class="women">
                            <h6><a href="single.html">Cleaner</a>(250 kg)</h6>
                        </div>
                        <div class="mid-2">
                            <p><label>$4.00</label><em class="item_price">$3.50</em></p>
                            <div class="block">
                                <div class="starbox small ghosting"></div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="add">
                            <button class="btn btn-danger my-cart-btn my-cart-b" data-id="1" data-name="product 1"
                                    data-summary="summary 1" data-price="3.50" data-quantity="1"
                                    data-image="images/of22.png">Add to Cart
                            </button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 pro-1">
                <div class="col-m">
                    <a href="#" data-toggle="modal" data-target="#myModal24" class="offer-img">
                        <img src="images/of23.png" class="img-responsive" alt="">
                    </a>
                    <div class="mid-1">
                        <div class="women">
                            <h6><a href="single.html">Gel</a>(150 g)</h6>
                        </div>
                        <div class="mid-2">
                            <p><label>$1.00</label><em class="item_price">$0.80</em></p>
                            <div class="block">
                                <div class="starbox small ghosting"></div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="add">
                            <button class="btn btn-danger my-cart-btn my-cart-b" data-id="1" data-name="product 1"
                                    data-summary="summary 1" data-price="0.80" data-quantity="1"
                                    data-image="images/of23.png">Add to Cart
                            </button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="clearfix"></div>

            <ul class="pagination pagination-lg" style="float: right">
                <li><a href="#" aria-label="Previous"><span aria-hidden="true">«</span></a></li>
                <li><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li><a href="#" aria-label="Next"><span aria-hidden="true">»</span></a></li>
            </ul>
            <div class="clearfix"></div>
        </div>
    </div>
</div>

<!--footer-->
<div class="footer">
    <div class="container">
        <div class="clearfix"></div>
        <div class="footer-bottom">
            <h2><a href="index,jsp">四次元口袋<span>The Best Supermarket</span></a></h2>
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
            <p> &copy; 2016 Big store. All Rights Reserved | Design by <a href="http://w3layouts.com/"> W3layouts</a>
            </p>
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
</body>
</html>