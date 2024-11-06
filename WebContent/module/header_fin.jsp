<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <!DOCTYPE html>

<head>
    <title>Header</title>
</head>

<body>
<form action="<%=request.getContextPath()%>/Logout.do" method="post">
    <div class="headerwapper">
        <div class="firstHeader">
            <!-- 헤더 로 -->
          <span>
          	<img src="./img/PetTownLogo.png" width="100px" height="100px">
		</span>	

			<div class="userSection">
			
				<div class="dropdown">
					<a class="dropbtn">
						<img width="25" height="25" src="https://img.icons8.com/parakeet-line/48/user.png" alt="user">
					</a>
					  
					  <div class="dropdown-content">
						    <a href="#">내 정보 수정</a>
						    <a href="#">내 게시글 보기</a>
						    
						   <c:if test="${sessionScope.user_id == null}">
							    <a href="./userLogin.jsp">로그인</a>
							    <a href="./JoinPage.jsp">회원가입</a>
							</c:if>
							
							<c:if test="${sessionScope.user_id != null}">
							    <a><%= (String) session.getAttribute("user_id") %>님</a>
							    
    								<button type="submit" style="padding: 12px 16px;
															     color: none;
															     box-decoration-break: none;
															     border: none;
															     outline: none;
															     background-color: inherit;
															     cursor: pointer;">로그아웃</button>
							</c:if>
						</div>
             	</div>
					    
					  <div class="dropdown">
					  	<a class="dropbtn">
					  		<img width="25" height="25" src="https://img.icons8.com/ios/25/truck--v1.png" alt="truck--v1"/>
					  	</a>
					    <div class="dropdown-content">
						    <a href="#">입금전</a>
						    <a href="#">배송준비중</a>
							<a href="#">배송완료</a>
						</div>
					</div>

            
            	 <div class="dropdown">
					<a class="dropbtn">
						<img width="25" height="25" src="https://img.icons8.com/ios/50/ask-question--v1.png" alt="ask-question--v1"/>
					</a>
					
					  <div class="dropdown-content">
					    <a href="#">NOTICE</a>
					    <a href="#">REVIEW</a>
					    <a href="#">Q & A</a>
					    <a href="#">EVENT</a>
					    <a href="#">F A Q</a>
					</div>
            	</div>

        </div>
	</div>
	</div>
	<div class="secondHeader">

         <div class="dropdown">
			<a class="dropbtn">간식</a>
			  <div class="dropdown-content">
			  
			  <div class="dropdownInner">
			  	
				  	<div>
					  <a href="#">강아지껌</a>
					  <a href="#">버스켓/스낵</a>
					  <a href="#">수제간식</a>
					  <a href="#">육포/사시미</a>
					  <a href="#">캔/파우치</a>
					  <a href="#">기타간</a>
					  <a href="#">고양이간식</a>
				    </div>
				    
			    </div>
			  </div>
            </div>
            
           <div class="dropdown">
			  <a class="dropbtn">사료</a>
			    <div class="dropdown-content">
			  
			  <div class="dropdownInner">
			  
			  <div>
			    <a href="#">식사료</a>
			    <a href="#">습식사료</a>
			    <a href="#">우유/분유</a>
			    <a href="#">강아지영양제</a>
			    <a href="#">고양이용</a>
			  </div>
            
           	</div>
            	</div> 
           </div>
            
            
            <div class="dropdown">
			  <a class="dropbtn">미용용품</a>
			  <div class="dropdown-content">
			  
			  <div class="dropdownInner">
			  
			  <div>
			    <a href="#">드라이기</a>
			    <a href="#">발톱관리용품</a>
			    <a href="#">브러셔</a>
			    <a href="#">샴푸/린</a>
			    <a href="#">이발기/가위</a>
			    <a href="#">기타용</a>
			  </div>
            
           	</div>
            	</div> 
           </div>
            
            
            
             <div class="dropdown">
			  <a class="dropbtn">패션용품</a>
			   <div class="dropdown-content">
			  
			  <div class="dropdownInner">
			  
				 
			  <div>
			    <a href="#">레인코트</a>
			    <a href="#">신발/양말</a>
			    <a href="#">외투</a>
			    <a href="#">원피스/올인원</a>
			    <a href="#">코스튬</a>
			    <a href="#">셔츠/상의</a>
			    <a href="#">기타퍃션용품</a>
			  </div>
            
           	</div>
            	</div> 
           </div>
            
            
            
            <div class="dropdown">
			  <a class="dropbtn">위생용품</a>
			  <div class="dropdown-content">
			  
			  <div class="dropdownInner">
				   
			  <div>
			    <a href="#">구강위생용품</a>
			    <a href="#">기저귀</a>
			    <a href="#">배변봉투</a>
			    <a href="#">배변패</a>
			    <a href="#">탈취/소독제</a>
			    <a href="#">눈/귀 위생용품</a>
			    <a href="#">넥카라</a>
			    <a href="#">해충방지용품</a>
			    <a href="#">고양이화장실</a>
			    <a href="#">고양이모래</a>
			    <a href="#">기타고양이모래매트</a>
			  </div>
            
           	</div>
            	</div> 
           </div>
            
            
            
        	<div class="dropdown">
			  <a class="dropbtn">식기/급수기</a>
			   <div class="dropdown-content">
			  
			  <div class="dropdownInner">
				 
			  <div>
			    <a href="#">급수기</a>
			    <a href="#">급식기</a>
			    <a href="#">정수기</a>
			    <a href="#">사료보관통</a>
			  </div>
            
           	</div>
            	</div> 
           </div>
            
            
            
           <div class="dropdown">
			  <a class="dropbtn">외출용품</a>
			   <div class="dropdown-content">
			  
			  <div class="dropdownInner">

			  
			  <div>
			    <a href="#">가슴줄</a>
			    <a href="#">리드줄</a>
			    <a href="#">목걸이/인식표</a>
			    <a href="#">목줄</a>
			    <a href="#">유모차</a> 
			    <a href="#">이동가방</a>
			    <a href="#">이동장</a>
			    <a href="#">차량용캐리어/시트</a>
			    <a href="#">입마개</a>
			    
			  </div>
            
           	</div>
           	</div> 
           </div>
            
            
          <div class="dropdown">
			  <a class="dropbtn">장난감/훈련용품</a>
			   <div class="dropdown-content">
			  
			  <div class="dropdownInner">
				  
			  
			  <div>
			    <a href="#">공/원반</a>
			    <a href="#">인형</a>
			    <a href="#">터널/큐브</a>
			    <a href="#">훈련용품</a>
			    <a href="#">기타장난감</a>
			    <a href="#">캣타</a>
			    <a href="#">고양이스크래쳐</a>
			    <a href="#">고양이장난</a>
			  </div>
            
           	</div>
            	</div> 
           </div>
            
            
             <div class="dropdown">
			  <a class="dropbtn">하우스/안전용품</a>
			   <div class="dropdown-content">
			  
			  <div class="dropdownInner">
			  
			  <div>
			    <a href="#">계단/스탭</a>
			    <a href="#">매트</a>
			    <a href="#">안전문</a>
			    <a href="#">울타리</a>
			    <a href="#">쿠션/방석</a>
			     <a href="#">하우스</a>
			      <a href="#">쿠션/방석</a>
			  </div>
            
           	</div>
            	</div> 
           </div>
            
            
</div>

 </form>
  <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-element-bundle.min.js"></script>    
</body>
  

</html>