<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>header</title>
<link rel="stylesheet" href="./css/displaycss/common.css" type="text/css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function Men(){
		$('.sho').hide();
		
		 $('.Men').hover(function(){
			 $('#sub_wrap1').slideDown(); // setter 역할
		 },function(){
			 $('#sub_wrap1').hide(); 
		 });
		 
		 $('#sub_wrap1').hover(function(){
			 $('#sub_wrap1').show(); // setter 역할
		 },function(){
			 $('#sub_wrap1').hide(); 
		 });
	});
	$(function Women(){
		$('.Women').hover(function(){
			 $('#sub_wrap2').slideDown(); // setter 역할
		 },function(){
			 $('#sub_wrap2').hide(); 
		 });
		 
		 $('#sub_wrap2').hover(function(){
			 $('#sub_wrap2').show(); // setter 역할
		 },function(){
			 $('#sub_wrap2').hide(); 
		 });
	});
	
	$(function Kids(){
		$('.Kids').hover(function(){
			 $('#sub_wrap3').slideDown(); // setter 역할
		 },function(){
			 $('#sub_wrap3').hide(); 
		 });
		 
		 $('#sub_wrap3').hover(function(){
			 $('#sub_wrap3').show(); // setter 역할
		 },function(){
			 $('#sub_wrap3').hide(); 
		 });
	});
