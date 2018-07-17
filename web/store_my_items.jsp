<%@ page import="com.web.item.entity.Item" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: 22278
  Date: 2018/7/13
  Time: 16:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Big store a Ecommerce Online Shopping Category Flat Bootstrap Responsive Website Template | Hold ::
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

    <script type="text/javascript" charset="utf-8">
        $(function () {
            $("#item-menu div").quickpaginate({perpage: 12, showcounter: true, pager: $("#item-menu")});
        });

        //        $(function(){
        //            $("#images img").quickpaginate({ perpage: 1, showcounter: false, pager : $("#images_counter") });
        //        }); ss
    </script>
</head>
<body>
<div class="header">

    <div class="container">

        <div class="logo">
            <h1><a href="index.jsp">四次元口袋<span>Dimensional Pockets</span></a></h1>
        </div>
        <div class="head-t">
            <ul class="card">
                <%
                    String username = (String) request.getSession().getAttribute("info");
                    if (username == null) {
                        out.print("<li><a href=\"login.jsp\"><i class=\"fa fa-user\" aria-hidden=\"true\"></i>登录</a></li>");
                    } else {
                        if (username.equals("登录失败"))
                            out.print("<li><a href=\"login.jsp\"><i class=\"fa fa-user\" aria-hidden=\"true\"></i>登录失败,重新登录</a></li>");
                        else {
                            // TODO: 2018/7/15 注销功能待实现
                            out.print("<li><a href=\"javascript:if(confirm('确实要注销吗?'))location='login.jsp\"><i class=\"fa fa-user\" aria-hidden=\"true\"></i>您好," + username + "</a></li>");
                            pageContext.setAttribute("username", username);
                        }
                    }
                    if (username == null) {
                        out.print("<li><a href=\"register.jsp\"><i class=\"fa fa-arrow-right\" aria-hidden=\"true\"></i>注册</a></li>");
                    } else {
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
<div class="banner-top">
    <div class="container">
        <h3>我的店铺</h3>
        <h4><a href="index.jsp">首页</a><label>/</label><a href="store_my_items.jsp">卖家个人中心</a><label>/</label>我的店铺</h4>
        <div class="clearfix"></div>
    </div>
</div>

<!--content-->
<div class="kic--top" style="padding: 2em 0 0">
    <div class="container ">
        <div class="kic ">
            <!--<h3>xxx的店铺</h3>-->

        </div>
    </div>
</div>

<!--content-->
<div class="productt" style="padding: 2em 0 0em;">
    <div class="container">
        <div class="spec ">
            <h4 style="font-size: 2em">所有商品</h4>
            <div class="ser-t" style="margin-top: 15px">
                <b></b>
                <span><i></i></span>
                <b class="line"></b>
            </div>
        </div>
        <div class=" con-w3l agileinf" id="item-menu">
            <%
                List<Item> itemList = (List) request.getSession().getAttribute("list");
                if (itemList != null && itemList.size() > 0) {
                    for (int i = 0; i < itemList.size(); i++) {
                        pageContext.setAttribute("item", itemList.get(i));
                        //pageContext.setAttribute("num",i+1);
            %>
            <div class="col-md-3 pro-1">
                <div class="col-m">
                    <%
                        if (itemList.get(i).getImagePath() != null && itemList.get(i).getImagePath().size() > 0) {
                            out.print("<img src=\"" + itemList.get(i).getImagePath().get(0) + "\" class=\"img-responsive\" alt=\"\">");
                        } else {
                            out.print("<img src=\"images/of17.png\" class=\"img-responsive\" alt=\"\">");
                        }
                    %>
                    <div class="mid-1">
                        <div class="women">
                            <h6>${item.name}</h6>
                        </div>
                        <div class="mid-2">
                            <p><em class="item_price">${item.price}</em></p>
                            <span style="float:right;font-size:0.9em;color:#B4B4B4;">数量：${item.stock}</span>
                            <div class="clearfix"></div>
                        </div>
                        <div class="add">
                            <button id="modify" class="modify-btn" onclick="modify(${item.itemid})">点击修改</button>
                        </div>
                    </div>
                </div>
            </div>
            <%
                    }
                } else {
                    out.print("没有商品！");
                }
            %>
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
<style>
    .modify-btn {
        background: none;
        text-decoration: none;
        color: #FAB005;
        font-size: 0.8em;
        border: 1px solid #FAB005;
        border-radius: 5px;
        padding: 0.5em 1em;
        outline: none;
    }

    .modify-btn {
        display: inline-block;
        vertical-align: middle;
        -webkit-transform: translateZ(0);
        transform: translateZ(0);
        box-shadow: 0 0 1px rgba(0, 0, 0, 0);
        -webkit-backface-visibility: hidden;
        backface-visibility: hidden;
        -moz-osx-font-smoothing: grayscale;
        position: relative;
        -webkit-transition-property: color;
        transition-property: color;
        -webkit-transition-duration: 0.3s;
        transition-duration: 0.3s;
    }

    .modify-btn:before {
        content: "";
        position: absolute;
        z-index: -1;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        background: #FAB005;
        -webkit-transform: scaleY(0);
        transform: scaleY(0);
        -webkit-transform-origin: 50% 0;
        transform-origin: 50% 0;
        -webkit-transition-property: transform;
        transition-property: transform;
        -webkit-transition-duration: 0.3s;
        transition-duration: 0.3s;
        -webkit-transition-timing-function: ease-out;
        transition-timing-function: ease-out;
        border-radius: 5px;
        border: 1px solid #FAB005;
    }

    .modify-btn:hover, .modify-btn:focus, .modify-btn:active {
        color: white;
        background: none;
        border: 1px solid #FAB005;
        outline: none !important;
    }

    .modify-btn:hover:before, .modify-btn:focus:before, .modify-btn:active:before {
        -webkit-transform: scaleY(1);
        transform: scaleY(1);
    }

</style>
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

    function modify(x) {
        window.location.href = 'modi_item_info?info=${username}&itemid='+x;
    }
</script>
<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
<!-- //smooth scrolling -->
<!-- for bootstrap working -->
<script src="js/bootstrap.js"></script>
<!-- //for bootstrap working -->
</body>
</html>