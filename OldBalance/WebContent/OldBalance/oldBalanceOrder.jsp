<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="mybatis.oldBalance.service.MyPageService" %>
<%@ page import="mvc.oldBalance.model.ObCart" %>
<%
	String pjName = "/TeamProject";
	String id="";
	id=(String)session.getAttribute("id");
	if(id==null||id.equals("")){
		response.sendRedirect(pjName+"/Main?cmd=login");
	}
	List<ObCart> mList = (List<ObCart>) request.getAttribute("mList");
%>
<jsp:include page="header.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>oldBalanceOrder.jsp</title>
<link rel="stylesheet" href="<%=pjName%>/OldBalance/css/bootstrap/bootstrap.css" />
<link rel="stylesheet" href="<%=pjName%>/OldBalance/css/order/order.css" type="text/css" />
<link rel="stylesheet" href="<%=pjName%>/OldBalance/css/main/common.css" type="text/css">
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
		
		$('#write').click(function() {
			if($('#custName').val() != "" && $('#custTel').val() != "" && $('#post').val() != "") {
				$('.order-payment').slideDown();
			} else {
				alert('필수 입력사항을 다시 확인해주세요.');
			}
		});
		
		$('#payform').click(function() {
			var fullAddr = $('#post').val() + "/" + $('#addr').val();
			var pay = $('input:radio[name="gg"]:checked').val();
			var tel = $('#custTel').val();
			var prodId = "";
			
			var tr = $('#table tr td:first-child');
			
			for (var i = 1; i < tr.length; i++) {
				prodId += tr.eq(i).html() + "/";
				alert(prodId);
			}
			
			$(location).attr('href',"<%= pjName %>/Order?cmd=orderCommit&id=<%=id%>&addr="+fullAddr+"&tel="+tel+"&pay="+pay+"&prodId="+prodId);
		});
		$('#home').click(function() {
			$(location).attr('href',"<%= pjName %>/Main?cmd=main");
		});
		$('#findPost').click(function() {
			windowObj=window.open("<%=pjName%>/OldBalance/oldBalanceFindPost.jsp","주소 찾기","width=650, height=550");
		});
		$('#ali').click(function() {
			$.ajax({
				url : '/TeamProject/OldBalance/getMemberData.jsp',
				type : 'post',
				data : { id : '123456' },
					dataType : 'text',
					success : function(data){
						var value = data.split("/");
						$('#custName').val(value[0]);
						$('#post').val(value[1]);
						$('#addr').val(value[2]);
						$('#custTel').val(value[3]);
					},
					error : function(err){
						alert('에러발생2' + err);
					}	
			});
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
				<table class='order_info' id="table">
					<tr class='title'>
						<td>상품번호</td>
						<td>상품명</td>
						<td>수량</td>
						<td>사이즈</td>
						<td>주문금액</td>
					</tr>
					<% for(ObCart cart : mList) {
						int price = cart.getAmount() * cart.getProdPrice();
					%> 
					<tr class='body'>
						<td ><%= cart.getProdId() %></td>
						<td><%= cart.getProdName()%></td>
						<td><%= cart.getAmount() %></td>
						<td><%= cart.getProdSize() %></td>
						<td><%= price %></td>
					</tr>
					<% } %>
				</table>
				
				<!-- 주문자정보 -->
				
				<h3>2. 주문고객 / 배송지정보</h3>
				<h3><label for='ali' class='btn_ali'>회원고객 정보와 동일</label><input type=button id='ali' class="btn btn-default" value='agree'></h3>
				<table class='order_info o2'>
					<tr>
						<td><span>＊</span>사용자 ID</td>
						<td><input id="custName" type='text'></td>
					</tr>
					<tr>
						<td><span>＊</span>휴대폰</td>
						<td>
							<input type="text" id="custTel" class='num4'/>
						</td>
					</tr>
					<tr>
						<td>연락처</td>
						<td><input type="text" class='num1'/> - <input type="text" class='num1'/> - <input type="text" class='num1'/></td>
					</tr>
					<tr>
						<td><span>＊</span>우편번호</td>
						<td><input type="text" id="post" class='num3'/><input id="findPost" type="button" value='검색' class='bt'></td>
					</tr>
					<tr>
						<td>상세주소</td>
						<td><input type="text" id="addr" class='num2' readonly/></td>
					</tr>
					<tr>
						<td>배송 메시지</td>
						<td><input type="text" class='num2'/></td>
					</tr>
				</table>
					<br/><br/><br/><br/><br/><br/><br/><br/>
				<p class="text-right">
					<input id="write" type="button" value="작성완료" class="btn btn-danger">
				</p>
				
			</form>
			<form class="order-payment">
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
							<input type='text' class='card_num'> - <input type='text' class='card_num'> - <input class='card_num' type='text'> - <input class='card_num' type='text'><br />
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
						<input type=button id="home" value='취소하기' class="btn btn-default">
						<input type=button id="payform" value='결제하기' class="btn btn-danger">
					</div>
				</div>
			</form>	
		</div>
			
	<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
	<div id='footer'>
		<img src='<%=pjName%>/OldBalance/images/main/footer.jpg'>
	</div>
	</section>
</body>
</html>