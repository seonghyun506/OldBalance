<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>OldBalance</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
<link rel="stylesheet" href="../OldBalance/css/loginform/oldBalanceLoginForm.css" type="text/css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="../OldBalance/js/loginform/jquery.js"></script>

</head>
<body>
<section id='login_form'>
	<div id='form_wrap'>
		<h2>Login</h2>
		<div class='tab_bar'>
			<label for='Cust' class="select">회원로그인</label>
			<input type="button" name="Cust" value="회원 로그인" id='Cust'/>
			<label for='Guest' class='guest'>비회원로그인</label>
			<input type="button" name="Guest" value="비회원 로그인 " id='Guest'/><br/>
		</div>
		<form class="Cust">
			<label class="ID">ID</label>
			<input type="text" name="ID" class='identer'/><br/>
			<label class="PWD">Password</label>
			<input type="text" name="PWD" class='pwenter'/><br/>
			<!-- id / password -->
			<div class='btn_wrap'>
				<input type="checkbox" name="SaveID" class="SaveID"/>ID 저장 
				<input type="button" name="Login" value="Login" class="btn btn-danger"/><br/>
				<input type="button" name="register" value="회원가입" class="btn btn-primary"/>
				<input type="button" name="SearchID" value="ID 찾기" class="btn btn-primary"/>
				<input type="button" name="SearchPWD" value="PWD 찾기" class="btn btn-primary"/>
			</div>
		</form>
		<form class="Guest">
			<p>비회원구매 시 입력했던 구매자명/비밀번호/연락처로  로그인 해주세요.</p>
			<label class="GusetName">구매자 명</label>
			<input type="text" name="GuestName"/><br/>
			<label class="GuestTell">연락처</label>
			<input type="text" name="GuestTell"/><br/>
			<label class="GuestPWD">비밀번호</label>
			<input type="text" name="GuestPWD"/><br/>
			<input type="button" name="GuestLogin" value="로그인" class="btn btn-danger"/>
		</form>
	</div>
</section>
</body>
</html>