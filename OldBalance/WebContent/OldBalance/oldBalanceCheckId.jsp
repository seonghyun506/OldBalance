<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> OldBalance </title>
<link rel="stylesheet" href="css/bootstrap/bootstrap.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap/bootstrap.js"></script>
<script src="./js/idCheck/scripts.js" type="text/javascript"></script>
<style>
.idtxt{}
.form-control{width:200px; float:right;}
</style>
</head>
<body>

<h1 class="text-center">아이디 중복확인</h1>
<h4 class="text-center">사용할 아이디를 입력하세요.</h4> <br/><br/>

<form class="row">
<div class="col-xs-7 idtxt">
<input type="text" id="id" class="form-control" placeholder="Id input here..." placeholder=".col-xs-4">
</div>
<div class="col-xs-5">
<input type="button" id="findId" class="btn" placeholder=".col-xs-3" value="중복확인"/><br/>
</div>
</form>

<hr/><br/>

<p class="text-center" id="message">.</p> <br/>

<p class="text-center">
<input type="button" name="useid" id="useid" class="btn btn-danger" value="사용하기"/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="button" name="exit" id="exit" class="btn btn-default" value="돌아가기"/>
</p>

</form>

</body>
</html>