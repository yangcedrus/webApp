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
                    String type = (String) request.getSession().getAttribute("login_type");
                    if (type != null) {
                        switch (type) {
                            case "customer":
                                out.print("<li><a href=\"customer_me.jsp?name=" + username + "\"><i class=\"fa fa-file-text-o\" aria-hidden=\"true\"></i>买家个人</a></li>");
                                break;
                            case "store":
                                out.print("<li><a href=\"store_me.jsp?name=" + username + "\"><i class=\"fa fa-file-text-o\" aria-hidden=\"true\"></i>卖家个人</a></li>");
                                break;
                            case "admin":
                                out.print("<li><a href=\"admin_me.jsp?name=" + username + "\"><i class=\"fa fa-file-text-o\" aria-hidden=\"true\"></i>管理员个人</a></li>");
                                break;
                            default:
                                break;
                        }
                    } else {
                        out.print("<li><a href=\"register.jsp\"><i class=\"fa fa-arrow-right\" aria-hidden=\"true\"></i>注册</a></li>");
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
<%
    Item item = (Item) request.getSession().getAttribute("one_item_info");
    pageContext.setAttribute("item", item);
%>
<!--banner-->
<div class="banner-top">
    <div class="container">
        <h3>商品详情</h3>
        <h4><a href="index.jsp">首页</a><label>/</label>商品详情</h4>
        <div class="clearfix"></div>
    </div>
</div>
<div class="faq-w3 main-grid-border">
    <div class="container">
        <div class="single">
            <div class="col-md-5 single-top">
                <div class="single-w3agile">

                    <div id="picture-frame">
                        <img src=<%if(item.getImagePath()==null||item.getImagePath().size()<=0){out.print("\"images/si-1.jpg\"");}else out.print(item.getImagePath().get(0));%>
                                     data-src="images/si-1.jpg" alt="" class="img-responsive" id="big_img"
                             style="height: 300px;width: 300px;object-fit: cover;"/>
                    </div>

                </div>
                <div style="width: 445px;height: auto">

                    <div style="height: auto;width: 435px;margin-left: 10px;margin-right: 10px">
                        <%
                            List<String> path=item.getImagePath();
                            if(path!=null&&path.size()>0){
                                out.print("<a class=\"left-arrow\"></a>");
                                for(int i=1;i<path.size();i++){
                                    pageContext.setAttribute("num",i);
                        %>
                        <img class="img-small" src=<%out.print(item.getImagePath().get(i-1));%> id=${num} onclick="getbig(this)"/>
                        <%
                                }
                                out.print("<img class=\"img-small\" src="+item.getImagePath().get(item.getImagePath().size()-1)+" id=\"5\" onclick=\"getbig(this)\" style=\"display: none\"/>");
                                out.print("<a class=\"right-arrow\"></a>");
                            }
                        %>
                    </div>
                </div>
            </div>
            <div class="col-md-7 single-top-left ">
                <div class="single-right" style="margin-top: 30px">
                    <h3>${item.name}</h3>
                    <div class="pr-single">
                        <p class="reduced ">
                            ￥${item.price}
                        </p>
                    </div>
                    <p class="in-pa">${item.description}</p>
                    <div style="margin-bottom: 20px">
                        <input class="min" name="" type="button" value="-" style="width: 25px" onclick="minnum()"/>
                        <input class="text_box" id="itemnum" type="text" value="1"
                               style="width:40px;text-align: center"/>
                        <input class="add" name="" type="button" value="+" style="width: 25px" onclick="addnum()"/>
                        <span id="msg"></span>
                    </div>
                    <div class="add add-3">
                        <button class="btn btn-danger my-cart-btn my-cart-b" onclick="addToCart(${item.itemid})">
                            添加到购物车
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
        };

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

    function getbig(target) {
        var id = $(target)[0].getAttribute("id");
        var src = document.getElementById(id).getAttribute("src");
        var img = document.getElementById("big_img");
        img.setAttribute("src", src);
    }

    function minnum() {
        var num = document.getElementById("itemnum").value;
        num--;
        if (num <= 0) {
            document.getElementById("msg").innerText = "不能再减少了";
        }
        else {
            document.getElementById("itemnum").value = num;
        }
    }

    function addnum() {
        var num = document.getElementById("itemnum").value;
        num++;
        if (num > 0) {
            document.getElementById("msg").innerText = "";
        }
        document.getElementById("itemnum").value = num;
    }
    function addToCart(x) {
        var num1=$("input[id='itemnum']");
        var num=num1.attr("value");
        var name=<%if(username==null)out.print("null");else out.print("\""+username+"\"");%>;
        if(name==null||name.length===0){
            alert("请先登录!");
            return false;
        }else{
            var type =<%if(type==null)out.print("null");else out.print("\""+type+"\"");%>;
            if (type != null || type.length !== 0) {
                if (type !== "customer") {
                    alert("您不是买家");
                    return false;
                }
            } else {
                alert("请先登录!")
                return false;
            }
            alert("添加成功");
        }
        $.ajax({
            type:"POST",
            url:"item_add_to_cart?info=${username}&itemid="+x+"&num="+num
        })
    }
</script>
<style>
    .left-arrow {
        width: 0;
        height: 0;
        border-bottom: 5px solid transparent; /* left arrow slant */
        border-top: 5px solid transparent; /* right arrow slant */
        border-right: 5px solid #2f2f2f; /* bottom, add background color here */
        font-size: 0;
        line-height: 0;
        margin-right: 5px;
    }

    .img-small {
        width: 92.5px;
        height: 92.5px;
        margin-top: 5px;
        margin-left: 2.5px;
        margin-right: 2.5px;
        object-fit: cover;
        border: 1px solid #999999;
        padding: 5px;
    }

    .right-arrow {
        width: 0;
        height: 0;
        border-bottom: 5px solid transparent; /* left arrow slant */
        border-top: 5px solid transparent; /* right arrow slant */
        border-left: 5px solid #2f2f2f; /* bottom, add background color here */
        font-size: 0;
        line-height: 0;
    }

</style>
</body>
</html>