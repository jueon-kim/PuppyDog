<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<script type="text/javascript">
	
	
	$(document).ready(function () {
		
		/* 비밀번호 일치 검사 */
		let pw = $('.join-container .join-table tr:nth-child(3) input');
		let pw_confirm = $('.join-table tr:nth-child(4) input');
		
		pw_confirm.on('input', function () {
			if(pw.val() !== "" && pw_confirm.val() !== "" && pw.val() !== pw_confirm.val()) {
				$('.join-container .join-table tr:nth-child(4) td:last-child').addClass('dismatch_pw');
			} else {
				$('.join-container .join-table tr:nth-child(4) td:last-child').removeClass('dismatch_pw');
			}
		});
		
		let email = $('.join-container .join-table tr:nth-child(7) td:last-child input');
			
		email.on('input',function () {
			if(email.val() === "") {
				return;
			} else if (email.val() !== "" && email.val().indexOf('@') == -1) {
				$('.join-container .join-table tr:nth-child(7) td:last-child').addClass('wrong_email');
			} else if(email.val() !== "" && email.val().indexOf('@') !== -1) {
				$('.join-container .join-table tr:nth-child(7) td:last-child').removeClass();
			}
		});
		
	});
	
	
</script>