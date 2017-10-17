<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String pjName = "/OldBalance";
%>
<jsp:include page="header.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>OldBalance</title>
<link rel="stylesheet" href="<%=pjName%>/OldBalance/css/productIntroduce/common.css"
	type="text/css">
	
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript"
	src="./js/productDetail/jquery.loupe.min.js">
	
</script>
<script type="text/javascript">
	$(function() {
		$('#test').loupe({
			width : 200,
			height : 200,
			loupe : 'loupe'
		});
	});
</script>
</head>
<body>
	<br />
	<br />
	<div class="whole">
		<h2>Product Name</h2>
		<br />
		<div class="productImage">
			<img id='test' alt="" src="./images/product/154.jpg" width="500"
				height="500" />
		</div>
		<div class='productInfo'>
		<div class="top">
			<h3>Product Name</h3>
			<br/>
			<table>
				<tr>
					<td>판매가&nbsp;&nbsp;</td>
					<td><span class='pay'>64000</span>원</td>
				</tr>
				</table>
			<div class='line'></div>
				<table>
				<tr>
					<td>적립 마일리지</td>
					<td>3840점(6%)</td>
				</tr>
			</table>
			<div class='line'></div>

			<table>
				<tr>
					<td class='t_title'>컬러(Color) : Gray</td>
				</tr>
			</table>

			<table id='size'>
				<tr>
					<td class='t_title'>사이즈(Size)</td>
				</tr>
				<tr class='s_list'>
					<td><a href='#'>S(90)</a></td>
					<td><a href='#'>M(95)</a></td>
					<td><a href='#'>L(100)</a></td>
					<td><a href='#'>XL(105)</a></td>
					<td><a href='#'>XXL(110)</a></td>
				</tr>
			</table>
			<table>
				<tr>
					<td class='t_title'>수량(Qty)</td>
				</tr>
				<tr>
					<td><select>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
					</select></td>
				</tr>
			</table>
			<br/>
			<form action=''>
				<table id='btn_table'>
					<tr>
						<td>
							<label for='btncart' class='cartin'><img src='./images/productdetail/btn1.gif' alt=''></label>
							<input type='button' name='cart' value='장바구니 담기' id="btncart">
						</td>
						<td>
							<label for='btnorder' class='ordernow'><img src='./images/productdetail/btn2.gif' alt=''></label>
							<input type='button' name='cart' value='바로 주문하기' id="btnorder">
						</td>
					</tr>
				</table>
			</form>
			</div>
			
			<br/>
			<div class='review'>
			<table border="1">
				<tr>
					<td>동의?</td>
					<td>2017/10/16</td>
					<td>seonghy*****</td>
				</tr>
				<tr>
					<td>어보감</td>
					<td>2017/10/16</td>
					<td>seonghy*****</td>
				</tr>
			</table>
		</div>
		</div>
		
		
	</div>


	<div id='footer'>
		<img src='./images/main/footer.jpg'>
	</div>
</body>
</html>