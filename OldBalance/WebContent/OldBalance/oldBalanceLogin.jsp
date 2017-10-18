<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String pjName="/OldBalance"; %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>OldBalance</title>
<link rel="stylesheet" href="<%=pjName%>/OldBalance/css/bootstrap/bootstrap.css" />
<link rel="stylesheet" href="<%=pjName%>/OldBalance/css/loginform/oldBalanceLoginForm.css" type="text/css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="<%=pjName%>/OldBalance/js/loginform/jquery.js"></script>

</head>
<body>
<% String path = request.getHeader("referer"); %>

<section id='login_form'>
	<div id='form_wrap'>
		<h2>Login</h2>
		<div class='tab_bar'>
			<label for='Cust' class="select">회원로그인</label>
			<input type="button" name="Cust" value="회원 로그인" id='Cust'/>
			<label for='Guest' class='guest'>비회원로그인</label>
			<input type="button" name="Guest" value="비회원 로그인 " id='Guest'/><br/>
		</div>
		<form class="Cust" id="cust" action="<%= pjName %>/Main?cmd=loginCheck&path=<%=path%>" method="post">
			<div class='form-group'>
				<input type="text" name="ID" id="id" class='identer form-control'  placeholder="Id" required autofocus/><br/>
				<input type="text" name="PWD" id="pwd" class='pwenter form-control' placeholder="Password" required/><br/>
				
				<!-- id / password -->
			</div>
			<div class='btn_wrap'>
					<input type="checkbox" name="SaveID" class="SaveID"/>ID 저장 
					<input type="button" name="Login" value="Login" class="btn btn-danger" id='login_btn'/><br/>
					<input type="button" name="register" value="회원가입" class="btn btn-default b col-xs-3"/>
					<input type="button" name="SearchID" value="ID 찾기" class="btn btn-default b col-xs-3"/>
					<input type="button" name="SearchPWD" value="PWD 찾기" class="btn btn-default b col-xs-3"/>
				</div>
		</form>
		<form class="Guest" id="guest" action="<%= pjName %>/Main?cmd=loginCheck">
			<p>비회원구매 시 입력했던 구매자명/비밀번호/연락처로  로그인 해주세요.</p>
			<div class='form-group'>
				<input type="text" name="GuestName" class='form-control' placeholder="구매자명" required autofocus/><br/>
				<input type="text" name="GuestTell" class='form-control' placeholder="비밀번호" required /><br/>
				<input type="text" name="GuestPWD" class='form-control'  placeholder="구매자명" required /><br/>
				<input type="button" name="GuestLogin" value="로그인" class="btn btn-danger"/>
			</div>
		</form>
	</div>
</section>
</body>
</html>