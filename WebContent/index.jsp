<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
    
<head>
<!-- <script type="text/javascript">
	
</script>
 -->    
 	<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
    <link rel="stylesheet" href="./css/main.css" type="text/css">
    <link rel="stylesheet" href="./css/header.css" type="text/css">
    <link rel="stylesheet" href="./css/reset.css" type="text/css">
    
    <script type="text/javascript" src="js/jquery-3.7.1.min.js"></script>

  <link
  rel="stylesheet"
  href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css"/>
  <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-element-bundle.min.js"></script>
  
  
    <meta charset="UTF-8">

    <title>PuppyDog</title>


</head>

<body max-width="1920px">
    <jsp:include page="./module/header_fin.jsp" flush="false"/>
	  <span class="mainSwiper">
		   <swiper-container 
		   		class="mySwiper"
		   		pagination="true" 
		   		navigation="true" 
		   		space-between="30"
		    	centered-slides="true" 
		    	autoplay-delay="2500" 
		    	autoplay-disable-on-interaction="false"
		    	style="width: 1028px;">
		    	
		    <swiper-slide>
	 			<img src="./img/minaSwiper1stimg.jpg" width="100%" height="520px">
	
		    </swiper-slide>
		   
		   	<swiper-slide>
	 			<img src="./img/minaSwiper2stimg.jpg" width="100%" height="520px">
		    </swiper-slide>
		    
		    <swiper-slide>
	 			<img src="./img/minaSwiper3stimg.jpg" width="100%" height="520px">
		    </swiper-slide>
		   
		   
		  </swiper-container>
	 	</span>
	 	
	<div class="bodyWapper">
      
      <span class="mainEvent">
	    <span class="innerMainEvent">
	        <div class="bg-image1MainEvent hoverEvent">
	        <div class="overlay">
				<div class="text">프리미엄 사료를 만나보세요!</div>
	        
	        </div>
	        </div>
	    </span>
	   
	   <span class="innerMainEvent"> 
	        <div class="bg-image2MainEvent hoverEvent">
	        <div class="overlay">
	        
	        <div class="text">고단백 고양이 간식 BEST</div>
	        
	        
	        </div>
	        </div>
	    </span>
	
	    <span class="innerMainEvent">
	        <div class="bg-image3MainEvent hoverEvent">
	        <div class="overlay">
	        
	        <div class="text">애완 유모차 모음전</div>
	        
	        </div>
	        </div>
	    </span>
	    
	    
	    <span class="innerMainEvent">
	        <div class="bg-image4MainEvent hoverEvent">
        	<div class="overlay">
        	
        	<div class="text">캣타워 출시!</div>
        	
        	</div>
	    </div>
	    </span>
	</span>

    <div class="mainCategoryWapper">	
 		<div class="mainCategory cateGory">
	    	<p>주목받는 아이템</p>

	  <div class="mainItem"> 
		   <span class="subCategory cateGory">
		        <button id="pageSnack">간식</button>
		        <button id="pageFeed">사료</button>
		   </span>     	
	      </div>
	   </div>
	    </div>
	   
	   <div class="onclickCategory">
	   	<div class="onclickInner">
	   	<!-- 간식 -->
	   		<div id="categorySnack" class="section categroyOption">
	   		
	   		
	   		<div class="onclickImg">
	   			<img width="100%" alt="" src="./img/snack1.jpg">
	   			<p class="title">고양이 건강식 츄르</p>
	   			<span class="price">30,100원</span>
	   		</div>
	   		
	   		<div class="onclickImg">
	   			<img width="100%" alt="" src="./img/snack2.jpg">
	   			<p class="title">강아지 간식</p>
	   			<span class="price">30,100</span>
	   		</div>
	   		
	   		<div class="onclickImg">
	   			<img width="100%" alt="" src="./img/snack3.jpg">
	   			<p class="title">고양이 전용 캔(고단백질)</p>
	   			<span class="price">57,900원</span>
	   		</div>
	   		
	   		<div class="onclickImg">
	   			<img width="100%" alt="" src="./img/snack4.jpg">
	   			<p class="title">강아지 간식(소형견)</p>
	   			<span class="price">57,900원</span>
	   		</div>
	   	</div>
	   	
	   	
	   	<!-- 사료  -->
	   	<div id="categoryFeed" class="section categroyOption">
	   		
	   		<div>
	   			<img width="100%" alt="" src="./img/feed1.jpg">
	   			<p class="title">강아지 유기농 사료</p>
	   			<span class="price">89,000원</span>
	   		</div>
	   		
	   		
	   		<div>
	   			<img width="100%" alt="" src="./img/feed2.jpg">
	   			<p class="title">강아지 사료 3종 set</p>
	   			<span class="price">89,000원</span>
	   		</div>
	   		
	   		<div>
	   			<img width="100%" alt="" src="./img/feed3.jpg">
	   			<p class="title">고양이 사료 연어</p>
	   			<span class="price">89,000원</span>
	   		</div>
	   		
	   		<div>
	   			<img width="100%" alt="" src="./img/feed4.jpg">
	   			<p class="title">고양이 사료 고단백</p>
	   			<span class="price">40,800원</span>
	   		</div>
	   	</div>
	   	
	  	   	
	   </div><!-- 주목받는 아이템 끝  -->
	
	<div class="bestItem">
		<div class="bestItemTitle">
			<p>BEST ITEM</p>
			
		</div>
			
			
		<div class="itemWapper"> <!-- besttItem grid 적용 -->
 			<div class="bestItemImg">
 				<img width="100%" alt="" src="./img/bestItemcat1.jpg">
				<div>
 					<p class="title">고양이 가방</p>
 					<span>
	 					<span class="price">91,700원</span>
 					</span>
				</div>
 			</div>
 			
 			<div>
 			<div class="bestItemImg">
 				<img width="100%" width="100%" alt="" src="./img/bestItemcat2.jpg">
 				<div>
 					<p class="title">고양이 화장실 + 삽</p>
	 				<span>
	 					<span class="price">21,700원</span>
	 				</span>
 				</div>
 				</div>
 			</div>
 			
 			<div>
 			<div class="bestItemImg">
 				<img width="100%" alt="" src="./img/bestItemcat3.jpg">
 				<div>
 					<p class="title">고양이 스크래쳐</p>
	 				<span>
	 					<span class="price">21,700원</span>
 					</span>
 					</div>
 				</div>
 			</div>
 			
 			<div>
 			<div class="bestItemImg">
 				<img width="100%" alt="" src="./img/bestItemcat4.jpg">
 				<div>
 					<p class="title">애완견 이동식 캐리어</p>
	 				<span>
	 					<span class="price">31,700원</span>
 					</span>
 				</div>
 				</div>
 			</div>
 			
 			
 			<div class="bestItemImg">
 				<img width="100%" alt="" src="./img/bestItemdog1.jpg">
 				<div>
 					<div>
 						<p class="title">애완견 유모차</p>
	 				<span>
	 					<span class="price">21,700원</span>
	 				</span>
 					</div>
 				</div>
 			</div>
 			
 			<div>
 			<div class="bestItemImg"> <!-- 2번째행 -->
 				<img  alt="" src="./img/bestItemdog2.jpg">
 					<div>
 						<p class="title">강아지 식수대</p>
	 				<span>
	 					<span class="price">21,700원</span>
	 				</span>
 				</div>	
 				</div>
 			</div>
 			
 			<div>
 			<div class="bestItemImg">
 				<img width="100%" alt="" src="./img/bestItemdog3.jpg">
 				<div>
 					<p class="title">소형견 전용 목줄</p>
						<span>
		 					<span class="price">21,700원</span>
	 					</span>
 					</div>
 				</div>
 			</div>
 			
 			<div>
 			<div>
 				<img width="100%" alt="" src="./img/bestItemdog4.jpg">
 					<div>
	 					<p class="title">대형견 전용 목줄</p>
	 				<span>
	 					<span class="price">21,700원</span>
 					</span>
 					</div>
 				</div>
 			</div>
 			
 		</div>
	</div>


  </div>
   <jsp:include page="./module/footer.html" flush="false"/>

   
   
   <script type="text/javascript">
   		//버튼의 id값을가지고 와서 클릭 이벤트를 적용
   		document.getElementById("pageSnack").addEventListener("click", function(){
   			toggleSection('categorySnack');
   		});
   		
   		document.getElementById("pageFeed").addEventListener("click", function() {
   			toggleSection('categoryFeed');
			
		});

   		
   		
   	 function toggleSection(sectionId) {
   	    // 모든 섹션을 숨김 버튼의 ID값을 가지고
   	    document.getElementById("categorySnack").style.display = "none";
   	    document.getElementById("categoryFeed").style.display = "none";
   	  

   	    // 선택된 섹션만 보이도록 설정
   	    document.getElementById(sectionId).style.display = "flex";
   	  }
   
   	 //기본 페이지를 Snack 으로 설
   	 window.onload = function () {
		toggleSection('categorySnack')
	};
   	 
	
	  document.addEventListener('DOMContentLoaded', function() {
          const swiper1 = new Swiper('.mySwiper1', {
              modules: [Swiper.Navigation, Swiper.Pagination], // 필요한 모듈을 추가
          });
          const swiper2 = new Swiper('.mySwiper2', {
              modules: [Swiper.Navigation, Swiper.Pagination], // 필요한 모듈을 추가
          });

          // 버튼을 클릭했을 때 두 Swiper를 다음 슬라이드로 이동시키는 함수
          window.SwiperButton = function() {
              swiper1.slideNext(); // 첫 번째 Swiper를 다음 슬라이드로 이동
              swiper2.slideNext(); // 두 번째 Swiper를 다음 슬라이드로 이동
          };
      });

   </script>
  



    <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-element-bundle.min.js"></script>
    <script type="text/javascript" src="js/jquery-3.7.1.min.js"></script>

</body>
</html>