<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <script>
    /* 드랍다운  hr밑으로 나오게하기 */
    $(document).ready(function() {

        $('.first_header .btn-group').stop('mouseenter focusin mouseleave focusout');

        $('.first_header .btn-group').on('mouseenter focusin', function () {
            var hrBottom = $('hr.hr_first').offset().top + $('hr.hr_first').outerHeight();
            var dropdown = $(this).find('ul');
            var dropdownTop = dropdown.offset().top;

            if (dropdownTop < hrBottom) {
                dropdown.css('top', hrBottom - dropdownTop);
            }

            dropdown.stop().show(200);
        });

        $('.first_header .btn-group').on('mouseleave focusout', function () {
            $(this).find('ul').stop().hide(200);
        });

    });


    $(document).ready(function () {

        var liSize = $('.first_header .btn-group').width();
        $('.first_header .btn-group .dropdown-menu').css({ "min-width": liSize + "px"});

    }); 






        
    /* 두번째 헤더 우측부분 */ /* 두번째 헤더 우측부분 */ /* 두번째 헤더 우측부분 */
    $(document).ready(function() {
        $('.second_header .col_3rd .dropdown-center').stop('mouseenter focusin mouseleave focusout');

        $('.second_header .col_3rd .dropdown-center').on('mouseenter focusin', function () {

            $(this).find('ul').stop().show(200);
            $(this).find('ul').css('top',100);

        });

        $('.second_header .col_3rd .dropdown-center').on('mouseleave focusout', function () {
            
            $(this).find('ul').stop().hide(200);

        });
    });


    /* 두번째 헤더의 스와이퍼 부분 */ /* 두번째 헤더의 스와이퍼 부분 */ /* 두번째 헤더의 스와이퍼 부분 */
        

        document.addEventListener('DOMContentLoaded', function () {
    var swiper = new Swiper('.first_swiper_container', {
        autoplay: {
            delay: 2000,
            disableOnInteraction: false
        },
        slidesPerView: 1,
        loop: true,
        direction: 'vertical',
        pagination: {
            el: '.first_swiper_pagination',
            clickable: true
        },
        /* navigation: {    
            nextEl: 'swiper-button-next',
            prevEl: 'swiper-button-prev' 
        } */
    });
});

       /* 세번째 헤더의 중앙부분 */

    $(document).ready(function() {

        $('.third_header .btn-group').stop('mouseenter focusin mouseleave focusout');

         $('.third_header .btn-group').on('mouseenter focusin', function () {
            var dropdown = $(this).find('ul');
            dropdown.css('top', 40);

            //todo 이 값 정리
            // 드롭다운을 감싼 부모 요소를 선택합니다.
            // var parentElement = $('.dropdown-center');

            // 부모 요소의 가로 중앙 위치를 계산합니다.
            // var parentCenter = parentElement.width() / 2;

            // 드롭다운 메뉴를 감싼 요소를 선택합니다.
            // var dropdown = $('.dropdown-center .dropdown-menu');

            // 드롭다운 메뉴의 가로 중앙 위치를 계산합니다.
            // var dropdownCenter = dropdown.width() / 2;

            // 부모 요소의 중앙에서 드롭다운 메뉴의 가로 중앙을 빼서 left 값을 계산합니다.
            // var leftValue = parentCenter - dropdownCenter;

            // left 값을 적용하여 드롭다운을 부모 요소의 중앙에 위치시킵니다.
            // dropdown.css('left', leftValue);

            // 나머지 이벤트 핸들러는 여기에 추가합니다.



            dropdown.stop().show(200);
        });

        $('.third_header .btn-group').on('mouseleave focusout', function () {
            $(this).find('ul').stop().hide(200);
        });

        });

    </script>


