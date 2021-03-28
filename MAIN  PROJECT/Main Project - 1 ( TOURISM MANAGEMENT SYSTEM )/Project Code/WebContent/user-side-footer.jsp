<section class="w3l-footer-16">
	<!-- w3l-footer-16 -->
	<div class="w3l-footer-16-main">
		<div class="wrapper">
			<div class="grid">
				<div class="row" style="width:800px;height:10px;">
					<h2>
						<a href="index.jsp" class="logo-2">TOURISM GUIDE SYSTEM @ 2020-2021</a>
					</h2>
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