<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="mybatis.oldBalance.service.ProductService"%>
<%@ page import="mvc.oldBalance.model.ObProduct"%>
<%
	String pjName = "/OldBalance";
	List<ObProduct> mList = (List<ObProduct>) request.getAttribute("param");
	int cnt = 1;
%>

<jsp:include page="header.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>OldBalance</title>
<link rel="stylesheet"
	href="<%=pjName%>/OldBalance/css/main/common.css" type="text/css">
<link rel="stylesheet"
	href="<%=pjName%>/OldBalance/css/productlist/common.css"
	type="text/css">
</head>
<body>
	<br />
	<br />
	<div class="whole">
		<h1>Find Product</h1>
		<br />
		<div>

			<table class="productTable">
				<%
					for (ObProduct product : mList) {
						
				%>
				<%
					if ((cnt % 4) == 1) {
				%>
				<tr>
					<td style='cursor: pointer;'
						onclick="location.href='<%=pjName%>/Product?cmd=product-detail&id=<%=product.getProdId()%>'">
						<img alt=""
						src="<%=pjName%>/OldBalance/images/product/<%=product.getProdId()%>.png" />
						<p><%=product.getProdName()%></p>
						<p><%=product.getProdPrice()%>원
						</p>
					</td>
					<%
						cnt++;
							} else if ((cnt % 4) == 2) {
					%>
					<td style='cursor: pointer;'
						onclick="location.href='<%=pjName%>/Product?cmd=product-detail&id=<%=product.getProdId()%>'">
						<img alt=""
						src="<%=pjName%>/OldBalance/images/product/<%=product.getProdId()%>.png" />
						<p><%=product.getProdName()%></p>
						<p><%=product.getProdPrice()%>원
						</p>
					</td>
					<%
						cnt++;
							} else if ((cnt % 4) == 3) {
					%>
					<td style='cursor: pointer;'
						onclick="location.href='<%=pjName%>/Product?cmd=product-detail&id=<%=product.getProdId()%>'">
						<img alt=""
						src="<%=pjName%>/OldBalance/images/product/<%=product.getProdId()%>.png" />
						<p><%=product.getProdName()%></p>
						<p><%=product.getProdPrice()%>원
						</p>
					</td>
					<%
						cnt++;
							} else if ((cnt % 4) == 0) {
					%>
					<td style='cursor: pointer;'
						onclick="location.href='<%=pjName%>/Product?cmd=product-detail&id=<%=product.getProdId()%>'">
						<img alt=""
						src="<%=pjName%>/OldBalance/images/product/<%=product.getProdId()%>.png" />
						<p><%=product.getProdName()%></p>
						<p><%=product.getProdPrice()%>원
						</p>
					</td>
				</tr>
				<%
					cnt++;
						}
				%>
				<%
					}
				%>

			</table>
		</div>
	</div>

	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<div id='footer'>
		<img src='./images/main/footer.jpg'>
	</div>
</body>
</html>