</head>
<body>


    <!-- 첫번째 헤더부분~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

    <div class="container first_header">
        <!-- 첫 번째 줄 -->
        <div class="row first_row">
            <!-- 고객지원센터 -->
            <div class="col-lg-1 col-md-1 col-sm-1 col_1st">
                <button type="button" class="btn btn-link" style="color: black">
                    <svg xmlns="http://www.w3.org/2000/svg" width="13" height="13" fill="currentColor" class="bi bi-mic" viewBox="0 0 16 16">
                    <path d="M3.5 6.5A.5.5 0 0 1 4 7v1a4 4 0 0 0 8 0V7a.5.5 0 0 1 1 0v1a5 5 0 0 1-4.5 4.975V15h3a.5.5 0 0 1 0 1h-7a.5.5 0 0 1 0-1h3v-2.025A5 5 0 0 1 3 8V7a.5.5 0 0 1 .5-.5"/>
                    <path d="M10 8a2 2 0 1 1-4 0V3a2 2 0 1 1 4 0zM8 0a3 3 0 0 0-3 3v5a3 3 0 0 0 6 0V3a3 3 0 0 0-3-3"/>
                  </svg>&nbsp;&nbsp; 고객 지원센터</button>
            </div>
            <!-- 고객센터전화번호 -->
            <div class="col-lg-1 col-md-1 col-sm-1 col_2nd">
                <button type="button" class="btn btn-link" style="color: black">010-9061-1355</button>
            </div>
            <!-- 센터 공백 -->
            <div class="col-lg-6 col-md-6 col-sm-6 col_3rd">
                
            </div> 
            <!-- 로그인 드랍다운 -->
            <div class="col-lg-1 col-md-1 col-sm-1 col_4th">
                <div class="btn-group">
                    <button type="button" class="btn dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                    로그인 / 회원가입
                    </button>
                    <ul class="dropdown-menu text-center first-drop">
                        <li><a class="dropdown-item" href="#">내 정보 수정</a></li>
                        <li><a class="dropdown-item" href="#">내 게시글 보기</a></li>
                        <li class="dropdown-divider">- - - -</li>                        
                        <li><a class="dropdown-item" href="#"><span class="span1">로그인</span></a></li>
                        <li><a class="dropdown-item" href="#">회원가입</a></li>
                    </ul>
                </div>
            </div>
            <!-- 배송조회 드랍다운 -->
            <div class="col-lg-1 col-md-1 col-sm-1 col_5th">
                <div class="btn-group">
                    <button type="button" class="btn dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                        <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" fill="currentColor" class="bi bi-collection" viewBox="0 0 16 16">
                        <path d="M2.5 3.5a.5.5 0 0 1 0-1h11a.5.5 0 0 1 0 1h-11zm2-2a.5.5 0 0 1 0-1h7a.5.5 0 0 1 0 1h-7zM0 13a1.5 1.5 0 0 0 1.5 1.5h13A1.5 1.5 0 0 0 16 13V6a1.5 1.5 0 0 0-1.5-1.5h-13A1.5 1.5 0 0 0 0 6v7zm1.5.5A.5.5 0 0 1 1 13V6a.5.5 0 0 1 .5-.5h13a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-.5.5h-13z"/>
                        </svg> 배송조회
                    </button>
                    <ul class="dropdown-menu text-center first-drop">
                        <li><a class="dropdown-item" href="#">전체</a></li>
                        <li class="dropdown-divider"> - - - - - - -</li> 
                        <li><a class="dropdown-item" href="#">입금전</a></li>
                        <li><a class="dropdown-item" href="#">배송준비중</a></li>
                        <li><a class="dropdown-item" href="#">배송완료</a></li>
                    </ul>
                </div>
             </div>
            <!-- 마이샾 드랍다운 -->
            <div class="col-lg-1 col-md-1 col-sm-1 col_6th">
                <div class="btn-group">
                    <button type="button" class="btn dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                        <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
                        <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
                        <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
                        </svg> 마이샾
                    </button>
                    <ul class="dropdown-menu text-center first-drop">
                        <li><a class="dropdown-item" href="#">나의글</a></li>
                        <li class="dropdown-divider"> - - -</li> 
                        <li><a class="dropdown-item" href="#">좋아요</a></li>
                        <li><a class="dropdown-item" href="#">관심상품</a></li>
                    </ul>
                </div>
            </div>
            <!-- 공지/게시판 드랍다운 -->
            <div class="col-lg-1 col-md-1 col-sm-1 col_7th">
                <div class="btn-group">
                    <button type="button" class="btn dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                        <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" fill="currentColor" class="bi bi-bell" viewBox="0 0 16 16">
                        <path d="M8 16a2 2 0 0 0 2-2H6a2 2 0 0 0 2 2zM8 1.918l-.797.161A4.002 4.002 0 0 0 4 6c0 .628-.134 2.197-.459 3.742-.16.767-.376 1.566-.663 2.258h10.244c-.287-.692-.502-1.49-.663-2.258C12.134 8.197 12 6.628 12 6a4.002 4.002 0 0 0-3.203-3.92L8 1.917zM14.22 12c.223.447.481.801.78 1H1c.299-.199.557-.553.78-1C2.68 10.2 3 6.88 3 6c0-2.42 1.72-4.44 4.005-4.901a1 1 0 1 1 1.99 0A5.002 5.002 0 0 1 13 6c0 .88.32 4.2 1.22 6z"/>
                        </svg> 공지 / 게시판
                    </button>
                    <ul class="dropdown-menu text-center first-drop">
                        <li><a class="dropdown-item" href="#">고객센터</a></li>
                        <li class="dropdown-divider"> - - - - - - - -</li> 
                        <li><a class="dropdown-item" href="#">NOTICE</a></li>
                        <li><a class="dropdown-item" href="#">REVIEW</a></li>
                        <li><a class="dropdown-item" href="#">Q & A</a></li>
                        <li><a class="dropdown-item" href="#">EVENT</a></li>
                        <li><a class="dropdown-item" href="#">F A Q</a></li>
                    </ul>
                </div>
            </div>
        </div>            <!-- 첫번쨰 줄 end -->    

    </div>  <!-- 첫번쨰 container end -->

       
    
    <hr style="width: 100%;" class="my-0 hr_first">


    <!-- 두번째 헤더부분~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->


    <div class="container second_header">
        <div class="row second_row">

            <!-- 두번째 헤더 좌측부분 -->
            <div class="col-lg-2 col-md-2 col-sm-2 col_1st">
                    <div class="swiper-container first_swiper_container">
                        <div class="swiper-wrapper first_swiper_wrapper">
                            <div class="swiper-slide">
                                <a href="#"><img src="https://puppydog.co.kr/web/upload/appfiles/0zdpAngaKBFnlCcCqpCU4A/16d49755b662899cd506aedf2bbfc663.jpg" alt="강아지쿠션"></a>
                            </div>
                            <div class="swiper-slide">
                                <a href="#"><img src="https://puppydog.co.kr/web/upload/appfiles/0zdpAngaKBFnlCcCqpCU4A/da4fa2a6733c50811ca9f6fb7db08e31.jpg" alt="강아지장난감"></a>
                            </div>
                            <div class="swiper-slide">
                                <a href="#"><img src="https://puppydog09.openhost.cafe24.com/web/upload/appfiles/0zdpAngaKBFnlCcCqpCU4A/0f274a3aab0cebc22c5db69860779533.png" alt="고양이스크래쳐"></a>
                            </div>
                            <div class="swiper-slide">
                                <a href="#"><img src="https://puppydog.co.kr/web/upload/appfiles/0zdpAngaKBFnlCcCqpCU4A/fd659cb3862151a71e1d0a811c6c91c8.jpg" alt="애견간식"></a>
                            </div>
                        </div>

                        <div class="swiper-pagination first_swiper_pagination"></div>
                        <!-- <div class="swiper-button-next">&gt;</div>
                        <div class="swiper-button-prev">&lt;</div> -->

                    </div> 
            </div>

            <!-- 두번째 헤더 중앙부분 -->
            <div class="col-lg-8 col-md-8 col-sm-8 col_2nd">
                    <H2 class="head_title"><a href="MainPage.jsp"><img src="https://puppydog.co.kr/web/upload/appfiles/0zdpAngaKBFnlCcCqpCU4A/3642e66df2340bdc448e87f7b3b2e756.png" style="width: 240px; height: 120xp;"></a></H2>

            </div>

            <!-- 두번째 헤더 우측부분 -->
            <div class="col-lg-2 col-md-2 col-sm-2 col_3rd">
                <div class="dropdown-center">
                    <button class="btn dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                        <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-person" viewBox="0 0 16 16">
                            <path d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6Zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0Zm4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4Zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10Z"/>
                        </svg>
                    </button>
                    <ul class="dropdown-menu dropdown-ul">
                        <li class="dropdown-li"><a class="dropdown-item second-drop" href="#">마이샾</a></li>
                    </ul>
                </div>
            
                <div class="dropdown-center">
                    <button class="btn dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                        <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-clock" viewBox="0 0 16 16">
                            <path d="M8 3.5a.5.5 0 0 0-1 0V9a.5.5 0 0 0 .252.434l3.5 2a.5.5 0 0 0 .496-.868L8 8.71V3.5z"/>
                            <path d="M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16zm7-8A7 7 0 1 1 1 8a7 7 0 0 1 14 0z"/>
                        </svg>
                    </button>
                    <ul class="dropdown-menu dropdown-ul">
                        <li class="dropdown-li"><a class="dropdown-item second-drop" href="#">최근 본 상품</a></li>
                    </ul>
                </div>
                <div class="dropdown-center">
                    <button class="btn dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                        <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-cart2" viewBox="0 0 16 16">
                            <path d="M0 2.5A.5.5 0 0 1 .5 2H2a.5.5 0 0 1 .485.379L2.89 4H14.5a.5.5 0 0 1 .485.621l-1.5 6A.5.5 0 0 1 13 11H4a.5.5 0 0 1-.485-.379L1.61 3H.5a.5.5 0 0 1-.5-.5zM3.14 5l1.25 5h8.22l1.25-5H3.14zM5 13a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0zm9-1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0z"/>
                        </svg>
                    </button>
                    <ul class="dropdown-menu dropdown-ul">
                        <li class="dropdown-li"><a class="dropdown-item second-drop" href="ProductCart.jsp">장바구니</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>


    <hr style="width: 100%;" class="my-0 hr_second">


    
