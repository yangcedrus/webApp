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
    <title>Big store a Ecommerce Online Shopping Category Flat Bootstrap Responsive Website Template | offer ::
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
</div>
<!--search-->
<div data-vide-bg="video/video">
    <div class="container">
        <div class="banner-info">
            <h3 style="user-select:none;color: #00000000">四次元口袋</h3>
            <div class="search-form">
                <form action="search.jsp" method="post">
                    <input type="text" placeholder="Search..." name="Search...">
                    <input type="submit" value=" ">
                </form>
            </div>
        </div>
    </div>
</div>
<script>window.jQuery || document.write('<script src="js/jquery-1.11.1.min.js"><\/script>')</script>
<script src="js/jquery.vide.min.js"></script>

<!--content-->
<div class="content-top offer-w3agile">
    <div class="container ">
        <div class="spec ">
            <div class="ser-t">
                <b></b>
                <span><i></i></span>
                <b class="line"></b>
            </div>
        </div>
        <div class="con-w3l wthree-of">
            <div class="col-md-3 pro-1">
                <div class="col-m">
                    <a href="item_details.jsp" target="_blank" class="offer-img">
                        <img src="images/of.png" class="img-responsive" alt="">
                    </a>
                    <div class="mid-1">
                        <div class="women">
                            <h6><a href="single.html">Moong</a>(1 kg)</h6>
                        </div>
                        <div class="mid-2">
                            <p><label>$2.00</label><em class="item_price">$1.50</em></p>
                            <div class="block">
                                <div class="starbox small ghosting"></div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="add">
                            <button class="btn btn-danger my-cart-btn my-cart-b " data-id="1" data-name="Moong"
                                    data-summary="summary 1" data-price="1.50" data-quantity="1"
                                    data-image="images/of.png">添加到购物车
                            </button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 pro-1">
                <div class="col-m">
                    <a href="#" data-toggle="modal" data-target="#myModal2" class="offer-img">
                        <img src="images/of1.png" class="img-responsive" alt="">
                        <div class="offer"><p><span>Offer</span></p></div>
                    </a>
                    <div class="mid-1">
                        <div class="women">
                            <h6><a href="single.html">Sunflower Oil</a>(5 kg)</h6>
                        </div>
                        <div class="mid-2">
                            <p><label>$10.00</label><em class="item_price">$9.00</em></p>
                            <div class="block">
                                <div class="starbox small ghosting"></div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="add">
                            <button class="btn btn-danger my-cart-btn my-cart-b" data-id="2" data-name="Sunflower Oil"
                                    data-summary="summary 2" data-price="9.00" data-quantity="1"
                                    data-image="images/of1.png">Add to Cart
                            </button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 pro-1">
                <div class="col-m">
                    <a href="#" data-toggle="modal" data-target="#myModal3" class="offer-img">
                        <img src="images/of2.png" class="img-responsive" alt="">
                        <div class="offer"><p><span>Offer</span></p></div>
                    </a>
                    <div class="mid-1">
                        <div class="women">
                            <h6><a href="single.html">Kabuli Chana</a>(1 kg)</h6>
                        </div>
                        <div class="mid-2">
                            <p><label>$3.00</label><em class="item_price">$2.00</em></p>
                            <div class="block">
                                <div class="starbox small ghosting"></div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="add">
                            <button class="btn btn-danger my-cart-btn my-cart-b" data-id="3" data-name="Kabuli Chana"
                                    data-summary="summary 3" data-price="2.00" data-quantity="1"
                                    data-image="images/of2.png">Add to Cart
                            </button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 pro-1">
                <div class="col-m">
                    <a href="#" data-toggle="modal" data-target="#myModal4" class="offer-img">
                        <img src="images/of3.png" class="img-responsive" alt="">
                        <div class="offer"><p><span>Offer</span></p></div>
                    </a>
                    <div class="mid-1">
                        <div class="women">
                            <h6><a href="single.html">Soya Chunks</a>(1 kg)</h6>
                        </div>
                        <div class="mid-2">
                            <p><label>$4.00</label><em class="item_price">$3.50</em></p>
                            <div class="block">
                                <div class="starbox small ghosting"></div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="add">
                            <button class="btn btn-danger my-cart-btn my-cart-b" data-id="4"
                                    data-name="Mini Soya Chunks" data-summary="summary 4" data-price="3.50"
                                    data-quantity="1" data-image="images/of3.png">Add to Cart
                            </button>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-3 pro-1">
                <div class="col-m">
                    <a href="#" data-toggle="modal" data-target="#myModal5" class="offer-img">
                        <img src="images/of4.png" class="img-responsive" alt="">
                        <div class="offer"><p><span>Offer</span></p></div>
                    </a>
                    <div class="mid-1">
                        <div class="women">
                            <h6><a href="single.html">Lays</a>(100 g)</h6>
                        </div>
                        <div class="mid-2">
                            <p><label>$1.00</label><em class="item_price">$0.70</em></p>
                            <div class="block">
                                <div class="starbox small ghosting"></div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="add">
                            <button class="btn btn-danger my-cart-btn my-cart-b" data-id="5" data-name="Lays"
                                    data-summary="summary 5" data-price="0.70" data-quantity="1"
                                    data-image="images/of4.png">Add to Cart
                            </button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 pro-1">
                <div class="col-m">
                    <a href="#" data-toggle="modal" data-target="#myModal6" class="offer-img">
                        <img src="images/of5.png" class="img-responsive" alt="">
                        <div class="offer"><p><span>Offer</span></p></div>
                    </a>
                    <div class="mid-1">
                        <div class="women">
                            <h6><a href="single.html">Kurkure</a>(100 g)</h6>
                        </div>
                        <div class="mid-2">
                            <p><label>$1.00</label><em class="item_price">$0.70</em></p>
                            <div class="block">
                                <div class="starbox small ghosting"></div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="add">
                            <button class="btn btn-danger my-cart-btn my-cart-b" data-id="6" data-name="Kurkure"
                                    data-summary="summary 6" data-price="0.70" data-quantity="1"
                                    data-image="images/of5.png">Add to Cart
                            </button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 pro-1">
                <div class="col-m">
                    <a href="#" data-toggle="modal" data-target="#myModal7" class="offer-img">
                        <img src="images/of6.png" class="img-responsive" alt="">
                        <div class="offer"><p><span>Offer</span></p></div>
                    </a>
                    <div class="mid-1">
                        <div class="women">
                            <h6><a href="single.html">Popcorn</a>(250 g)</h6>
                        </div>
                        <div class="mid-2">
                            <p><label>$2.00</label><em class="item_price">$1.00</em></p>
                            <div class="block">
                                <div class="starbox small ghosting"></div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="add">
                            <button class="btn btn-danger my-cart-btn my-cart-b" data-id="7" data-name="product 1"
                                    data-summary="summary 1" data-price="1.00" data-quantity="1"
                                    data-image="images/of6.png">Add to Cart
                            </button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 pro-1">
                <div class="col-m">
                    <a href="#" data-toggle="modal" data-target="#myModal8" class="offer-img">
                        <img src="images/of7.png" class="img-responsive" alt="">
                        <div class="offer"><p><span>Offer</span></p></div>
                    </a>
                    <div class="mid-1">
                        <div class="women">
                            <h6><a href="single.html"> Nuts</a>(250 g)</h6>
                        </div>
                        <div class="mid-2">
                            <p><label>$4.00</label><em class="item_price">$3.50</em></p>
                            <div class="block">
                                <div class="starbox small ghosting"></div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="add">
                            <button class="btn btn-danger my-cart-btn my-cart-b" data-id="8" data-name="Nuts"
                                    data-summary="summary 8" data-price="3.50" data-quantity="1"
                                    data-image="images/of7.png">Add to Cart
                            </button>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-3 pro-1">
                <div class="col-m">
                    <a href="#" data-toggle="modal" data-target="#myModal9" class="offer-img">
                        <img src="images/of8.png" class="img-responsive" alt="">
                        <div class="offer"><p><span>Offer</span></p></div>
                    </a>
                    <div class="mid-1">
                        <div class="women">
                            <h6><a href="single.html">Banana</a>(6 pcs)</h6>
                        </div>
                        <div class="mid-2">
                            <p><label>$2.00</label><em class="item_price">$1.50</em></p>
                            <div class="block">
                                <div class="starbox small ghosting"></div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="add">
                            <button class="btn btn-danger my-cart-btn my-cart-b" data-id="9" data-name="Banana"
                                    data-summary="summary 9" data-price="1.50" data-quantity="1"
                                    data-image="images/of8.png">Add to Cart
                            </button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 pro-1">
                <div class="col-m">
                    <a href="#" data-toggle="modal" data-target="#myModal10" class="offer-img">
                        <img src="images/of9.png" class="img-responsive" alt="">
                        <div class="offer"><p><span>Offer</span></p></div>
                    </a>
                    <div class="mid-1">
                        <div class="women">
                            <h6><a href="single.html">Onion</a>(1 kg)</h6>
                        </div>
                        <div class="mid-2">
                            <p><label>$1.00</label><em class="item_price">$0.70</em></p>
                            <div class="block">
                                <div class="starbox small ghosting"></div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="add">
                            <button class="btn btn-danger my-cart-btn my-cart-b" data-id="10" data-name="Onion"
                                    data-summary="summary 10" data-price="0.70" data-quantity="1"
                                    data-image="images/of9.png">Add to Cart
                            </button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 pro-1">
                <div class="col-m">
                    <a href="#" data-toggle="modal" data-target="#myModal11" class="offer-img">
                        <img src="images/of10.png" class="img-responsive" alt="">
                        <div class="offer"><p><span>Offer</span></p></div>
                    </a>
                    <div class="mid-1">
                        <div class="women">
                            <h6><a href="single.html"> Bitter Gourd</a>(1 kg)</h6>
                        </div>
                        <div class="mid-2">
                            <p><label>$2.00</label><em class="item_price">$1.00</em></p>
                            <div class="block">
                                <div class="starbox small ghosting"></div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="add">
                            <button class="btn btn-danger my-cart-btn my-cart-b" data-id="11" data-name="Bitter Gourd"
                                    data-summary="summary 11" data-price="1.00" data-quantity="1"
                                    data-image="images/of10.png">Add to Cart
                            </button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 pro-1">
                <div class="col-m">
                    <a href="#" data-toggle="modal" data-target="#myModal12" class="offer-img">
                        <img src="images/of11.png" class="img-responsive" alt="">
                        <div class="offer"><p><span>Offer</span></p></div>
                    </a>
                    <div class="mid-1">
                        <div class="women">
                            <h6><a href="single.html">Apples</a>(1 kg)</h6>
                        </div>
                        <div class="mid-2">
                            <p><label>$4.00</label><em class="item_price">$3.50</em></p>
                            <div class="block">
                                <div class="starbox small ghosting"></div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="add">
                            <button class="btn btn-danger my-cart-btn my-cart-b" data-id="12" data-name="Apples"
                                    data-summary="summary 12" data-price="3.50" data-quantity="1"
                                    data-image="images/of11.png">Add to Cart
                            </button>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-3 pro-1">
                <div class="col-m">
                    <a href="#" data-toggle="modal" data-target="#myModal13" class="offer-img">
                        <img src="images/of12.png" class="img-responsive" alt="">
                        <div class="offer"><p><span>Offer</span></p></div>
                    </a>
                    <div class="mid-1">
                        <div class="women">
                            <h6><a href="single.html">Honey</a>(500g)</h6>
                        </div>
                        <div class="mid-2">
                            <p><label>$7.00</label><em class="item_price">$6.00</em></p>
                            <div class="block">
                                <div class="starbox small ghosting"></div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="add">
                            <button class="btn btn-danger my-cart-btn my-cart-b" data-id="13" data-name="Honey"
                                    data-summary="summary 13" data-price="6.00" data-quantity="1"
                                    data-image="images/of12.png">Add to Cart
                            </button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 pro-1">
                <div class="col-m">
                    <a href="#" data-toggle="modal" data-target="#myModal14" class="offer-img">
                        <img src="images/of13.png" class="img-responsive" alt="">
                        <div class="offer"><p><span>Offer</span></p></div>
                    </a>
                    <div class="mid-1">
                        <div class="women">
                            <h6><a href="single.html">Chocos</a>(250g)</h6>
                        </div>
                        <div class="mid-2">
                            <p><label>$5.00</label><em class="item_price">$4.50</em></p>
                            <div class="block">
                                <div class="starbox small ghosting"></div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="add">
                            <button class="btn btn-danger my-cart-btn my-cart-b" data-id="14" data-name="Chocos"
                                    data-summary="summary 14" data-price="4.50" data-quantity="1"
                                    data-image="images/of13.png">Add to Cart
                            </button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 pro-1">
                <div class="col-m">
                    <a href="#" data-toggle="modal" data-target="#myModal15" class="offer-img">
                        <img src="images/of14.png" class="img-responsive" alt="">
                        <div class="offer"><p><span>Offer</span></p></div>
                    </a>
                    <div class="mid-1">
                        <div class="women">
                            <h6><a href="single.html">Oats</a>(1 kg)</h6>
                        </div>
                        <div class="mid-2">
                            <p><label>$4.00</label><em class="item_price">$3.50</em></p>
                            <div class="block">
                                <div class="starbox small ghosting"></div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="add">
                            <button class="btn btn-danger my-cart-btn my-cart-b" data-id="15" data-name="Oats"
                                    data-summary="summary 15" data-price="3.50" data-quantity="1"
                                    data-image="images/of14.png">Add to Cart
                            </button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 pro-1">
                <div class="col-m">
                    <a href="#" data-toggle="modal" data-target="#myModal16" class="offer-img">
                        <img src="images/of15.png" class="img-responsive" alt="">
                        <div class="offer"><p><span>Offer</span></p></div>
                    </a>
                    <div class="mid-1">
                        <div class="women">
                            <h6><a href="single.html">Bread</a>(500 g)</h6>
                        </div>
                        <div class="mid-2">
                            <p><label>$1.00</label><em class="item_price">$0.80</em></p>
                            <div class="block">
                                <div class="starbox small ghosting"></div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="add">
                            <button class="btn btn-danger my-cart-btn my-cart-b" data-id="16" data-name="Bread"
                                    data-summary="summary 16" data-price="0.80" data-quantity="1"
                                    data-image="images/of15.png">Add to Cart
                            </button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>


<!--footer-->
<div class="footer">
    <div class="container">
        <div class="clearfix"></div>
        <div class="footer-bottom">
            <h2><a href="index.jsp">四次元口袋<span>The Best Supermarket</span></a></h2>
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