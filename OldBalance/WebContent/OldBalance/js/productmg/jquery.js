$(document).ready(function(){

	$("form.insert").hide();
	$("form.delete").hide();
	
	$("input[value='입고']").click(function(){
		$("form.insert").show();
		$("form.delete").hide();
	});
	$("input[value='삭제']").click(function(){
		$("form.insert").hide();
		$("form.delete").show();
	});
});