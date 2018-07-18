<%@ page import="com.web.cart.dao.CartDao" %>
<%@ page import="com.web.cart.dao.CartDaoImpl" %>
<%@ page import="com.web.cart.entity.Cart" %>
<%@ page import="com.web.cart.entity.c_i" %>
<%@ page import="java.util.List" %>
<%@ page import="com.web.item.dao.ItemDao" %>
<%@ page import="com.web.item.dao.ItemDaoImpl" %>
<%@ page import="com.web.item.entity.Item" %>
<%--
Created by IntelliJ IDEA.
User: 22278
Date: 2018/7/13
Time: 16:42
To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
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
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/carts.css">

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
                        else{
                            // TODO: 2018/7/15 注销功能待实现
                            out.print("<li><a href=\"javascript:if(confirm('确实要注销吗?'))location='login.jsp\"><i class=\"fa fa-user\" aria-hidden=\"true\"></i>您好," + username + "</a></li>");
                            pageContext.setAttribute("username",username);
                        }
                    }
                    if (username == null) {
                        out.print("<li><a href=\"register.jsp\"><i class=\"fa fa-arrow-right\" aria-hidden=\"true\"></i>注册</a></li>");
                    } else {
                        out.print("<li><a href=\"customer_me.jsp?info=" + username + "\"><i class=\"fa fa-file-text-o\" aria-hidden=\"true\"></i>买家个人</a></li>");
                    }
                %>
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

<!-- faqs -->
<div class="faq-w3 main-grid-border">
    <div class="container">
        <div class="spec ">
            <h3>购物车</h3>
            <div class="ser-t">
                <b></b>
                <span><i></i></span>
                <b class="line"></b>
            </div>
        </div>
    </div>
</div>

<%
    CartDao dao = new CartDaoImpl();
    Cart cart = dao.showMyCart(username);
    List<c_i> cs = cart.getCartitem();
%>
<section class="cartMain">
    <div class="cartMain_hd">
        <ul class="order_lists cartTop">
            <li class="list_chk">
                <!--所有商品全选-->
                <input type="checkbox" id="all" class="whole_check">
                <label for="all"></label>
                全选
            </li>
            <li class="list_con">商品信息</li>
            <li class="list_info">店铺名</li>
            <li class="list_price">单价</li>
            <li class="list_amount">数量</li>
            <li class="list_sum">金额</li>
            <li class="list_op">操作</li>
        </ul>
    </div>

    <div class="cartBox">
        <div class="order_content">
            <%
                if (cs != null && cs.size() > 0) {
                    for (int i = 0; i < cs.size(); i++) {
                        ItemDao dao1=new ItemDaoImpl();
                        Item item=dao1.getOneItem(cs.get(i).getItemid());
                        pageContext.setAttribute("item",item);
                        pageContext.setAttribute("cs", cs.get(i));
                        pageContext.setAttribute("css",cs);
                        pageContext.setAttribute("num",i+1);
            %>
            <ul class="order_lists" id="${item.itemid}">
                <li class="list_chk" id="${username}">
                    <input type="checkbox" id="checkbox_${num}" class="son_check">
                    <label for="checkbox_${num}"></label>
                </li>
                <li class="list_con">
                    <div class="list_img"><a href="javascript:;"><img src="images/1.png" alt=""></a></div>
                    <div class="list_text"><a href="javascript:;">${item.name}</a></div>
                </li>
                <li class="list_info">
                    <p>王五的店铺</p>
                </li>
                <li class="list_price">
                    <p class="price">￥${item.price}</p>
                </li>
                <li class="list_amount">
                    <div class="amount_box">
                        <a href="javascript:;" class="reduce reSty">-</a>
                        <input type="text" value="${cs.num}" class="sum">
                        <a href="javascript:;" class="plus">+</a>
                    </div>
                </li>
                <li class="list_sum">
                    <p class="sum_price">￥${cs.num*item.price}</p>
                </li>
                <li class="list_op">
                    <p class="del"><a href="javascript:delete_item(${item.itemid});" class="delBtn">移除商品</a></p>
                </li>
            </ul>
            <%
                    }
                }
            %>
        </div>
    </div>

    <!--底部-->
    <div class="bar-wrapper">
        <div class="bar-right">
            <div class="piece">已选商品<strong class="piece_num">0</strong>件</div>
            <div class="totalMoney">共计: <strong class="total_text">0.00</strong></div>
            <div class="calBtn"><a href="javascript:checkoutCart()">结算</a></div>
        </div>
    </div>
</section>
<section class="model_bg"></section>
<section class="my_model">
    <p class="title">删除商品<span class="closeModel">X</span></p>
    <p>您确认要删除该商品吗？</p>
    <div class="opBtn"><a href="javascript:" class="dialog-sure">确定</a><a href="javascript:;"
                                                                           class="dialog-close">关闭</a></div>
</section>

<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/carts.js" charset="utf-8"></script>

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
<script type="text/javascript">
    function delete_item(x) {
        var name=<%if(username==null)out.print("null");else out.print("\""+username+"\"");%>;
        if(name==null||name.length===0){
            alert("请先登录!");
            return false;
        }
        $.ajax({
            type:"POST",
            url:"cart_delete_item?info=${username}&itemid="+x
        })
    }
    function checkoutCart() {
        var check=$("input[type='checkbox']:checked");//选中的复选框
        var checkItems=new Array();
        var i=0;
        check.each(function () {
            var row=$(this).parent("li").parent("ul");
            var itemid=row.attr("id");
            checkItems[i]=itemid;
            row.fadeOut(300);
            i++;
        })
        $.ajax({
            type:"POST",
            url:"checkout_items?info=${username}&items="+checkItems
        })
    }
</script>

<script src="js/bootstrap.js"></script>
</body>
</html>