</script>
</head>
<body>
	<!-- top_nav(s) -->
	<div id='top_nav'>
		<nav>
			<ul>
				<li><a href='#'>로그인</a></li>
				<li><a href='#'>회원가입</a></li>
				<li><a href='#'>장바구니</a></li>
				<li><a href='#'>마이페이지</a></li>
			</ul>
		</nav>
	</div>
	<!-- Gmenu(s) -->
	<header> 
		<nav id='Gmenu'>
			<h1><img src='./images/header/nb_logo.png' alt='뉴발란스 로고 이미지' /></h1>
			<ul>
				<!-- 메인메뉴(s) -->
				<li class='Men'>
					<a href='#'>Men</a>
					<!-- 서브메뉴 Men -->
				</li>
				<li class='Women'>
					<a href='#'>Women</a>
				</li>
				<li class='Kids'>
					<a href='#'>Kids</a>
				</li>
				<li>
					<a href='#'>574S</a>
				</li>
				<li>
					<a href='#'>SchoolKIDS</a>
				</li>
				<li class='sale'>
					<a href='#'>Sale</a>
				</li>
				<li class='search'><input type='text' name='search' id='search' placeholder='574s'><a href='#'><img src="./images/header/btn_search.png" /></a></li>
				<!-- 메인메뉴(e) -->
			</ul>
		</nav>
	</header>
	
	<!-- sub_wrap1 -->
	<section id='sub_wrap1' class='sho'>
		<!-- MEN -->
		<nav class="sub_menu1">
			<!-- 신발 -->
			<ul>
				<li class="txt_f"><a href='#'>신발</a></li>
				<li><a href='#'>프리미엄신발</a></li>
				<li><a href='#'>라이프스타일</a></li>
				<li><a href='#'>러닝</a></li>
				<li><a href='#'>워킹</a></li>
				<li><a href='#'>축구</a></li>
				<li><a href='#'>스케이트보딩/야구/테니스</a></li>
				<li><a href='#'>샌들/슬라이스(슬리퍼)</a></li>
				<li class="allview"><a href='#'>- 신발 전체보기 <span>▶</span></a></li>
			</ul>
			<!-- 의류 -->
			<ul>
				<li class='txt_f'><a href="#">의류</a></li>
				<li><a href='#'>상품별</a></li>
				<li><a href='#'>- 티셔츠</a></li>
				<li><a href='#'>- 맨투맨/후디</a></li>
				<li><a href='#'>- 자켓</a></li>
				<li><a href='#'>- 다운&베스트</a></li>
				<li><a href='#'>- 롱팬츠</a></li>
				<li><a href='#'>- 숏팬츠</a></li>
				<li><a href='#'>- 레깅스</a></li>
				<li class="allview"><a href='#'>- 상품별 전체보기<span>▶</span></a></li>
			</ul>
			<!-- 상품별  -->
			<ul>
				<li class="txt_f"><a href='#'>스포츠</a></li>
				<li>
					<a href='#'>- 러닝</a>
					<ul>
						<li><a href="#">&nbsp;&nbsp;- 상의</a></li>
						<li><a href="#">&nbsp;&nbsp;- 하의</a></li>
					</ul>
				</li>
				<li>
					<a href='#'>- 축구/야구/테니스</a>
					<ul>
						<li><a href="#">&nbsp;&nbsp;- 상의</a></li>
						<li><a href="#">&nbsp;&nbsp;- 하의</a></li>
					</ul>
				</li>
				<li>
					<a href='#'>- 트레이닝</a>
					<ul>
						<li><a href="#">&nbsp;&nbsp;- 상의</a></li>
						<li><a href="#">&nbsp;&nbsp;- 하의</a></li>
					</ul>
				</li>
				<li class="allview"><a href='#'>- 스포츠별 전체보기 <span>▶</span></a></li>
			</ul>
			<!-- 용품  -->
			<ul>
				<li class="txt_f"><a href='#'>용품</a></li>
				<li>
					<a href='#'>가방</a>
					<ul>
						<li><a href="#">&nbsp;&nbsp;- 백팩</a></li>
						<li><a href="#">&nbsp;&nbsp;- 기타가방</a></li>
					</ul>
				</li>
				<li><a href='#'>모자</a></li>
				<li><a href='#'>양말</a></li>
				<li><a href='#'>기타용품</a></li>
				<li class="allview"><a href='#'>- 용품 전체보기 <span>▶</span></a></li>
			</ul>
		</nav>
		<nav class='sub1_banner'>
			<ul>
				<li><a href='#'><img src='./images/header/m_banner.jpg' alt='신발'></a></li>
				<li><a href='#'><img src='./images/header/m_banner2.jpg' alt='의류'></a></li>
				<li><a href='#'><img src='./images/header/m_banner3.jpg' alt='키드'></a></li>
			</ul>
		</nav>
	</section>
	<!-- //submenu1_wrap -->
	
	
	<!-- sub_wrap2 -->
	<section id='sub_wrap2' class='sho'>
		<!-- ME -->
		<nav class="sub_menu1">
			<!-- 신발 -->
			<ul>
				<li class="txt_f"><a href='#'>신발</a></li>
				<li><a href='#'>프리미엄신발</a></li>
				<li><a href='#'>라이프스타일</a></li>
				<li><a href='#'>러닝</a></li>
				<li><a href='#'>워킹</a></li>
				<li><a href='#'>축구</a></li>
				<li><a href='#'>스케이트보딩/야구/테니스</a></li>
				<li><a href='#'>샌들/슬라이스(슬리퍼)</a></li>
				<li class="allview"><a href='#'>- 신발 전체보기 <span>▶</span></a></li>
			</ul>
			<!-- 의류 -->
			<ul>
				<li class='txt_f'><a href="#">의류</a></li>
				<li><a href='#'>상품별</a></li>
				<li><a href='#'>- 티셔츠</a></li>
				<li><a href='#'>- 슬리브리스/브라탑</a></li>
				<li><a href='#'>- 맨투맨/후디</a></li>
				<li><a href='#'>- 자켓</a></li>
				<li><a href='#'>- 다운&베스트</a></li>
				<li><a href='#'>- 롱팬츠</a></li>
				<li><a href='#'>- 숏팬츠/스커트</a></li>
				<li><a href='#'>- 레깅스</a></li>
				<li class="allview"><a href='#'>- 상품별 전체보기<span>▶</span></a></li>
			</ul>
			<!-- 상품별  -->
			<ul>
				<li class="txt_f"><a href='#'>스포츠</a></li>
				<li>
					<a href='#'>- 러닝</a>
					<ul>
						<li><a href="#">&nbsp;&nbsp;- 상의</a></li>
						<li><a href="#">&nbsp;&nbsp;- 하의</a></li>
					</ul>
				</li>
				<li>
					<a href='#'>- 축구/야구/테니스</a>
					<ul>
						<li><a href="#">&nbsp;&nbsp;- 상의</a></li>
						<li><a href="#">&nbsp;&nbsp;- 하의</a></li>
					</ul>
				</li>
				<li>
					<a href='#'>- 트레이닝</a>
					<ul>
						<li><a href="#">&nbsp;&nbsp;- 상의</a></li>
						<li><a href="#">&nbsp;&nbsp;- 하의</a></li>
					</ul>
				</li>
				<li class="allview"><a href='#'>- 스포츠별 전체보기 <span>▶</span></a></li>
			</ul>
			<!-- 용품  -->
			<ul>
				<li class="txt_f"><a href='#'>용품</a></li>
				<li>
					<a href='#'>가방</a>
					<ul>
						<li><a href="#">&nbsp;&nbsp;- 백팩</a></li>
						<li><a href="#">&nbsp;&nbsp;- 기타가방</a></li>
					</ul>
				</li>
				<li><a href='#'>모자</a></li>
				<li><a href='#'>양말</a></li>
				<li><a href='#'>기타용품</a></li>
				<li class="allview"><a href='#'>- 용품 전체보기 <span>▶</span></a></li>
			</ul>
		</nav>
		<nav class='sub1_banner'>
			<ul>
				<li><a href='#'><img src='./images/header/m_banner1_1.jpg' alt='여성의류프로모션'></a></li>
				<li><a href='#'><img src='./images/header/m_banner_w.png' alt='여성의류프로모션'></a></li>
			</ul>
		</nav>
	</section>
	<!-- //submenu2_wrap -->
	
	
	
	<!-- sub_wrap3 -->
	<section id='sub_wrap3' class='sho'>
		<!-- ME -->
		<nav class="sub_menu1">
			<ul>
				<li class="txt_f"><a href='#'>NB KID Special</a></li>
				<li><a href='#'>17F/W WIZARD</a></li>
				<li><a href='#'>온라인 단독상품</a></li>
				<li><a href='#'>베이비 라인</a></li>
				<li><a href='#'><img src='./images/header/khd.jpg' alt='kid후드xl' /><br>[온라인한정]후드티 세트</a></li>
			</ul>
			<!-- 신발 -->
			<ul>
				<li class="txt_f"><a href='#'>신발</a></li>
				<li><a href='#'>Infant</a></li>
				<li><a href='#'>Pre-school</a></li>
				<li><a href='#'>Grade-School</a></li>
				<li><a href='#'>Kids 축구</a></li>
				<li class="allview"><a href='#'>- 키즈신발 전체보기 <span>▶</span></a></li>
			</ul>
			<!-- 의류 -->
			<ul>
				<li class='txt_f'><a href="#">의류</a></li>
				<li><a href='#'>상품별</a></li>
				<li><a href='#'>베스트/바람막이/자켓</a></li>
				<li><a href='#'>다운/패딩 자켓</a></li>
				<li><a href='#'>트레이닝세트</a></li>
				<li><a href='#'>맨투맨/후디</a></li>
				<li><a href='#'>티셔츠</a></li>
				<li><a href='#'>- 반팔/나시 티셔츠</a></li>
				<li><a href='#'>- 긴팔 티셔츠</a></li>
				<li><a href='#'>팬츠/레깅스</a></li>
				<li><a href='#'>- 반바지</a></li>
				<li><a href='#'>- 긴바지</a></li>
				<li><a href='#'>원피스/스커트</a></li>
				<li class="allview"><a href='#'>- 의류 전체보기<span>▶</span></a></li>
			</ul>
			
			<!-- 용품  -->
			<ul>
				<li class="txt_f"><a href='#'>용품</a></li>
				<li>
					<a href='#'>가방</a>
					<ul>
						<li><a href="#">&nbsp;&nbsp;- 초등학생 책가방</a></li>
						<li><a href="#">&nbsp;&nbsp;- 미니미 & 소풍가방</a></li>
					</ul>
				</li>
				<li><a href='#'>모자</a></li>
				<li><a href='#'>양말</a></li>
				<li><a href='#'>기타용품</a></li>
				<li class="allview"><a href='#'>- 용품 전체보기 <span>▶</span></a></li>
			</ul>
		</nav>
		<nav class='sub1_banner'>
			<ul>
				<li><a href='#'><img src='./images/header/m_banner2_1.jpg' alt='베이비프로모션'></a></li>
				<li><a href='#'><img src='./images/header/m_banner2_2.jpg' alt='베이비프로모션'></a></li>
			</ul>
		</nav>
	</section>
	<!-- //submenu3_wrap -->
</body>
</html>