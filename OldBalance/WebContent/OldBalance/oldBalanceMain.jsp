<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% String projectName = "/OldBalance"; %>
<jsp:include page="header.jsp"></jsp:include>   
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>OldBalance</title>
<link rel="stylesheet" href="/OldBalance/OldBalance/css/main/common.css" type="text/css">

<!--[if lt IE 9]><script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
		<!--[if lt IE 9]><script src="http://ie7-js.googlecode.com/svn/version/2.1(beta4)/IE9.js"></script> <![endif]-->
		<!--[if lt IE 9]><script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script><![endif]-->
		<!--[if lt IE 9]><script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
		<script>
		document.createElement('header');
		document.createElement('nav');
		document.createElement('section');
		document.createElement('article');
		document.createElement('aside');
		document.createElement('footer');
		document.createElement('hgroup');
		</script>
		<![endif]-->
</head>
<body>
	<!--visual-->
		<div class="visual_wrap">
			<div class="visual">
				<ul class="bxslider">
					<li><img src="./images/main/visual1.jpg" alt="비쥬얼이미지1"></li>
					<li><img src="./images/main/visual2.jpg" alt="비쥬얼이미지2"></li>
					<li><img src="./images/main/visual3.jpg" alt="비쥬얼이미지3"></li>
				</ul>
			</div>
		</div>
		<!--//visual-->
		
	<!--slider-->
	<script src="./js/main/jquery.min.js"></script>
	<script src="./js/main/jquery.bxslider.js"></script>
	<script>
		$('.bxslider').bxSlider({
		auto: true
		});
	</script>
	<!--//slider-->
</body>
</html>