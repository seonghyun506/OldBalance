<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="mybatis.oldBalance.service.ProductService"%>
<%@ page import="mybatis.oldBalance.service.ListPdsItemService"%>
<%
	String pjName = "/OldBalance";
	String id = (String)request.getAttribute("id");
	String mId = (String) request.getAttribute("mId");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>OldBalance</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript"
	src="<%=pjName%>/OldBalance/js/productDetail/jquery.loupe.min.js">
</script>
<script type="text/javascript">
$(function(){
	location.href='<%=pjName%>/Upload?cmd=pds-detail&id=<%=id%>'
	});
</script>
</head>
<body>
</body>
</html>