<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>OldBalance</title>
<link rel="stylesheet" href="/OldBalance/OldBalance/css/findpost/findpost.css" type="text/css"/>
<link rel="stylesheet" href="css/bootstrap/bootstrap.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap/bootstrap.js"></script>
<script src="./js/findPost/scripts.js" type="text/javascript"></script>
</head>
<body>
<h2>우편번호 검색</h2><br/><br/>

<input type="radio" name="addr" value="도로명"/>도로명
<input type="radio" name="addr" value="지번본번"/>지번본번<br/>
<input type="text" id="searchAddr" name="searchAddr"/>
<input type="button" id="clickAddr" name="clickAddr" value="확인"/><br/>

<hr/>


<div class="post">
<table id="table" class="table table-hover">
<tr>
<th>선택</th>
<th>우편번호</th>
<th>도</th>
<th>시.군.구</th>
<th>도로명</th>
<th>지번번호</th>
</tr>
</table>
</div>

<br/><br/><br/><br/>
<p class="text-center">
<input type="button" name="insert" id="insert" class="btn btn-danger" value="입력"/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="button" name="back" id="back" class="btn btn-default" value="취소"/>
</p>

</body>
</html>