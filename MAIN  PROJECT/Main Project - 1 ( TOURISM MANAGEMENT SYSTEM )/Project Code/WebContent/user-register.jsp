<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.connection.*"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>TOURISM GUIDE SYSTEM</title>

<link rel="stylesheet" href="assets/css/style-freedom.css">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	
<link href="style1.css" rel="stylesheet" type="text/css" media="screen" />

</head>


<body>

	<script
		src='../../../../../../../ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js'></script>
	<script
		src="../../../../../../../m.servedby-buysellads.com/monetization.js"
		type="text/javascript"></script>
	<script>
		(function() {
			if (typeof _bsa !== 'undefined' && _bsa) {
				// format, zoneKey, segment:value, options
				_bsa.init('flexbar', 'CKYI627U', 'placement:w3layoutscom');
			}
		})();
	</script>
	<script>
		(function() {
			if (typeof _bsa !== 'undefined' && _bsa) {
				// format, zoneKey, segment:value, options
				_bsa.init('fancybar', 'CKYDL2JN', 'placement:demo');
			}
		})();
	</script>
	<script>
		(function() {
			if (typeof _bsa !== 'undefined' && _bsa) {
				// format, zoneKey, segment:value, options
				_bsa.init('stickybox', 'CKYI653J', 'placement:w3layoutscom');
			}
		})();
	</script>
	<!--<script>(function(v,d,o,ai){ai=d.createElement("script");ai.defer=true;ai.async=true;ai.src=v.location.protocol+o;d.head.appendChild(ai);})(window, document, "//a.vdo.ai/core/w3layouts_V2/vdo.ai.js?vdo=34");</script>-->
	<div id="codefund">
		<!-- fallback content -->
	</div>
	<script src="https://ethicalads.io/?ref=codefund" async="async"></script>

	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async
		src='https://www.googletagmanager.com/gtag/js?id=UA-149859901-1'></script>
	<script>
		window.dataLayer = window.dataLayer || [];
		function gtag() {
			dataLayer.push(arguments);
		}
		gtag('js', new Date());

		gtag('config', 'UA-149859901-1');
	</script>

	<script>
		window.ga = window.ga || function() {
			(ga.q = ga.q || []).push(arguments)
		};
		ga.l = +new Date;
		ga('create', 'UA-149859901-1', 'demo.w3layouts.com');
		ga('require', 'eventTracker');
		ga('require', 'outboundLinkTracker');
		ga('require', 'urlChangeTracker');
		ga('send', 'pageview');
	</script>
	<script async src='../../../../../../js/autotrack.js'></script>

	<meta name="robots" content="noindex">
<body>
	<link rel="stylesheet"
		href="../../../../../../images/demobar_w3_4thDec2019.css">
	<!-- Demo bar start -->
	<div class="w3l-headers-9">
		<header>
			<div class="wrapper">
				<div class="header">
					<div>
						<h1>
							<a href="index.jsp" class="logo">TOURISM GUIDE SYSTEM</a>
							<!-- if logo is image enable this   
						<a class="logo" href="index.html">
							<img src="image-path" alt="Your logo" title="Your logo" style="height:35px;" />
						</a> -->
						</h1>
					</div>
					<div class="bottom-menu-content">
						<input type="checkbox" id="nav" /> <label for="nav"
							class="menu-bar"></label>
						<nav>
							<ul class="menu">
								<li><a href="index.jsp" class="link-nav">Home</a></li>
								<li><a href="admin-login.jsp" class="link-nav">User
										Login</a></li>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</header>
		<!-- //header -->
	</div>

	<!-- //covers -->
	<!-- form 34-2 -->
	<section class="w3l-form-34-main">
		<div class="w3l-book-9">
			<div class="main-top">
				<div class="wrapper padding-bord">
					<h2 class="form-head">User Account Creation</h2>
					<br>
					<form action="AddUser" method="post">
						<div class="d-grid grid-col-2">
							<div class="ele-9its_grid">
								<p class="text-head">User Id</p>
								<%
									String userId = DatabaseConnection.generateTourUserId();
								%>
								

			
								<input type="text" class="input"   placeholder="User Id"
									value="<%=userId%>" name="uid" readonly />					
									
							</div>
							<div class="ele-9its_grid">
								<p class="text-head">Full Name</p>
								<input type="text" class="input" placeholder="Full Name"
									name="fname" />
							</div>
						</div>
			
						<div class="d-grid grid-col-2">
							<div class="ele-9its_grid">
								<p class="text-head">Email Id</p>
								<input type="email" class="input" placeholder="Email Id"
									name="email" />
							</div>
							<div class="ele-9its_grid">
								<p class="text-head">Mobile No</p>
								<input type="text" class="input" placeholder="Mobile No"
									name="mobile" />
							</div>
						</div>
						<div class="">
							<p class="text-head">Address</p>
							<input type="text" class="input" placeholder="Address"
								name="address" />
						</div>
						<div class="d-grid grid-col-2">
							<div class="ele-9its_grid">
								<p class="text-head">User Name</p>
								<input type="text" class="input" placeholder="User Name"
									name="uname" />
							</div>
							<div class="ele-9its_grid">
								<p class="text-head">User Password</p>
								<input type="password" class="input" placeholder="Password"
									name="upass" />
							</div>
						</div>
						
