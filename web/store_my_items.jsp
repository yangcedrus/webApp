<%--
  Created by IntelliJ IDEA.
  User: 22278
  Date: 2018/7/13
  Time: 16:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<title>Big store a Ecommerce Online Shopping Category Flat Bootstrap Responsive Website Template | Hold :: w3layouts</title>
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
<!--- start-rate---->
<script src="js/jstarbox.js"></script>
	<link rel="stylesheet" href="css/jstarbox.css" type="text/css" media="screen" charset="utf-8" />

	<script type="text/javascript" charset="utf-8">
        $(function(){
            $("#item-menu div").quickpaginate({ perpage: 12, showcounter:true, pager : $("#item-menu") });
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
				<h1 ><a href="index.jsp">四次元口袋<span>Dimensional Pockets</span></a></h1>
			</div>
			<div class="head-t">
				<ul class="card">
					<li><a href="login,jsp" ><i class="fa fa-user" aria-hidden="true"></i>登录</a></li>
					<li><a href="register.jsp" ><i class="fa fa-arrow-right" aria-hidden="true"></i>注册</a></li>
				</ul>	
			</div>
					
				</div>			
</div>
<div class="banner-top">
	<div class="container">
		<h3 >我的店铺</h3>
		<h4><a href="index.jsp">首页</a><label>/</label><a href="store_my_items.jsp">卖家个人中心</a><label>/</label>我的店铺</h4>
		<div class="clearfix"> </div>
	</div>
</div>

<!--content-->
<div class="kic--top" style="padding: 2em 0 0">
	<div class="container ">
	<div class="kic ">
			<!--<h3>xxx的店铺</h3>-->

		</div>
		<div class="col-md-4 kic-top1">
			店铺详情：比如总共几件商品、售出多少件、好评多少
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
				<div class="col-md-3 pro-1">
					<div class="col-m">
						<a href="#" data-toggle="modal" data-target="#myModal1" class="offer-img">
							<img src="images/of48.png" class="img-responsive" alt="">
						</a>
						<div class="mid-1">
							<div class="women">
								<h6><a href="item_details.jsp">Cat Food</a>(500 g)</h6>
							</div>
							<div class="mid-2">
								<p ><label>¥7.00</label><em class="item_price">¥6.00</em></p>
								<span style="float:right;font-size:0.9em;color:#B4B4B4;">数量：20件</span>
								<div class="clearfix"></div>
							</div>
							<div class="add">
								<button class="modify-btn" data-id="48" data-name="Cat Food" data-summary="summary 48" data-price="6.00" data-quantity="1" data-image="images/of48.png" onclick="modify()">点击修改</button>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-3 pro-1">
								<div class="col-m">
									<a href="#" data-toggle="modal" data-target="#myModal2" class="offer-img">
										<img src="images/of49.png" class="img-responsive" alt="">
									</a>
									<div class="mid-1">
										<div class="women">
											<h6><a href="item_details.jsp">Safety Pins</a>(100 g)</h6>
										</div>
										<div class="mid-2">
											<p ><label>$5.00</label><em class="item_price">$4.50</em></p>
											<span style="float:right;font-size:0.9em;color:#B4B4B4;">数量：20件</span>
											<div class="clearfix"></div>
										</div>
											<div class="add">
										   <button class="modify-btn" data-id="49" data-name="Safety Pins" data-summary="summary 49" data-price="4.50" data-quantity="1" data-image="images/of49.png" onclick="modify()">点击修改</button>
										</div>
									</div>
								</div>
							</div>
				<div class="col-md-3 pro-1">
								<div class="col-m">
									<a href="#" data-toggle="modal" data-target="#myModal3" class="offer-img">
										<img src="images/of50.png" class="img-responsive" alt="">
									</a>
									<div class="mid-1">
										<div class="women">
											<h6><a href="item_details.jsp">Agarbatti</a>(200 g)</h6>
										</div>
										<div class="mid-2">
											<p ><label>$4.00</label><em class="item_price">$3.50</em></p>
											<span style="float:right;font-size:0.9em;color:#B4B4B4;">数量：20件</span>
											<div class="clearfix"></div>
										</div>
											<div class="add">
										   <button class="modify-btn" data-id="50" data-name="Agarbatti" data-summary="summary 50" data-price="3.50" data-quantity="1" data-image="images/of50.png" onclick="modify()">点击修改</button>
										</div>
									</div>
								</div>
							</div>
				<div class="col-md-3 pro-1">
								<div class="col-m">
									<a href="#" data-toggle="modal" data-target="#myModal4" class="offer-img">
										<img src="images/of51.png" class="img-responsive" alt="">
									</a>
									<div class="mid-1">
										<div class="women">
											<h6><a href="item_details.jsp">Candle Set </a>(1 pc)</h6>
										</div>
										<div class="mid-2">
											<p ><label>$1.00</label><em class="item_price">$0.80</em></p>
											<span style="float:right;font-size:0.9em;color:#B4B4B4;">数量：20件</span>
											<div class="clearfix"></div>
										</div>
											<div class="add">
										   <button class="modify-btn" data-id="51" data-name="Candle Set" data-summary="summary 51" data-price="0.80" data-quantity="1" data-image="images/of51.png" onclick="modify()">点击修改</button>
										</div>
									</div>
								</div>
							</div>

				<div class="col-md-3 pro-1">
								<div class="col-m">
								<a href="#" data-toggle="modal" data-target="#myModal5" class="offer-img">
										<img src="images/of52.png" class="img-responsive" alt="">
									</a>
									<div class="mid-1">
										<div class="women">
											<h6><a href="item_details.jsp">Dust Bin</a>(1 pc)</h6>
										</div>
										<div class="mid-2">
											<p ><label>$7.00</label><em class="item_price">$6.00</em></p>
											<span style="float:right;font-size:0.9em;color:#B4B4B4;">数量：20件</span>
											<div class="clearfix"></div>
										</div>
											<div class="add">
										   <button class="modify-btn" data-id="52" data-name="Dust Bin" data-summary="summary 52" data-price="6.00" data-quantity="1" data-image="images/of52.png" onclick="modify()">点击修改</button>
										</div>
									</div>
								</div>
							</div>
				<div class="col-md-3 pro-1">
								<div class="col-m">
									<a href="#" data-toggle="modal" data-target="#myModal6" class="offer-img">
										<img src="images/of53.png" class="img-responsive" alt="">
									</a>
									<div class="mid-1">
										<div class="women">
											<h6><a href="item_details.jsp"> Hanger</a>(1 pc)</h6>
										</div>
										<div class="mid-2">
											<p ><label>$5.00</label><em class="item_price">$4.50</em></p>
											<span style="float:right;font-size:0.9em;color:#B4B4B4;">数量：20件</span>
											<div class="clearfix"></div>
										</div>
											<div class="add">
										   <button class="modify-btn" data-id="53" data-name="Hanger" data-summary="summary 53" data-price="4.50" data-quantity="1" data-image="images/of53.png" onclick="modify()">点击修改</button>
										</div>
									</div>
								</div>
							</div>
				<div class="col-md-3 pro-1">
								<div class="col-m">
									<a href="#" data-toggle="modal" data-target="#myModal7" class="offer-img">
										<img src="images/of54.png" class="img-responsive" alt="">
									</a>
									<div class="mid-1">
										<div class="women">
											<h6><a href="item_details.jsp"> Pet Bowl</a>(1 pc)</h6>
										</div>
										<div class="mid-2">
											<p ><label>$4.00</label><em class="item_price">$3.50</em></p>
											<span style="float:right;font-size:0.9em;color:#B4B4B4;">数量：20件</span>
											<div class="clearfix"></div>
										</div>
											<div class="add">
										   <button class="modify-btn" data-id="54" data-name="Pet Bowl" data-summary="summary 54" data-price="3.50" data-quantity="1" data-image="images/of54.png" onclick="modify()">点击修改</button>
										</div>
									</div>
								</div>
							</div>
				<div class="col-md-3 pro-1">
								<div class="col-m">
									<a href="#" data-toggle="modal" data-target="#myModal8" class="offer-img">
										<img src="images/of55.png" class="img-responsive" alt="">
									</a>
									<div class="mid-1">
										<div class="women">
											<h6><a href="item_details.jsp">Tailum</a>(500 g)</h6>
										</div>
										<div class="mid-2">
											<p ><label>$1.00</label><em class="item_price">$0.80</em></p>
											<span style="float:right;font-size:0.9em;color:#B4B4B4;">数量：20件</span>
											<div class="clearfix"></div>
										</div>
											<div class="add">
										   <button class="modify-btn" data-id="55" data-name="Tailum" data-summary="summary 55" data-price="0.80" data-quantity="1" data-image="images/of55.png" onclick="modify()">点击修改</button>
										</div>
									</div>
								</div>
							</div>

				<div class="col-md-3 pro-1">
								<div class="col-m">
								<a href="#" data-toggle="modal" data-target="#myModal9" class="offer-img">
										<img src="images/of56.png" class="img-responsive" alt="">
									</a>
									<div class="mid-1">
										<div class="women">
											<h6><a href="item_details.jsp"> Container</a>(1 pc)</h6>
										</div>
										<div class="mid-2">
											<p ><label>$7.00</label><em class="item_price">$6.00</em></p>
											<span style="float:right;font-size:0.9em;color:#B4B4B4;">数量：20件</span>
											<div class="clearfix"></div>
										</div>
											<div class="add">
										   <button class="modify-btn" data-id="56" data-name="Container" data-summary="summary 56" data-price="6.00" data-quantity="1" data-image="images/of56.png" onclick="modify()">点击修改</button>
										</div>
									</div>
								</div>
							</div>
				<div class="col-md-3 pro-1">
								<div class="col-m">
									<a href="#" data-toggle="modal" data-target="#myModal10" class="offer-img">
										<img src="images/of57.png" class="img-responsive" alt="">
									</a>
									<div class="mid-1">
										<div class="women">
											<h6><a href="item_details.jsp">Scrub Sponge</a>(100 g)</h6>
										</div>
										<div class="mid-2">
											<p ><label>$5.00</label><em class="item_price">$4.50</em></p>
											<span style="float:right;font-size:0.9em;color:#B4B4B4;">数量：20件</span>
											<div class="clearfix"></div>
										</div>
											<div class="add">
										   <button class="modify-btn" data-id="57" data-name="Scrub Sponge" data-summary="summary 57" data-price="4.50" data-quantity="1" data-image="images/of57.png" onclick="modify()">点击修改</button>
										</div>
									</div>
								</div>
							</div>
				<div class="col-md-3 pro-1">
								<div class="col-m">
									<a href="#" data-toggle="modal" data-target="#myModal11" class="offer-img">
										<img src="images/of58.png" class="img-responsive" alt="">
									</a>
									<div class="mid-1">
										<div class="women">
											<h6><a href="item_details.jsp">Reindeer </a>(1 pc)</h6>
										</div>
										<div class="mid-2">
											<p ><label>$4.00</label><em class="item_price">$3.50</em></p>
											<span style="float:right;font-size:0.9em;color:#B4B4B4;">数量：20件</span>
											<div class="clearfix"></div>
										</div>
											<div class="add">
										   <button class="modify-btn" data-id="58" data-name="Xmas Reindeer" data-summary="summary 58" data-price="3.50" data-quantity="1" data-image="images/of58.png" onclick="modify()">点击修改</button>
										</div>
									</div>
								</div>
							</div>
				<div class="col-md-3 pro-1">
								<div class="col-m">
									<a href="#" data-toggle="modal" data-target="#myModal12" class="offer-img">
										<img src="images/of59.png" class="img-responsive" alt="">
									</a>
									<div class="mid-1">
										<div class="women">
											<h6><a href="item_details.jsp"> Cleaner</a>(1 pc)</h6>
										</div>
										<div class="mid-2">
											<p ><label>$1.00</label><em class="item_price">$0.80</em></p>
											<span style="float:right;font-size:0.9em;color:#B4B4B4;">数量：20件</span>
											<div class="clearfix"></div>
										</div>
											<div class="add">
										   <button class="modify-btn" data-id="59" data-name="Cleaner" data-summary="summary 59" data-price="0.80" data-quantity="1" data-image="images/of59.png" onclick="modify()">点击修改</button>
										</div>
									</div>
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
				<h2 ><a href="index.jsp">四次元口袋<span>The Best Supermarket</span></a></h2>
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
			<p> &copy; 2016 Big store. All Rights Reserved | Design by  <a href="http://w3layouts.com/"> W3layouts</a></p>
		</div>
	</div>
</div>
<!-- //footer-->
<style>
	.modify-btn{
		background: none;
		text-decoration: none;
		color: #FAB005;
		font-size: 0.8em;
		border: 1px solid #FAB005;
		border-radius: 5px;
		padding: 0.5em 1em;
		outline: none;
	}
	.modify-btn{
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
	.modify-btn:hover, .modify-btn:focus, .modify-btn:active{
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
		function modify() {
			window.location.href='store_modi_item.jsp'
        }
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
      }
  });
  </script>

</body>
</html>