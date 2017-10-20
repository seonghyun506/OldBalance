<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String pjName = "/OldBalance"; 
String id="";
id=(String)session.getAttribute("id");
if(id==null||id.equals("")){
	response.sendRedirect(pjName+"/Main?cmd=login");
}
%>
       <jsp:include page="header.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>oldBalanceCart.jsp</title>
<link rel="stylesheet" href="<%=pjName%>/OldBalance/css/bootstrap/bootstrap.css" type="text/css" media="screen" charset="utf-8" />
<link rel="stylesheet" href="<%=pjName%>/OldBalance/css/cart/cart.css" type="text/css"
	media="screen" charset="utf-8" />
<link rel="stylesheet" href="<%=pjName %>/OldBalance/css/main/common.css" type="text/css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		$('#order').click(function() {
			location.href = '<%=pjName%>/MyPage?cmd=selectCart&id=<%=id%>';
		});
	});
</script>

</head>
<body>
	<section id='cart'>
		<div id='cart_wrap'>
			<br/><h2>Cart</h2>
			<div class='line'></div>
				<p>
				로그인 하시면 장바구니에 담은 상품이 30일간 보관됩니다. <a href='#'>로그인&nbsp;<span>▶</span></a>
				</p>
				<p>
				올드뉴발란스 회원이 되시면 다양한 혜택을 누리실 수 있습니다. <a href='#'>회원가입 바로가기&nbsp;<span>▶</span></a>
				</p>
			<form action=''>
				<table class="product_info" border="1">
					<thead class="thead-inverse title">
						<tr>
							<th class='check'><input type="checkbox" name="choice" id="choice" /></th>
							<th colspan="2">상품</th>
							<th>상품금액</th>
							<th>수량</th>
							<th>합계금액</th>
						</tr>
					</thead>
					<tbody>
						<!-- 상품명 -->
						<tr class='d_info'>
							<td rowspan='3'><input type="checkbox" /></td>
							<td rowspan='3'><img src=''>이미지<br>상품<br/></td>
							<td>뉴발란스990</td>
							<td rowspan='3'>81000</td>
							<td><input class="btn btn-secondary plus" type="button" value="증가" id='plus'/><label for='plus'>▲</label></td>
							<td rowspan='3'>5000</td>
						</tr>
						<!-- size -->
						<tr>
							<td>Size :</td>
							<td><input class="btn btn-secondary minus" type="button" value="감소" id='minus'/><label for='minus'>▼</label></td>
						</tr>
						
						<!-- color -->
						<tr>
							<td>Color :</td>
							<td><input type='text' id='conunt' placeholder="1"></td>
						</tr>
						<tr class='btn_change'>
							<td></td>
							<td></td>
							<td colspan='2'><input class="btn btn-default" type="button"
								value="사이즈 컬러 변경" /></td>
							<td colspan='3' class='le'><input class="btn btn-danger" type="button" value="삭제" /></td>
						</tr>
					</tbody>
				</table>

				<div>
					<table class="table table-inverse" border="1">
						<tr>
							<td>상품주문금액 :</td>
							<td>금액 000원</td>
							<td>총 결제 예정금액</td>
						</tr>
						<tr>
							<td>할인금액:</td>
							<td>금액-000원</td>
							<td rowspan="2">838,000원</td>
						</tr>
						<tr>
							<td>배송비:</td>
							<td>금액 +000원</td>
						</tr>
					</table>
				</div>
				<div style="float:right;">
					<input class="btn btn-danger" type="button" value="쇼핑 계속하기" /> 
					<input class="btn btn-danger" id="order" type="button" value="주문하기" />
				</div>
			</form>
		</div><br/><br/><br/><br/><br/><br/><br/><br/>
		
	<div id='footer'>
		<img src='<%=pjName %>/OldBalance/images/main/footer.jpg'>
	</div>
	</section>

</body>
</html>