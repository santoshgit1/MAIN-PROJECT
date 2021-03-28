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
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>TOURISM GUIDE SYSTEM</title>
<link rel="stylesheet" href="assets/css/style-freedom.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script>
	function myFunction() {
		var place = document.getElementById("mySelect").value;
		document.location.href = "user-search-place.jsp?place=" + place;
	}
</script>
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
	<%
		if (session.getAttribute("uname") != null && session.getAttribute("uname") != "") {
	%>
	<jsp:include page="user-side-header.jsp"></jsp:include>
	<!-- inner banner -->

	<!-- //covers -->
	<!-- form 34-2 -->
	<br>
	<br>
	<section class="w3l-form-34-main">
		<div class="w3l-book-9">
			<div class="main-top">
				<div class="wrapper padding-bord">
					<p class="form-para">
						<strong>Search Tourist Place Information</strong>
					</p>
					<form action="user-search-place.jsp" method="post">
						<div class="d-grid grid-col-1">
							<div class="ele-9its_grid">
								<p class="text-left">
									<strong>Select Place</strong>
								</p>
								<select class="custom-select" name="place" id="mySelect"
									onchange="myFunction()">
									<option>Select Tourist Place</option>
									<%
										ResultSet rs = DatabaseConnection.getResultFromSqlQuery("select * from tblplaces");
										while (rs.next()) {
									%>
									<option><%=rs.getString("place_name")%></option>
									<%
										}
									%>
								</select>
							</div>
						</div>
					</form>
					<br>
					<div id="print">
					<%
						ResultSet resultset = DatabaseConnection
							.getResultFromSqlQuery("select * from tblplaces where place_name='" + request.getParameter("place") + "'");
						while (resultset.next()) {
					%>
					<table class="table table-bordered">
						<tr>
							<th>Place Id</th>
							<td><%=resultset.getString("place_id")%></td>
						</tr>
						<tr>
							<th>Place Name</th>
							<td><%=resultset.getString("place_name")%></td>
						</tr>
						<tr>
							<th>Place Image</th>
							<td><img src="upload/<%=resultset.getString("image_name")%>"></td>
						</tr>
						<tr>
							<th>Place Address</th>
							<td><%=resultset.getString("place_address")%></td>
						</tr>
						<tr>
							<th>Place Area</th>
							<td><%=resultset.getString("place_area")%></td>
						</tr>
						<tr>
							<th>Place Tags</th>
							<td><%=resultset.getString("place_tags")%></td>
						</tr>
						<tr>
							<th>Place Description</th>
							<td><%=resultset.getString("place_description")%></td>
						</tr>
						<tr>
							<th>Created At</th>
							<td><%=resultset.getString("created_at")%></td>
						</tr>
						<tr>
							<th>Updated At</th>
							<td><%=resultset.getString("updated_at")%></td>
						</tr>
					</table>
					<%
						}
					%>
					<i class="fa fa-print fa-2x" aria-hidden="true"
							OnClick="CallPrint(this.value)"></i>
				</div>
			</div>
		</div>
	</section>
	<br>
	<br>
	<br>
	<br>
	<script>
		function CallPrint(strid) {
			var prtContent = document.getElementById("print");
			var WinPrint = window.open('', '','left=0,top=0,width=800,height=900,toolbar=0,scrollbars=0,status=0');
			WinPrint.document.write(prtContent.innerHTML);
			WinPrint.document.close();
			WinPrint.focus();
			WinPrint.print();
			WinPrint.close();
		}
	</script>
	<jsp:include page="user-side-footer.jsp"></jsp:include>
	<%
		} else {
	response.sendRedirect("index.jsp");
	}
	%>
</body>
</html>