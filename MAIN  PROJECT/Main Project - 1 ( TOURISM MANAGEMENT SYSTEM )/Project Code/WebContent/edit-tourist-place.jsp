<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.connection.*"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">


<!-- Mirrored from demo.w3layouts.com/demosWTR/Freedom/19-02-2020/traveling-freedom-demo_Free/1171185230/web/signup.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 17 Oct 2020 04:37:51 GMT -->
<!-- Added by HTTrack -->
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<!-- /Added by HTTrack -->
<head>

<link href="style1.css" rel="stylesheet" type="text/css" media="screen" />


<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Tourist Guide System</title>
<link rel="stylesheet" href="assets/css/style-freedom.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	
	<meta name="robots" content="noindex">
<body>
	<link rel="stylesheet"
		href="../../../../../../images/demobar_w3_4thDec2019.css">
	<%
		if (session.getAttribute("uname") != null && session.getAttribute("uname") != "") {
	%>
	<jsp:include page="admin-side-header.jsp"></jsp:include>
	<section class="w3l-form-34-main">
		<div class="w3l-book-9">
			<div class="main-top">
				<div class="wrapper padding-bord">
					<p class="form-para">
					<h2>Edit Tourist Place</h2>
					</p>
					<br>
					<%
						String placeId = request.getParameter("place_id");
						ResultSet resultset = DatabaseConnection.getResultFromSqlQuery("select * from tblplaces where place_id='" + placeId + "'");
						while (resultset.next()) {
					%>
					<form action="EditTourPlace" method="post">
						<div class="d-grid grid-col-2">
							<div class="ele-9its_grid">
								<p class="text-left">
									<strong>Tourist Place Id 
								</p>
								<input type="text" name="tid" class="input"
									value="<%=resultset.getString("place_id")%>" readonly />
							</div>
							<div class="ele-9its_grid">
								<p class="text-left">
									<strong>Tourist Place Name</strong>
								</p>
								<input type="text" name="tname" class="input"
									value="<%=resultset.getString("place_name")%>" />
							</div>

						</div>
						<div class="d-grid grid-col-2">
							<div class="ele-9its_grid">
								<p class="text-left">
									<strong>Tourist Place Address</strong>
								</p>
								<input type="text" name="taddress" class="input"
									value="<%=resultset.getString("place_address")%>" />
							</div>
							<div class="ele-9its_grid">
								<p class="text-left">
									<strong>Tourist Area</strong>
								</p>
								<input type="text" name="tarea" class="input"
									value="<%=resultset.getString("place_area")%>" />
							</div>
						</div>
						<div class="d-grid grid-col-2">
							<div class="ele-9its_grid">
								<p class="text-left">
									<strong>Tourist Tags</strong>
								</p>
								<input type="text" name="ttags" class="input"
									value="<%=resultset.getString("place_tags")%>" />
							</div>
							<div class="ele-9its_grid">
								<p class="text-left">
									<strong>Tourist Place Description</strong>
								</p>
								<input type="text" name="tdesc" class="input"
									value="<%=resultset.getString("place_description")%>">
							</div>
						</div>
						<input type="submit" class="btn btn-danger" value="Update Info">
					</form>
					<%
						}
					%>
				</div>
			</div>
		</div>
	</section>
	<jsp:include page="admin-side-footer.jsp"></jsp:include>

</body>
<%
	} else {
response.sendRedirect("index.jsp");
}
%>
<script type="text/javascript">
	$(function() {
		$('#success').delay(3000).show().fadeOut('slow');
	});
</script>
</html>