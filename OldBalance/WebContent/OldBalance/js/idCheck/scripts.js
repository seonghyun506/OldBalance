$(document).ready(function(){

//	var parentValue=opener.document.getElementById("id").value;
//	$("#id").val(parentValue);  //id 값 부모창에서 가져오기
	
	$('#findId').click(function() {
		$.ajax({
			url : 'checkId.jsp',
			type : 'post',
			data : { id : $('#id').val()},
			dataType : 'text',
			success : function(data){
				if(data.trim() == "0") {
					$('#message').html('사용 가능한 아이디 입니다.');
				} else {
					$('#message').html('이미 사용중인 아이디 입니다.');
				}
			},
			error : function(err){
				alert('에러발생' + err);
			}
			
		});
	});
	
	
	
	$("#useid").click(function(){
		$('#id',opener.document).val($('#id').val());
		window.close();
	});
	
	$("#exit").click(function(){
		window.close();
	});
});