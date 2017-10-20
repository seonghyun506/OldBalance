<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*" %>
    <%@ page import="mybatis.oldBalance.service.MyPageService" %>
    <%@ page import="mvc.oldBalance.model.*" %>
 <%
	String pjName = "/OldBalance";
	String id="";
	id=(String)session.getAttribute("id");
	if(id==null||id.equals("")){
		response.sendRedirect(pjName+"/Main?cmd=login");
	}
	List<ObMember> mList = (List<ObMember>) request.getAttribute("param");
	List<ObOrder> order = (List<ObOrder>) request.getAttribute("order");
	List<String> namePrice = (List<String>) request.getAttribute("namePrice");
	int i = 0;
%>
    
    <jsp:include page="header.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>oldBalanceMyPage.jsp</title>

<link rel="stylesheet" href="<%=pjName %>/OldBalance/css/bootstrap/bootstrap.css" />
<link rel="stylesheet" href="<%=pjName %>/OldBalance/css/mypage/mypage.css" type="text/css"/>
<link rel="stylesheet" href="<%=pjName %>/OldBalance/css/main/common.css" type="text/css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">

$(document).ready(function(){
	$("#mymodify").click(function(){
		location.href = '<%=pjName%>/Modify?cmd=modify&id=<%=id%>';
	});
	$('input[name="bdaysearch"]').click(function() {
		if($('#first').val() == "" || $('#last').val() == "") {
			alert('조회 날짜를 다시 확인해주세요.');
		} else {		
			$('.value').empty();
			$.ajax({
				url : '<%=pjName%>/OldBalance/getOrderData.jsp',
				type : 'post',
				data : {
					"id" : "<%=id%>",
					"first" : $('#first').val(),
					"last" : $('#last').val() },
				dataType : 'text',
				success : function(data){
					if(data.trim() == "" || data.trim() == null) {
						$('.product_info').append('<tr class="value"> <td colspan="5"><hr />검색된 정보가 없습니다.</td></tr>')
					} else {
						var value = data.split(".");
						for (var i = 0; i < value.length -1 ; i++) {
							var each = value[i].split("/");
							$('.product_info').append('<tr class="value"><td>' + each[0] + '</td><td>'+ each[1] + '</td><td>'
							+ each[2] + '</td><td>' + each[3] + '</td><td>' + each[4] + '</td></tr>');
						}
					}
				},
				error : function(err){
					alert('에러발생' + err);
				}	
			});
		}
	});
});

</script>
</head>
<body>
	<section id='Mypage'>
		<div id='Myinpo_wrap'>
			<br/><h2>My Page</h2><br/>

			<form class="myinfo">
				<div style='width:90%; margin:0 auto;'>
					<h3>회원정보</h3>
				</div>
				
				
				<table class="my_profile table-striped table-inverse">
					<%for(ObMember member : mList){ %>
					<!-- title -->
					<tr>
						<td>ID :</td>
						<td><%=member.getCustId()%></td>
					</tr>
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
				</table> <br/><br/>
				<p class="text-right">
					<input type="button" class="btn btn-danger" id="mymodify" value="회원정보 수정"/>
				</p>
				
				<div class="serchorder">
					<h3 class='or_b'>주문/배송 조회</h3><br/>
					기간조회 <input class="imsi" type="date" id="first" name="bday" min="2014-12-31" />~<input class="imsi" id="last" type="date" value="2017-10-20" name="bday" max="2017-12-31" /> <input class="btn btn-default" type="button" name="bdaysearch" value="조회하기" />
				</div>

				<table class="product_info table-striped table-inverse">
					<tr class='title'>
						<th width="150">주문번호</th>
						<th width="210">상품명</th>
						<th width="220">주문일시</th>
						<th width="110">결제금액</th>
						<th width="100">결제방법</th>
					</tr>
					<% if(order.size() == 0) { %>
					<tr class="value">
						<td colspan="5"><hr />검색된 정보가 없습니다.</td>
					</tr>
					<% } else { for(ObOrder oborder : order){
						String imsi = namePrice.get(i);
						String np[] = imsi.split("/");
					%>
					<tr class="value">
						<td><%= oborder.getOrderNum()%></td>
						<td><%= np[0]%></td>
						<td><%= oborder.getOrderDate()%></td>
						<td><%= np[1]%></td>
						<td><%= oborder.getPayState()%></td>
					</tr>
						<% i++;}
					} %>
				</table>
			</form>
		</div><br/><br/><br/><br/><br/><br/><br/><br/>
	<div id='footer'>
		<img src='<%=pjName %>/OldBalance/images/main/footer.jpg'>
	</div>
	</section>

</body>
</html>