$(document).ready(function(){

//	var parentValue=opener.document.getElementById("id").value;
//	$("#id").val(parentValue);  //id 값 부모창에서 가져오기
	
	$('#clickAddr').click(function() {
		var value;
		
		if(!$('input[name="addr"]').is(':checked')) {
			alert('검색 기준을 선택해주세요.');
		} else if($('#searchAddr').val() == '') {
			alert('찾을 정보를 입력해주세요.');
		} else {
			$('#table').empty();
			$('#table').addClass('table table-hover');
			$('#table').append('<tbody>');
			$('#table').append('<tr><th>선택</th><th>우편번호</th><th>도</th><th>시.군.구</th><th>도로명</th><th>지번번호</th></tr>');
			value = $('input[name="addr"]:checked').val();
			
			$.ajax({
				url : 'findPost.jsp',
				type : 'post',
				data : { type : value,
					date : $('#searchAddr').val() },
					dataType : 'text',
					success : function(data){
						var value = data.split("/");
						for (var i = 0; i < value.length -1 ; i++) {
							var each = value[i].split(".");
							$('#table').append('<tr><td><input name="select" type="radio"></td><td>'+ each[0] + '</td><td>'
							+ each[1] + '</td><td>' + each[2] + '</td><td>' + each[3] + '</td><td>' + each[4] + '</td></tr>');
						}
					},
					error : function(err){
						alert('에러발생' + err);
					}	
			});
			
			$('#table').append('</tbody>');
		}
		
	});
	
	
	$("#insert").click(function(){
		var choice = $('input[name="select"]:checked');
		var tr = choice.parent().parent();
		var post = tr.children().eq(1).html();
		var addr = tr.children().eq(2).html() + " " + tr.children().eq(3).html() + " "
					+ tr.children().eq(4).html() + " " + tr.children().eq(5).html();
		
		$('#post',opener.document).val(post);
		$('#addr',opener.document).val(addr);
		window.close();
	});
	
	$("#back").click(function(){
		window.close();
	});
});