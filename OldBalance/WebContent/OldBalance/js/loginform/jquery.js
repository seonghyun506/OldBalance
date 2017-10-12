$(document).ready(function(){
	$("form.Guest").hide();
	
	$('input[name="Cust"]').click(function(){
		$('form').hide();
		$('form.Cust').show();
	});
	$('input[name="Guest"]').click(function(){
		$('form').hide();
		$('form.Guest').show();
	});
});