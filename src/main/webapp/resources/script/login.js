$(document).ready(() => {
    function hideErrorMessages() {
		$('.error-msg').each(function() {
			$(this).hide();
		});
    }
	hideErrorMessages();

	$('#id').focusout(e => {
		if($('#id').val() === "") {
			$('#error-msg-id').show();
			$('#id').css('border', 'solid 1px tomato');
		} else {
			$('#error-msg-id').hide();
			$('#id').css('border', 'solid 1px lightgrey');
			$('#id').css('border-bottom', 'none');
		}
	});
	
	$('#password').focusout(e => {
		if($('#password').val() === "") {
			$('#error-msg-password').show();
			$('#password').css('border', 'solid 1px tomato');
		} else {
			$('#error-msg-password').hide();
			$('#password').css('border', 'solid 1px lightgrey');
			$('#password').css('border-bottom', 'none');
		}
	});
	
	$('form').submit(e => {
		e.preventDefault();
		
		const id = $('#id').val();
		const password = $('#password').val();
		
		// 유효성 검사 
		let isValid = true;
		
		if(id === "") {
			isValid = false;
			$('#error-msg-id').show();
			$('#id').css('border', 'solid 1px tomato');
		}
		if(password === "") {
			isValid = false;
			$('#error-msg-password').show();
			$('#password').css('border', 'solid 1px tomato');
		}
		
		if(isValid) {
			e.target.submit();
		}
	});

    // vs코드용 테스트 이동처리
    $('#join').click(e => {
        location.href="/join";
    });

    $('#findId').click(e => {
        location.href="/find_Id";
    });
    
    $('#findPw').click(e => {
        location.href="/find_Pw";
    });
});