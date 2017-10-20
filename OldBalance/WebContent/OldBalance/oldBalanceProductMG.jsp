<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%String projectName = "/OldBalance";%>
<jsp:include page="header.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="<%=projectName %>/OldBalance/css/bootstrap/bootstrap.css" />
<link rel="stylesheet" href="<%=projectName %>/OldBalance/css/productmg/ManagementForm.css" type="text/css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("form.select").hide();
		$("form.delete").hide();
		
		$("input[value='입고']").click(function(){
			$("form.select").show();
			$("form.delete").hide();
		});
		$("input[value='삭제']").click(function(){
			$("form.select").hide();
			$("form.delete").show();
		});
		var menu_s =["디테일","러닝화","워킹화","축구화"];
		var menu_t =["디테일","티셔츠","맨투맨","자켓"];
		var menu_choice=["메뉴를 선택하세요."];
		var changeItem;
		var s_main;
		var s_sub;
		$("#s_main").change(function(){
		s_main=$("#s_main").val();
		});
		
		$("#s_sub").change(function(){
			s_sub=$("#s_sub").val();
			if(s_sub=="신발"){
				changeItem = menu_s;
			}else if(s_sub=="의류"){
				changeItem = menu_t;
			}else if((s_main="메인")||(s_sub="서브")){
				changeItem = menu_choice;
			}
			$("#s_detail").empty();
			for(var count =0; count < changeItem.length; count++){
				var option = $("<option>"+changeItem[count]+"</option>");
				$("#s_detail").append(option);
			}		
		});
		$("input[value='입고']").click(function(){
			$(".insert").submit();
		});
	});
	</script>
	
<title>OldBalance</title>
</head>
<body>
	<section id='productMG'>
		<div id='productMG_wrap'>
		<h2>관리자 page</h2>
		<p>재고 관리</p>
		<label for='InventCode'>제품 코드</label>
		<form class="insert" action='/OldBalance_cp/Upload?cmd=upload' method='post' enctype="multipart/form-data">
			 <input type="text" name="InventCode" id='InventCode' class='code' style="width:100px;  margin-top:10px;"/> 
			 <input type="button" name="InventCodeSearch" value="검색" class='btn_search'/>
		<table>
			<tr>
				<th>제품명</th>
				<th>제품 가격</th>
				<th>메인</th>
				<th>서브</th>
				<th>디테일</th>
				<th>사진 경로</th>
			</tr>
			<tr>
				<td><input type="text" name="name" /></td>
				<td><input type="text" name="price"/></td>
				 <td><select id="s_main" name="main"><option value="메인">선택</option><option>MEN</option><option>WOMEN</option><option>KID</option></select></td>
				<td><select id="s_sub" name="sub"><option>선택</option><option>신발</option><option>의류</option></select></td>
				<td><select id="s_detail" name="detail"><option>선택</option></select></td>
				<td><input type="file" name="file" class="btn btn-danger"/></td>
			</tr>
		</table>
			<div class='btn_wrap'>
				<input type="button" value="입고" class='btn btn-danger'/>
			</div>
			</form>
		<hr />

		<form class="select">
			<p>입고 관리</p>
			<table>
				<tr>
					<th>제품코드</th>
					<th>제품단가</th>
					<th>메인</th>
					<th>서브</th>
					<th>디테일</th>
					<th>사진 경로</th>
				</tr>
			</table>
		</form>

		<form class="delete">
			<h1>삭제 되었습니다.</h1>
		</form>
		</div>
	</section>
</body>
</html>