<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
 <html>
<head>   
    <title>Document</title>
	 <meta charset="UTF-8">
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
    <link rel="stylesheet" href="./css/header.css" type="text/css"> 	
  	<link rel="stylesheet" href="./css/userLogin.css" type="text/css">
    
    <jsp:include page="./module/header_fin.jsp" flush="false"/>
</head>
<body max-width="1920px" height="100vh">
	
	<span class="login">
	<span class="loginWapper">
        <!--아이디-->           
    	<span class="idSection">
	        <span id="addon-wrapping">ID</span>
	        <input type="text" class="form-control" name="user_id" placeholder="ID" aria-label="Username" aria-describedby="addon-wrapping">
        </span>

            <!--비밀번호-->
        <span class="pwSection">
           <span id="addon-wrapping">PW</span>
           <input type="password" class="form-control" name="user_pw"  placeholder="pw" aria-label="pw" aria-describedby="addon-wrapping">
        </span>

       <!--비밀번호 로그인 상태유지-->
        <span>    
            <input class="form-check-input" type="checkbox" value="" id="flexCheckIndeterminate">
            <label class="form-check-label" for="flexCheckIndeterminate"> 로그인 상태유지</label>
        </span>
       
         <!--회원가입 아이디 찾기 회원가입 이동 페이지 필요-->    
        <span>  
        	 <button class="btn btn-primary" type="submit">로그인</button>
            <a href="#">아이디 찾기</a>
            <a href="JoinPage.jsp">회원가입</a>
        </span>
        
    </span>
    </span>
<jsp:include page="/module/footer.html"/>


 <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-element-bundle.min.js"></script>

</body>
</html>