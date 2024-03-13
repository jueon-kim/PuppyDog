<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <script>
   
   
      /* 첫번째 헤더의 우측 버튼들 */
   /* 드랍다운  hr밑으로 나오게하기 */
   $(document).ready(function() {

       $('.TopHeader .btn-group').on('mouseenter focusin', function () {
           var hrBottom = $('hr.hr_first').offset().top + $('hr.hr_first').outerHeight();
           var dropdown = $(this).find('ul');
           var dropdownTop = dropdown.offset().top;

           if (dropdownTop < hrBottom) {
               dropdown.css('top', hrBottom - dropdownTop);
           }

           dropdown.stop().show(200);
       });

       $('.TopHeader .btn-group').on('mouseleave focusout', function () {
           $(this).find('ul').stop().hide(200);
       });

   });


   /* 첫번째 헤더의 우측 버튼들 호버 시 색입히기 */
   $(document).ready(function () {
     
     $('.TopHeader .loginfunction .btn').on('mouseenter focusin', function () {

       $('.TopHeader .loginfunction .btn').css({"color":"rgb(051, 204, 153)"})

     });

   });
   $(document).ready(function () {
     
     $('.TopHeader .col_5th .btn').on('mouseenter focusin', function () {

       $('.TopHeader .col_5th .btn').css({"color":"rgb(051, 204, 153)"})

     });

   });
   $(document).ready(function () {
     
     $('.TopHeader .col_6th .btn').on('mouseenter focusin', function () {

       $('.TopHeader .col_6th .btn').css({"color":"rgb(051, 204, 153)"})

     });

   });
   $(document).ready(function () {
     
     $('.TopHeader .col_7th .btn').on('mouseenter focusin', function () {

       $('.TopHeader .col_7th .btn').css({"color":"rgb(051, 204, 153)"})

     });

   });

   /* 색 없애기 */
   $(document).ready(function () {
     
     $('.TopHeader .loginfunction .btn, .TopHeader .col_5th .btn, .first_header .col_6th .btn ,.first_header .col_7th .btn').on('mouseleave focusout', function () {

       $('.TopHeader .loginfunction .btn, .TopHeader .col_5th .btn, .first_header .col_6th .btn ,.first_header .col_7th .btn').css({"color":"black"})

     });

   });

   /* 첫번째 헤더의 우측 버튼의 자식 요소들 박스 크기 조정 */
   $(document).ready(function () {

       var liSize = $('.TopHeader .btn-group').width();
       $('.TopHeader .btn-group .dropdown-menu').css({ "min-width": liSize + "px"});

   }); 


       
   /* 두번째 헤더 우측부분 */ /* 두번째 헤더 우측부분 */ /* 두번째 헤더 우측부분 */


   /* 팝오버 활성화 */
   $(document).ready(function() {

       $('.second_header .col_3rd .btn').popover({
           trigger: 'hover', // 수동으로 트리거 설정
           placement: 'bottom',
           offset: '0, -25',
       });

   });


   /* 두번째 헤더의 스와이퍼 부분 */ /* 두번째 헤더의 스와이퍼 부분 */ /* 두번째 헤더의 스와이퍼 부분 */
       

   document.addEventListener('DOMContentLoaded', function () {
   var swiper = new Swiper('.first_swiper_container', {
       autoplay: {
           delay: 3500,
           disableOnInteraction: false
       },
       slidesPerView: 1,
       loop: true,
       direction: 'vertical',
       pagination: {
           el: '.first_swiper_pagination',
           clickable: true
       },
       navigation: {    
           nextEl: '.swiper_button_next',
           prevEl: '.swiper_button_prev' 
       }
   });

});

   $(document).ready(function () {
      
       $('.first_swiper_container .first_swiper_pagination').css({"display":"none"});

       $('.first_swiper_container').hover(
           function () {
               $('.first_swiper_container .first_swiper_pagination').css({"display":"block"});
       },
           function () {
               $('.first_swiper_container .first_swiper_pagination').css({"display":"none"});
       }
       );

       $('.first_swiper_container .swiper_button_next,.swiper_button_prev').css({"display":"none"});

       $('.first_swiper_container').hover(
           function () {
               $('.first_swiper_container .swiper_button_next,.swiper_button_prev').css({"display":"block"});
       },
           function () {
               $('.first_swiper_container .swiper_button_next,.swiper_button_prev').css({"display":"none"});
       }
       );

   });



   /* 세번째 헤더의 좌측 종합버튼 offcanvas */

   $(document).ready(function () {
       var child_color_change = $('.first_offcanvas .first_offcanvas_body .offcanvas_list_part a');
       var etc_color_change = $('.first_offcanvas .first_offcanvas_body .offcanvas_etc_part a');
       var btn_color_change = $('.first_offcanvas .first_offcanvas_body .offcanvas_inner_sticky_btn_group a');

       child_color_change.on('mouseenter focusin', function () {
           $(this).css({"color":"rgb(051, 204, 153)"});
           $(this).parent().css({"background":"rgba(0, 0, 0, 0.065)"});
           $(this).closest('div').find('hr').prev().find('a').css({"color": "rgb(51, 204, 153)"});
       })

       child_color_change.on('mouseleave focusout', function () {
           $(this).css({"color":"rgba(0, 0, 0, 0.8)"});
           $(this).parent().css({"background":"white"});
           $(this).closest('div').find('hr').prev().find('a').css({"color": "rgba(0, 0, 0, 0.8)"});
       })

       etc_color_change.on('mouseenter focusin', function () {
           $(this).css({"color":"rgb(051, 204, 153)"});
       })
       
       etc_color_change.on('mouseleave focusout', function () {
           $(this).css({"color":"rgba(0, 0, 0, 0.8)"});
       })

       btn_color_change.on('mouseenter focusin', function () {
           $(this).css({"color":"rgb(051, 204, 153)"});
       })

       btn_color_change.on('mouseleave focusout', function () {
           $(this).css({"color":"rgba(0, 0, 0, 0.8)"});
       })

   })


   /* 세번째 헤더 좌측 종합버튼 팝오버 */
   $(document).ready(function () {

       $('.third_header .helpCenter .btn').popover({
           trigger: 'hover',
           placement: 'right',
           offset: '-2, 0'
       });
       
   })




   /* 세번째 헤더의 중앙부분 호버 */

   $(document).ready(function() {
       $('.btn_group').on('mouseenter focusin', function () {
       var dropdown = $(this).find('.a_dropdown');
        dropdown.css({"display": "block"});
       dropdown.stop().show(200);
       });
  

       $('.btn_group').on('mouseleave focusout', function () {
       var dropdown = $(this).find('.a_dropdown');
       dropdown.stop().hide(200);
       });
   });


   /* 세번째 헤더의 중앙 우측 호버 시 글자 변환 */
   $(document).ready(function () {

       $('.third_header .col_2nd .btn_group:nth-child(11) .btn').hover(
       function () {
           $(this).text("문의");
       },
       function () {
           $(this).text('Q & A');
       }
   );

       $('.third_header .col_2nd .btn_group:nth-child(12) .btn').hover(
       function () {
           $(this).text("후기");
       },
       function () {
           $(this).text('REVIEWS');
       }
   );


   $('.third_header .col_2nd .btn_group:last-child .btn').hover(
       function () {
           $(this).text("고객센터");
       },
       function () {
           $(this).text('CS . HELP');
       }
   );
});

   

       /* 세번째 헤더 우측 모달 inner parts */
       $(document).ready(function () {
          
           // 모달 안쪽 닫기 버튼 활성화
           $('.third_header .col_3rd .modal_inner_close_btn').click(function () {
                 $('.first_modal').hide();
           });

       });


		
       /* 세번째 헤더 중앙 링크 연결 */
       /* 간식만 연결해놓음 */
       $(document).ready(function () {
			
       	$('.third_header .col_2nd button:first-child').click(function () {
				location.href = '01snack_all.jsp';
			})
       	
		});

       
   </script>
