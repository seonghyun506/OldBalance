<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String pjName = "/OldBalance"; %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> OldBalance </title>
<link rel="stylesheet" href="<%=pjName%>/OldBalance/css/bootstrap/bootstrap.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="<%=pjName%>/OldBalance/js/bootstrap/bootstrap.js"></script>
<script src="<%=pjName%>/OldBalance/js/loginform/jquery.js" type="text/javascript"></script>
<style>
.idtxt{margin-bottom:10px;}
.form-control{width:200px; float:right;}
</style>
</head>
<body>

<h1 class="text-center">비밀번호 찾기</h1>
<h4 class="text-center">본인의 아이디와 전화번호를 입력하세요.</h4> <br/><br/>

<form class="row">
<div class="col-xs-7 idtxt">
<input type="text" id="id" class="form-control" placeholder="Id input here..." placeholder=".col-xs-4">
</div>
<div class="col-xs-7 idtxt">
<input type="text" id="tel" class="form-control" placeholder="TelNum input here..." placeholder=".col-xs-4">
</div>
<div class="col-xs-5">
<input type="button" id="findPwd" class="btn" placeholder=".col-xs-3" value="입력 완료"/><br/>
</div>
</form>

<hr/><br/>

<p class="text-center" id="pwdMessage">.</p> <br/>

<p class="text-center">
<input type="button" name="exit" id="pwdExit" class="btn btn-dnager" value="돌아가기"/>
</p>

</form>

</body>
</html>