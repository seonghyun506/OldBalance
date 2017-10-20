<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="mybatis.oldBalance.service.ProductService"%>
<%@ page import="mvc.oldBalance.model.ObProduct"%>
<%@ page import="mvc.oldBalance.model.ObReview"%>
<%
	String pjName = "/OldBalance";
	String id = request.getParameter("id");
	ObProduct product = (ObProduct) request.getAttribute("param");
		List<ObReview> reviewList = (List<ObReview>) request.getAttribute("param2");
	
	String mId=(String)session.getAttribute("id");
	
	String flag;
	String comment = "";
	String content="";
	
	if(mId==null){
		flag = "true";
		comment = "로그인 후에 이용하세요.";
	}else{
		flag = "false";
		comment = "";
	}
%>
<jsp:include page="header.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>OldBalance</title>
<link rel="stylesheet"
	href="<%=pjName%>/OldBalance/css/productIntroduce/common.css"
	type="text/css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript"
	src="<%=pjName%>/OldBalance/js/productDetail/jquery.loupe.min.js">
</script>
<script type="text/javascript">
	$(function() {
		$('#test').loupe({
			width : 200,
			height : 200,
			loupe : 'loupe'
		});
		$('#tfReview').attr("disabled",<%=flag%>);
		$('#inputReview').attr("disabled",<%=flag%>);
		
		$('#inputReview').click(function(){
			location.href='<%=pjName%>/Product?cmd=insert-review&mId=<%=mId%>&id=<%=id%>&content=' + $("#tfReview").val();
		});
		
		$('#btncart').click(function(){
			location.href='<%=pjName%>/Product?cmd=insert-cart&mId=<%=mId%>&id=<%=id%>&amount='
					+$('#amount option:selected').text() + '&size=' + $(':radio[name="ckSize"]:checked').val();
			alert("장바구니 저장 완료!!!");

		});
		
	});
	
</script>
</head>
<body>
	<br />
	<br />
	<div class="whole">
		<h2><%=product.getProdName()%></h2>
		<br />
		<div class="productImage">
			<img id='test' alt=""
				src="<%=pjName%>/OldBalance/images/product/<%=product.getProdId()%>.jpg"
				width="500" height="500" />
		</div>
		<div class='productInfo'>
			<div class="top">
				<h3><%=product.getProdName()%></h3>
				<br />
				<table>
					<tr>
						<td>판매가&nbsp;&nbsp;</td>
						<td><span class='pay'><%=product.getProdPrice()%></span>원</td>
					</tr>
				</table>
				<div class='line'></div>
				<table>
					<tr>
						<td>적립 마일리지&nbsp;</td>
						<td><%=product.getProdPrice() * 0.06%>점(6%)</td>
					</tr>
				</table>
				<div class='line'></div>

				<table>
					<tr>
						<td>조회수&nbsp;</td>
						<td><%=product.getReadNum()%>회</td>
					</tr>
				</table>

				<table id='size'>
					<tr>
						<td class='t_title'>사이즈(Size)</td>
					</tr>
					<tr class='s_list'>
					<%if(product.getSubCate().equals("의류")){ %>
						<td><input type='radio'  id='ckSize' name='ckSize' value='S(90)'>S(90)</td>
						<td><input type='radio'  id='ckSize' name='ckSize' value='M(95)'>M(95)</td>
						<td><input type='radio'  id='ckSize' name='ckSize' value='L(100)'>L(100)</td>
						<td><input type='radio'  id='ckSize' name='ckSize' value='XL(105)'>XL(105)</td>
						<td><input type='radio'  id='ckSize' name='ckSize' value='XXL(110)'>XXL(110)</td>
						<%}else{ %>
						<td><input type='radio'  id='ckSize' name='ckSize' value='220'>220</td>
						<td><input type='radio'  id='ckSize' name='ckSize' value='230'>230</td>
						<td><input type='radio'  id='ckSize' name='ckSize' value='240'>240</td>
						<td><input type='radio'  id='ckSize' name='ckSize' value='250'>250</td>
						<td><input type='radio'  id='ckSize' name='ckSize' value='260'>260</td>
						<td><input type='radio'  id='ckSize' name='ckSize' value='270'>270</td>
						<td><input type='radio'  id='ckSize' name='ckSize' value='280'>280</td>
						<%} %>
					</tr>
				</table>
				<table>
					<tr>
						<td class='t_title'>수량(Qty)</td>
					</tr>
					<tr>
						<td><select id="amount">
								<option value="0"></option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
						</select></td>
					</tr>
				</table>
				<br />
				<form action=''>
					<table id='btn_table'>
						<tr>
							<td><label for='btncart' class='cartin'><img
									src='<%=pjName%>/OldBalance/images/productdetail/btn1.gif'
									alt=''></label> <input type='button' name='cart' value='장바구니 담기'
								id="btncart"></td>
							<td><label for='btnorder' class='ordernow'><img
									src='<%=pjName%>/OldBalance/images/productdetail/btn2.gif'
									alt=''></label> <input type='button' name='cart' value='바로 주문하기'
								id="btnorder"></td>
						</tr>
					</table>
				</form>
			</div>

			<br />
			<div class='review'>
				<table border="1">
					<%
						for (ObReview review : reviewList) {
					%>
					<tr>
						<td><%=review.getContent()%></td>
						<td><%=review.getReviewDate()%></td>
						<td><%=review.getCustId()%></td>
					</tr>
					<%
						}
					%>
				</table>
				<input type="text"  id="tfReview" />&nbsp;<input type="button" id="inputReview"value="입력"/><br/>
				<%=comment %>
			</div>
		</div>
	</div>


	<div id='footer'>
		<img src='<%=pjName%>/OldBalance/images/main/footer.jpg'>
	</div>
</body>
</html>