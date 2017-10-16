<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>oldBalanceOrder.jsp</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
<link rel="stylesheet" href="./css/order/order.css" type="text/css"/>
</head>
<body>
<h2>Order</h2>

<form class="order-list">
<p>1.주문하시는 상품</p>
<table class="table table-striped table-inverse">
<tr>
<th width="210">상품</th>
<th width="150">수량</th>
<th width="220">주문금액</th>
<th width="110">배송 정보</th>
</tr>
<tr>
<td colspan="5"><hr/>검색된 정보가 없습니다.</td>
</tr>
</table>
</form>

<form class="order-info">
<p>2.주문고객/배송지 정보</p>

<table class="table table-striped table-inverse">
<tr>
<td>받으시는 분</td>
<td><input type="text" /></td>
</tr>
<tr>
<td>휴대폰</td>
<td><select><option>선택</option><option>010</option></select>-<input type="text" />-<input type="text" /></td>
</tr>
<tr>
<td>연락처</td>
<td><input type="text" />-<input type="text" />-<input type="text" /></td>
</tr>
<tr>
<td>지번주소</td>
<td><input type="text" /><input class="btn btn-success" type="button" value="검색"/></td>
</tr>
<tr>
<td>도로명주소</td>
<td><input type="text" /><input class="btn btn-success" type="button" value="검색"/></td>
</tr>
<tr>
<td>배송메시지</td>
<td><input type="text" /></td>
</tr>
</table>
</form>

<form>
<p>결제수단선택<input type="radio" name="pay" value="transfer">계좌이체 <input type="radio" name="pay" value="card">신용카드 <hr/></p>
<table id="payment" border="1" >
<tr>
<td colspan="2">주문금액 확인 및 결제</td>
</tr>
<tr>
<td>상품가격</td>
<td>838000원</td>
</tr>
<tr>
<td>배송비</td>
<td>0원(무료)</td>
</tr>
<tr>
<td colspan="2">총 결제 예정금액</td>
</tr>
<tr>
<td colspan="2">838,000원</td>
</tr>
<tr>
<td colspan="2">결제수단: 실시간계좌이체</td>
</tr>
<tr>
<td colspan="2">주문동의 | 주문내용을 확인해주세요.</td>
</tr>
<tr>
<td colspan="2">주문할 상품의 상품명, 상품가격,<br/> 배송저보를 확인하였으며, 구매에 <br/> 동의하시겠습니까?</td>
</tr>
<tr>
<td colspan="2"><input type="checkbox"/> 동의합니다.</td>
</tr>
<tr>
<td><input class="btn btn-danger" type="button" value="취소하기"/></td><td><input class="btn btn-info" type="button" value="결제하기"/></td>
</tr>
</table>
</form>
<p>결제수단정보: 실시간계좌이체</p>
<textarea class="caption" readonly="readonly">*[결제하기]버튼을 클릭하면 계좌이체 결제창으로 연결되며 결제 창에서 결제정보를 입력할 수 있습니다.</textarea>
<p>결제수단정보 :신용카드</p>
<table class="table table-striped table-inverse">
<tr>
<td>카드종류</td>
<td><select><option>카드선택</option></select></td>
<td rowspan="3"><pre>                                 </pre></td>
<td rowspan="3"><textarea class="guide" readonly="readonly"><공인인증/신용카드 인증서비스 안내> 30만원 이상 결제시 신용카드용 공인인증서가 필요합니다.</textarea></td>
</tr>
<tr>
<td>할부선택</td>
<td><input type="radio" class="paymm">일시불</td>
</tr>

</table>

</body>
</html>