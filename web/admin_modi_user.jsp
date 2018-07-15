<%@ page import="com.web.customer.entity.Customer" %>
<%@ page import="com.sun.javafx.css.parser.Css2Bin" %><%--
  Created by IntelliJ IDEA.
  User: 22278
  Date: 2018/7/13
  Time: 16:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Big store a Ecommerce Online Shopping Category Flat Bootstrap Responsive Website Template | Register ::
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
        //生日选择器
        $(document).ready(function () {
            var date = new Date();//创建日期对象
            var year = date.getFullYear();//获取当前年份
            for (var i = year - 100; i <= year; i++) {//在id为year的selector附加option选项
                $("#year").append("<option value=\"" + i + "\">" + i + "</option>");//append函数附加html到元素结尾处
            }
            for (var j = 1; j <= 12; j++) {
                $("#month").append("<option value=\"" + j + "\">" + j + "</option>");//为Id为month的selector附加option选项
            }
            getDays($("#month").val(), $("#year").val());//执行函数getDays()，传参year和month，初始化day selector
        });

        function getDaysInMonth(month, year) {//年月对应的日数算法
            var days;
            if (month === 1 || month === 3 || month === 5 || month === 7 || month === 8 || month === 10 || month === 12) {
                days = 31;//固定31
            } else if (month === 4 || month === 6 || month === 9 || month === 11) {
                days = 30;//固定30
            } else {
                if ((year % 4 === 0 && year % 100 !== 0) || (year % 400 === 0)) {     //排除百年，每四年一闰；每四百年一闰；
                    days = 29; //闰年29
                } else {
                    days = 28; //平年28
                }
            }
            return days;//返回该年月的日数
        }

        function getDays() {
            var year = $("#year").val();//year selector onchange="getDays()"动态获取用户选择的year值
            var month = $("#month").val();//month selector onchange="getDays()"动态获取用户选择的month值
            var days = getDaysInMonth(month, year);//调用算法函数计算对应年月的日数
            $("#day").empty();//调用empty()函数清空day selector options，然后再append函数往day selector添加options
            for (var i = 1; i <= days; i++) {
                $("#day").append("<option value=\"" + i + "\">" + i + "</option>");
            }
        }

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
                %>
                <%
                    if(username==null){
                        out.print("注册");
                    }else {
                        out.print("<li><a href=\"admin_me.jsp?name="+username+"\"><i class=\"fa fa-file-text-o\" aria-hidden=\"true\"></i>管理员个人</a></li>");
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
        <h3>修改用户</h3>
        <h4><a href="index.jsp">首页</a><label>/</label><a href="admin_me.jsp">管理员个人主页</a><label>/</label>
            <a href="admin_user_management.jsp">用户信息管理</a><label>/</label>修改用户</h4>
        <div class="clearfix"></div>
    </div>
</div>

<div class="login">
    <div class="main-agileits">
        <div class="tab-content">
            <div class="tab-pane active" id="panel-33529">
                <div class="form-w3agile">
                    <h3>修改用户<h5>(Tips:只能修改密码)</h5></h3>
                    <form action="admin_modify_customer" method="post">
                        <div class="key">
                            <i class="fa fa-envelope" aria-hidden="true"></i>
                            <input type="text" name="Name" value="<%
                            Customer customer=(Customer)request.getSession().getAttribute("customer_info");
                            pageContext.setAttribute("customer", customer);
                            if(customer==null){
                                out.print("查无此人");
                            }else{
                                out.print(customer.getName());
                            }
                            %>" readonly required="">
                            <div class="clearfix"></div>
                        </div>
                        <div class="key">
                            <i class="fa fa-envelope" aria-hidden="true"></i>
                            <input type="text" name="Phone" value="<%if(customer==null){
                                out.print("查无此人");
                            }else{
                                out.print(customer.getPhone());
                            }%>" disabled required="">
                            <div class="clearfix"></div>
                        </div>
                        <div class="key">
                            <i class="fa fa-lock" aria-hidden="true"></i>
                            <input type="password" value="Password" name="Password" onfocus="this.value='';"
                                   onblur="if (this.value == '') {this.value = 'Password';}" required="">
                            <div class="clearfix"></div>
                        </div>
                        <div class="key">
                            <i class="fa fa-lock" aria-hidden="true"></i>
                            <input type="password" value="Password" name="Ensure" onfocus="this.value='';"
                                   onblur="if (this.value == '') {this.value = 'Password';}" required="">
                            <div class="clearfix"></div>
                        </div>
                        <input class="btn123" type="submit" onclick="check()" value="保存" style="float: left;margin-left: 20px">
                        <input class="btn123" type="submit" onclick="goback()" value="退出"  style="float: right;margin-right: 20px">
                        <div class="clearfix"></div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<!--footer-->
<div class="footer">
    <div class="container">
        <div class="clearfix"></div>
        <div class="footer-bottom">
            <h2><a href="index.jsp">四次元口袋<span>Dimensional Pockets</span></a></h2>
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
            <p> &copy; 2016 Big store. All Rights Reserved | Design by W3layouts</p>
        </div>
    </div>
</div>
<!-- //footer-->
<!-- smooth scrolling //回到顶部操作-->
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
<style>
    .btn123 {
        background: #fdb515;
        color: #FFFFFF;
        text-align: center;
        padding: 10px 0;
        border: none;
        font-size: 0.9em;
        outline: none;
        width: 32%;
        cursor: pointer;
        width: 80px;
        height: 35px;
    }
</style>
<script>
    function goback() {
        history.back(-1);
        return false;
    }
    function check() {
        var psw=document.getElementsByName("Password").item(0).value;
        var conf=document.getElementsByName("Ensure").item(0).value;

        if(psw!=conf){
            alert("两次输入密码不匹配，请重新输入！");
            return false;
        }else{
            return true;
        }
    }
</script>
</body>
</html>