<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="mybatis.oldBalance.service.ProductService" %>
<%@ page import="mvc.oldBalance.model.ObProduct" %>
<%
	String projectName = "/OldBalance";
	String cate = request.getParameter("cate");
	List<ObProduct> mList = (List<ObProduct>)request.getAttribute("param");
	int totalCount = (int)request.getAttribute("param2");
	int countList = 36;
	int cnt = 1;
	int currPage = Integer.parseInt(request.getParameter("page"));
	int totalPage = totalCount/countList+1;
	 	

	if(totalPage<currPage){
		currPage = totalPage;
	}
	int index = (currPage-1)*countList;
	
	
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
		<%if(currPage>1) {%>
		<td><a href="<%=projectName %>/Product?cmd=product-list&cate=<%=cate %>&page=<%=currPage-1 %>">◀</a></td>
		<%} %>
		<%for(int i = 1;i<totalPage;i++){ %>
		<td><a href="<%=projectName %>/Product?cmd=product-list&cate=<%=cate %>&page=<%= i %>"><%= i %></a></td>
		<%} %>
		<%if(currPage!=totalPage-1) {%>
		<td><a href="<%=projectName %>/Product?cmd=product-list&cate=<%=cate %>&page=<%=currPage+1 %>">▶</a></td>
		<%} %>
		</tr>
		</table>
		</div>
		<br/>
		<div class="sort">
			&nbsp;&nbsp;<a>신상품순</a>  |  <a>인기순</a>  |  <a>낮은 가격순</a>  |  <a>높은 가격순</a>
		</div>
		<div>
		
		<table class="productTable" >
		<% for(int i=index;i<index+countList;i++){ 
		ObProduct product = mList.get(i);
		%>
		<% if((cnt%4)==1){ %>
		<tr>
		<td style='cursor:pointer;' onclick="location.href='<%=projectName %>/Product?cmd=product-detail&id=<%=product.getProdId()%>'">
		<img alt="" src="<%= projectName%>/OldBalance/images/product/<%= product.getProdId() %>.png"/>
		<p><%=product.getProdName() %></p>
		<p><%=product.getProdPrice() %>원</p>
		</td>
		<%cnt++;}else if((cnt%4)==2) { %>
		<td style='cursor:pointer;' onclick="location.href='<%=projectName %>/Product?cmd=product-detail&id=<%=product.getProdId()%>'">
		<img alt="" src="<%= projectName%>/OldBalance/images/product/<%= product.getProdId() %>.png"/>
		<p><%=product.getProdName() %></p>
		<p><%=product.getProdPrice() %>원</p>
		</td>
		<%cnt++;}else if((cnt%4)==3) { %>
		<td style='cursor:pointer;' onclick="location.href='<%=projectName %>/Product?cmd=product-detail&id=<%=product.getProdId()%>'">
		<img alt="" src="<%= projectName%>/OldBalance/images/product/<%= product.getProdId() %>.png"/>
		<p><%=product.getProdName() %></p>
		<p><%=product.getProdPrice() %>원</p>
		</td>
		<%cnt++;} else if((cnt%4)==0){%>
		<td style='cursor:pointer;' onclick="location.href='<%=projectName %>/Product?cmd=product-detail&id=<%=product.getProdId()%>'">
		<img alt="" src="<%= projectName%>/OldBalance/images/product/<%= product.getProdId() %>.png"/>
		<p><%=product.getProdName() %></p>
		<p><%=product.getProdPrice() %>원</p>
		</td>
		</tr>
		<%cnt++;} %>
		<% } %>
		
		</table>
		</div>
	</div>
	
	<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
	<div id='footer'>
		<img src='./images/main/footer.jpg'>
	</div>
</body>
</html>