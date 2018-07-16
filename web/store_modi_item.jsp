<%@ page import="com.web.item.entity.Item" %><%--
Created by IntelliJ IDEA.
User: 22278
Date: 2018/7/13
Time: 16:42
To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Big store a Ecommerce Online Shopping Category Flat Bootstrap Responsive Website Template | Single ::
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
<%--<%--%>
    <%--String msg=(String)request.getSession().getAttribute("modi");--%>
    <%--if(msg=="true"){--%>
        <%--out.print("<script type=\"text/javascript\">alert('修改成功')</script");--%>
    <%--}--%>
<%--%>--%>
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
        <h3>修改商品</h3>
        <h4><a href="store_me.jsp">我的店铺</a><label>/</label>修改商品</h4>
        <div class="clearfix"></div>
    </div>
</div>
<div class="faq-w3 main-grid-border">
    <div class="container">
        <div class="single">
            <div class="col-md-5 single-top">
                <div class="single-w3agile">
                    <%
                        Item item1=(Item)request.getSession().getAttribute("item");
                        if (item1!=null) {
                            pageContext.setAttribute("item", item1);
                        }
                    %>
                    <div id="picture-frame">
                        <img src="${item.imagePath.get(0)}" data-src="images/si-1.jpg" alt="" class="img-responsive"/>
                    </div>

                    <script src="js/jquery.zoomtoo.js"></script>
                    <script>
                        $(function () {
                            $("#picture-frame").zoomToo({
                                magnify: 1
                            });
                        });
                    </script>


                </div>
                <div class="add add-3">

                    <button class="btn btn-danger my-cart-btn my-cart-b fileinput-button" style="margin-top: 15px">
                        <span>修改图片</span>
                        <input type="file">
                    </button>
                </div>
            </div>

            <div class="col-md-7 single-top-left ">
                <div class="single-right">
                    <%
                        Item item=(Item)request.getSession().getAttribute("item");
                        if (item!=null) {
                            pageContext.setAttribute("item", item);
                        }
                    %>
                    <h3>商品名称：<input type="text" disabled="disabled" value="${item.name}" id="item_name" name="name"></h3>


                    <div class="pr-single">
                        <p class="reduced ">
                            价格：<input type="text" disabled="disabled" value="${item.price}" id="item_price" name="price">
                            <!--<del>$10.00</del>-->
                            <!--$5.00-->
                        </p>
                    </div>
                    <div class="pr-single">
                        <p class="reduced " style="color: #999999">
                            件数：<input type="text" disabled value="${item.stock}" id="item_num" name="num">
                            <!--<del>$10.00</del>-->
                            <!--$5.00-->
                        </p>
                    </div>

                    <p class="in-pa">详细介绍：<textarea rows="5" cols="80" disabled id="item_info" name="info">${item.description}</textarea>
                    </p>
                    <div class="add add-3">
                        <button class="btn btn-danger my-cart-btn my-cart-b" onclick="modify()">
                            修改
                        </button>
                        <button class="btn btn-danger my-cart-btn my-cart-b" style="margin-left: 30px" onclick="save()">
                            保存
                        </button>
                    </div>
                    <div class="clearfix"></div>
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

    function modify() {
        document.getElementById("item_name").disabled = "";
        document.getElementById("item_price").disabled = "";
        document.getElementById("item_num").disabled = "";
        document.getElementById("item_info").disabled = "";
    }
    function save() {
        var name=document.getElementById("item_name").value;
        var price=document.getElementById("item_price").value;
        var stock=document.getElementById("item_num").value;
        var details=document.getElementById("item_info").innerHTML;
        window.location.href="modi_item?itemid=${item.itemid}&name="+name+"&price="+price+"&stock="+stock+"&desc="+details;
    }
</script>

<style>
    .fileinput-button {
        display: inline-block;
        overflow: hidden;
    }

    .fileinput-button input {
        position: absolute;
        right: 0px;
        top: 0px;
        opacity: 0;
        -ms-filter: 'alpha(opacity=0)';
        font-size: 200px;
    }
</style>
</body>
