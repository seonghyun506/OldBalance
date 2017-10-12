/**
 * 
 */

$(document).ready(function() {
	$('#signup form').validate({
		rules : {
			name : { required : true },
			password : {
				minlength : 6,
				maxlength : 16,
				required : true
			},
			passconf : {
				equalTo : '#password',
				required : true
			},
			addr : {required : true}
		},
		success : function(label) {
			label.addClass('valid');
			label.text('성공');
		}
	});
	
	$('.check-all').click(function() {
		$('.agree').prop('checked', $(this).is(':checked'));
	});
	
	$('.agree').click(function() {
		if(!$(this).is(':checked')) {
			$('.check-all').prop('checked', false);
		}
	});
	
	$('#join').click(function() {
		var check = document.getElementsByName('checked');
		var sub = false;
		
		for (var i = 0; i < check.length; i++) {
			if($('.agree').is(':checked')) {
					
			}			
		}
		
		if(sub) {
			$('form').submit;
		}
	});
	
});