<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.connection.*"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<!-- /Added by HTTrack -->
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Tourist Guide System</title>
<link rel="stylesheet" href="assets/css/style-freedom.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	
<link href="style3.css" rel="stylesheet" type="text/css" media="screen" />	

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
	<script>
		function myFunction() {
			var uid = document.getElementById("mySelect").value;
			document.location.href = "question-answer.jsp?uid=" + uid;
		}
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
	<%
		if (session.getAttribute("uname") != null && session.getAttribute("uname") != "") {
	%>
	<link rel="stylesheet"
		href="../../../../../../images/demobar_w3_4thDec2019.css">


	<jsp:include page="admin-side-header.jsp"></jsp:include>
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
						<strong>View Users Questions Answers</strong>
					</p>
					<form action="user-search-place.jsp" method="post">
						<div class="d-grid grid-col-1">
							<div class="ele-9its_grid">
								<p class="text-left">
									<strong>Select User Name</strong>
								</p>
								<select class="custom-select" name="uid" id="mySelect"
									onchange="myFunction()">
									<option>Select Users Name</option>
									<%
										String uid = null;
									ResultSet rs = DatabaseConnection.getResultFromSqlQuery("select * from tbluser");
									while (rs.next()) {
										uid = rs.getString("user_id");
									%>
									<option value="<%=rs.getString("user_id")%>"><%=rs.getString("user_full_name")%></option>
									<%
										}
									%>
								</select>
							</div>
						</div>
					</form>
					<br>
					<div id="print">
					<table class="table table-bordered">
							<tr>
								<td>User Id</td>
								<td>Question Id</td>
								<td>Question_name</td>
								<td>Answer</td>
							</tr>
						<%
							ResultSet resultset = DatabaseConnection.getResultFromSqlQuery(
								"select tblquestion.question_id,tblquestion.question_name,tbluserquestionanswer.answer,tbluserquestionanswer.user_id from tblquestion,tbluserquestionanswer where tblquestion.question_id=tbluserquestionanswer.question_id and user_id='"
								+ request.getParameter("uid") + "'");
							while (resultset.next()) {
						%>
							<tr>
								<td><%=resultset.getString("user_id")%></td>
								<td><%=resultset.getString("question_id")%></td>
								<td><%=resultset.getString("question_name")%></td>
								<td><%=resultset.getString("answer")%></td>
							</tr>
						<%
							}
						%></table>
					</div>
				</div>
			</div>
	</section>
	<br>
	<br>
	<br>
	<br>
	<jsp:include page="admin-side-footer.jsp"></jsp:include>
	<%
		} else {
	response.sendRedirect("index.jsp");
	}
	%>
</body>
</html>