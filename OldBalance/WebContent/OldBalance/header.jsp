<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String pjName="/OldBalance";
   String sess = (String)session.getAttribute("id"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> OldBalance </title>
<link rel="stylesheet" href="<%=pjName %>/OldBalance/css/displaycss/common.css" type="text/css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="<%=pjName %>/OldBalance/js/main/mainControl.js" type="text/javascript"></script>
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
	
	$(function() {
		<% String id = (String)session.getAttribute("id");
		   if(id != null) { %>
			   $('#top_nav_before').remove;
			   $('#top_nav_after').show();
			   $('.log').css('display','none');
		<% } else { %>
			   $('#top_nav_after').hide();
			   $('#top_nav_bafore').show();
 			   $('.out').css('display','none');
		<%   } %>
	});
	
</script>
</head>
<body>

	<!-- top_nav(s) -->
	<div id='top_nav_before' class="shoo log">
		<nav>
			<ul>
				<li><a href="<%= pjName %>/Main?cmd=login">로그인</a></li>
				<li><a href="<%= pjName %>/Main?cmd=register">회원가입</a></li>
				<li><a href='<%= pjName %>/Main?cmd=login'>장바구니</a></li>
				<li><a href='<%= pjName %>/Main?cmd=login'>마이페이지</a></li>
			</ul>
		</nav>
	</div>
	
	<div id='top_nav_after' class="shoo out">
		<nav>
			<ul>
				<li><%=id%> 님</li>
				<li><a href="<%= pjName %>/Main?cmd=logout">로그아웃</a></li>
				<li><a href='<%= pjName %>/MyPage?cmd=cart'>장바구니</a></li>
				<li><a href='<%= pjName %>/MyPage?cmd=mypage&id=<%=sess%>'>마이페이지</a></li>
			</ul>
		</nav>
	</div>
	<!-- Gmenu(s) -->
	<header> 
		<nav id='Gmenu'>
			<a href="<%=pjName%>/Main?cmd=main">
			<img class="logo" src='<%=pjName %>/OldBalance/images/header/nb_logo.png' alt='뉴발란스 로고 이미지' /></a>
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
					<p>&nbsp;</p>
				</li>
				<li>
					<p>&nbsp;</p>
				</li>
				<li class='sale'>
					<a href='#'>Sale</a>
				</li>
				<li class='search'><input type='text' name='search' id='search' placeholder='574s'><a href='#'><img src="<%=pjName %>/OldBalance/images/header/btn_search.png" /></a></li>
				<!-- 메인메뉴(e) -->
			</ul>
		</nav>
	</header>
	
   <!-- sub_wrap1 -->
   <section id='sub_wrap1' class='sho'>
      <!-- MEN -->
      <nav class="sub_menu1">
      	  <ul>
            <li class="txt_f">NB KID Special</li>
            <li><a href='#'>17F/W WIZARD</a></li>
            <li><a href='#'>온라인 단독상품</a></li>
            <li><a href='#'>베이비 라인</a></li>
            <li><a href='#'><img src='<%=pjName %>/OldBalance/images/header/khd.jpg' alt='kid후드xl' /><br>[온라인한정]후드티 세트</a></li>
         </ul>
         <!-- 신발 -->
         <ul>
            <li class="txt_f">신발</li>
            <li><a href='<%=pjName %>/Upload?cmd=pds-list&cate=MEN&subCate=신발&detailCate=러닝화&page=1&range=release_date'>- 러닝</a></li>
            <li><a href='<%=pjName %>/Upload?cmd=pds-list&cate=MEN&subCate=신발&detailCate=워킹화&page=1&range=release_date'>- 워킹</a></li>
            <li><a href='<%=pjName %>/Upload?cmd=pds-list&cate=MEN&subCate=신발&detailCate=축구화&page=1&range=release_date'>- 축구</a></li><br/>
            <li class="allview"><a href='#'>- 신발 전체보기 <span>▶</span></a></li>
         </ul>
         <!-- 의류 -->
         <ul>
            <li class='txt_f'>의류</li>
            <li><a href='<%=pjName %>/Upload?cmd=pds-list&cate=MEN&subCate=의류&detailCate=티셔츠&page=1&range=release_date'>- 티셔츠</a></li>
            <li><a href='<%=pjName %>/Upload?cmd=pds-list&cate=MEN&subCate=의류&detailCate=맨투맨&page=1&range=release_date'>- 맨투맨/후디</a></li>
            <li><a href='<%=pjName %>/Upload?cmd=pds-list&cate=MEN&subCate=의류&detailCate=자켓&page=1&range=release_date'>- 자켓</a></li><br/>
            <li class="allview"><a href='#'>- 상품별 전체보기<span>▶</span></a></li>
         </ul>
         <!-- 상품별  -->
      </nav>
      <nav class='sub1_banner'>
         <ul>
            <li><a href='#'><img src='<%=pjName %>/OldBalance/images/header/m_banner.jpg' alt='신발'></a></li>
            <li><a href='#'><img src='<%=pjName %>/OldBalance/images/header/m_banner2.jpg' alt='의류'></a></li>
            <li><a href='#'><img src='<%=pjName %>/OldBalance/images/header/m_banner3.jpg' alt='키드'></a></li>
         </ul>
      </nav>
   </section>
   <!-- //submenu1_wrap -->
   
   
   <!-- sub_wrap2 -->
   <section id='sub_wrap2' class='sho'>
      <!-- ME -->
      <nav class="sub_menu1">
          <ul>
            <li class="txt_f">NB KID Special</li>
            <li><a href='#'>17F/W WIZARD</a></li>
            <li><a href='#'>온라인 단독상품</a></li>
            <li><a href='#'>베이비 라인</a></li>
            <li><a href='#'><img src='<%=pjName %>/OldBalance/images/header/khd.jpg' alt='kid후드xl' /><br>[온라인한정]후드티 세트</a></li>
         </ul>
         <!-- 신발 -->
         <ul>
            <li class="txt_f"><a href='#'>신발</a></li>
            <li><a href='<%=pjName %>/Upload?cmd=pds-list&cate=WOMEN&subCate=신발&detailCate=러닝화&page=1&range=release_date'>- 러닝</a></li>
            <li><a href='<%=pjName %>/Upload?cmd=pds-list&cate=WOMEN&subCate=신발&detailCate=워킹화&page=1&range=release_date'>- 워킹</a></li>
            <li><a href='<%=pjName %>/Upload?cmd=pds-list&cate=WOMEN&subCate=신발&detailCate=자켓&page=1&range=release_date'>- 축구</a></li><br/>
            <li class="allview"><a href='#'>- 신발 전체보기 <span>▶</span></a></li>
         </ul>
         <!-- 의류 -->
         <ul>
            <li class='txt_f'>의류</li>
            <li><a href='<%=pjName %>/Upload?cmd=pds-list&cate=WOMEN&subCate=의류&detailCate=티셔츠&page=1&range=release_date'>- 티셔츠</a></li>
            <li><a href='<%=pjName %>/Upload?cmd=pds-list&cate=WOMEN&subCate=의류&detailCate=맨투맨&page=1&range=release_date'>- 맨투맨/후디</a></li>
            <li><a href='<%=pjName %>/Upload?cmd=pds-list&cate=WOMEN&subCate=의류&detailCate=자켓&page=1&range=release_date'>- 자켓</a></li><br/>
            <li class="allview"><a href='#'>- 상품별 전체보기<span>▶</span></a></li>
         </ul>
      </nav>
      <nav class='sub1_banner'>
         <ul>
            <li><a href='#'><img src='<%=pjName %>/OldBalance/images/header/m_banner1_1.jpg' alt='여성의류프로모션'></a></li>
            <li><a href='#'><img src='<%=pjName %>/OldBalance/images/header/m_banner_w.png' alt='여성의류프로모션'></a></li>
         </ul>
      </nav>
   </section>
   <!-- //submenu2_wrap -->
   
   <!-- sub_wrap3 -->
   <section id='sub_wrap3' class='sho'>
      <!-- ME -->
      <nav class="sub_menu1">
         <ul>
            <li class="txt_f">NB KID Special</li>
            <li><a href='#'>17F/W WIZARD</a></li>
            <li><a href='#'>온라인 단독상품</a></li>
            <li><a href='#'>베이비 라인</a></li>
            <li><a href='#'><img src='<%=pjName %>/OldBalance/images/header/khd.jpg' alt='kid후드xl' /><br>[온라인한정]후드티 세트</a></li>
         </ul>
         <!-- 신발 -->
         <ul>
            <li class="txt_f"><a href='#'>신발</a></li>
            <li><a href='<%=pjName %>/Upload?cmd=pds-list&cate=KID&subCate=신발&detailCate=러닝화&page=1&range=release_date'>- 러닝</a></li>
            <li><a href='<%=pjName %>/Upload?cmd=pds-list&cate=KID&subCate=신발&detailCate=워킹화&page=1&range=release_date'>- 워킹</a></li>
            <li><a href='<%=pjName %>/Upload?cmd=pds-list&cate=KID&subCate=신발&detailCate=축구화&page=1&range=release_date'>- 축구</a></li><br/>
            <li class="allview"><a href='#'>- 키즈신발 전체보기 <span>▶</span></a></li>
         </ul>
         <!-- 의류 -->
         <ul>
            <li class='txt_f'>의류</li>
            <li><a href='<%=pjName %>/Upload?cmd=pds-list&cate=KID&subCate=의류&detailCate=자켓&page=1&range=release_date'>- 베스트/바람막이/자켓</a></li>
            <li><a href='<%=pjName %>/Upload?cmd=pds-list&cate=KID&subCate=의류&detailCate=맨투맨&page=1&range=release_date'>- 맨투맨/후디</a></li>
            <li><a href='<%=pjName %>/Upload?cmd=pds-list&cate=KID&subCate=의류&detailCate=티셔츠&page=1&range=release_date'>- 티셔츠</a></li><br/>
            <li class="allview"><a href='#'>- 의류 전체보기<span>▶</span></a></li>
         </ul>
		</nav>
		<nav class='sub1_banner'>
			<ul>
				<li><a href='#'><img src='<%=pjName %>/OldBalance/images/header/m_banner2_1.jpg' alt='베이비프로모션'></a></li>
				<li><a href='#'><img src='<%=pjName %>/OldBalance/images/header/m_banner2_2.jpg' alt='베이비프로모션'></a></li>
			</ul>
		</nav>
	</section>
	<!-- //submenu3_wrap -->
</body>
</html>