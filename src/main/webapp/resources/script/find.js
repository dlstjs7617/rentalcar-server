$(document).ready(() => {
    function hideErrorMessages() {
		$('.error-msg').each(function() {
			$(this).hide();
		});
	}
	
	hideErrorMessages();

	$('#name').focusout(e => {
		if($('#name').val() === "") {
			$('#error-msg-name').show();
			$('#name').css('border', 'solid 1px tomato');
		} else {
			$('#error-msg-name').hide();
			$('#name').css('border', 'solid 1px lightgrey');
			$('#name').css('border-bottom', 'none');
		}
	});

	$('#telecom').focusout(e => {
		if($('#telecom').val() === null) {
			$('#error-msg-telecom').show();
			$('#telecom').css('border', 'solid 1px tomato');
		} else {
			$('#error-msg-telecom').hide();
			$('#telecom').css('border', 'solid 1px lightgrey');
			$('#telecom').css('border-bottom', 'none');
		}
	});

	$('#phone').focusout(e => {
		if($('#phone').val() === "") {
			$('#error-msg-phone').show();
			$('#phone').css('border', 'solid 1px tomato');
		} else {
			$('#error-msg-phone').hide();
			$('#phone').css('border', 'solid 1px lightgrey');
		}
		
		const phone = $('#phone').val();
		
		if(phone.match(/\d{3}-\d{4}-\d{4}|\d{11}/) === null) {
			$('#error-msg-phone-pattern').show();
			$('#phone').css('border', 'solid 1px tomato');
		} else {
			if(phone.length === 11) {
				const update = `${phone.substr(0,3)}-${phone.substr(3,4)}-${phone.substr(7,4)}`;
				$('#phone').val(update);
			}
		}
	});

	$('form').submit(e => {
		e.preventDefault();
		
		const name = $('#name').val();
		const telecom = $('#telecom').val();
		const phone = $('#phone').val();
		
		// 유효성 검사 
		let isValid = true;

		
		if(name === "") {
			isValid = false;
			$('#error-msg-name').show();
			$('#name').css('border', 'solid 1px tomato');
		}
		
		if(telecom === null) {
			isValid = false;
			$('#error-msg-telecom').show();
			$('#telecom').css('border', 'solid 1px tomato');
		}
	
		
		if(phone === "") {
			isValid = false;
			$('#error-msg-phone').show();
			$('#phone').css('border', 'solid 1px tomato');
		}
		
		if(isValid) {
			e.target.submit();
		}
	});
});