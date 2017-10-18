<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String pjName = "/OldBalance"; %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>OldBalance</title>
<link rel="stylesheet" href="<%=pjName%>/OldBalance/css/findpost/findpost.css" type="text/css"/>
<link rel="stylesheet" href="<%=pjName%>/OldBalance/css/bootstrap/bootstrap.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="<%=pjName%>/OldBalance/js/bootstrap/bootstrap.js"></script>
<script src="<%=pjName%>/OldBalance/js/findPost/scripts.js" type="text/javascript"></script>
</head>
<body>
<h2>우편번호 검색</h2><br/><br/>

<input type="radio" id="radio" name="addr" value="도로명"/>도로명
<input type="radio" id="radio" name="addr" value="지번본번"/>지번본번<br/><br/>

<div class="form-group">
	<input type="text" id="searchAddr" class="form-control" placeholder="주소지 입력" name="searchAddr"/>
	<input type="button" id="clickAddr" class="btn btn-default" name="clickAddr" value="확인"/><br/>
</div>
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