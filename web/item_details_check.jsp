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
                <%
                    String username=(String)request.getSession().getAttribute("info");
                    if(username==null){
                        out.print("<li><a href=\"login.jsp\"><i class=\"fa fa-user\" aria-hidden=\"true\"></i>登录</a></li>");
                    }else{
                        if(username.equals("登录失败"))
                            out.print("<li><a href=\"login.jsp\"><i class=\"fa fa-user\" aria-hidden=\"true\"></i>登录失败,重新登录</a></li>");
                        else
                            // TODO: 2018/7/15 注销功能待实现
                            out.print("<li><a href=\"###\"><i class=\"fa fa-user\" aria-hidden=\"true\"></i>您好,"+username+"</a></li>");
                    }
                    if(username==null){
                        out.print("<li><a href=\"register.jsp\"><i class=\"fa fa-arrow-right\" aria-hidden=\"true\"></i>注册</a></li>");
                    }else {
                        out.print("<li><a href=\"javascript:if(confirm('确实要注销吗?'))location='login.jsp\"><i class=\"fa fa-file-text-o\" aria-hidden=\"true\"></i>卖家个人</a></li>");
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
        <h3>审核商品-详情</h3>
        <h4><a href="admin_items_management.jsp">商品审核</a><label>/</label>审核商品-详情</h4>
        <div class="clearfix"></div>
    </div>
</div>
<div class="faq-w3 main-grid-border">
    <div class="container">
        <div class="single1">
            <div class="col-md-5 single-top">
                <div class="single-w3agile">

                    <div id="picture-frame">
                        <img src="images/si.jpg" data-src="images/si-1.jpg" alt="" class="img-responsive" id="big_img" style="height: 300px;width: 300px;object-fit: cover;"/>
                    </div>

                </div>
                <div style="width: 445px;height: auto">

                    <div style="height: auto;width: 435px;margin-left: 10px;margin-right: 10px">
                        <a class="left-arrow"></a>
                        <%
                            List<String> list=(List)request.getSession().getAttribute("img");
                            if(list!=null&&list.size()>0){
                                for(int i=0;i<list.size();i++){
                                    pageContext.setAttribute("img",list.get(i));
                                    pageContext.setAttribute("num",i+1);
                        %>
                        <img class="img-small" src="${img}" id="${num}" onclick="getbig(this)"/>
                        <%
                                }
                            }
                        %>
                        <%--<img class="img-small" src="images/of11.png" id="2" onclick="getbig(this)"/>--%>
                        <%--<img class="img-small" src="images/of12.png" id="3" onclick="getbig(this)"/>--%>
                        <%--<img class="img-small" src="images/of13.png" id="4" onclick="getbig(this)"/>--%>
                        <%--<img class="img-small" src="images/of13.png" id="5" onclick="getbig(this)" style="display: none"/>--%>
                        <a class="right-arrow" ></a>
                    </div>


                </div>
            </div>
            <div class="col-md-7 single-top-left ">
                <div class="single-right" style="margin-top: 30px">
                    <%
                        String info=request.getSession().getAttribute("info").toString();
                        String id=null,name=null,price=null,stock=null,desc=null,storeid=null;
                        if(info.equals("true")){
                            id=request.getSession().getAttribute("id").toString();
                            price=request.getSession().getAttribute("price").toString();
                            stock=request.getSession().getAttribute("stock").toString();
                            name=request.getSession().getAttribute("name").toString();
                            desc=request.getSession().getAttribute("desc").toString();
                            storeid=request.getSession().getAttribute("storeid").toString();
                        }

                    %>
                    <h3>商品名称：<%=name%></h3>


                    <div class="pr-single">
                        <p class="reduced ">
                            <span style="color: #5b5b5b">价格：</span><del>$10.00</del>
                            <%=price%>
                        </p>

                    </div>
                    <p>库存容量：<%=stock%></p>
                    <p class="in-pa"> <span style="color: #999999">详细介绍：</span> <%=desc%> </p>
                    <div class="add add-3" id="<%=id%>">
                        <input type="submit" class="btn123" value="审核通过" style="margin-right: 10px" onclick="pass()">

                        <input  type="submit" class="btn123" value="审核不通过" onclick="show_reason()">
                        <div id="reason1" style="display: none">
                            <p >理由：</p>
                            <textarea id="reason" name="reason" rows="4" cols="60" style="margin-top: 5px"></textarea>
                            <button type="submit" value="提交" name="<%=id%>" class="btn123"></button>
                        </div>
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
    function getbig(target) {
        var id=$(target)[0].getAttribute("id");
        var src=document.getElementById(id).getAttribute("src");
        var img=document.getElementById("big_img");
        img.setAttribute("src",src);
    }
    function show_reason() {
        var div=document.getElementById("reason1");
        div.style.display="block";
    }
    function pass() {
        window.location.href="pass_item?itemid="+<%=id%>;
    }
</script>
<style>
    .left-arrow{
        width: 0;
        height: 0;
        border-bottom: 5px solid transparent; /* left arrow slant */
        border-top: 5px solid transparent; /* right arrow slant */
        border-right: 5px solid #2f2f2f; /* bottom, add background color here */
        font-size: 0;
        line-height: 0;
        margin-right: 5px;
    }
    .img-small{
        width: 92.5px;
        height: 92.5px;
        margin-top: 5px;
        margin-left: 2.5px;
        margin-right: 2.5px;
        object-fit: cover;
        border: 1px solid #999999;
        padding: 5px;
    }
    .right-arrow{
        width: 0;
        height: 0;
        border-bottom: 5px solid transparent; /* left arrow slant */
        border-top: 5px solid transparent; /* right arrow slant */
        border-left: 5px solid #2f2f2f; /* bottom, add background color here */
        font-size: 0;
        line-height: 0;
    }
    .btn123 {
        background: #fdb515;
        color: #FFFFFF;
        text-align: center;
        padding: 10px 5px;
        border: none;
        font-size: 0.8em;
        outline: none;
        cursor: pointer;
        width: 70px;
        height: 35px;
        margin-bottom: 10px;
        margin-top: 5px;
    }

</style>
</body>
</html>