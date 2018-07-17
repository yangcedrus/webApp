<%--
  Created by IntelliJ IDEA.
  User: 22278
  Date: 2018/7/13
  Time: 16:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.web.customer.entity.Customer" %>
<%@ page import="java.util.List" %>
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
                        out.print("<li><a href=\"admin_me.jsp?info="+username+"\"><i class=\"fa fa-file-text-o\" aria-hidden=\"true\"></i>管理员个人</a></li>");
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
        <h3>用户管理</h3>
        <h4><a href="index.jsp">首页</a>
            <label>/</label><a href="admin_me.jsp">管理员个人中心</a><label>/</label>
            用户管理</h4>
        <div class="clearfix"></div>
    </div>
</div>

<!-- faqs -->
<div class="faq-w3 main-grid-border">
    <div class="container">
        <div class="spec ">
            <h3>用户管理</h3>
            <div class="ser-t">
                <b></b>
                <span><i></i></span>
                <b class="line"></b>
            </div>
        </div>
        <div class="table table-striped">
            <table id="customer_table" class="table">
                <thead>
                <tr>
                    <th>序号</th>
                    <th>用户名</th>
                    <th>用户类型</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <%--获取所有用户--%>
                <%
                    //循环显示数据
                    List<Customer> customerList = (List) request.getSession().getAttribute("customer_list");
                    if (customerList != null && customerList.size() != 0) {
                        for (int i = 0; i < customerList.size(); i++) {
                            pageContext.setAttribute("customer", customerList.get(i));
                            pageContext.setAttribute("num", i+1);
                            //保存到页面pageContext里面方便下面进行EL表达式调用
                %>
                <tr>
                    <td>${num}</td>
                    <td id="customer_name">${customer.name}</td>
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
        </div>
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
<script type="text/javascript">
    function customer_modify(i) {
        window.location.href = 'admin_customer_info?method=get&id='+i;

    }
    
    function del_confirm(i) {
        var message=confirm("确定要删除吗？");
        if(message==true){
            var userName = $(this).parents("tr").find("#customer_name").text();
            window.location.href='admin_delete_customer?id='+i;
            alert("删除成功");
            return false;
        }else{
            alert("取消删除");
            return false;
        }
    }
</script>

<script src="js/jquery-1.11.1.min.js"></script>
<script>
    $(function(){
        var $table = $('table');
        var currentPage = 0;//当前页默认值为0
        var pageSize = 3;//每一页显示的数目
        $table.bind('paging',function(){
            $table.find('tbody tr').hide().slice(currentPage*pageSize,(currentPage+1)*pageSize).show();
        });
        var sumRows = $table.find('tbody tr').length;
        var sumPages = Math.ceil(sumRows/pageSize);//总页数

        var $pager = $('<div class="page"></div>');  //新建div，放入a标签,显示底部分页码
        for(var pageIndex = 0 ; pageIndex<sumPages ; pageIndex++){
            $('<a href="#" id="pageStyle" onclick="changCss(this)"><span>'+(pageIndex+1)+'</span></a>').bind("click",{"newPage":pageIndex},function(event){
                currentPage = event.data["newPage"];
                $table.trigger("paging");
                //触发分页函数
            }).appendTo($pager);
            $pager.append(" ");
        }
        $pager.insertAfter($table);
        $table.trigger("paging");

        //默认第一页的a标签效果
        var $pagess = $('#pageStyle');
        $pagess[0].style.backgroundColor="#006B00";
        $pagess[0].style.color="#ffffff";
    });

    //a链接点击变色，再点其他回复原色
    function changCss(obj){
        var arr = document.getElementsByTagName("a");
        for(var i=0;i<arr.length;i++){
            if(obj==arr[i]){       //当前页样式
                obj.style.backgroundColor="#006B00";
                obj.style.color="#ffffff";
            }
            else
            {
                arr[i].style.color="";
                arr[i].style.backgroundColor="";
            }
        }
    }
</script>

<style>
    #pageStyle{
        display:inline-block;
        width:32px;
        height:32px;
        border:1px solid #CCC;
        line-height:32px;
        text-align:center;
        color:#999;
        margin-top:20px;
        text-decoration:none;

    }
    #pageStyle:hover{
        background-color:#CCC;
    }
    #pageStyle .active{
        background-color:#0CF;
        color:#ffffff;
    }
</style>
</body>
</html>