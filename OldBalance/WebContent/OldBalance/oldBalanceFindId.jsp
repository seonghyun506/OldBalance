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
.idtxt{}
.form-control{width:200px; float:right;}
</style>
</head>
<body>

<h1 class="text-center">아이디 찾기</h1>
<h4 class="text-center">본인의 핸드폰 번호를 입력하세요.</h4> <br/><br/>

<form class="row">
<div class="col-xs-7 idtxt">
<input type="text" id="telNum" class="form-control" placeholder="TelNum input here..." placeholder=".col-xs-4">
</div>
<div class="col-xs-5">
<input type="button" id="findId" class="btn" placeholder=".col-xs-3" value="입력 완료"/><br/>
</div>
</form>

<hr/><br/>

<p class="text-center" id="idMessage">.</p> <br/>

<p class="text-center">
<input type="button" name="exit" id="idExit" class="btn btn-danger" value="돌아가기"/>
</p>

</form>

</body>
</html>