<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<jsp:include page="header.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>oldBalanceOrder.jsp</title>
<link rel="stylesheet" href="css/bootstrap/bootstrap.css" />
<link rel="stylesheet" href="./css/order/order.css" type="text/css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		$('.card_form').hide();
		
		$('#pay').click(function(){
			$('.pay_form').show();
			$('.card_form').hide();
			$('.payment > p > a').text('무통장입금');
		});
		$('#card').click(function(){
			$('.card_form').show();
			$('.pay_form').hide();
			$('.payment > p > a').text('카드결제');
		});
	});

</script>
</head>
<body>
	<section id='order'>
		<div id='order_wrap'>
			<h2>Order</h2>
			<form class="order-list">
			<!-- 주문 정보 -->
				<h3>1. 주문하시는 제품</h3>
				<table class='order_info'>
					<tr class='title'>
						<td>상품</td>
						<td>수량</td>
						<td>주문금액</td>
						<td>배송정보</td>
					</tr>
					<tr>
						<td>뉴발란스운동화</td>
						<td>2</td>
						<td>400000원</td>
						<td>착불:2500원</td>
					</tr>
					<tr>
						<td>뉴발란스운동화</td>
						<td>2</td>
						<td>400000원</td>
						<td>배송비:2500원</td>
					</tr>
				</table>
				
				<!-- 주문자정보 -->
				
				<h3>2. 주문고객 / 배송지정보</h3>
				<h3><label for='ali' class='btn_ali'>회원고객 정보와 동일</label><input type=button id='ali' class="btn btn-danger" value='agree'></h3>
				<table class='order_info o2'>
					<tr>
						<td><span>＊</span>받으시는분</td>
						<td><input type='text' class=''></td>
					</tr>
					<tr>
						<td><span>＊</span>휴대폰</td>
						<td>
							<input type="text" class='num1'/>-<input type="text" class='num1'/>-<input type="text" class='num1'/>
						</td>
					</tr>
					<tr>
						<td>연락처</td>
						<td><input type="text" class='num1'/>-<input type="text" class='num1'/>-<input type="text" class='num1'/></td>
					</tr>
					<tr>
						<td><span>＊</span>지번주소</td>
						<td><input type="text" class='num2'/><input type="button" value='검색' class='bt'></td>
					</tr>
					<tr>
						<td>도로명 주소</td>
						<td><input type="text" class='num2'/><input type="button" value='검색' class='bt'></td>
					</tr>
					<tr>
						<td>배송 메시지</td>
						<td><input type="text" class='num2'/></td>
					</tr>
				</table>
			</form>
			<form class="order-list">
				<div class='payment'>
					<h3>3. 결제수단선택</h3>
					<div>
						<input type='radio' id='pay' value='무통장입금' name='gg' checked><label for='pay'>무통장입금</label>
						<input type='radio' id='card' value='카드결제' name='gg'><label for='card'>신용카드</label>
					</div>	
					<p>결제수단정보:<a href='#'>무통장입금</a></p>
					
					<div class='pay_form'>
						<label>은행선택</label><select>
												<option>-은행선택-</option>
												<option>기업은행</option>
												<option>국민은행</option>
												<option>신한은행</option>
											</select>	
						<div>
							<label for='pay_name'>입금자명</label><input type='text' placeholder="예)양은자" id='pay_name'>
						</div>					
					</div>
					<div class='card_form'>
						<label>은행선택</label><select>
												<option>-카드사선택-</option>
												<option>신한카드</option>
												<option>국민카드</option>
												<option>현대카드</option>
												<option>삼성카드</option>
											</select>	
						<div>
							<label for='card_num'>카드번호</label>
							<input type='text' id='card_num'>-&nbsp;<input type='text'>-&nbsp;<input type='text'>-&nbsp;<input type='text'><br />
							<label for='card_cvc'>cvc</label>
							<input type='text' id='card_cvc'>
						</div>
					
					</div>
				</div>
				<div class='pm_form'>
					<div>
						<div>
							<p>총결제금액 <span>838,000</span></p>
							<p>배송비<span>0원(무료)</span></p>
						</div>
						<input type=button value='결제하기' class="btn btn-danger">
						<input type=button value='취소하기' class="btn btn-danger">
					</div>
				</div>
			</form>	
		</div>
			
		
	</section>
</body>
</html>