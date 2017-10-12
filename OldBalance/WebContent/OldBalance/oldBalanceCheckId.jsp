<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>oldBalanceCheckId.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="./js/idCheck/scripts.js" type="text/javascript"></script>
</head>
<body>
<h1>아이디 중복확인</h1>
<form class="nullid">
<p>아이디를 입력하세요.</p>
</form>

<input type="text" name="id" id="id"/>
<input type="button" value="중복확인"/><br/>

공백 또는 특수문자가 포함된 아이디는 사용할 수 없습니다. <br/>
숫자로 시작하거나, 숫자로만 이루어진 아이디는 사용할 수 없습니다.
<hr/>
<form class="UseId">
사용가능한 아이디 입니다. <br/>

<input type="button" name="useid" id="useid" value="사용하기"/>
<input type="button" name="exit" id="exit" value="취소"/>

</form>

</body>
</html>