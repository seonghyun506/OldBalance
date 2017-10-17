<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String pjName = "/OldBalance"; %>
<jsp:include page="header.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> OldBalance </title>
<link rel="stylesheet" href="<%=pjName%>/OldBalance/css/bootstrap/bootstrap.css" />
<link rel="stylesheet" href="<%=pjName%>/OldBalance/css/main/common.css" type="text/css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="<%=pjName%>/OldBalance/js/bootstrap/bootstrap.js"></script>
<script type="text/javascript">
	$(function() {
		
	$('#back').click(function() {
			location.href = '/OldBalance/Main?cmd=login';
		});
	});
	
</script>
</head>
<body>

<div id="myForm">
<br/><br/>
<h1 class='text-center'> 아이디와 비밀번호를 다시 확인해주세요. </h1><br/><br/><br/><br/><br/>
<hr/>
<p class="text-center">
<input type="button" name="back" id="back" class="btn btn-danger" value=" 돌아가기  "/>
</p>

</div>

<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
<div id='footer'>
	<img src='<%=pjName%>/OldBalance/images/main/footer.jpg'>
</div>
</body>
</html>