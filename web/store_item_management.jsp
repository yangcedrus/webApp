<%@ page import="java.util.List" %>
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
<%--<%--%>
    <%--String msg=(String)request.getSession().getAttribute("modi");--%>
    <%--if(msg=="true"){--%>
        <%--out.print("<script type=\"text/javascript\">alert('修改成功')</script");--%>
    <%--}--%>
<%--%>--%>
<div class="header">

    <div class="container">

        <div class="logo">
            <h1 ><a href="index.jsp">四次元口袋<span>Dimensional Pockets</span></a></h1>
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

<!--banner-->
<div class="banner-top">
    <div class="container">
        <h3 >商品管理</h3>
        <h4><a href="index.jsp">主页</a><label>/</label><a href="store_me.jsp">卖家个人中心</a><label>/</label>商品管理</h4>
        <div class="clearfix"> </div>
    </div>
</div>

<!--content-->
<div class="content-top offer-w3agile">
    <div class="container ">
        <div class="spec ">
            <h3>商品管理</h3>
            <div class="ser-t">
                <b></b>
                <span><i></i></span>
                <b class="line"></b>
            </div>
        </div>
        <div class="table table-striped">
            <button class="btn btn-danger my-cart-b" onclick="add()">上架</button>
            <table class="table" id="store_item_management_table">
                <thead>
                <tr>
                    <th>序号</th>
                    <th>商品名称</th>
                    <th>商品价格</th>
                    <th>库存容量</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <%
                    List<Item> items=(List)request.getSession().getAttribute("store");
                    if(items!=null&&items.size()>0){
                        for(int i=0;i<items.size();i++){
                            pageContext.setAttribute("item",items.get(i));
                            pageContext.setAttribute("num",i+1);
                %>
                <tr>
                    <td>${num}</td>
                    <td>${item.name}</td>
                    <td>¥ ${item.price}</td>
                    <td>${item.stock}</td>
                    <td>
                        <button id="show" name="${item.itemid}" class="btn btn-danger my-cart-btn my-cart-b" onclick="details(${item.itemid})">详情</button>
                        <button id="modify" name="${item.itemid}" class="btn btn-danger my-cart-btn my-cart-b" onclick="modify(${item.itemid})">修改</button>
                        <button id="getdown" name="${item.itemid}" class="btn btn-danger my-cart-btn my-cart-b" onclick="getdown(${item.itemid})">下架</button>
                    </td>
                </tr>
                <%
                        }
                    }
                %>

                </tbody>
            </table>
        </div>

        <hr class="bs-docs-separator">
        <div class=" con-w3l wthree-of">
            <div class="clearfix"></div>
        </div>
    </div>
</div>



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
<!--button跳转-->
<script>
    //详情
    function details(x){
        window.location.href="one_item_details?info=${username}&itemid="+x;
    }
    //修改
    function modify(x){
        window.location.href="modi_item_info?info=${username}&itemid="+x;
    }
    //添加
    <%
        String store_name=(String)request.getSession().getAttribute("store_name");
    %>
    function add() {
        window.location.href='store_add_item.jsp?info=${username}&name=<%=store_name%>';
    }
    //下架
    function getdown(x) {
        window.location.href="item_getdown?info=${username}&itemid="+x;
    }
</script>

<!-- for bootstrap working -->
<script src="js/bootstrap.js"></script>
<!-- //for bootstrap working -->
<script>
    $(function(){
        var $table = $('table');
        var currentPage = 0;//当前页默认值为0
        var pageSize = 5;//每一页显示的数目
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