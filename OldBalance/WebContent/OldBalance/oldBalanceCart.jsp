<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <jsp:include page="header.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>oldBalanceCart.jsp</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
<link rel="stylesheet" href="/OldBalance/OldBalance/css/bootstrap/bootstrap.css" type="text/css" media="screen" charset="utf-8" />
<link rel="stylesheet" href="./css/cart/cart.css" type="text/css" media="screen" charset="utf-8" />
</head>
<body>
<h2>Cart</h2>
<form>
<table class="table" border="1">
<thead class="thead-inverse">
<tr>
<th><input type="checkbox" name="choice" id="choice" /></th>
<th colspan="2">상품</th>
<th>상품금액</th>
<th>수량</th>
<th>합계금액</th>
</tr>
</thead>

<tr>
<td rowspan="4"><input type="checkbox"/></td>
<td rowspan="4"><img/> 이미지</td>
<td>상품명:</td>
<td rowspan="4">419,000원</td>
<td rowspan="2"><input class="btn btn-secondary" type="button" value="증가"/></td>
<td rowspan="3">838,000원</td>
</tr>
<tr>
<td>Size:</td>
</tr>
<tr>
<td>Color:</td>
<td rowspan="2"><input class="btn btn-secondary" type="button" value="감소"/></td>
</tr>
<tr>
<td><input class="btn btn-primary" type="button" value="사이즈 컬러 변경"/></td>
<td><input class="btn btn-danger" type="button" value="삭제"/></td>
</tr>
</table>

<div>
<table class="table table-inverse" border="1">
<tr>
<td>상품주문금액 :</td><td>금액 000원</td><td>총 결제 예정금액</td>
</tr>
<tr>
<td>할인금액: </td><td>금액-000원</td><td rowspan="2">838,000원</td>
</tr>
<tr>
<td>배송비:</td><td>금액 +000원</td>
</tr>
</table>
</div>
<input class="btn btn-danger" type="button" value="쇼핑 계속하기"/>
<input class="btn btn-danger" type="button" value="주문하기"/>
</form>
</body>
</html>