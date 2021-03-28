<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<div class="w3l-headers-9">
	<header>
	
	<link href="style2.css" rel="stylesheet" type="text/css" media="screen" />
	
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
							<li><a href="user-dashboard.jsp" class="link-nav">Home</a></li>
							<li><a href="user-search-place.jsp" class="link-nav">Search
									Tourist Places</a></li>
							<li><a href="tourist-location-map.jsp" class="link-nav">Map
									View</a></li>
							<li><a href="user-feedback.jsp" class="link-nav">Give
									Feedback</a></li>
							<li><a href="#blog" class="link-nav dropdown-toggle">
									Account <span class="fa fa-angle-down" aria-hidden="true"></span>
							</a> <input type="checkbox" id="drop-3" />
								<ul>
									<li><a href="user-profile.jsp">My Profile</a></li>
									<li><a href="user-update-profile.jsp">Update Profile</a></li>
									<li><a href="user-change-password.jsp">Change Password</a></li>
									<li><a href="user-logout.jsp">Log Out</a></li>
								</ul></li>
							<li class="nav-right-sty"><a href="" class="actionbg"><%=session.getAttribute("uname")%></a></li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</header>
</div>