<!-- 세번째 헤더부분~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->


    <div class="container third_header">

        <div class="row third_row">

            <!-- 헤더 좌측의 종합버튼 -->
            <div class="col-lg-1 col-md-1 col-sm-1 col_1st">
                <button type="button" class="btn dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-justify" viewBox="0 0 16 16">
                        <path fill-rule="evenodd" d="M2 12.5a.5.5 0 0 1 .5-.5h11a.5.5 0 0 1 0 1h-11a.5.5 0 0 1-.5-.5zm0-3a.5.5 0 0 1 .5-.5h11a.5.5 0 0 1 0 1h-11a.5.5 0 0 1-.5-.5zm0-3a.5.5 0 0 1 .5-.5h11a.5.5 0 0 1 0 1h-11a.5.5 0 0 1-.5-.5zm0-3a.5.5 0 0 1 .5-.5h11a.5.5 0 0 1 0 1h-11a.5.5 0 0 1-.5-.5z"/>
                    </svg>
                </button>
            </div>

            <!-- 헤더 중앙 버튼들 -->
            <div class="col-lg col-md col-sm col_2nd">

                <!-- 1번째 버튼 -->
                <div class="btn-group">
                    <button type="button" class="btn dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                        간식
                    </button>
                    <ul class="dropdown-menu text-center">
                        <img src="https://puppydog.co.kr/web/upload/appfiles/0zdpAngaKBFnlCcCqpCU4A/108319f1bc743653b6f05aaecdc75e05.jpg">
                        <li><a class="dropdown-item" href="#">강아지껌</a></li>
                        <li><a class="dropdown-item" href="#">비스켓/스낵</a></li>
                        <li><a class="dropdown-item" href="#">수제간식</a></li>
                        <li><a class="dropdown-item" href="#">육포/사시미</a></li>
                        <li><a class="dropdown-item" href="#">캔/파우치</a></li>
                        <li><a class="dropdown-item" href="#">기타간식</a></li>
                        <li><a class="dropdown-item" href="#">고양이간식</a></li>
                    </ul>
                </div>

                <!-- 2번째 버튼 -->
                <div class="btn-group">
                    <button type="button" class="btn dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                        사료
                    </button>
                    <ul class="dropdown-menu text-center">
                        <img src="https://puppydog.co.kr/web/upload/appfiles/0zdpAngaKBFnlCcCqpCU4A/d16afad4bba5a0997275fd0ffe366872.jpg">
                        <li><a class="dropdown-item" href="ProductPage.jsp">건식사료</a></li>
                        <li><a class="dropdown-item" href="#">습식사료</a></li>
                        <li><a class="dropdown-item" href="#">우유/분유</a></li>
                        <li><a class="dropdown-item" href="#">강아지영양제</a></li>
                        <li><a class="dropdown-item" href="#">고양이사료</a></li>
                    </ul>
                </div>

                <!-- 3번째 버튼 -->
                <div class="btn-group">
                    <button type="button" class="btn dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                        미용용품
                    </button>
                    <ul class="dropdown-menu text-center">
                        <img src="https://puppydog.co.kr/web/upload/appfiles/0zdpAngaKBFnlCcCqpCU4A/8d77c5e1591b609d47ce535ba60dbb94.jpg">
                        <li><a class="dropdown-item" href="#">드라이기</a></li>
                        <li><a class="dropdown-item" href="#">발톱관리용품</a></li>
                        <li><a class="dropdown-item" href="#">부러시</a></li>
                        <li><a class="dropdown-item" href="#">샤워기/타월</a></li>
                        <li><a class="dropdown-item" href="#">샴푸/린스</a></li>
                        <li><a class="dropdown-item" href="#">이발기/가위</a></li>
                        <li><a class="dropdown-item" href="#">기타미용용품</a></li>
                    </ul>
                </div>

                <!-- 4번째 버튼 -->
                <div class="btn-group">
                    <button type="button" class="btn dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                        패션용품
                    </button>
                    <ul class="dropdown-menu text-center">
                        <img src="https://puppydog.co.kr/web/upload/appfiles/0zdpAngaKBFnlCcCqpCU4A/b564bfbc99fc51e1e732f3fc5d17f0ec.jpg">
                        <li><a class="dropdown-item" href="#">레인코트</a></li>
                        <li><a class="dropdown-item" href="#">신발/양말</a></li>
                        <li><a class="dropdown-item" href="#">외투</a></li>
                        <li><a class="dropdown-item" href="#">원피스/올인원</a></li>
                        <li><a class="dropdown-item" href="#">코스튬</a></li>
                        <li><a class="dropdown-item" href="#">셔츠/상의</a></li>
                        <li><a class="dropdown-item" href="#">기타패션용품</a></li>
                    </ul>
                </div>

                <!-- 5번째 버튼 -->
                <div class="btn-group">
                    <button type="button" class="btn dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                        위생용품
                    </button>
                    <ul class="dropdown-menu text-center">
                        <img src="https://puppydog.co.kr/web/upload/appfiles/0zdpAngaKBFnlCcCqpCU4A/03e354fe61ae0dd4b1b33e1d0172ecd9.jpg">
                        <li><a class="dropdown-item" href="#">구강위생용품</a></li>
                        <li><a class="dropdown-item" href="#">기저귀</a></li>
                        <li><a class="dropdown-item" href="#">배변봉투</a></li>
                        <li><a class="dropdown-item" href="#">배변판</a></li>
                        <li><a class="dropdown-item" href="#">배변패드</a></li>
                        <li><a class="dropdown-item" href="#">탈취/소독제</a></li>
                        <li><a class="dropdown-item" href="#">눈/귀 위생용품</a></li>
                        <li><a class="dropdown-item" href="#">넥카라</a></li>
                        <li><a class="dropdown-item" href="#">해충방지용품</a></li>
                        <li><a class="dropdown-item" href="#">고양이화장실</a></li>
                        <li><a class="dropdown-item" href="#">고양이모래</a></li>
                        <li><a class="dropdown-item" href="#">기타괴양이위생용품</a></li>
                        <li><a class="dropdown-item" href="#">고양이모래매트</a></li>
                    </ul>
                </div>

                <!-- 6번째 버튼 -->
                <div class="btn-group">
                    <button type="button" class="btn dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                        식기/급수기
                    </button>
                    <ul class="dropdown-menu text-center">
                        <img src="https://puppydog.co.kr/web/upload/appfiles/0zdpAngaKBFnlCcCqpCU4A/30737a1116688c3753cd920d9bcc558a.jpg">
                        <li><a class="dropdown-item" href="#">급수기</a></li>
                        <li><a class="dropdown-item" href="#">급식기</a></li>
                        <li><a class="dropdown-item" href="#">정수기</a></li>
                        <li><a class="dropdown-item" href="#">사료보관통</a></li>
                    </ul>
                </div>

                <!-- 7번째 버튼 -->
                <div class="btn-group">
                    <button type="button" class="btn dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                        외출용품
                    </button>
                    <ul class="dropdown-menu text-center">
                        <img src="https://puppydog.co.kr/web/upload/appfiles/0zdpAngaKBFnlCcCqpCU4A/1d9e5418587f78199bc00f79089198cc.jpg">
                        <li><a class="dropdown-item" href="#">가슴줄</a></li>
                        <li><a class="dropdown-item" href="#">리드줄</a></li>
                        <li><a class="dropdown-item" href="#">목걸이/인식표</a></li>
                        <li><a class="dropdown-item" href="#">목줄</a></li>
                        <li><a class="dropdown-item" href="#">유모차</a></li>
                        <li><a class="dropdown-item" href="#">이동가방/이동장</a></li>
                        <li><a class="dropdown-item" href="#">차량용캐리어/시트</a></li>
                        <li><a class="dropdown-item" href="#">입마개</a></li>
                    </ul>
                </div>

                <!-- 8번째 버튼 -->
                <div class="btn-group">
                    <button type="button" class="btn dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                        장난감/훈련용품
                    </button>
                    <ul class="dropdown-menu text-center">
                        <img src="https://puppydog.co.kr/web/upload/appfiles/0zdpAngaKBFnlCcCqpCU4A/a2eda75b781d420e1c741d847bd0ea61.jpg">
                        <li><a class="dropdown-item" href="#">공/원반</a></li>
                        <li><a class="dropdown-item" href="#">인형</a></li>
                        <li><a class="dropdown-item" href="#">터널/큐브</a></li>
                        <li><a class="dropdown-item" href="#">훈련용품</a></li>
                        <li><a class="dropdown-item" href="#">기타장난감</a></li>
                        <li><a class="dropdown-item" href="#">캣타워</a></li>
                        <li><a class="dropdown-item" href="#">고양이스크래쳐</a></li>
                        <li><a class="dropdown-item" href="#">고양이장난감</a></li>
                    </ul>
                </div>

                <!-- 9번째 버튼 -->
                <div class="btn-group">
                    <button type="button" class="btn dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                        하우스/안전용품
                    </button>
                    <ul class="dropdown-menu text-center">
                        <img src="https://puppydog.co.kr/web/upload/appfiles/0zdpAngaKBFnlCcCqpCU4A/67f00972192237284703c33adc45624a.jpg">
                        <li><a class="dropdown-item" href="#">계단/스텝</a></li>
                        <li><a class="dropdown-item" href="#">매트</a></li>
                        <li><a class="dropdown-item" href="#">안전문</a></li>
                        <li><a class="dropdown-item" href="#">울타리</a></li>
                        <li><a class="dropdown-item" href="#">쿠션/방석</a></li>
                        <li><a class="dropdown-item" href="#">하우스/텐트</a></li>
                        <li><a class="dropdown-item" href="#">해먹</a></li>
                    </ul>
                </div>

                <!-- 10번째 버튼 -->
                <div class="btn-group">
                    <button type="button" class="btn dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                        Q & A
                    </button>
                </div>

                <!-- 11번째 버튼 -->
                <div class="btn-group">
                    <button type="button" class="btn dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                        REVIEWS
                    </button>
                    <ul class="dropdown-menu text-center">
                        <img src="https://puppydog.co.kr/web/upload/appfiles/0zdpAngaKBFnlCcCqpCU4A/033d26c86fb5c58d7e79febbc4f930a5.jpg">
                        <li><a class="dropdown-item" href="#"></a></li>
                    </ul>
                </div>

                <!-- 12번째 버튼 -->
                <div class="btn-group">
                    <button type="button" class="btn dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                        CS . HELP
                    </button>
                </div>

            </div>

            <!-- 헤어 우측 검색버튼 -->
            <div class="col-lg-1 col-md-1 col-sm-1 col_3rd">
                <button type="button" class="btn dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
                        <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
                    </svg>
                </button>
                
            </div>
        </div>
    </div>
<!-- ============ 까지 모듈화 필요 ==================================== -->

    <hr style="width: 100%;" class="my-0 hr_third">

</body>
</html>