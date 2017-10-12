/**
 * 
 */

$(document).ready(function() {
	$('#signup form').validate({
		rules : {
			name : { required : true },
			email : {
				required : true,
				email : true
			},
			website : {
				url : true
			},
			password : {
				minlength : 6
			},
			passconf : {
				equalTo : '#password'
			}
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
	      var check = document.getElementsByName('agree');
	      var sub = true;
	      
	      for (var i = 0; i < check.length; i++) {
	         if(check[i].checked == false) {
	               sub = false;
	         }         
	      }
	      
	      if(sub) {
	    	  alert('넘어가야 정상');
	    	  $('form').submit();
	      }
	   });
	
});