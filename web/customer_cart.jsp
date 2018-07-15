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
    <title>四次元口袋||DimensionalPockets</title>
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
<!---->

<!--banner-->
<div class="banner-top">
    <div class="container">
        <h3>购物车</h3>
        <h4><a href="index.jsp">首页</a><label>/</label><a href="customer_me.jsp">买家个人中心</a><label>/</label>购物车</h4>
        <div class="clearfix"></div>
    </div>
</div>

<!-- contact -->
<div class="check-out">
    <div class="container">
        <div class="spec ">
            <h3>购物车</h3>
            <div class="ser-t">
                <b></b>
                <span><i></i></span>
                <b class="line"></b>
            </div>
        </div>
        <script type="text/javascript">
            function selectALLNO() {
                // 获取要操作的复选框
                var box1 = document.getElementById("boxId");
                //checked判断是否选中
                if (box1.checked == true) {
                    selectAll();
                }
                else {
                    SelectNO();
                }
            }

            function selectAll() {
                // 获取要操作的复选框
                var box1 = document.getElementsByName("love");
                //checked判断是否选中
                for (var x = 0; x < box1.length; x++) {
                    var value1 = box1[x];
                    value1.checked = true;
                }
            }

            function SelectNO() {
                // 获取要操作的复选框
                var box2 = document.getElementsByName("love");
                //checked判断是否选中
                for (var x = 0; x < box2.length; x++) {
                    var value1 = box2[x];
                    value1.checked = false;
                }
            }

            function selectOther() {
                // 获取要操作的复选框
                var box1 = document.getElementsByName("love");
                //checked判断是否选中
                for (var x = 0; x < box1.length; x++) {
                    var value1 = box1[x];
                    if (value1.checked)
                        value1.checked = false;
                    else
                        value1.checked = true;
                }
            }
        </script>
        <table class="table ">
            <tr>
                <th class="t-head head-it ">商品</th>
                <th class="t-head">价格</th>
                <th class="t-head">数量</th>
                <th class="t-head">操作</th>
            </tr>
            <tr class="cross">
                <td class="ring-in t-data">
                    <a href="item_details.jsp" target="_blank" class="at-in">
                        <img src="images/wi2.png" class="img-responsive" alt="">
                    </a>
                    <div class="sed">
                        <h5>Sed ut perspiciatis unde</h5>
                    </div>
                    <div class="clearfix"></div>
                    <div class="cart-checkbox">
                        <input type="checkbox" style="vertical-align: center" name="love"/>
                    </div>
                </td>
                <td class="t-data">$10.00</td>
                <td class="t-data">
                    <div class="quantity">
                        <div class="quantity-select">
                            <div class="entry value-minus">&nbsp;</div>
                            <div class="entry value"><span class="span-1">1</span></div>
                            <div class="entry value-plus active">&nbsp;</div>
                        </div>
                    </div>
                </td>
                <td class="t-data t-w3l"><a class=" add-1" href="#">购买</a></td>

            </tr>
            <tr class="cross1">
                <td class="t-data ring-in">
                    <a href="single.html" class="at-in">
                        <img src="images/wi1.png" class="img-responsive" alt="">
                    </a>
                    <div class="sed">
                        <h5>Sed ut perspiciatis unde</h5>
                    </div>
                    <div class="clearfix"></div>
                    <input type="checkbox" name="love"/>
                </td>
                <td class="t-data">$20.00</td>
                <td class="t-data">
                    <div class="quantity">
                        <div class="quantity-select">
                            <div class="entry value-minus">&nbsp;</div>
                            <div class="entry value"><span class="span-1">1</span></div>
                            <div class="entry value-plus active">&nbsp;</div>
                        </div>
                    </div>

                </td>

                <td class="t-data t-w3l"><a class=" add-1" href="#">购买</a></td>

            </tr>
            <tr class="cross2">
                <td class="t-data ring-in">
                    <a href="single.html" class="at-in">
                        <img src="images/wi2.png" class="img-responsive" alt="">
                    </a>
                    <div class="sed">
                        <h5>Sed ut perspiciatis unde</h5>
                    </div>
                    <div class="clearfix"></div>
                    <input type="checkbox" style="vertical-align:center;" name="love"/>
                </td>
                <td class="t-data">$15.00</td>
                <td class="t-data">
                    <div class="quantity">
                        <div class="quantity-select">
                            <div class="entry value-minus">&nbsp;</div>
                            <div class="entry value"><span class="span-1">1</span></div>
                            <div class="entry value-plus active">&nbsp;</div>
                        </div>
                    </div>

                </td>

                <td class="t-data"><a class=" add-1" href="#">购买</a></td>

            </tr>
            <tr class="cross2">
                <td>
                    <input type="checkbox" id="boxId" onclick="selectALLNO();"/>全选/全不选<br/>
                </td>
                <td>合计：￥45</td>
                <td></td>
                <td class="t-data"><a class=" add-1" href="###">结算购物车</a>
                    <a class=" cart-delete" href="###">删除</a></td>
            </tr>
        </table>
    </div>
</div>

<!--quantity-->
<script>
    $('.value-plus').on('click', function () {
        var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10) + 1;
        divUpd.text(newVal);
    });

    $('.value-minus').on('click', function () {
        var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10) - 1;
        if (newVal >= 1) divUpd.text(newVal);
    });
</script>
<!--quantity-->


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
<style>
    .cart-delete:hover {
        text-decoration: none;
        background: #FAB005;
        color: #fff;
    }

    .cart-delete {
        text-decoration: none;
        color: #fff;
        padding: 7px 10px;
        width: auto;
        font-size: 1em;
        background: #ac2925;
    }

    .cart-delete {
        padding: 7px 4px;
        font-size: 0.9em;
    }
</style>
</body>
</html>