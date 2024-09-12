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
		        <button id="pageFeed">사료</button>
		        <button id="pageSnack">간식</button>
		        <button id="pageDress">의류</button>
		        <button id="pageCut">미용</button>
	      </div> 
	      
	
	      </div>
	   </div>
	   
	   <div class="onclickCategory">
	   	<div class="onclickInner">
	   	
	   	<div id="categoryFeed">
	   		<div>
	   			<img alt="" src="">
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
	   	
	   	
	   	<div id="categoryFeed">
	   		<div>
	   			<img alt="" src="">
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
	   	</div>
	   	
	   </div>
	   
	   
	   
   </div>
   
  
<!--       상품 (사료)
      <div id="feed" class="product-container active">
          <div class="col-3">
              <div class="card" style="width: 18rem;">
                  <img src="./img/주목사료1.jpg" class="card-img-top" alt="...">
                  <h5 class="card-title">강아지 처방 사료 민감피푸 질환 개선 NVD(애견용)2.5kg</h5>
                  <hr>
                  <div class="card-body">
                  <p class="card-text">86,300원</p>
                  </div>
              </div>
          </div>
          <div class="col-3">
              <div class="card" style="width: 18rem;">
                  <img src="./img/주목사료2.jpg" class="card-img-top" alt="...">
                  <h5 class="card-title">올가밀 홀리스틱 램29(2.7kg)</h5>
                  <hr><br>
                  <div class="card-body">
                  <p class="card-text">65,000원</p>
                  </div>
              </div>
          </div>
          <div class="col-3">
              <div class="card" style="width: 18rem;">
                  <img src="./img/주목사료1.jpg" class="card-img-top" alt="...">
                  <h5 class="card-title">강아지 처방 사료 민감피푸 질환 개선 NVD(애견용)2.5kg</h5>
                  <hr>
                  <div class="card-body">
                  <p class="card-text">86,300원</p>
                  </div>
              </div>
          </div>
          <div class="col-3">
              <div class="card" style="width: 18rem;">
                  <img src="./img/주목사료2.jpg"" class="card-img-top" alt="...">
                  <h5 class="card-title">올가밀 홀리스틱 램29(2.7kg)</h5>
                  <hr><br>
                  <div class="card-body">
                  <p class="card-text">65,000원</p>
                  </div>
              </div>
          </div>
      </div>

      상품 (간식)
      <div id="snack" class="product-container">
          <div class="col-3">
              <div class="card" style="width: 18rem;">
                  <img src="./img/주목간식1.jpg" class="card-img-top" alt="...">
                  <hr>
                  <div class="card-body">
                  <h5 class="card-title">Card title</h5>
                  <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                  </div>
              </div>
          </div>
          <div class="col-3">
              <div class="card" style="width: 18rem;">
                  <img src="./img/주목간식1.jpg" class="card-img-top" alt="...">
                  <hr>
                  <div class="card-body">
                  <h5 class="card-title">Card title</h5>
                  <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                  </div>
              </div>
          </div>
          <div class="col-3">
              <div class="card" style="width: 18rem;">
                  <img src="./img/주목간식1.jpg" class="card-img-top" alt="...">
                  <hr>
                  <div class="card-body">
                  <h5 class="card-title">Card title</h5>
                  <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                  </div>
              </div>
          </div>
          <div class="col-3">
              <div class="card" style="width: 18rem;">
                  <img src="./img/주목간식1.jpg" class="card-img-top" alt="...">
                  <hr>
                  <div class="card-body">
                  <h5 class="card-title">Card title</h5>
                  <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                  </div>
              </div>
          </div>
      </div>
      상품 (의류)
      <div id="cloth" class="product-container">
          <div class="col-3">
              <div class="card" style="width: 18rem;">
                  <img src="./img/주목패션1.jpg" class="card-img-top" alt="...">
                  <hr>
                  <div class="card-body">
                  <h5 class="card-title">Card title</h5>
                  <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                  </div>
              </div>
          </div>
          <div class="col-3">
              <div class="card" style="width: 18rem;">
                  <img src="./img/주목패션2.jpg" class="card-img-top" alt="...">
                  <hr>
                  <div class="card-body">
                  <h5 class="card-title">Card title</h5>
                  <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                  </div>
              </div>
          </div>
          <div class="col-3">
              <div class="card" style="width: 18rem;">
                  <img src="./img/주목패션3.jpg" class="card-img-top" alt="...">
                  <hr>
                  <div class="card-body">
                  <h5 class="card-title">Card title</h5>
                  <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                  </div>
              </div>
          </div>
          <div class="col-3">
              <div class="card" style="width: 18rem;">
                  <img src="./img/주목패션1.jpg" class="card-img-top" alt="...">
                  <hr>
                  <div class="card-body">
                  <h5 class="card-title">Card title</h5>
                  <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                  </div>
              </div>
          </div>
      </div>
      상품 (미용)
      <div id="beauty" class="product-container">
          <div class="col-3 product-feed">
              <div class="card" style="width: 18rem;">
                  <img src="./img/주목미용1.jpg" class="card-img-top" alt="...">
                  <hr>
                  <div class="card-body">
                  <h5 class="card-title">Card title</h5>
                  <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                  </div>
              </div>
          </div>
          <div class="col-3">
              <div class="card" style="width: 18rem;">
                  <img src="./img/주목미용2.jpg" class="card-img-top" alt="...">
                  <hr>
                  <div class="card-body">
                  <h5 class="card-title">Card title</h5>
                  <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                  </div>
              </div>
          </div>
          <div class="col-3">
              <div class="card" style="width: 18rem;">
                  <img src="./img/주목미용3.jpg" class="card-img-top" alt="...">
                  <hr>
                  <div class="card-body">
                  <h5 class="card-title">Card title</h5>
                  <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                  </div>
              </div>
          </div>
          <div class="col-3">
              <div class="card" style="width: 18rem;">
                  <img src="./img/주목미용1.jpg" class="card-img-top" alt="...">
                  <hr>
                  <div class="card-body">
                  <h5 class="card-title">Card title</h5>
                  <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                  </div>
              </div>
          </div>
      </div>  -->
<!--   </div>
</div>

  
  
  <div class="container">
    <div class="row">
      <div class="col">
        <div id="carouselExampleControls3" class="carousel slide" data-bs-ride="carousel">
          <div class="carousel-inner in-midimg">
            <div class="carousel-item active">
              <img src="img/중간사진1.jpg" class="d-block w-100 under-img" alt="...">
            </div>
            <div class="carousel-item">
              <img src="img/중간사진2.jpg" class="d-block w-100 under-img" alt="...">
            </div>
          </div>
          <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls3" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
          </button>
          <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls3" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
          </button>
        </div>
      </div>
      <div class="col">
        <div id="carouselExampleControls4" class="carousel slide" data-bs-ride="carousel">
          <div class="carousel-inner in-midimg">
          
            <div class="carousel-item active">
              <img src="img/중간사진3.jpg" class="d-block w-100 under-img" alt="...">
            </div>
            <div class="carousel-item">
              <img src="img/중간사진4.jpg" class="d-block w-100 under-img" alt="...">
            </div>
          </div>
          <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls4" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
          </button>
          <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls4" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
          </button>
        </div>
      </div> -->

<!-- 영웅이 파트 (베스트아이템) -->
<%-- <jsp:include page="./module/main2.html" flush="false"/> --%>
<%-- <jsp:include page="./module/footer.html" flush="false"/> --%>

   
   <script>
	
   
   </script>
   
    <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-element-bundle.min.js"></script>
    <script type="text/javascript" src="js/jquery-3.7.1.min.js"></script>

</body>
</html>