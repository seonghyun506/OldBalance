<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*" %>
    <%@ page import="mybatis.oldBalance.service.MyPageService" %>
    <%@ page import="mvc.oldBalance.model.ObMember" %>
    <%
	String projectName = "/OldBalance";
// 	String id = request.getParameter("id");
	String id="";
	id=(String)session.getAttribute("id");
	if(id==null||id.equals("")){
		
		response.sendRedirect(projectName+"/Main?cmd=login");
	}
	List<ObMember> mList = MyPageService.getInstance().selectMyPage(id);
	
	
%>
    
    <jsp:include page="header.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>oldBalanceMyPage.jsp</title>

<link rel="stylesheet" href="<%=projectName %>/OldBalance/css/bootstrap/bootstrap.css" />
<link rel="stylesheet" href="<%=projectName %>/OldBalance/css/mypage/mypage.css" type="text/css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="<%=projectName %>/OldBalance/js/mymodify/mypage.js" type="text/javascript"></script>
</head>
<body>
	<section id='Mypage'>
		<div id='Myinpo_wrap'>
			<h2>My Page</h2>

			<form class="myinfo">
				<div style='width:90%; margin:0 auto;'>
					<h3>회원정보</h3>
				</div>
				<table class="my_profile table-striped table-inverse">
					<%for(ObMember member : mList){ %>
					<!-- title -->
					<tr>
						<td>주소 :</td>
						<td><%=member.getCustAddr()%></td>
					</tr>
					<tr>
						<td>H·P :</td>
						<td><%=member.getCustTel()%></td>
					</tr>
					<tr>
						<td>마일리지 :</td>
						<td><%=member.getCustMig()%></td>
					</tr>
					<%} %>
				</table>
				<input type="button" id="mymodify" value="회원정보 수정"/>
				<div class="serchorder">
					<h3 class='or_b'>주문/배송 조회</h3>
					기간조회 <input type="date" name="bday" min="2014-12-31" />~ <input type="date" name="bday" max="2017-12-31" /> <input class="btn btn-info" type="button" name="bdaysearch" value="조회" />
				</div>

				<table class="product_info table-striped table-inverse">
					<tr class='title'>
						<td width="150">주문번호</th>
						<td width="210">상품명</th>
						<td width="220">주문일시</th>
						<td width="110">최종 결제금액</th>
						<td width="100">결제방법</th>
					</tr>
					<tr>
						<td colspan="5"><hr />검색된 정보가 없습니다.</td>
					</tr>
				</table>
			</form>
		</div>
	</section>

</body>
</html>