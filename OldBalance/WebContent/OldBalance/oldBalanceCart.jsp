<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="mybatis.oldBalance.service.CartService" %>
<%@ page import="mvc.oldBalance.model.ObCart" %>
    
<% String pjName = "/OldBalance";%>
<jsp:include page="header.jsp"></jsp:include>
       
<%   
    String id="";
id=(String)session.getAttribute("id");

if(id==null||id.equals("")){
   response.sendRedirect(pjName+"/Main?cmd=login");
   return; 
}
   List<ObCart> mList  = (List<ObCart>) request.getAttribute("paran"); 
//  List<ObCart> mList  = request.getAtt~~~~("");
  
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>oldBalanceCart.jsp</title>
<link rel="stylesheet" href="<%=pjName%>/OldBalance/css/bootstrap/bootstrap.css" type="text/css" media="screen" charset="utf-8" />
<link rel="stylesheet" href="<%=pjName%>/OldBalance/css/cart/cart.css" type="text/css"
   media="screen" charset="utf-8" />
<link rel="stylesheet" href="<%=pjName %>/OldBalance/css/main/common.css" type="text/css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">

   $(function checkAll() {
      $('#checkAll').click(function() {

         if ($('#checkAll').prop('checked')) {
            $('input[name=subCheck]:checkbox').each(function() {
               $(this).prop('checked', true);
            });
         } else {
            $('input[name=subCheck]:checkbox').each(function() {
               $(this).prop('checked', false);
            });
         }
      });
   });
   
   $(function prod_delete(){
      $('.del').click(function(){
         
         if($('input[name=subCheck]:checkbox').is(':checked')){   
            var num=$(this).attr('name');
            var list_num = $(this).attr('name');
            
            $.ajax({
               url : '<%=pjName%>/OldBalance/deleteCart.jsp',
               type : 'post',
               data : { "list_num" : list_num,
                      "id" : "<%=id%>"},
                  dataType : 'text',
                  success : function(data){
                     $('.'+num).remove();
                  },
                  error : function(err){
                     alert('에러발생' + err);
                  }   
            });
            
         }else{
            alert('체크박스를선택하세요');
         }
         
      });
      
      
      
      $('#alldel').click(function(){
         if($('input[name=subCheck]:checkbox').is(':checked')){
            var index=$(this).attr('name');   
            $("."+num).parent().parent().remove();
         }else{
            alert('전체선택해주세요');
         }
      });
      
   });
   $(function() {
		$('#order').click(function() {
			location.href = '<%=pjName%>/MyPage?cmd=selectCart&id=<%=id%>';
		});
	});

   
</script>
</head>
<body>
   <section id='cart'>
      <div id='cart_wrap'>
         <br/><h2>Cart</h2>
         <div class='line'></div>
            <p>
            로그인 하시면 장바구니에 담은 상품이 30일간 보관됩니다.
            </p>
            <p>
            올드뉴발란스 회원이 되시면 다양한 혜택을 누리실 수 있습니다. 
            </p>
         <form action=''>
            <table class="product_info" border="1">
               <thead class="thead-inverse title">
                  <tr>
                     <th class='check'><input type="checkbox" name="choice" id="checkAll" /></th>
                     <th colspan="2">상품</th>
                     <th>상품금액</th>
                     <th>수량</th>
                     <th>합계금액</th>
                  </tr>
               </thead>
               <tbody>
                  <!-- 상품명 -->
                  <%for(int i=0; i<mList.size();i++) {%>
                  <tr class='d_info <%=i%>'>
                     
                     <td rowspan='4' rowsapn='2' style='width:5%;'><input type="checkbox" name='subCheck' value="<%=i%>" id='prodcheck'/></td>
                     <td rowspan='4' style='width:20%;'><img src=''>이미지<br>상품<br/></td>
                     <td></td>
                     <td rowspan='3'><%=mList.get(i).getProdPrice() %></td>
                     <td></td>
                     <input type="hidden" value='1' name="index"/>
                     <td rowspan='3'>5000</td>
                  </tr>
                  <!-- size -->
                  <tr class="<%=i%>">
                     <td style="text-align:center;"><%=mList.get(i).getProdName() %></td>
                     <td><input type='text' id='conunt' placeholder="<%=mList.get(i).getAmount()%>"></td>
                  </tr>
                  
                  <!-- color -->
                  <tr rowspan='2' class="<%=i%>">
                     <td  style="text-align:center; width:27%;">Type :&nbsp;<%=mList.get(i).getMainCate()%>&nbsp;<%=mList.get(i).getSubCate()%>&nbsp;<%=mList.get(i).getDetailCate()%></td>
                     <td></td>
                  </tr>
                  <tr class='btn_change <%=i%>'>
                     <td  style="text-align:center;">Size :&nbsp;<%=mList.get(i).getProdSize() %></td>
                     <td></td>
                  
                     <td colspan='3' class='le'><input class="btn btn-danger del" type="button" value="삭제" id='delete_btn' name="<%=i%>"/></td>
                  </tr>
                  <%} %>
               </tbody>
            </table>

            <div>
               <table class="table table-inverse" border="1">
                  <tr>
                     <td>상품주문금액 :</td>
                     <td>금액 000원</td>
                     <td>총 결제 예정금액</td>
                  </tr>
                  <tr>
                     <td>할인금액:</td>
                     <td>금액-000원</td>
                     <td rowspan="2">원</td>
                  </tr>
                  <tr>
                     <td>배송비:</td>
                     <td>금액 +5000원</td>
                  </tr>
               </table>
            </div>
            <div style="float:right;">
               <input class="btn btn-danger" type="button" value="마이페이지로 이동" /> 
               <input class="btn btn-danger" type="button" id="order" value="주문하기" />
            </div>
         </form>
      </div><br/><br/><br/><br/><br/><br/><br/><br/>
      
   <div id='footer'>
      <img src='<%=pjName %>/OldBalance/images/main/footer.jpg'>
   </div>
   </section>

</body>
</html>