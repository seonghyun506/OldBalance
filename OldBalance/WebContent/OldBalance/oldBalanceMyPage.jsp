<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:include page="header.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>oldBalanceMyPage.jsp</title>

<link rel="stylesheet" href="css/bootstrap/bootstrap.css" />
<link rel="stylesheet" href="./css/mypage/mypage.css" type="text/css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="./js/mymodify/mypage.js" type="text/javascript"></script>
</head>
<body>
<h2>My Page</h2>

<form class="myinfo">

<table class="table table-striped table-inverse">
<tr>
<th rowspan="2">나의 회원정보</th>
<td rowspan="3" width="70px"></td>
<td>주소</td>
<td rowspan="3" width="30px"></td>
<td>주소내용 ㅣ----------------------ㅣ</td>
</tr>
<tr>
<td>휴대 전화번호</td>
<td>010-1234-1234</td>
</tr>
<tr>
<td><input class="btn btn-success" type="button" name="mymodify" id="mymodify" value="회원정보 수정"/></td>
<td>마일리지</td>
<td>100.000원</td>
</tr>
</table>
</form>
<br/>
<br/>
<br/>
<br/>
<form class="myorder">
<div class="serchorder">
<p class="h2">주문/배송 조회</p> 
기간조회
<input type="date" name="bday" min="2014-12-31"/>~
<input type="date" name="bday" max="2017-12-31"/>
<input class="btn btn-info" type="button" name="bdaysearch" value="조회"/>
</div>

<table class="table table-striped table-inverse">
<tr>
<th width="210">상품명</th>
<th width="150">주문번호</th>
<th width="220">주문일시</th>
<th width="110">최종 결제금액</th>
<th width="100">결제방법</th>
</tr>
<tr>
<td colspan="5"><hr/>검색된 정보가 없습니다.</td>
</tr>
</table>
</form>



</body>
</html>