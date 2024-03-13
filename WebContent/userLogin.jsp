<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
 <html>
<head>   
    <title>Document</title>
	 <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

	<link rel="stylesheet" href="./css/bootstrap.min.css">
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
    <link rel="stylesheet" href="./css/swiper.min.css">
    <link rel="stylesheet" href="./css/style.css" type="text/css"> 
 	
 	<link rel="stylesheet" href="./css/JoinPage.css">
    
    <script type="text/javascript" src="./js/jquery-3.7.1.min.js"></script>
</head>
<body>
<!-- get요청은 오로지 데이터를 읽을때만 사용!! -->
  
<jsp:include page="./module/header_fin.jsp"/> 
<br><br>
  <form action="Login.do" method="post">
    <div class="d-grid gap-2 col-3 mx-auto">
            <!--아이디-->           
            <div class="input-group flex-nowrap">
                <span class="input-group-text"  id="addon-wrapping">ID</span>
                <input type="text" class="form-control" name="user_id" placeholder="ID" aria-label="Username" aria-describedby="addon-wrapping">
              </div>

            <!--비밀번호-->
            <div class="input-group flex-nowrap">
          
                <span class="input-group-text" id="addon-wrapping">PW</span>
                <input type="password" class="form-control" name="user_pw"  placeholder="pw" aria-label="pw" aria-describedby="addon-wrapping">
            </div>
        
            <div class="row g-2 col-12">    
                <!--비밀번호 로그인 상태유지-->
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="" id="flexCheckIndeterminate">
                    <label class="form-check-label" for="flexCheckIndeterminate"> 로그인 상태유지</label>
                  </div>
    </div>
                  <!--로그인 버튼-->
                <button class="btn btn-primary" type="submit">로그인</button>
            </div>	

</form>
    <br>

         <!--회원가입 아이디 찾기 회원가입 이동 페이지 필요-->    
        <div class="col-3 mx-auto">    
            <a href="#">아이디 찾기</a>
            <a href="JoinPage.jsp">회원가입</a>
        </div>
        <br>
        
         <!--다른 계정으로 로그인-->
        <div class="d-grid gap-2 col-3 mx-auto">
            <a class="btn btn-primary" type="button">네이버 계정으로 로그인</a>
            <a class="btn btn-primary" type="button">카카오 계정으로 로그인</a>
            <a class="btn btn-primary" type="button">구글 계정으로 로그인</a>
          </div>

<br><br>
<jsp:include page="/module/footer.html"/>
</body>
</html>