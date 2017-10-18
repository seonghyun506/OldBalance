$(document).ready(function() {
	$("input[name='complete']").click(function(){
		alert("현재 비밀번호"+$("input[name='hiddenpwd']").val());
		if($("input[name='hiddenpwd']").val()==$("input[name='password']").val()){
			$('form').submit();
			alert("회원 정보 수정 완료");	
		}else{
			alert("현재 비밀번호가 일치하지 않습니다..");
			return;
		}
	});
	$("input[name='postsearch']").click(function(){
//		window.location.href = '/OldBalance_cpy/FindPost?cmd=findpost';
		window.open("/OldBalance/OldBalance/oldBalanceFindPost.jsp","","weigh=500,height=400");
	}); 
		}); 