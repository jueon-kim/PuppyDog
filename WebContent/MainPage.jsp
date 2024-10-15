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
    <jsp:include page="./module/header_fin.jsp" flush="false"/>
    <title>PuppyDog</title>


</head>

<body max-width="1920px">

      
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
	        <div class="bg-image1MainEvent"></div>
	    </span>
	   
	   <span class="innerMainEvent"> 
	        <div class="bg-image2MainEvent"></div>
	    </span>
	
	    <span class="innerMainEvent">
	        <div class="bg-image3MainEvent"></div>
	    </span>
	    
	    
	    <span class="innerMainEvent">
	        <div class="bg-image4MainEvent"></div>
	    </span>
	</span>

    <div class="mainCategoryWapper">	
 		<span class="mainCategory cateGory">
	    	<p>주목받는 아이템</p>
	    </span>

	  <div class="mainItem"> 
		   <span class="subCategory cateGory">
		        <button id="pageSnack">간식</button>
		        <button id="pageFeed">사료</button>
<!-- 		        <button id="pageDress">패션</button> -->
		       <!--  <button id="pageSalon">미용용품</button>
		        <button id="pageClean">위생용품</button> -->
		       <!--  <button id="pageWater">식기/급수기</button> -->
	      </span> 
	      
	
	      </div>
	   </div>
	   
	   <div class="onclickCategory">
	   	<div class="onclickInner">
	   	<!-- 간식 -->
	   		<div id="categorySnack" class="section categroyOption">
	   		
	   		
	   		<div class="onclickImg">
	   			<img width="100%" alt="" src="//puppydog.co.kr/web/product/medium/202305/415b30404c51841846da126e42e84d51.jpg">
	   			<p>D17 퍼피랜드 4종 캔 100g 24개</p>
	   			<span>30%</span>
	   			<span>43,000</span>
	   			<span>30,100</span>
	   		</div>
	   		
	   		<div class="onclickImg">
	   			<img width="100%" alt="" src="//puppydog.co.kr/web/product/medium/202305/415b30404c51841846da126e42e84d51.jpg">
	   			<p>D17 퍼피랜드 4종 캔 100g 24개</p>
	   			<span>30%</span>
	   			<span>43,000</span>
	   			<span>30,100</span>
	   		</div>
	   		
	   		<div class="onclickImg">
	   			<img width="100%" alt="" src="//puppydog.co.kr/web/product/medium/202305/0e4807af0faa95ce186bb74d2c2bd030.jpg">
	   			<p>전연령 강아지간식용 순살치킨 젤리타입 영양캔 24EA</p>
	   			<span>30%</span>
	   			<span>83,000원</span>
	   			<span>57,900원</span>
	   		</div>
	   		
	   		<div class="onclickImg">
	   			<img width="100%" alt="" src="//puppydog.co.kr/web/product/medium/202305/3e2d2da1376a7ee38642ad36d999fa7f.jpg">
	   			<p>강아지 젤리타입 치킨게살 영양식간식캔 24EA애완용품</p>
	   			<span>30%</span>
	   			<span>83,000원</span>
	   			<span>57,900원</span>
	   		</div>
	   	</div>
	   	
	   	
	   	<!-- 사료  -->
	   	<div id="categoryFeed" class="section categroyOption">
	   		
	   		<div>
	   			<img width="100%" alt="" src="//puppydog.co.kr/web/product/medium/202407/2231df18bb37125cd788004d5e1d46a2.jpg">
	   			<p>강아지 토우 저알러지 훈제연어 9.08kg반려견 사료</p>
	   			<span>89,000</span>
	   		</div>
	   		
	   		
	   		<div>
	   			<img width="100%" alt="" src="//puppydog.co.kr/web/product/medium/202407/2231df18bb37125cd788004d5e1d46a2.jpg">
	   			<p>강아지 토우 저알러지 훈제연어 9.08kg반려견 사료</p>
	   			<span>89,000</span>
	   		</div>
	   		
	   		<div>
	   			<img width="100%" alt="" src="//m.puppydog.co.kr/web/product/medium/202407/014c4ffc1f2957f40092a14928c8435d.jpg">
	   			<p>강아지 토우 저알러지 구운오리 9.08kg반려견 사료</p>
	   			<span>89,000원</span>
	   		</div>
	   		
	   		<div>
	   			<img width="100%" alt="" src="//m.puppydog.co.kr/web/product/medium/202406/0ef5a564ccb38d1148263b9c08531605.jpg">
	   			<p>애견사료 노령견용 치킨 3kg 1p 강아</p>
	   			<span>30,800원</span>
	   		</div>
	   	</div>
	   	
	  	   	
	   </div><!-- 주목받는 아이템 끝  -->
	
	<div class="bestItem">
		<div class="bestItemTitle">
			<p>BEST ITEM</p>
			
		</div>
			
			
		<div class="itemWapper"> <!-- besttItem grid 적용 -->
 			<div class="bestItemImg">
 				<img width="100%" alt="" src="//puppydog.co.kr/web/product/medium/202306/45a870229f3d991404d3728c0bb0a728.jpg">
				<div>
 					<p>강아지 자동줄 3m 코드타입 1p,강아지 리드줄 자동줄 개줄 자동</p>
 					<span>
	 					<span>34%</span>
	 					<span>33,000원</span>
	 					<span>21,700원</span>
 					</span>
				</div>
 			</div>
 			
 			<div>
 			<div class="bestItemImg">
 				<img width="100%" width="100%" alt="" src="//puppydog.co.kr/web/product/medium/202302/9a5f139b82f4984707992b63fcdbf730.jpg">
 				<div>
 					<p>강아지 자동줄 3m 코드타입 1p,강아지 리드줄 자동줄 개줄 자동</p>
	 				<span>
	 					<span>34%</span>
	 					<span>33,000원</span>
	 					<span>21,700원</span>
	 				</span>
 				</div>
 				</div>
 			</div>
 			
 			<div>
 			<div class="bestItemImg">
 				<img width="100%" alt="" src="//puppydog.co.kr/web/product/medium/202305/cb8017b1e1d9142f9a01b831d8848c88.jpg">
 				<div>
 					<p>강아지 자동줄 3m 코드타입 1p,강아지 리드줄 자동줄 개줄 자동</p>
	 				<span>
	 					<span>34%</span>
	 					<span>33,000원</span>
	 					<span>21,700원</span>
 					</span>
 					</div>
 				</div>
 			</div>
 			
 			<div>
 			<div class="bestItemImg">
 				<img width="100%" alt="" src="//puppydog.co.kr/web/product/medium/202305/03992dce0da562dc9d19ba16941cc767.jpg">
 				<div>
 					<p>강아지 자동줄 3m 코드타입 1p,강아지 리드줄 자동줄 개줄 자동</p>
	 				<span>
	 					<span>34%</span>
	 					<span>33,000원</span>
	 					<span>21,700원</span>
 					</span>
 				</div>
 				</div>
 			</div>
 			
 			
 			<div class="bestItemImg">
 				<img width="100%" alt="" src="//puppydog.co.kr/web/product/medium/202305/e15c91e5be4d212ae1e71a0575f22c58.jpg">
 				<div>
 					<div>
 						<p>강아지 자동줄 3m 코드타입 1p,강아지 리드줄 자동줄 개줄 자동</p>
	 				<span>
	 					<span>34%</span>
	 					<span>33,000원</span>
	 					<span>21,700원</span>
	 				</span>
 					</div>
 				</div>
 			</div>
 			
 			<div>
 			<div class="bestItemImg"> <!-- 2번째행 -->
 				<img  alt="" src="//puppydog.co.kr/web/product/medium/202305/1b4647b715fc985acc8b098b4f582ebd.jpg">
 					<div>
 						<p>강아지 자동줄 3m 코드타입 1p,강아지 리드줄 자동줄 개줄 자동</p>
	 				<span>
	 					<span>34%</span>
	 					<span>33,000원</span>
	 					<span>21,700원</span>
	 				</span>
 				</div>	
 				</div>
 			</div>
 			
 			<div>
 			<div class="bestItemImg">
 				<img width="100%" alt="" src="//puppydog.co.kr/web/product/medium/202305/cb8017b1e1d9142f9a01b831d8848c88.jpg">
 				<div>
 					<p>강아지 자동줄 3m 코드타입 1p,강아지 리드줄 자동줄 개줄 자동</p>
						<span>
		 					<span>34%</span>
		 					<span>33,000원</span>
		 					<span>21,700원</span>
	 					</span>
 					</div>
 				</div>
 			</div>
 			
 			<div>
 			<div>
 				<img width="100%" alt="" src="//puppydog.co.kr/web/product/medium/202305/efbf07212e859bb1b031760b45cceb9f.jpg">
 					<div>
	 					<p>강아지 자동줄 3m 코드타입 1p,강아지 리드줄 자동줄 개줄 자동</p>
	 				<span>
	 					<span>34%</span>
	 					<span>33,000원</span>
 						<span>21,700원</span>
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