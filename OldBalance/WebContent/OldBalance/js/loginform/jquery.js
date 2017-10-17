$(document).ready(function(){
	$("form.Guest").hide();
	
	$('input[name="Cust"]').click(function(){
		
		$('form').hide();
		$('form.Cust').show();
		$('.select').css('background','#fff');
	});
	$('input[name="Guest"]').click(function(){
		$('form').hide();
		$('form.Guest').show();
	});
	
	$('.guest').click(function(){
		$(this).css('background','#fff');
		$('.select').css('background','#ccc');
	});
	$('.select').click(function(){
		$(this).css('background','#fff');
		$('.guest').css('background','#ccc');
	});
	$('input[name="register"]').click(function(){
		location.href = '/OldBalance/Main?cmd=register';
	});
});