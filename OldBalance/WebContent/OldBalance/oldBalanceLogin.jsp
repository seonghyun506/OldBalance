<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String pjName="/OldBalance"; %>
<jsp:include page="header.jsp"></jsp:include> 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>OldBalance</title>
<link rel="stylesheet" href="<%=pjName%>/OldBalance/css/bootstrap/bootstrap.css" />
<link rel="stylesheet" href="<%=pjName%>/OldBalance/css/loginform/oldBalanceLoginForm.css" type="text/css"/>
<link rel="stylesheet" href="<%=pjName %>/OldBalance/css/main/common.css" type="text/css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="<%=pjName%>/OldBalance/js/loginform/jquery.js"></script>

</head>
<body>

<section id='login_form'>
	<div id='form_wrap'>
		<br/><br/><h1>Login</h1><br/>
		<div class='tab_bar'>
			<label for='Cust' class="select">로그인</label>
			<input type="button" name="Cust" value="회원 로그인" id='Cust'/>
		</div>
		<form class="Cust" id="cust" action="<%= pjName %>/Main?cmd=loginCheck" method="post">
			<div class='form-group'><br/>
				<input type="text" name="ID" id="id" class='identer form-control'   placeholder="Id" required autofocus/><br/>
				<input type="text" name="PWD" id="pwd" class='pwenter form-control' placeholder="Password" required/><br/>
				<!-- id / password -->
			</div>
			<div class='btn_wrap'>
					<input type="button" name="Login" value="Login" class="btn btn-danger" id='login_btn'/><br/>
					<input type="button" name="register" value="회원가입" class="btn btn-default b col-xs-3"/>
					<input type="button" name="SearchID" value="ID 찾기" class="btn btn-default b col-xs-3"/>
					<input type="button" name="SearchPWD" value="PWD 찾기" class="btn btn-default b col-xs-3"/>
				</div>
		</form>
	</div> <br/><br/><br/><br/><br/><br/>
	
	<div id='footer'>
		<img src='<%=pjName %>/OldBalance/images/main/footer.jpg'>
	</div>
</section>
</body>
</html>