<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>oldBalanceModify.jsp</title>
<link rel="stylesheet" href="./css/mypage/mymodify.css" type="text/css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="./js/mymodify/mymodify.js" type="text/javascript"></script>

</head>
<body>
<h2>회원정보 수정</h2>
<form>
<div class="mymodify">
<ul>
<li><pre>아이디                      아이디    </pre></li>
<li><pre>이름                       이름</pre></li>
<li><pre>성별                      <input type="radio" name="gender" value="male">남성</input><input type="radio" name="gender" value="female"/>여성</input></pre></li>
<li>생년월일
<select id="year">
<option>선택</option>
<%
for(int i=2000;i<=2017; i++){
%>
<option value="<%=i%>"><%=i%></option>
<%} %>
</select>
년
<select id="month">
<option>선택</option>

<option></option>

</select>
월
<select id="day">
<option>선택</option>
</select>
일
</li>
</ul>
</div>
<hr/>
<div>
기존 비밀번호 <input type="text" name="password"/><br/>
새 비밀변호 <input type="text"/><br/>
새 비밀번호 확인 <input type="text"/><br/>
</div>
<hr/>
<ui>
<li>
휴대 전화번호<input type="text" name="firstnum" class="tel"/>-<input type="text" name="secondnum" class="tel"/>-<input type="text" name="thirdnum" class="tel"/>
</li>
<li>
주소 (우편번호) <input type="text" name="postnum"/> <input type="button" name="postsearch" value="우편번호 찾기"/>
</li>
<li>
주소 (상세입력) <input type="text" name="addr1" disabled /> <input type="text" name="addr2"/>
</li>
</ui>

</form>

</body>
</html>