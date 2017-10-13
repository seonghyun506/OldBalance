<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>OldBalance</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="/OldBalance/OldBalance/js/idCheck/scripts.js" type="text/javascript"></script>
</head>
<body>
<h1>아이디 중복확인</h1>
<form class="nullid">
<p>아이디를 입력하세요.</p>


<input type="text" name="id" id="id"/>
<input type="button" id="findId" value="중복확인"/><br/>
</form>

<hr/><hr/><br/><br/>

<div id="message"> </div>

<input type="button" name="useid" id="useid" value="사용하기"/>
<input type="button" name="exit" id="exit" value="취소"/>

</form>

</body>
</html>