</a>						
						<h3>Give Following Questions Answer</h3>
						<div class="d-grid grid-col-2">
							<div class="ele-9its_grid">
								<p class="text-head"><strong>Question-1</strong></p>
								<p>Would you like go to the beach?</p>
							</div>
							<div class="ele-9its_grid">
								<p class="text-head">Answer</p>
								<select name="answer1" class="custom-select">
									<option>Select</option>
									<option>Yes</option>
									<option>No</option>
								</select>
							</div>
						</div>
						<div class="d-grid grid-col-2">
							<div class="ele-9its_grid">
								<p class="text-head"><strong>Question-2</strong></p>
								<p>Would you like to visit Hill Station?</p>
							</div>
							<div class="ele-9its_grid">
								<p class="text-head">Answer</p>
								<select name="answer1" class="custom-select">
									<option>Select</option>
									<option>Yes</option>
									<option>No</option>
								</select>
							</div>
						</div>
						<div class="d-grid grid-col-2">
							<div class="ele-9its_grid">
								<p class="text-head"><strong>Question-3</strong></p>
								<p> Would you like to have landscape view?</p>
							</div>
							<div class="ele-9its_grid">
								<p class="text-head">Answer</p>
								<select name="answer1" class="custom-select">
									<option>Select</option>
									<option>Yes</option>
									<option>No</option>
								</select>
							</div>
						</div>
						<div class="d-grid grid-col-2">
							<div class="ele-9its_grid">
								<p class="text-head"><strong>Question-4</strong></p>
								<p>Would you like to visit Museum?</p>
							</div>
							<div class="ele-9its_grid">
								<p class="text-head">Answer</p>
								<select name="answer1" class="custom-select">
									<option>Select</option>
									<option>Yes</option>
									<option>No</option>
								</select>
							</div>
						</div>
						<div class="d-grid grid-col-2">
							<div class="ele-9its_grid">
								<p class="text-head"><strong>Question-5</strong></p>
								<p>Would you like to visit Temple?</p>
							</div>
							<div class="ele-9its_grid">
								<p class="text-head">Answer</p>
								<select name="answer1" class="custom-select">
									<option>Select</option>
									<option>Yes</option>
									<option>No</option>
								</select>
							</div>
						</div>
						<div class="d-grid grid-col-2">
							<div class="ele-9its_grid">
								<p class="text-head"><strong>Question-6</strong></p>
								<p>Would you like to visit Fort?</p>
							</div>
							<div class="ele-9its_grid">
								<p class="text-head">Answer</p>
								<select name="answer1" class="custom-select">
									<option>Select</option>
									<option>Yes</option>
									<option>No</option>
								</select>
							</div>
						</div>
						<button type="submit" class="buttonbg signinbutton">Sign
							Up</button>
						<p class="signup">
							Already have an account?<a href="user-login.jsp"
								class="signuplink">Sign In</a>
						</p>
					</form>
				</div>
			</div>
		</div>
	</section>
	<!-- //form 34-2 -->
	<section class="w3l-footer-16">
		<!-- w3l-footer-16 -->
		<div class="w3l-footer-16-main">
			<div class="wrapper">
				<div class="grid">
					<div class="column">
						<h2>
							<a href="index.html" class="logo-2">Travelling</a>
						</h2>
						<p>
							All rights reserved.<br>©2020-21 by Santosh kumar <a
								href="http://w3layouts.com/" target="_blank">W3layouts</a>
						</p>
					</div>
					<div class="column">
						<h3>About</h3>
						<ul class="footer-gd-16">
							<li><a href="faq.html">FAQs</a></li>
							<li><a href="about.html">About Us</a></li>
							<li><a href="services.html">Services</a></li>
							<li><a href="team.html">Travel Guides</a></li>
						</ul>
					</div>
					<div class="column">
						<h3>Pages</h3>
						<ul class="footer-gd-16">
							<li><a href="ecommerce.html">Products</a></li>
							<li><a href="blog.html">Blog Page</a></li>
							<li><a href="contact.html">Contact Us</a></li>
							<li><a href="login.html">Login</a></li>
							<li><a href="signup.html">Signup</a></li>
						</ul>
					</div>
					<div class="column column3">
						<h3>Explore</h3>
						<ul class="footer-gd-16">
							<li><a href="#help">Support Center</a></li>
							<li><a href="#terms">Terms & Conditions</a></li>
							<li><a href="#privacy">Privacy Policy</a></li>
						</ul>
					</div>
					<div class="column column4">
						<h3>Subscribe</h3>
						<form action="#" class="subscribe" method="post">
							<input type="email" name="email" placeholder="Placeholder"
								required="">
							<button>
								<span class="fa fa-paper-plane" aria-hidden="true"></span>
							</button>
						</form>
						<p>Subscribe to our mailing list and get updates to your email
							inbox.</p>
					</div>
				</div>
			</div>
		</div>
		<!-- move top -->
		<button onclick="topFunction()" id="movetop" title="Go to top">
			<span class="fa fa-angle-up"></span>
		</button>
		<script>
			// When the user scrolls down 20px from the top of the document, show the button
			window.onscroll = function() {
				scrollFunction()
			};

			function scrollFunction() {
				if (document.body.scrollTop > 20
						|| document.documentElement.scrollTop > 20) {
					document.getElementById("movetop").style.display = "block";
				} else {
					document.getElementById("movetop").style.display = "none";
				}
			}

			// When the user clicks on the button, scroll to the top of the document
			function topFunction() {
				document.body.scrollTop = 0;
				document.documentElement.scrollTop = 0;
			}
		</script>
		<!-- //move top -->
	</section>
	<!-- //w3l-footer-16 -->
</body>


<!-- Mirrored from demo.w3layouts.com/demosWTR/Freedom/19-02-2020/traveling-freedom-demo_Free/1171185230/web/signup.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 17 Oct 2020 04:37:51 GMT -->
</html>