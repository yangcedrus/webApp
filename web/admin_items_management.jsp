<%--
  Created by IntelliJ IDEA.
  User: 22278
  Date: 2018/7/13
  Time: 16:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page import="java.util.List" %>
<%@ page import="java.awt.event.ItemEvent" %>
<%@ page import="com.web.item.entity.Item" %>

<html>
<head>
    <title>Big store a Ecommerce Online Shopping Category Flat Bootstrap Responsive Website Template | offer :: w3layouts</title>
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

</head>
<body>
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
                        else
                            // TODO: 2018/7/15 注销功能待实现
                            out.print("<li><a href=\"javascript:if(confirm('确实要注销吗?'))location='login.jsp\"><i class=\"fa fa-user\" aria-hidden=\"true\"></i>您好,"+username+"</a></li>");
                    }
                %>
                <%
                    if(username==null){
                        out.print("<li><a href=\"register.jsp\"><i class=\"fa fa-arrow-right\" aria-hidden=\"true\"></i>注册</a></li>");
                    }else {
                        out.print("<li><a href=\"###\"><i class=\"fa fa-file-text-o\" aria-hidden=\"true\"></i>管理员个人</a></li>");
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

<!--banner-->
<div class="banner-top">
    <div class="container">
        <h3>商品审核</h3>
        <h4><a href="index.jsp">主页</a><label>/</label><a href="admin_me.jsp">管理员个人中心</a><label>/</label>商品审核</h4>
        <div class="clearfix"></div>
    </div>
</div>

<!--content-->
<div class="content-top offer-w3agile">
    <div class="container ">
        <div class="spec ">
            <h3>待审核商品</h3>
            <div class="ser-t">
                <b></b>
                <span><i></i></span>
                <b class="line"></b>
            </div>
        </div>

        <script>window.jQuery || document.write('<script src="js/jquery-1.11.1.min.js"><\/script>')</script>
        <script src="js/jquery.vide.min.js"></script>
        <!--search END-->

        <div class="table table-striped">
            <table class="table" >
                <thead >
                <tr>
                    <th style="text-align: center">序号</th>
                    <th style="text-align: center">商品名称</th>
                    <th style="text-align: center">商品价格</th>
                    <th style="text-align: center">库存容量</th>
                    <th style="text-align: center">操作</th>
                </tr>
                </thead>
                <tbody>
                <%
                //循环显示数据
                    List<Item> itemList=(List) request.getSession().getAttribute("admin_items");
                    if(itemList!=null&&itemList.size()!=0){
                        for(int i=0;i<itemList.size();i++){
                            pageContext.setAttribute("item",itemList.get(i));
                            pageContext.setAttribute("num",i+1);
                %>
                    <tr style="text-align: center;border-bottom: 1px solid #999999">
                        <td>${num}</td>
                        <td>${item.name}</td>
                        <td>${item.price}</td>
                        <td>${item.stock}</td>
                        <td>
                            <button class="btn btn-danger my-cart-btn my-cart-b" onclick="details(${item.itemid})">详情审核</button>
                        </td>
                    </tr>
                <%
                    }
                }else{
                %>
                <tr>
                    <td>没有待审核的商品！</td>
                </tr>
                <%
                    }
                %>
                <%--<tr style="text-align: center;border-bottom: 1px solid #999999">--%>
                    <%--<td>1</td>--%>
                    <%--<td>Moong</td>--%>
                    <%--<td>¥100</td>--%>
                    <%--<td>100</td>--%>
                    <%--<td>--%>
                        <%--<a href="ItemscheckServlet?itemid=${item.itemid}"><button class="btn btn-danger my-cart-btn my-cart-b" onclick="details()">详情审核</button></a>--%>
                    <%--</td>--%>
                <%--</tr>--%>
                <%--<tr style="text-align: center;border-bottom: 1px solid #999999">--%>
                    <%--<td>2</td>--%>
                    <%--<td>Sunflower Oil</td>--%>
                    <%--<td>¥99</td>--%>
                    <%--<td>100</td>--%>
                    <%--<td><button class="btn btn-danger my-cart-btn my-cart-b" onclick="details()">详情审核</button>--%>
                    <%--</td>--%>
                <%--</tr>--%>
                <%--<tr style="text-align: center;border-bottom: 1px solid #999999">--%>
                    <%--<td>3</td>--%>
                    <%--<td>Kabuli Chana</td>--%>
                    <%--<td>¥88.88</td>--%>
                    <%--<td>100</td>--%>
                    <%--<td><button class="btn btn-danger my-cart-btn my-cart-b" onclick="details()">详情审核</button>--%>

                <%--</tr>--%>
                </tbody>
            </table>
        </div>
    </div>
</div>

<!--跳转-->
<script>
    function details(x){
        window.location.href='items_check?info=<%out.print(username);%>&itemid='+x;
    }
</script>
<!--footer-->
<div class="footer">
    <div class="container">
        <div class="clearfix"></div>
        <div class="footer-bottom">
            <h2 ><a href="index.jsp">四次元口袋<span>Dimensional Pockets</span></a></h2>
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
            <p> &copy; 2016 Big store. All Rights Reserved | Design by  W3layouts</p>
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
</body>
</html>