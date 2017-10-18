<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% String pjName="/OldBalance"; %>
   <%@ page import="java.util.*" %>
    <%@ page import="mybatis.oldBalance.service.ModifyService" %>
    <%@ page import="mvc.oldBalance.model.ObMember" %>
    <%
    String id = request.getParameter("id");
	List<ObMember> mList = ModifyService.getInstance().selectModify(id);
	
	
    %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>oldBalanceModify.jsp</title>
<link rel="stylesheet" href="<%=pjName %>/OldBalance/css/bootstrap/bootstrap.css" />
<link rel="stylesheet" href="<%=pjName %>/OldBalance/css/mypage/mymodify.css" type="text/css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="<%=pjName %>/OldBalance/js/mymodify/mymodify.js" type="text/javascript"></script>

</head>
<body>
	<section>
		<div id='modify'>
			<h2>회원정보 수정</h2>
			<hr>
			<form action="<%=pjName%>/Modify?cmd=modify-member" method='post'>
				<div class="mymodify">
					<ul>
					<%for(ObMember member : mList){ %>
						<li><pre>아이디                     <%=member.getCustId()%>     </pre></li>
						<li><pre>주소                        <%=member.getCustAddr()%> </pre></li>
					
					</ul>
				</div>
				<hr />
				<div class='pa_check'>
				<input type="hidden" name="id" value="<%=member.getCustId() %>"/>
					<pre>기존 비밀번호       <input type="text" name="password" /><input type="hidden" name="hiddenpwd" value="<%=member.getCustPw() %>" /><br />
					</pre><%} %>
					<pre>새 비밀변호        <input type="text" name="newpwd" /><br />
					</pre>
					<pre>새 비밀번호 확인   <input type="text" /><br />
					</pre>
				</div>
				<hr />
				<ul class=post_check>
					<li>휴대 전화번호<input type="text" name="firstnum" class="tel" />-<input
						type="text" name="secondnum" class="tel" />-<input type="text"
						name="thirdnum" class="tel" />
					</li>
					<li>주소 (우편번호) <input type="text" id="post" name="postnum" /> <input
						class="btn btn-success" type="button" name="postsearch"
						value="우편번호 찾기" />
					</li>
					<li>주소 (상세입력) <input type="text" id="addr" name="addr1" readonly /> <input
						type="text" name="addr2" />
					</li>
				</ul>
				<div class='btn_wrap'>
					<div>
						<input type=button value="확인" name='complete' class="btn btn-danger">
						<input type=button value="취소" name='cancle' class="btn btn-default">
					</div>
				</div>
			</form>
		</div>
	</section>
</body>
</html>