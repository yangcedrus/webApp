<%@ page import="com.web.order.entity.Order" %>
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
    <title>Big store a Ecommerce Online Shopping Category Flat Bootstrap Responsive Website Template | Faqs ::
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
                <li><a href="login.jsp" ><i class="fa fa-user" aria-hidden="true"></i>登录</a></li>
                <li><a href="register.jsp" ><i class="fa fa-arrow-right" aria-hidden="true"></i>注册</a></li>
                <li><a href="customer_me.jsp" ><i class="fa fa-file-text-o" aria-hidden="true"></i>买家个人</a></li>
                <li><a href="store_me.jsp" ><i class="fa fa-ship" aria-hidden="true"></i>卖家个人</a></li>
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
        <h3>我的订单</h3>
        <h4><a href="index.jsp">首页</a><label>/</label><a href="customer_me.jsp">买家个人中心</a><label>/</label>我的订单</h4>
        <div class="clearfix"></div>
    </div>
</div>

<!-- faqs -->
<div class="faq-w3 main-grid-border">
    <div class="container">
        <div class="spec ">
            <h3>订单查看</h3>
            <div class="ser-t">
                <b></b>
                <span><i></i></span>
                <b class="line"></b>
            </div>
        </div>
        <table id="customer_table" class="table">
            <thead>
            <tr>
                <th>序号</th>
                <th>商品名称</th>
                <th>店铺名</th>
                <th>数量</th>
                <th>价格</th>
            </tr>
            </thead>
            <tbody>
            <%--获取所有用户--%>
            <%
                //循环显示数据
                List<Order> order_list = (List) request.getSession().getAttribute("order_list");
                if (order_list != null && order_list.size() != 0) {
                    for (int i = 0; i < order_list.size(); i++) {
                        pageContext.setAttribute("item", order_list.get(i));
                        pageContext.setAttribute("num", i+1);
                        //保存到页面pageContext里面方便下面进行EL表达式调用
            %>
            <tr>
                <td>${num}</td>
                <td id="customer_name">${}</td>
                <td>${customer.phone}</td>
                <td>
                    <button class="btn btn-danger my-cart-btn my-cart-b" onclick="customer_modify(${customer.customerid})">修改</button>
                    <button class="btn btn-danger my-cart-btn my-cart-b" onclick='del_confirm(${customer.customerid})'>删除</button>
                </td>
            </tr>
            <%
                }
            } else {
            %>
            <tr>
                <td>数据库中没有数据！</td>
            </tr>
            <%
                }
            %>
            </tbody>
        </table>
        <div class="panel-group" id="accordion">
            <!-- First Panel -->
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title" data-toggle="collapse" data-target="#collapseOne">
                        <span>1.</span>商品1
                    </h4>
                    <h4 align="right">店铺1</h4>
                    <img src="images/of.png" height="50" width="50" alt="">
                </div>
                <div id="collapseOne" class="panel-collapse collapse">
                    <div class="panel-body">
                        <table class="table table-striped">
                            <tbody>
                            <tr>
                                <td>收件人</td>
                                <td>张三</td>
                            </tr>
                            <tr>
                                <td>订单编号</td>
                                <td>0123456789876543210</td>
                            </tr>
                            <tr>
                                <td>创建时间</td>
                                <td>2018-07-07 00:00:00</td>
                            </tr>
                            <tr>
                                <td>完成时间</td>
                                <td>2018-07-08 00:00:00</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <!-- Second Panel -->
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title" data-toggle="collapse" data-target="#collapseTwo">
                        <span>1.</span>商品1
                    </h4>
                    <h4 align="right">店铺1</h4>
                    <img src="images/of.png" height="50" width="50" alt="">
                </div>
                <div id="collapseTwo" class="panel-collapse collapse">
                    <div class="panel-body">
                        <table class="table table-striped">
                            <tbody>
                            <tr>
                                <td>收件人</td>
                                <td>张三</td>
                            </tr>
                            <tr>
                                <td>订单编号</td>
                                <td>0123456789876543210</td>
                            </tr>
                            <tr>
                                <td>创建时间</td>
                                <td>2018-07-07 00:00:00</td>
                            </tr>
                            <tr>
                                <td>完成时间</td>
                                <td>2018-07-08 00:00:00</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <!-- Third Panel -->
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title" data-toggle="collapse" data-target="#collapseThree">
                        <span>1.</span>商品1
                    </h4>
                    <h4 align="right">店铺1</h4>
                    <img src="images/of.png" height="50" width="50" alt="">
                </div>
                <div id="collapseThree" class="panel-collapse collapse">
                    <div class="panel-body">
                        <table class="table table-striped">
                            <tbody>
                            <tr>
                                <td>收件人</td>
                                <td>张三</td>
                            </tr>
                            <tr>
                                <td>订单编号</td>
                                <td>0123456789876543210</td>
                            </tr>
                            <tr>
                                <td>创建时间</td>
                                <td>2018-07-07 00:00:00</td>
                            </tr>
                            <tr>
                                <td>完成时间</td>
                                <td>2018-07-08 00:00:00</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <!-- Fourth Panel -->
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title" data-toggle="collapse" data-target="#collapseFour">
                        <span>1.</span>商品1
                    </h4>
                    <h4 align="right">店铺1</h4>
                    <img src="images/of.png" height="50" width="50" alt="">
                </div>
                <div id="collapseFour" class="panel-collapse collapse">
                    <div class="panel-body">
                        <table class="table table-striped">
                            <tbody>
                            <tr>
                                <td>收件人</td>
                                <td>张三</td>
                            </tr>
                            <tr>
                                <td>订单编号</td>
                                <td>0123456789876543210</td>
                            </tr>
                            <tr>
                                <td>创建时间</td>
                                <td>2018-07-07 00:00:00</td>
                            </tr>
                            <tr>
                                <td>完成时间</td>
                                <td>2018-07-08 00:00:00</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <!-- Fifth Panel -->
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title" data-toggle="collapse" data-target="#collapseFive">
                        <span>1.</span>商品1
                    </h4>
                    <h4 align="right">店铺1</h4>
                    <img src="images/of.png" height="50" width="50" alt="">
                </div>
                <div id="collapseFive" class="panel-collapse collapse">
                    <div class="panel-body">
                        <table class="table table-striped">
                            <tbody>
                            <tr>
                                <td>收件人</td>
                                <td>张三</td>
                            </tr>
                            <tr>
                                <td>订单编号</td>
                                <td>0123456789876543210</td>
                            </tr>
                            <tr>
                                <td>创建时间</td>
                                <td>2018-07-07 00:00:00</td>
                            </tr>
                            <tr>
                                <td>完成时间</td>
                                <td>2018-07-08 00:00:00</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <ul class="pagination pagination-lg">
            <li><a href="#" aria-label="Previous"><span aria-hidden="true">«</span></a></li>
            <li><a href="#">1</a></li>
            <li><a href="#">2</a></li>
            <li><a href="#">3</a></li>
            <li><a href="#">4</a></li>
            <li><a href="#">5</a></li>
            <li><a href="#" aria-label="Next"><span aria-hidden="true">»</span></a></li>
        </ul>

        <ul id="orders_list">
            <li>carrots</li>
            <li>beef</li>
            <li>pineapple</li>
            <li>tofu</li>
            <li>lettuce</li>
            <li>washing up liquid</li>
            <li>yoghurt</li>
            <li>chocolate</li>
            <li>milk</li>
            <li>bread</li>
        </ul>

        <div id="order_list_counter"></div>
    </div>
</div>
<!-- // Terms of use -->

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
<script src="js/jquery-1.11.1.min.js" type="text/javascript" charset="utf-8"></script>
<script src="js/jquery.quickpaginate.packed.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript" charset="utf-8">
    $(function(){
        $("#orders_list li").quickpaginate({ perpage: 3, pager : $("#order_list_counter") });
    });
</script>
</body>
</html>