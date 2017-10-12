<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>oldBalanceLoginForm.jsp</title>
<link rel="stylesheet" href="./css/loginform/oldBalanceLoginForm.css" type="text/css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="./js/loginform/jquery.js"></script>

</head>
<body>
<h2>Login</h2>

<input type="button" name="Cust" value="회원 로그인"/>
<input type="button" name="Guest"value="비회원 로그인"/><br/>

<form class="Cust">
<label class="ID">ID</label>
<input type="text" name="ID"/><br/>
<label class="PWD">Password</label>
<input type="text" name="PWD"/><br/>
<input type="checkbox" name="SaveID" class="SaveID"/>ID 저장 
<input type="button" name="Login" value="Login"/><br/>
<input type="button" name="register" value="회원가입"/>
<input type="button" name="SearchID" value="ID 찾기"/>
<input type="button" name="SearchPWD" value="PWD 찾기"/>
</form>

<form class="Guest">
<p>비회원 구매 시 입력했던 구매자명/비밀번호/연락처로 로그인 해주세요.</p>
<label class="GusetName">구매자 명</label>
<input type="text" name="GuestName"/><br/>
<label class="GuestTell">연락처</label>
<input type="text" name="GuestTell"/><br/>
<label class="GuestPWD">비밀번호</label>
<input type="text" name="GuestPWD"/><br/>
<input type="button" name="GuestLogin" value="로그인"/>
</form>
</body>
</html>