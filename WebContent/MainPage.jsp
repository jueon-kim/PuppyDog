"<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
    
<head>

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

<body width="100vw" height="100vh">

  <div class="bodyWapper">
  
  <div class="mainSwiper">
	   <swiper-container 
	   		class="mySwiper" 
	   		pagination="true" 
	   		pagination-clickable="true" 
	   		navigation="true" 
	   		space-between="30"
	    	centered-slides="true" 
	    	autoplay-delay="2500" 
	    	autoplay-disable-on-interaction="false">
	    	
	    <swiper-slide>Slide 1</swiper-slide>
	    <swiper-slide>Slide 2</swiper-slide>
	    <swiper-slide>Slide 3</swiper-slide>
	    <swiper-slide>Slide 4</swiper-slide>
	    <swiper-slide>Slide 5</swiper-slide>
	    <swiper-slide>Slide 6</swiper-slide>
	    <swiper-slide>Slide 7</swiper-slide>
	    <swiper-slide>Slide 8</swiper-slide>
	    <swiper-slide>Slide 9</swiper-slide>
	  </swiper-container>
 	</div>
  
      
     <div class="noticSection">
          <div class="noticeInnser">
          	<div class="noticeText">
          		<div>
          				
          		</div>
          		
          		<div>
	          		<div>
	          			<p>택배 무료배송</p>
	          			<p>전제품 ~ 5만원이상 구입시 택배 무료 배송 <p>
	          		</div>
	          		
	          		<div>
	          			<button>바로가</button>
	          		</div>
          		</div>
          		
          		
          		<div>
	          		<div>
	          			<p>신상품 3% OFF</p>
	          			<p>신상품은 3일간 3%할인</p>
          			</div>
          			
          			<div>
          				<button>더보기</button>
          			</div>
          		<div>
          	</div>
          	</div>
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
    
<!-- 
<div class="container text-center" style="border: 1px solid beige; margin-bottom: 50px; padding: 10px;">
  <div class="row row-col-2">
      <div class="col-6 menutitle">
          <h2>주목받는 아이템</h2>
      </div>
      <div class="col-6 menubar">
          <ul class="nav justify-content-end">
              <li class="nav-category">
                  <button onclick="showCategory('feed')" class="btn btn-link btn-focus" style="color: black;">사료</button>
              </li>
              <li class="nav-category">
                  <button onclick="showCategory('snack')" class="btn btn-link btn-focus" style="color: black;">간식</button>
              </li>
              <li class="nav-category">
                  <button onclick="showCategory('cloth')" class="btn btn-link btn-focus" style="color: black;">의류</button>
              </li>
              <li class="nav-category">
                  <button onclick="showCategory('beauty')" class="btn btn-link btn-focus" style="color: black;">미용</button>
              </li>
            </ul>
      </div>
  
      상품 (사료)
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
      </div> -->
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

   
    <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-element-bundle.min.js"></script>
    <script type="text/javascript" src="js/jquery-3.7.1.min.js"></script>

</body>
</html>