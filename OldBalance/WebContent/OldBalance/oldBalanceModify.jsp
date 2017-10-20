<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<jsp:include page="header.jsp"></jsp:include> 
<% String pjName="/OldBalance"; %>
   <%@ page import="java.util.*" %>
    <%@ page import="mybatis.oldBalance.service.ModifyService"%>
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
<link rel="stylesheet" href="<%=pjName %>/OldBalance/css/main/common.css" type="text/css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
   $("input[name='complete']").click(function(){
      if($("input[name='hiddenpwd']").val()==$("input[name='password']").val()){
         $('form').submit();
         alert("회원 정보 수정 완료");   
      }else{
         alert("현재 비밀번호가 일치하지 않습니다..");
         return;
      }
   });
   $("input[name='postsearch']").click(function(){
      windowObj=window.open("<%=pjName%>/OldBalance/oldBalanceFindPost.jsp","주소 찾기","width=650, height=550");
   }); 
   
   $("input[name='cancle']").click(function() {
      $(location).attr('href',"<%= pjName %>/MyPage?cmd=mypage&id=<%=id%>");
   });
}); 
</script>

</head>
<body>
   <section>
      <div id='modify'>
         <br/><h2>회원정보 수정</h2>
         <hr>
         <form action="<%=pjName%>/Modify?cmd=modify-member" method='post'>
            <div class="mymodify">
               <ul>
               <%for(ObMember member : mList){ %>
                  <li><pre>아이디                     <%=member.getCustId()%>     </pre></li>
                  <li><pre>주소                       <%=member.getCustAddr()%> </pre></li>
               </ul>
            </div>
            <hr />
            <div class='mymodify'>
            <input type="hidden" name="id" value="<%=member.getCustId() %>"/>
               <div class='pass_form'>
                  <p>기존 비밀번호  </p><input class="put form-control" type="text" name="password" placeholder="pass."/>
                  <input type="hidden" name="hiddenpwd" value="<%=member.getCustPw() %>" />
               </div><%} %>
               
               <div class='pass_form'>
                  <p>새 비밀변호 </p><input type="text" class="put form-control" name="newpwd" placeholder="new pass." />
               </div>
               <div class='pass_form'>
                  <p>비밀번호 확인 </p> <input class="put form-control" type="text" placeholder="pass check."/>
               </div>
            </div>
            <hr />
            <ul class=post_check>
               <li>휴대 전화번호<input type="text" name="firstnum" class="tel" />-<input
                  type="text" name="secondnum" class="tel" />-<input type="text"
                  name="thirdnum" class="tel" />
               </li>
               <li>주소 (우편번호) 
                  <input type="text" id="post" name="postnum" placeholder="post"/> 
                  <input
                  class="btn btn-danger" type="button" name="postsearch"
                  value="우편번호 찾기"/>
               </li>
               <li>주소 (상세입력) <input type="text" id="addr" name="addr1" readonly placeholder="address"/> <input
                  type="text" name="addr2"/>
               </li>
            </ul>
            <div class='btn_wrap'>
               <div>
                  <input type=button value="확인" name='complete' class="btn btn-danger">
                  <input type=button value="취소" name='cancle' class="btn btn-default">
               </div>
            </div>
         </form>
      </div> <br/><br/><br/><br/><br/><br/><br/>
   <div id='footer'>
      <img src='<%=pjName %>/OldBalance/images/main/footer.jpg'>
   </div>
   </section>
</body>
</html>