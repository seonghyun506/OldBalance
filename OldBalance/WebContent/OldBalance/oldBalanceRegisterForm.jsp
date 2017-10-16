<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String pjName="/OldBalance"; %>
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
</head>
<body>

<div id="myForm">
<br/><br/>
<h1 class='text-center'> 회원가입이 완료되었습니다. </h1><br/>
<h4 class='text-center'> 'Old Balance'의 가족이 되신 고객님. 환영합니다. </h4><br/><br/><br/><br/>
<hr/>
<p class="text-center">
<input type="button" name="Product_List" id="Product_List" class="btn btn-danger" value="쇼핑하러가기"/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="button" name="home" id="home" class="btn btn-default" value="Home"/>
</p>

</div>

<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
<div id='footer'>
	<img src='<%=pjName%>/OldBalance/images/main/footer.jpg'>
</div>
</body>
</html>