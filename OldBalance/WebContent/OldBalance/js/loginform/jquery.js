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
	
	$('input[name="Login"]').click(function() {
		$('#cust').submit();
	});
	
	$('input[name="SearchID"]').click(function() {
		windowObj=window.open("oldBalanceFindId.jsp","아이디 찾기","width=460, height=350");
	});
	
	$('input[name="SearchPWD"]').click(function() {
		windowObj=window.open("oldBalanceFindPwd.jsp","비밀번호 찾기","width=480, height=390");
	});
	
	$('#findId').click(function() {
		$.ajax({
			url : 'findId.jsp',
			type : 'post',
			data : { telNum : $('#telNum').val()},
			dataType : 'text',
			success : function(data){
				if(data.trim() == "0") {
					$('#idMessage').html('회원님이 소지하신 아이디는 없습니다.');
					$('#telNum').val("");
				} else {
					$('#idMessage').html('회원님의 아이디는 ' + data + '입니다.');
				}
			},
			error : function(err){
				alert('에러발생' + err);
			}
		});
	});
	
	$('#findPwd').click(function() {
		$.ajax({
			url : 'findPwd.jsp',
			type : 'post',
			data : { id : $('#id').val(),
				     tel : $('#tel').val()},
			dataType : 'text',
			success : function(data){
				if(data.trim() == "0") {
					$('#pwdMessage').html('해당하는 아이디가 없습니다.');
					$('#id').val("");
					$('#tel').val("");
				} else {
					$('#pwdMessage').html('회원님의 비밀번호는 ' + data + '입니다.');
				}
			},
			error : function(err){
				alert('에러발생' + err);
			}
		});
	});
	
	
	$("#idExit").click(function(){
		$('#id',opener.document).val($('#id').val());
		window.close();
	});
	
	$("#pwdExit").click(function(){
		window.close();
	});
});