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
    <form onsubmit="return validateForm()" action="<%=request.getContextPath()%>/join.do" method="post">
	    	<span class="joinWapper">
            <div class="join-title">
                <span class="textOption">회원가입</span>
            </div>

            <span class="userInfo">
                <span class="textOption">아이디</span>
                <input type="text" id="user_id" name="user_id" placeholder="ID" required>
				<button type="button" onclick="checkDuplicate(event)" class="idCheck" 
				style="width: 60px; height: 30px; font-size: 12px;">중복확인</button>
            </span>
            
            <span class="userInfo">
                <span class="textOption">이름</span>
                <input type="text" id="user_name" name="user_name" required>
            </span>

            <span class="userInfo">
                <span class="textOption">비밀번호</span>
                <input type="password" id="user_pw" name="user_pw" placeholder="Password" required>
            </span>

            <span class="userInfo">
                <span class="textOption">비밀번호확인</span>
                <input type="password" id="user_pw_confirm" name="user_pw_confirm" placeholder="Confirm Password" required>
            </span>

            <span class="userInfo phone_Text">
                <span class="textOption">휴대폰</span>
                <span>
                    <input type="text" class="phone" id="user_phone1" name="user_phone1" value="010" maxlength="3" required>
                    <input type="text" class="phone" id="user_phone2" name="user_phone2" maxlength="4" required>
                    <input type="text" class="phone" id="user_phone3" name="user_phone3" maxlength="4" required>
                </span>
            </span>

            <span class="userInfo">
                <span class="textOption">주소</span>
                <input type="text" id="user_address" name="user_address" required>
            </span>

            <span class="userInfo">
                <span class="textOption">이메일</span>
                <span class="email_chk">
                    <input type="email" id="user_email" name="user_email" placeholder="email@naver.com" required>
                </span>
            </span>

            <span>
                <span class="userInfo joinButton">
                    <input type="submit" name="action" value="회원가입" class="btn-join" style="color: white; font-weight: bolder; background: #3ed4be;">
                    <input class="btn-cancel" type="reset" value="취소" onclick="location.href='index.jsp';" style="color: rgba(0, 0, 0, 1); font-weight: bolder;">
                </span>
            </span>
</span>
</form>
        </span>


	    



<jsp:include page="/module/footer.html"/>
 <script src="https://unpkg.com/axios/dist/axios.min.js"></script>

 <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-element-bundle.min.js"></script>
	 <script type="text/javascript">
        function validateForm() {
            const user_id = document.getElementById("user_id").value;
            const user_pw = document.getElementById("user_pw").value;
            const user_pw_confirm = document.getElementById("user_pw_confirm").value;
         
            const user_name = document.getElementById("user_name").value;  // user_name 추가
            const korean = /^[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]+$/;  // 한글만 허용하는 정규식

            // 필수 입력 항목 확인
            if (user_id === "" || user_pw === "" || user_pw_confirm === "") {
                alert("모두 입력해주세요");
                return false;
            }
			
        	 // 이름에 한글만 허용
            if (!korean.test(user_name)) {  // test() 메서드를 사용하여 검증
                alert("이름은 한글만 입력이 가능합니다");
                return false;
            }
            
            // 비밀번호 길이 확인
            if (user_pw.length < 8) {
                alert("비밀번호는 8자 이상이어야 합니다");
                return false;
            }

            if (user_pw !== user_pw_confirm) {
                alert("비밀번호가 일치하지 않습니다.");
                return false;
            }

            return true; // 유효성 검사 통과
        }

        function checkDuplicate(event) {
            event.preventDefault(); // 기본 동작 방지

            const userId = document.getElementById("user_id").value;
            const engNum =  /^[a-zA-Z0-9]*$/;

            if (!userId) {
                alert("아이디를 입력해주세요.");
                return;
           
            }else if (!engNum.test(userId)) {
            	alert("영어와 숫자만 입력해주세");
            	return;
            }

            // Fetch API를 사용한 중복 확인 요청
            fetch('<%=request.getContextPath()%>/join.do', { // 서블릿 URL
                method: 'POST',
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                },
                body: new URLSearchParams({ // URL 인코딩된 형식으로 파라미터 생성
                    user_id: userId,
                    action: "중복확인"
                })
            })
            .then(response => response.text())
            .then(responseText => {
                const response = responseText.trim();
                if (response === "true") {
                    alert("아이디가 이미 존재합니다. 다른 아이디를 사용해주세요.");
                } else {
                    alert("사용 가능한 아이디입니다.");
                }
            })
            .catch(error => {
                console.error("중복 확인 요청 실패", error);
                alert("중복 확인 중 오류가 발생했습니다.");
            });
        }

    </script>


</body>
</html>