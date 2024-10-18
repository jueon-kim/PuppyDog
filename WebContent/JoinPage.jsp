<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

 	<link rel="stylesheet" href="./css/header.css" type="text/css"> 	
 	<link rel="stylesheet" href="./css/JoinPage.css">
    
    
        <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
    <link rel="stylesheet" href="./css/header.css" type="text/css"> 	
     
    <meta charset="UTF-8">
<title>회원가입</title>
<style type="text/css">

</style>

</head>
<body max-width="1920px">
<jsp:include page="./module/header_fin.jsp"/>
	<span class="join-container">
	
	    <!-- 상품 등록 박스 -->
	    <form class="join-inner" action="join.do" method="post">
	    	<span class="joinWapper">
		    	 <div class="join-title">
		       		<span class="textOption">회원가입</span>
		    	</div>
	    	
	    		<span class="userInfo">
	    			<span class="textOption">아이디</span>
	    			<input type="text" name="user_id" placeholder="ID">
	    		</span>
	    		
	    		<span class="userInfo">
	    			<span class="textOption">이름</span>
	    			<input type="text" name="user_name">
	    		</span>
	    		
	    		<span class="userInfo">
	    			<span class="textOption">비밀번호</span>
	    			<input type="password" name="user_pw" placeholder="Password">
	    		</span>
	    		
	    		<span class="userInfo">
	    			<span class="textOption">비밀번호확인</span>
	    			<input type="password" name="user_pw" placeholder="Confirm Password">
	    		</span>
	    		
	    		<span class="userInfo phone_Text">
	    			<span class="textOption">휴대폰</span>
	    			
	    			<span>
	    				 <span id="user_phone_text">010</span> <!-- 010을 텍스트로 표시 -->
<!-- 	    				<input type="text" id="user_phone" name="user_phone1" value="010" placeholder="010"> -->
	    				<input class="phone" type="text" name="user_phone" maxlength="4">
	    				<input class="phone" type="text" name="user_phone" maxlength="4">
	    			</span>
	    		</span>
	    		
	    		<span class="userInfo">
	    			<span class="textOption">주소</span>
	    			<input type="text" name="user_address">
	    		</span>
	    		
	    		<span class="userInfo">
	    			<span class="textOption">이메일</span>
	    			<span class="email_chk">
	    			<input type="text" name="user_email" placeholder="email@naver.com">
	    			</span>
	    		</span>
	    		
	    		<span>
	    			<span class="userInfo joinButton">
	    				<input class="btn-join" type="submit" value="회원가입" 
	    				style="color: white; font-weight: bolder; background: #3ed4be;">
	    			<input class="btn-cancel" type="reset" value="취소" style="color: rgba(0, 0, 0, 1); font-weight: bolder;">
	    			</span>
	    		</span>
	    	</span>
	    </form>
	    
	</span>



<jsp:include page="/module/footer.html"/>


 <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-element-bundle.min.js"></script>
</body>
</html>