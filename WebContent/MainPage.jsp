<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
    
<head>
<script type="text/javascript">
	
</script>
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
    <link rel="stylesheet" href="./css/main.css" type="text/css">
     <link rel="stylesheet" href="./css/header.css" type="text/css">
    
    <script type="text/javascript" src="js/jquery-3.7.1.min.js"></script>

  <link
  rel="stylesheet"
  href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css"/>
  <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-element-bundle.min.js"></script>
  
  
    <meta charset="UTF-8">
    <jsp:include page="./module/header_fin.jsp" flush="false"/>
    <title>PuppyDog</title>


</head>

<body max-width="1920px" height="100vh">

  <div class="bodyWapper">
  
  <div class="mainSwiper">
	   <swiper-container 
	   		class="mySwiper"
	   		pagination="true" 
	   		navigation="true" 
	   		space-between="30"
	    	centered-slides="true" 
	    	autoplay-delay="2500" 
	    	autoplay-disable-on-interaction="false">
	    	
	    <swiper-slide>
	    	<img src="https://puppydog.co.kr/web/upload/appfiles/0zdpAngaKBFnlCcCqpCU4A/c4f80a5d10178e13cb76c6b9dcf3fdb2.jpg">
	    </swiper-slide>
	   
	   	<swiper-slide>
	    	<img src="https://puppydog.co.kr/web/upload/appfiles/0zdpAngaKBFnlCcCqpCU4A/ab7711ce5651a8440d005cf62293ff12.jpg">
	    </swiper-slide>
	    
	    <swiper-slide>
	    	<img src="https://puppydog09.openhost.cafe24.com/web/upload/appfiles/0zdpAngaKBFnlCcCqpCU4A/db4f9bfbcc7182cdd172831929f8b60d.png">
	    </swiper-slide>
	    
	    <swiper-slide>
	    	<img src="https://puppydog.co.kr/web/upload/appfiles/0zdpAngaKBFnlCcCqpCU4A/ff643a9b4816f7173f45188aba4c8707.jpg"> 
	    </swiper-slide>
	   
	  </swiper-container>
 	</div>
  
      <div class="mainWapper">
     <div class="noticSection">
          <div class="noticeInnser">
			<div>
          		<div>
          			자동 스크롤 메뉴
          		</div>
          		
	          	<div>
	          		<p>택배 무료배송</p>
	          		<p>전제품 ~ 5만원이상 구입시 택배 무료 배송 <p>
	          		<button>바로가</button>
	          	</div>
          		
	          	<div>
	          		<p>신상품 3% OFF</p>
	          		<p>신상품은 3일간 3%할인</p>
          			<button>더보기</button>
          		</div>
          		
          		</div>
          		<div>
          	</div>
          
          
          <div class="firstSwiper">
          	<swiper-container class="mySwiper" style="width: 450px; height: 250px;">
				<swiper-slide>
					<img src="https://puppydog.co.kr/web/upload/appfiles/0zdpAngaKBFnlCcCqpCU4A/4c8a54f28ce8f55921d43011d1743133.jpg">
		         </swiper-slide>
					   
				 <swiper-slide>
		            <img src="https://puppydog.co.kr/web/upload/appfiles/0zdpAngaKBFnlCcCqpCU4A/663e145f2114ffea6db76b6c74103a39.jpg">
		         </swiper-slide>
	  			</swiper-container>
	        </div>
      
      <div class="secondSwiper">
	       <swiper-container class="mySwiper" style="width: 450px; height: 250px;">
				<swiper-slide>
	              	<img src="https://puppydog.co.kr/web/upload/appfiles/0zdpAngaKBFnlCcCqpCU4A/b7ef1526fbad1b26cc9926a7036e7a00.jpg">
		         </swiper-slide>
					   
				 <swiper-slide><div class="carousel-item">
	              	<img src="https://puppydog.co.kr/web/upload/appfiles/0zdpAngaKBFnlCcCqpCU4A/20b108158704fe670625c134591ac737.jpg">
		         </swiper-slide>
	  		</swiper-container>  
        </div>

		</div>
    </div> <!-- noticSection  -->
    
 
    <div class="mainCategoryWapper">	
	  <div class="mainItem">
	      <div class="mainCategory cateGory">
	          <p>주목받는 아이템</p>
	          <p>카테고리별 베스트 TOP</p>
	          <p>더보기</p>
	       </div>
		      
		   <div class="subCategory cateGory">
		        <button id="pageSnack">간식</button>
		        <button id="pageFeed">사료</button>
		        <button id="pageDress">패션</button>
		        <button id="pageSalon">미용용품</button>
		        <button id="pageClean">위생용품</button>
		        <button id="pageWater">식기/급수기</button>
	      </div> 
	      
	
	      </div>
	   </div>
	   
	   <div class="onclickCategory">
	   	<div class="onclickInner">
	   	<!-- 간식 -->
	   		<div id="categorySnack" class="section categroyOption">
	   		<div>
	   			<img alt="" src="https://puppydog.co.kr/web/upload/appfiles/0zdpAngaKBFnlCcCqpCU4A/be0804f926e8d0190cf7e060204e4ad2.jpg">
	   		</div>
	   		
	   		<div>
	   			<img alt="" src="//puppydog.co.kr/web/product/medium/202305/415b30404c51841846da126e42e84d51.jpg">
	   			<p></p>
	   		</div>
	   		
	   		<div>
	   			<img alt="" src="//puppydog.co.kr/web/product/medium/202305/0e4807af0faa95ce186bb74d2c2bd030.jpg">
	   			<p></p>
	   		</div>
	   		
	   		<div>
	   			<img alt="" src="//puppydog.co.kr/web/product/medium/202305/3e2d2da1376a7ee38642ad36d999fa7f.jpg">
	   			<p></p>
	   		</div>
	   	</div>
	   	
	   	
	   	<!-- 사료  -->
	   	<div id="categoryFeed" class="section categroyOption">
	   		<div>
	   			<img alt="" src="https://puppydog.co.kr/web/upload/appfiles/0zdpAngaKBFnlCcCqpCU4A/f00b3823937bf64ae65dd5cc858d6ce9.jpg">
	   		</div>
	   		
	   		<div>
	   			<img alt="" src="//puppydog.co.kr/web/product/medium/202407/2231df18bb37125cd788004d5e1d46a2.jpg">
	   			<p></p>
	   		</div>
	   		
	   		<div>
	   			<img alt="" src="//m.puppydog.co.kr/web/product/medium/202407/014c4ffc1f2957f40092a14928c8435d.jpg">
	   			<p></p>
	   		</div>
	   		
	   		<div>
	   			<img alt="" src="//m.puppydog.co.kr/web/product/medium/202406/0ef5a564ccb38d1148263b9c08531605.jpg">
	   			<p></p>
	   		</div>
	   	</div>
	   	<!-- 패션용품 -->
	   	 <div id="categoryDress" class="section categroyOption">
	   		<div>
	   			<img alt="" src="https://puppydog.co.kr/web/upload/appfiles/0zdpAngaKBFnlCcCqpCU4A/18e4cecb739c7b7f4cfcfe7ce6f28611.jpg">
	   		</div>
	   		
	   		<div>
	   			<img alt="" src="//puppydog.co.kr/web/product/medium/202305/5bca3baf20148edb0363405deb033290.jpg">
	   			<p></p>
	   		</div>
	   		
	   		<div>
	   			<img alt="" src="//puppydog.co.kr/web/product/medium/202305/5fd18a46c1603c269062c235dab8894e.jpg">
	   			<p></p>
	   		</div>
	   		
	   		<div>
	   			<img alt="" src="//puppydog.co.kr/web/product/medium/202305/008e1a64bd49987c3b14f389719785eb.jpg">
	   			<p></p>
	   		</div>
	   	</div>
	   	
	   	<div id="categorySalon" class="section categroyOption">
	   		<div>
	   			<img alt="" src="">미용 페이지
	   		</div>
	   		
	   		<div>
	   			<img alt="" src="">
	   			<p></p>
	   		</div>
	   		
	   		<div>
	   			<img alt="" src="">
	   			<p></p>
	   		</div>
	   		
	   		<div>
	   			<img alt="" src="">
	   			<p></p>
	   		</div>
	   	</div>
	   	
	   	<div id="categoryClean" class="section categroyClean">
	   		<div>
	   			<img alt="" src="">위생 페이지
	   		</div>
	   		
	   		<div>
	   			<img alt="" src="">
	   			<p></p>
	   		</div>
	   		
	   		<div>
	   			<img alt="" src="">
	   			<p></p>
	   		</div>
	   		
	   		<div>
	   			<img alt="" src="">
	   			<p></p>
	   		</div>
	   	</div>
	   	
	   	<!-- 식기/급수기 -->
	   	<div id="categoryWater" class="section categroyWater">
	   		<div>
	   			<img alt="" src="https://puppydog.co.kr/web/upload/appfiles/0zdpAngaKBFnlCcCqpCU4A/a181cb8463373ee6c90722711e97de23.jpg">
	   		</div>
	   		
	   		<div>
	   			<img alt="" src="//puppydog.co.kr/web/product/medium/202305/64d4096d420d9c33b8a994fa33c67cd0.jpg">
	   			<p></p>
	   		</div>
	   		
	   		<div>
	   			<img alt="" src="//puppydog.co.kr/web/product/medium/202305/787020d5ed648661c2981a1f9f1070ee.jpg">
	   			<p></p>
	   		</div>
	   		
	   		<div>
	   			<img alt="" src="//puppydog.co.kr/web/product/medium/202305/5fd8410e2a871b8204f41fe9cf6a053b.jpg">
	   			<p></p>
	   		</div>
	   	</div>
	   	</div>
	   	
	   </div><!-- 주목받는 아이템 끝  -->
	</div>
	   
	<div class="secodnSwiper" style="display: flex;">

		<swiper-container class="mySwiper" style="width: 50vw;">
			<swiper-slide>
				<img alt="" src="https://puppydog.co.kr/web/upload/appfiles/0zdpAngaKBFnlCcCqpCU4A/3d8b061f7fc36c97ceecad86b72a698b.jpg">
			 </swiper-slide>
						   
			<swiper-slide>
			    <img alt="" src="https://puppydog.co.kr/web/upload/appfiles/0zdpAngaKBFnlCcCqpCU4A/c8cdb5564306fb000dbfd4e053e77d97.jpg">
			</swiper-slide>
		</swiper-container>
		
		
		
		<swiper-container class="mySwiper" style="width: 50vw;">
			<swiper-slide>
				<img alt="" src="https://puppydog.co.kr/web/upload/appfiles/0zdpAngaKBFnlCcCqpCU4A/08e1e6bb386c703b58260d1eceb51e88.jpg">
			 </swiper-slide>
						   
			<swiper-slide>
			    <img alt="" src="https://puppydog.co.kr/web/upload/appfiles/0zdpAngaKBFnlCcCqpCU4A/abd3d32ac5d94e1a9aad50e06888c48e.jpg">
			</swiper-slide>
		  	
		  	</swiper-container>
		  </div>
	
	
	<div class="bestItem">
		<div class="bestItemTitle" style="padding: 75px;text-align: center;">
			<p>BEST ITEM</p>
			<p>Anniversary Sale early</p>
		</div>
			
			
		<div class="itemWapper"> <!-- besttItem grid 적용 -->
 			<div>
 				<img alt="" src="">
 				<div>
 					<p>text</p>
 					<p>가격</p>
 				</div>
 			</div>
 			
 			<div>
 			<div>
 					<p>text</p>
 					<p>가격</p>
 				</div>
 			</div>
 			
 			<div>
 			<div>
 					<p>text</p>
 					<p>가격</p>
 				</div>
 			</div>
 			
 			<div>
 			<div>
 					<p>text</p>
 					<p>가격</p>
 				</div>
 			</div>
		</div>
	</div>

   </div> 	   
   
   
   
   <script type="text/javascript">
   		//버튼의 id값을가지고 와서 클릭 이벤트를 적용
   		document.getElementById("pageSnack").addEventListener("click", function(){
   			toggleSection('categorySnack');
   		});
   		
   		document.getElementById("pageFeed").addEventListener("click", function() {
   			toggleSection('categoryFeed');
			
		});
   		
   		document.getElementById("pageDress").addEventListener("click", function() {
   			toggleSection('categoryDress');
   		});
   		
   		
   		document.getElementById("pageSalon").addEventListener("click", function() {
			toggleSection('categorySalon');
		});
   		
   		document.getElementById("pageClean").addEventListener("click", function () {
   			toggleSection('categoryClean');
			
		});
   		
   		document.getElementById("pageWater").addEventListener("click", function () {
   			toggleSection('categoryWater')
			
		})
   		
   		
   	 function toggleSection(sectionId) {
   	    // 모든 섹션을 숨김 버튼의 ID값을 가지고
   	    document.getElementById("categorySnack").style.display = "none";
   	    document.getElementById("categoryFeed").style.display = "none";
   	    document.getElementById("categoryDress").style.display = "none";
   	    document.getElementById("categorySalon").style.display = "none";
   	    document.getElementById("categoryClean").style.display = "none";
   	    document.getElementById("categoryWater").style.display = "none";

   	    // 선택된 섹션만 보이도록 설정
   	    document.getElementById(sectionId).style.display = "flex";
   	  }
   
   	 //기본 페이지를 Snack 으로 설
   	 window.onload = function () {
		toggleSection('categorySnack')
	};
   	 

   </script>
  

<!-- 영웅이 파트 (베스트아이템) -->
<%-- <jsp:include page="./module/main2.html" flush="false"/> --%>
<%-- <jsp:include page="./module/footer.html" flush="false"/> --%>

   
   <script>
	
   
   </script>
   
    <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-element-bundle.min.js"></script>
    <script type="text/javascript" src="js/jquery-3.7.1.min.js"></script>

</body>
</html>