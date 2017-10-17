<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="mybatis.oldBalance.service.ProductService" %>
<%@ page import="mvc.oldBalance.model.ObProduct" %>
<%
	String projectName = "/OldBalance";
	String cate = request.getParameter("cate");
	List<ObProduct> mList = ProductService.getInstance().selectByMainCate(cate);
	int cnt = 1;
%>

<jsp:include page="header.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>OldBalance</title>
<link rel="stylesheet" href="<%=projectName %>/OldBalance/css/main/common.css" type="text/css">
<link rel="stylesheet" href="<%=projectName %>/OldBalance/css/productlist/common.css"
	type="text/css">
</head>
<body>
	<br />
	<br />
	<div class="whole">
		<h1><%=cate %></h1>
		<div class="pageTable">
		<table id="page">
		<tr>
		<td>◀</td>
		<td>1</td>
		<td>2</td>
		<td>3</td>
		<td>▶</td>
		</tr>
		</table>
		</div>
		<br/>
		<div class="sort">
			&nbsp;&nbsp;<a>신상품순</a>  |  <a>인기순</a>  |  <a>낮은 가격순</a>  |  <a>높은 가격순</a>
		</div>
		<div>
		
		<table class="productTable" >
		
		<% for(ObProduct product : mList){ %>
		<% if((cnt%4)==1){ %>
		<tr>
		<td><img alt="" src="<%= projectName%>/OldBalance/images/product/<%= product.getProdId() %>.png"/>
		<p><%=product.getProdName() %></p>
		<p><%=product.getProdPrice() %>원</p>
		</td>
		<%cnt++;}else if((cnt%4)==2) { %>
		<td><img alt="" src="<%= projectName%>/OldBalance/images/product/<%= product.getProdId() %>.png"/>
		<p><%=product.getProdName() %></p>
		<p><%=product.getProdPrice() %>원</p>
		</td>
		<%cnt++;}else if((cnt%4)==3) { %>
		<td><img alt="" src="<%= projectName%>/OldBalance/images/product/<%= product.getProdId() %>.png"/>
		<p><%=product.getProdName() %></p>
		<p><%=product.getProdPrice() %>원</p>
		</td>
		<%cnt++;} else if((cnt%4)==0){%>
		<td><img alt="" src="<%= projectName%>/OldBalance/images/product/<%= product.getProdId() %>.png"/>
		<p><%=product.getProdName() %></p>
		<p><%=product.getProdPrice() %>원</p>
		</td>
		</tr>
		<%cnt++;} %>
		<%} %>
		
		</table>
		</div>
	</div>
	
	<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
	<div id='footer'>
		<img src='./images/main/footer.jpg'>
	</div>
</body>
</html>