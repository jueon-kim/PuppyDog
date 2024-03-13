<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

	<link rel="stylesheet" href="./css/bootstrap.min.css">
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
    <link rel="stylesheet" href="./css/swiper.min.css">
    <link rel="stylesheet" href="./css/style.css" type="text/css"> 
 	
 	<link rel="stylesheet" href="./css/JoinPage.css">
    
    <script type="text/javascript" src="./js/jquery-3.7.1.min.js"></script>
    
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>회원가입</title>
<style type="text/css">

</style>

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

</head>
<body>
<jsp:include page="./module/header_fin.jsp"/>
	<div class="join-container">
		<!-- 상단(JOIN)부분 -->
	    <div class="join-title">
	        <p>회원가입</p>
	        <hr style="width: 1px; margin: 0 auto;">
	    </div>
	    
	  <!--   <hr style="color: rgba(0, 0, 0, 0.6)">
	    
	    <div class="container join-container">
	    	<p>아래 회원가입 양식을 입력해주세요.</p>
	    </div> -->
	    
	    <!-- <hr style="color: rgba(0, 0, 0, 0.6)"> -->
	    
	    <!-- 상품 등록 박스 -->
	    <form class="join-inner" action="join.do" method="post">
	    	<table class="join-table">
	    	
	    		<tr>
	    			<td>구분</td>
	    		</tr>
	    		<tr>
	    			<td>아이디&nbsp;<span>*</span></td>
	    			<td><input type="text" name="user_id" placeholder="ID"></td>
	    		</tr>
	    		
	    		<tr>
	    			<td>이름&nbsp;<span>*</span></td>
	    			<td><input type="text" name="user_name"></td>
	    		</tr>
	    		
	    		<tr>
	    			<td>비밀번호&nbsp;<span>*</span></td>
	    			<td><input type="password" name="user_pw" placeholder="Password"></td>
	    		</tr>
	    		<tr>
	    			<td>비밀번호확인&nbsp;<span>*</span></td>
	    			<td><input type="password" name="user_pw" placeholder="Confirm Password"></td>
	    		</tr>
	    		
	    		<tr>
	    			<td>휴대폰&nbsp;<span>*</span></td>
	    			<td><select id="user_phone" name="user_phone1" size="1">
	    					<option value="010" selected>010</option>
	    					<option value="011">011</option>
	    					<option value="013">013</option>
	    					<option value="017">017</option>
	    					<option value="017">019</option>
	    				</select>
	    				<input type="text" name="user_phone" maxlength="4" placeholder="0000"> &nbsp; - &nbsp; 
	    				<input type="text" name="user_phone" maxlength="4" placeholder="0000">
	    			</td>
	    		</tr>
	    		
	    		<tr>
	    			<td>주소&nbsp;<span>*</span></td>
	    			<td><input type="text" name="user_address"></td>
	    		</tr>
	    		
	    		<tr>
	    			<td>이메일&nbsp;<span>*</span></td>
	    			<td class="email_chk"><input type="text" name="user_email" placeholder="user@domain.com"></td>
	    		</tr>
	    		<tr>
	    			<td colspan="2" align="center">
	    				<input class="btn-join" type="submit" value="회원가입" 
	    				style="color: white; font-weight: bolder; background: #3ed4be;">&nbsp;&nbsp;
	    			<input class="btn-cancel" type="reset" value="취소" style="color: rgba(0, 0, 0, 1); font-weight: bolder;">
	    			</td>
	    		</tr>
	    	</table>
	    </form>
	    
	</div>
	<br><br>


<jsp:include page="/module/footer.html"/>
</body>
</html>