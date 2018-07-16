<%@ page import="com.web.administer.utils.BaseDao" %>
<%@ page import="com.web.item.entity.Item" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %><%--
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

</head>
<%--获取数据库内容--%>
<%
    List<Item> items = new ArrayList<>();
    Connection conn;
    ResultSet rs = null;
    ResultSet rs1 = null;
    PreparedStatement ps = null;

    try {
        conn = BaseDao.getCon();
        String sql = "select * from item where state=1";
        ps = conn.prepareStatement(sql);

        rs = ps.executeQuery();

        while (rs.next()) {
            Item item = new Item();
            //拼装实体类
            item.setItemid(rs.getInt("itemid"));
            item.setName(rs.getString("name"));
            item.setDescription(rs.getString("description"));
            item.setPrice(rs.getDouble("price"));
            item.setStock(rs.getInt("stock"));
            item.setStoreid(rs.getInt("storeid"));
            item.setState(rs.getInt("state"));
            //查找图片
            String sql2 = "select imagepath from image where itemid=?";
            ps = conn.prepareStatement(sql2);
            ps.setInt(1, item.getItemid());
            rs1 = ps.executeQuery();
            List<String> images = new ArrayList<>();
            while (rs1.next()) {
                String path = rs.getString("imagepath");
                images.add(path);
            }
            if (images.size() > 0) {
                item.setImagePath(images);
            } else {
                item.setImagePath(null);
            }
            //添加到list
            items.add(item);
        }
        rs.close();
    } catch (SQLException | ClassNotFoundException e) {
        e.printStackTrace();
    }
%>
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
                        else
                            // TODO: 2018/7/15 注销功能待实现
                            out.print("<li><a href=\"###\"><i class=\"fa fa-user\" aria-hidden=\"true\"></i>您好," + username + "</a></li>");
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
<div data-vide-bg="video/video">
    <div class="container">
        <div class="banner-info">
            <h3> 做你生活中的四次元口袋 </h3>
            <div class="search-form">
                <form action="search_name_items?info=${info}&type=<%out.print(type);%>" method="get">
                    <input type="text" placeholder="搜索..." name="Search">
                    <input type="submit" value=" ">
                </form>
            </div>
        </div>
    </div>
</div>

<script>window.jQuery || document.write('<script src="js/jquery-1.11.1.min.js"><\/script>')</script>
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
        <div id="items_list" class="con-w3l wthree-of">
            <!--四个推荐商品-->
            <%
                if (items.size() != 0) {
                    for (int i = 0; i < items.size(); i++) {
                        pageContext.setAttribute("item", items.get(i));
                        pageContext.setAttribute("num", i + 1);
                        pageContext.setAttribute("info", username);
                        //保存到页面pageContext里面方便下面进行EL表达式调用
            %>
            <div class="col-md-3 pro-1">
                <div class="col-m">
                    <a href="one_item_details?<%if(username!=null){out.print("info="+username+"&");}%>itemid=${item.itemid}" target="_blank" class="offer-img">
                        <%
                            if(items.get(i).getImagePath()!=null){
                                out.print("<img src=\""+items.get(i).getImagePath().get(0)+"\" class=\"img-responsive\" alt=\"\">");
                            }else {
                                out.print("<img src=\"images/of17.png\" class=\"img-responsive\" alt=\"\">");
                            }
                        %>
                    </a>
                    <div class="mid-1">
                        <div class="women">
                            <h6><a href="item_details.jsp?<%if(username!=null){out.print("info="+username+"&");}%>itemid=${item.itemid}" target="_blank">${item.name}</a></h6>
                        </div>
                        <div class="mid-2">
                            <p><em class="item_price">￥${item.price}</em></p>
                            <div class="clearfix"></div>
                        </div>
                        <div class="add add-2">
                            <button class="btn btn-danger my-cart-btn my-cart-b">添加到购物车</button>
                        </div>
                    </div>
                </div>
            </div>
            <%
                    }
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
</body>
</html>