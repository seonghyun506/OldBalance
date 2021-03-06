<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String pjName = "/OldBalance"; %>
<jsp:include page="header.jsp"></jsp:include>   
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>oldBalanceMain.jsp</title>
<link rel="stylesheet" href="<%=pjName %>/OldBalance/css/main/common.css" type="text/css">
</head>
<body>
	<!--visual-->
		<div class="visual_wrap">
			<div class="visual">
				<ul class="bxslider">
					<li><img src="<%=pjName %>/OldBalance/images/main/visual1.jpg" alt="비쥬얼이미지1"></li>
					<li><img src="<%=pjName %>/OldBalance/images/main/visual2.jpg" alt="비쥬얼이미지2"></li>
					<li><img src="<%=pjName %>/OldBalance/images/main/visual3.jpg" alt="비쥬얼이미지3"></li>
				</ul>
			</div>
		</div>
	<!--//visual-->
	
	<!-- content -->
		<section id='quick_bar'>
			<div class='new_best'>
				<ul>
					<li><a href="<%=pjName %>/Upload?cmd=pds-list&cate=MEN&subCate=all&page=1"><img src='<%=pjName %>/OldBalance/images/main/men.gif' alt=''></a></li>
					<li><a href="<%=pjName %>/Upload?cmd=pds-list&cate=WOMEN&subCate=all&page=1"><img src='<%=pjName %>/OldBalance/images/main/women.gif' alt=''></a></li>
					<li><a href="<%=pjName %>/Upload?cmd=pds-list&cate=KID&subCate=all&page=1"><img src='<%=pjName %>/OldBalance/images/main/kids.gif' alt=''></a></li>
				</ul>
			</div>
		</section>
		<h3 class="title"><img src='<%=pjName %>/OldBalance/images/main/nb_logo123.png'></h3>
		<!-- product -->
		<section id='product'>
			<!-- new -->
			<div class='prouct_new'>
				<h3 class="new">NEW</h3>
				<div class="box_wrap">
					<div class="box">
						<a href=''>
							<img src='<%=pjName %>/OldBalance/images/main/new_product1.jpg' alt=''>
							<strong>UNI 레터라인 트랙자켓(URBAN FIT)<br></strong>
							<span>99,000원</span>
						</a>
					</div>
					<div class="box">
						<a href=''>
							<img src='<%=pjName %>/OldBalance/images/main/new_product1-2.jpg' alt=''>
							<strong>UNI 레터라인 트랙팬츠<br></strong>
							<span>79,000원</span>
						</a>
					</div>
					<div class="box">
						<a href=''>
							<img src='<%=pjName %>/OldBalance/images/main/new_product2.jpg' alt=''>
							<strong>UNI 레터라인 트랙자켓(URBAN FIT)<br></strong>
							<span>99,000원</span>
						</a>
					</div>
					<div class="box">
						<a href=''>
							<img src='<%=pjName %>/OldBalance/images/main/new_product2-2.jpg' alt=''>
							<strong>UNI 레터라인 트랙팬츠<br></strong>
							<span>79,000원</span>
						</a>
					</div>
				</div>
			</div>
			
			<!-- best! -->
			<div class='prouct_sale'>
				<h3 class="sale">BEST</h3>
				<div class="box_wrap">
					<div class="box">
						<a href=''>
							<img src='<%=pjName %>/OldBalance/images/main/best_product3.jpg' alt=''>
							<strong>문라이트 듀얼컬러퍼 구스다운점퍼<br></strong>
							<span>219,000원</span>
						</a>
					</div>
					<div class="box">
						<a href=''>
							<img src='<%=pjName %>/OldBalance/images/main/best_product.jpg' alt=''>
							<strong>후드티 세트<br></strong>
							<span>89,000원</span>
						</a>
					</div>
					<div class="box">
						<a href=''>
							<img src='<%=pjName %>/OldBalance/images/main/best_product2.jpg' alt=''>
							<strong>문라이트 듀얼컬러퍼 구스다운점퍼<br></strong>
							<span>219,000원</span>
						</a>
					</div>
					<div class="box">
						<a href=''>
							<img src='<%=pjName %>/OldBalance/images/main/best_product4.jpg' alt=''>
							<strong>위자드 디터처블 롱 구스다운<br></strong>
							<span>299,000원</span>
						</a>
					</div>
				</div>
			</div>
			
			<!-- sale -->
			<div class='prouct_sale'>
				<h3 class="best">SALE</h3>
				<div class="box_wrap">
				<div class="box">
						<a href=''>
							<img src='<%=pjName %>/OldBalance/images/main/best_product3.jpg' alt=''>
							<strong>문라이트 듀얼컬러퍼 구스다운점퍼<br></strong>
							<span>219,000원</span>
						</a>
					</div>
					<div class="box">
						<a href=''>
							<img src='<%=pjName %>/OldBalance/images/main/best_product.jpg' alt=''>
							<strong>후드티 세트<br></strong>
							<span>89,000원</span>
						</a>
					</div>
					<div class="box">
						<a href=''>
							<img src='<%=pjName %>/OldBalance/images/main/best_product2.jpg' alt=''>
							<strong>문라이트 듀얼컬러퍼 구스다운점퍼<br></strong>
							<span>219,000원</span>
						</a>
					</div>
					<div class="box">
						<a href=''>
							<img src='<%=pjName %>/OldBalance/images/main/best_product4.jpg' alt=''>
							<strong>위자드 디터처블 롱 구스다운<br></strong>
							<span>299,000원</span>
						</a>
					</div>
				</div>
			</div>
		</section>
		<!-- //product -->
		
		<!-- banner -->
		<section id="banner">
			<div class="ba_1">
				<h3 class='title'>New Balance</h3>
				<div>
					<a href="http://nbkorea.com/collection/activecity/">
						<img src="<%=pjName %>/OldBalance/images/main/banner1.jpg" alt=''>
						<p>NB WOMEN ACTIVE CITY</p>
					</a>
				</div>
				<div>
					<a href="http://nbkorea.com/collection/wizard_down/">
						<img src="<%=pjName %>/OldBalance/images/main/banner2.jpg" alt="" >
						<p>NEW SCHOOL RETRO SPORTS</p>
					</a>
				</div>
				<div>
					<a href="http://nbkorea.com/collection/classicwear/">
						<img src="<%=pjName %>/OldBalance/images/main/banner3.jpg" alt="" >
						<p>CLASSIC AUTHENTIC WEAR</p>
					</a>
				</div>
			</div>
			
			<div id="event_banner">
				<div>
					<img src='<%=pjName %>/OldBalance/images/main/event.jpg' alt=''>
				</div>
			</div>
		</section>
		
	<!-- //content -->
	<div id='footer'>
		<img src='<%=pjName %>/OldBalance/images/main/footer.jpg'>
	</div>
	<!--slider-->
	<script src="<%=pjName %>/OldBalance/js/main/jquery.min.js"></script>
	<script src="<%=pjName %>/OldBalance/js/main/jquery.bxslider.js"></script>
	<script>
		$('.bxslider').bxSlider({
			auto: true
		});
	</script>
	<!--//slider-->
</body>
</html>