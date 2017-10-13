<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="/OldBalance/OldBalance/css/productmg/ManagementForm.css" type="text/css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="/OldBalance/OldBalance/js/productmg/jquery.js"></script>
<title>OldBalance</title>
</head>
<body>
<h2>oldBalanceProductMG.jsp</h2>
<p>재고 관리</p>
<label>제품 코드</label>
<input type="text" name="InventCode"/>
<input type="button" name="InventCodeSearch" value="검색"/>

<table>
<tr>
<th>제품코드</th>
<th>제품단가</th>
<th>사이즈</th>
<th>수량</th>
<th>메인</th>
<th>서브</th>
<th>디테일</th>
<th>할인율</th>
</tr>
<tr>
<td><input type="text"/></td>
<td><input type="text"/></td>
<td><input type="text"/></td>
<td><input type="text"/></td>
<td><input type="text"/></td>
<td><input type="text"/></td>
<td><input type="text"/></td>
<td><input type="text"/></td>
</tr>
</table>

<input type="button" value="입고"/>
<input type="button" value="삭제"/>
<hr/>

<form class="insert">
<p>입고 관리</p>
<table>
<tr>
<th>제품코드</th>
<th>제품단가</th>
<th>사이즈</th>
<th>수량</th>
<th>메인</th>
<th>서브</th>
<th>디테일</th>
<th>할인율</th>
</tr>
</table>
</form>

<form class="delete">
<h1>삭제 되었습니다.</h1>
</form>

</body>
</html>