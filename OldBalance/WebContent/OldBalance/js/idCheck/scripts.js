$(document).ready(function(){

//	var parentValue=opener.document.getElementById("id").value;
//	$("#id").val(parentValue);  //id 값 부모창에서 가져오기
	
	$("#useid").click(function(){
		$('#id',opener.document).val($('#id').val());
		window.close();
	});
	
	$("#exit").click(function(){
		window.close();
	});
});