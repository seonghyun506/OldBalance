<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="mybatis.oldBalance.service.ProductService"%>
<%@ page import="mybatis.oldBalance.service.ListPdsItemService"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="mvc.oldBalance.model.ObProduct"%>
<% String projectName = "/OldBalance"; %>
<%	
List<ObProduct> mList = (List<ObProduct>) request.getAttribute("listModel");
%>

<%
String cate = request.getParameter("cate");
String range = request.getParameter("range");
String subCate = request.getParameter("subCate");
String detailCate = request.getParameter("detailCate");

	int totalCount = mList.size();
	int countList = 12;
	int cnt = 1;
	int currPage = Integer.parseInt(request.getParameter("page"));
	int totalPage = totalCount / countList + 1;

	if (totalPage < currPage) {
		currPage = totalPage;
	}
	int index = (currPage - 1) * countList;
	String desc="prod_price desc";
%>


<jsp:include page="header.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>OldBalance</title>
<link rel="stylesheet" href="<%=projectName %>/OldBalance/css/bootstrap/bootstrap.css" />
<link rel="stylesheet"
	href="<%=projectName%>/OldBalance/css/main/common.css" type="text/css">
<link rel="stylesheet"
	href="<%=projectName%>/OldBalance/css/productlist/common.css"
	type="text/css">
</head>
<body>
	<br />
	<br />
	<div class="whole">
		<h1><%=cate%></h1>
		<div class="pageTable">
			<table id="page">
				<tr>
					<%
						if (currPage > 1) {
					%>
					<td><a
						href="<%=projectName%>/Upload?cmd=pds-list&cate=<%=cate%>&subCate=<%=subCate %>&detailCate=<%=detailCate %>&range=<%=range%>&page=<%=currPage - 1%>">◀</a></td>
					<%
						}
					%>
					<%
						for (int i = 1; i <= totalPage; i++) {
					%>
					<td><a
						href="<%=projectName%>/Upload?cmd=pds-list&cate=<%=cate%>&subCate=<%=subCate %>&detailCate=<%=detailCate %>&range=<%=range%>&page=<%=i%>"><%=i%></a></td>
					<%
						}
					%>
					<%
						if (currPage != totalPage - 1) {
					%>
					<td><a href="<%=projectName%>/Upload?cmd=pds-list&cate=<%=cate%>&subCate=<%=subCate %>&detailCate=<%=detailCate %>&range=<%=range%>&page=<%=currPage + 1%>">▶</a></td>
					<%
						}
					%>
				</tr>
			</table>
		</div>
		<br/>
			<div class="sort">
			&nbsp;&nbsp;<a
				href="<%=projectName%>/Upload?cmd=pds-list&range=release_date&cate=<%=cate%>&subCate=<%=subCate %>&detailCate=<%=detailCate %>&page=1">신상품순</a>
			| <a
				href="<%=projectName%>/Upload?cmd=pds-list&range=read_num&cate=<%=cate%>&subCate=<%=subCate %>&detailCate=<%=detailCate %>&page=1">인기순</a>
			| <a
				href="<%=projectName%>/Upload?cmd=pds-list&range=prod_price&cate=<%=cate%>&subCate=<%=subCate %>&detailCate=<%=detailCate %>&page=1">낮은
				가격순</a> | <a
				href="<%=projectName%>/Upload?cmd=pds-list&range=<%=desc %>&cate=<%=cate%>&subCate=<%=subCate %>&detailCate=<%=detailCate %>&page=1">높은
				가격순</a>
		</div>
	
	<div>

			<table class="productTable ">
				<%
					for (int i = index; i < index + countList; i++) {
						ObProduct product = mList.get(i);
				%>
				<%
					if ((cnt % 4) == 1) {
				%>
				<tr>
					<td style='cursor: pointer;'
						onclick="location.href='<%=projectName%>/Upload?cmd=pds-detail&id=<%=product.getProdId()%>'">
						<img src='<%=projectName%>/OldBalance/upload/<%=product.getProdPath()%>'>
						<p><%=product.getProdName()%></p>
						<p><%=product.getProdPrice()%>원
						</p>
					</td>
					<%
						cnt++;
							} else if ((cnt % 4) == 2) {
					%>
					<td style='cursor: pointer;'
						onclick="location.href='<%=projectName%>/Upload?cmd=pds-detail&id=<%=product.getProdId()%>'">
						<img src='<%=projectName%>/OldBalance/upload/<%=product.getProdPath()%>'>
						<p><%=product.getProdName()%></p>
						<p><%=product.getProdPrice()%>원
						</p>
					</td>
					<%
						cnt++;
							} else if ((cnt % 4) == 3) {
					%>
					<td style='cursor: pointer;'
						onclick="location.href='<%=projectName%>/Upload?cmd=pds-detail&id=<%=product.getProdId()%>'">
						<img src='<%=projectName%>/OldBalance/upload/<%=product.getProdPath()%>'>
						<p><%=product.getProdName()%></p>
						<p><%=product.getProdPrice()%>원
						</p>
					</td>
					<%
						cnt++;
							} else if ((cnt % 4) == 0) {
					%>
					<td style='cursor: pointer;'
						onclick="location.href='<%=projectName%>/Upload?cmd=pds-detail&id=<%=product.getProdId()%>'">
						<img src='<%=projectName%>/OldBalance/upload/<%=product.getProdPath()%>'>
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
	<br />
	<br />
	<div id='footer'>
		<img src='./images/main/footer.jpg'>
	</div>
</body>
</html>