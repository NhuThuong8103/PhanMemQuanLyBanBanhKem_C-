"use strict";

// const app = {
//     ready: (fn) => {
//         if (document.attachEvent ? document.readyState === "complete" : document.readyState !== "loading") {
//             fn();
//         } else {
//             document.addEventListener('DOMContentLoaded', fn);
//         }
//     },
//     scroll: (fn) => {
//         window.addEventListener('scroll', fn)
//     },
//     resize: (fn) => {
//         window.addEventListener('resize', fn)
//     },
//     select: (el) => {
//         return document.querySelector(el)
//     },
//     selectAll: (el) => {
//         return document.querySelectorAll(el)
//     },
//     toggleClass: (el, cl) => {
//         el.classList.toggle(cl)
//     },
//     addClass: (el, className) => {
//         if (el.classList)
//             el.classList.add(className);
//         else
//             el.className += ' ' + className;
//     },
//     removeClass: (el, className) => {
//         if (el.classList)
//             el.classList.remove(className);
//         else
//             el.className = el.className.replace(new RegExp('(^|\\b)' + className.split(' ').join('|') + '(\\b|$)', 'gi'), ' ');
//     },
//     bgImg: () => {
//         let a = app.selectAll('[bg-img]')
//         for (i = 0; i < a.length; i++) {
//             let el = a[i],
//                 bgimg = el.getAttribute('bg-img'),
//                 pos = el.getAttribute('bg-pos'),
//                 size = el.getAttribute('bg-size')
//             if (pos != null) {
//                 el.style.backgroundPosition = pos;
//             } else {
//                 el.style.backgroundPosition = 'center center'
//             }
//             if (size != null) {
//                 el.style.backgroundSize = size;
//             } else {
//                 el.style.backgroundSize = 'cover'
//             }
//             el.style.backgroundImage = 'url(' + bgimg + ')'
//         }
//     },
//     backToTop: () => {
//         app.select('#backToTop').addEventListener('click', function() {
//             window.scrollTo({
//                 behavior: 'smooth',
//                 left: 0,
//                 top: 0
//             });
//         })
//     },
//     fixedMain: () => {
//         let headerHeight = app.select('header').offsetHeight
//         app.select('main').style.paddingTop = headerHeight + 'px'
//     },
//     aos: () => {
//         AOS.init({
//             duration: 1200,
//             once: true,
//             disable: 'phone'
//         });
//     },
//     ie: () => {
//         var ua = window.navigator.userAgent;
//         var msie = ua.indexOf("MSIE ");
//         if (msie > 0 || !!navigator.userAgent.match(/Trident.*rv\:11\./)) {
//             app.addClass(app.select('html'), 'ie-browser')
//         }
//     }
// }
// app.ready(function() {
//     app.bgImg()
//     app.backToTop()
//     app.fixedMain()
//     app.aos()
//     app.ie()
// })
function mobileWrapHideShow() {
  $('header .menu-moblie-header .content-header .button-moblie').on('click', function () {
    $('header .menu-hidden-mobi').addClass('active');
    $('header .backdrop').addClass('active');
  });
  $('header .backdrop').on('click', function () {
    $('header .menu-hidden-mobi').removeClass('active');
    $('header .backdrop').removeClass('active');
  });
}

;

function dropdownmoblie() {
  $('header .menu-hidden-mobi .menu-moblie-big .link-list-mobi .ct-mobi .menu .fa-plus').on('click', function () {
    $('header .menu-hidden-2').addClass('active');
    $('header .menu-hidden-mobi .menu-moblie-big .link-list-mobi .ct-mobi .menu .fa-plus').addClass('active');
  });
  $('header .menu-hidden-mobi .menu-moblie-big .link-list-mobi .ct-mobi .menu .fa-minus').on('click', function () {
    $('header .menu-hidden-2').removeClass('active');
    $('header .fa-plus').removeClass('active');
  });
}

;

function dropdownmoblie2() {
  $('header .menu-hidden-mobi .menu-moblie-big .link-list-mobi .ct-mobi .menu .menu-hidden-2 .menu-m-2 .fa-minus').on('click', function () {
    $('header .menu-hidden-3').addClass('active'); // $('header .menu-hidden-mobi .menu-moblie-big .link-list-mobi .ct-mobi .menu .fa-plus').addClass('active')
  }); // $('header .menu-hidden-mobi .menu-moblie-big .link-list-mobi .ct-mobi .menu .fa-minus').on('click',function(){
  // 	$('header .menu-hidden-2').removeClass('active')
  // 	$('header .fa-plus').removeClass('active')
  // })
}

;
$(document).ready(function () {
  mobileWrapHideShow();
  dropdownmoblie();
}); // var swiper = new Swiper('.swiper-container', {
//     effect: 'coverflow',
//     grabCursor: true,
//     centeredSlides: true,
//     slidesPerView: 'auto',
//     coverflowEffect: {
//       rotate: 50,
//       stretch: 0,
//       depth: 100,
//       modifier: 1,
//       slideShadows : true,
//     },
//     pagination: {
//       el: '.swiper-pagination',
//     },
//   });
// var swiper = new Swiper('.swiper-container', {
//   navigation: {
//     nextEl: '.swiper-button-next',
//     prevEl: '.swiper-button-prev',
//   },
// });

$('.owl-carousel').owlCarousel({
  loop: true,
  margin: 0,
  nav: false,
  autoplay:true,
  autoplayTimeout:1000,
  autoplayHoverPause:true,
  responsive: {
    0: {
      items: 1
    },
    600: {
      items: 1
    },
    1000: {
      items: 1
    }
  }
});

function homeTab() {
  $('.home-2 .showed').on('click', function () {
    $(this).siblings('.main-nav').toggleClass('active');
  });
  $('.home-2 .main-nav .item').on('click', function () {
    var active = $(this).attr('data-tab');
    $('.home-2 .showed').text($(this).text());
    $(this).parent().removeClass('active');
    $('.home-2 .main-nav .item').removeClass('active');
    $(this).addClass('active');
    $('.home-2 .main-content .content-item').removeClass('active');
    $('.home-2 .main-content .content-item[data-content=' + active + ']').addClass('active');
  });
}

$(document).ready(function () {
  homeTab();
});

function productSlide() {
  $('[data-slide]').each(function () {
    return new Swiper($(this).find('.swiper-container'), {
      slidesPerView: 4,
      spaceBetween: 30,
      autoplay: {
        delay: 4000
      },
      navigation: {
        nextEl: $(this).find('.swiper-next'),
        prevEl: $(this).find('.swiper-prev')
      },
      speed: 1000,
      observer: true,
      observeParents: true,
      breakpoints: {
        992: {
          slidesPerView: 3
        },
        768: {
          slidesPerView: 2
        },
        576: {
          slidesPerView: 1
        }
      }
    });
  });
}

$(document).ready(function () {
  productSlide();
});

function newsSlide() {
  return new Swiper('.home-4 .swiper-container', {
    slidesPerView: 3,
    spaceBetween: 30,
    autoplay: {
      delay: 4000
    },
    // navigation: {
    //     nextEl: '.home-3 .swiper-next',
    //     prevEl: '.home-3 .swiper-prev',
    // },
    speed: 1000,
    observer: true,
    observeParents: true,
    breakpoints: {
      768: {
        slidesPerView: 2
      },
      576: {
        slidesPerView: 1
      }
    }
  });
}

$(document).ready(function () {
  newsSlide();
});
$(function () {
  if ($('.carousel-product .owl-carousel').length) {
    $('.carousel-product .owl-carousel').owlCarousel({
      animateIn: 'fadeIn',
      animateOut: 'fadeOut',
      items: 1,
      loop: false,
      center: false,
      padding: 10,
      margin: 20,
      navText: ['<i class="fa fa-chevron-left"></i>', '<i class="fa fa-chevron-right"></i>'],
      nav: true,
      dots: true,
      autoplay: false,
      autoplayTimeout: 5000,
      autoplayHoverPause: true,
      callbacks: true,
      responsive: {
        480: {
          items: 2
        },
        768: {
          items: 3,
          nav: true,
          dots: false
        },
        992: {
          items: 4
        }
      }
    });
  }
}); ///tooltip

/*$(document).ready(function () {
  $('[data-toggle="tooltip"]').tooltip();
});*/

$(document).ready(function(){ 
    $(window).scroll(function(){ 
        if ($(this).scrollTop() > 100) { 
            $('#scroll').fadeIn(); 
        } else { 
            $('#scroll').fadeOut(); 
        } 
    }); 
    $('#scroll').click(function(){ 
        $("html, body").animate({ scrollTop: 0 }, 600); 
        return false; 
    }); 
});

/*menu submenu sidebar page sản phẩm*/
$(document).ready(function() {
  $('.content-main-product .sub-menu ul').hide();
  $(".content-main-product .sub-menu a").click(function () {
    $(this).parent(".content-main-product .sub-menu").children("ul").slideToggle("100");
    $(this).find(".content-main-product .right").toggleClass("fa-angle-up fa-angle-down");
  });
});


$(document).ready(function(){
   $('#menuToggle').click(function(e){
     var $parent = $(this).parent('nav');
     $parent.toggleClass("open");
     var navState = $parent.hasClass('open') ? "hide" : "show";
     $(this).attr("title", navState + " navigation");
      // Set the timeout to the animation length in the CSS.
      setTimeout(function(){
        console.log(" nav hide timeout set");
        $('#menuToggle > span').toggleClass("navClosed").toggleClass("navOpen");
      }, 200);
     e.preventDefault();
   });
 });

$(document).ready(function() {
  $(".product-sort ul li").click(function(){
    $(this).parent().find( 'li.active' ).removeClass( 'active' );
    $(this).addClass( 'active' );
    var sortingMethod= $(this).data("value");
    if(sortingMethod=='l2h'){
      sortProductsPriceAscending();
      console.log(sortingMethod);
    }
    else if(sortingMethod=='h2l'){
      sortProductsPriceDescending();
    }
    /* Act on the event */
  });
});
function sortProductsPriceAscending(){
  var products = $('.product-item');
  products.sort(function(a, b){ 
    return $(a).data("price")-$(b).data("price")
  });
  $(".product-grid").html(products);
}

function sortProductsPriceDescending(){
  var products = $('.product-item');
  products.sort(function(a, b){ 
    return $(b).data("price")-$(a).data("price")
  });
  $(".product-grid").html(products);
}

$(document).ready(function() {
  $(document).on('click', '.number-spinner button', function () {    
    var btn = $(this),
    oldValue = btn.closest('.number-spinner').find('input').val().trim(),
    newVal = 0;

    if (btn.attr('data-dir') == 'up') {
      newVal = parseInt(oldValue) + 1;
    } else {
      if (oldValue > 1) {
        newVal = parseInt(oldValue) - 1;
      } else {  
        newVal = 1;
      }
    }
    btn.closest('.number-spinner').find('input').val(newVal);
  });
});


// phân trang sản phẩm-------------------------------------------
//# sourceMappingURL=data:application/json;charset=utf8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbImFwcC5qcyIsImhlYWRlci9pbmRleC5qcyIsInNsaWRlci9pbmRleC5qcyIsImhvbWUvaC0xL2luZGV4LmpzIiwiaG9tZS9oLTIvaW5kZXguanMiLCJob21lL2gtMy9pbmRleC5qcyIsImhvbWUvaC00L2luZGV4LmpzIiwicHJvZHVjdC9wLTIvaW5kZXguanMiXSwibmFtZXMiOlsibW9iaWxlV3JhcEhpZGVTaG93IiwiJCIsIm9uIiwiYWRkQ2xhc3MiLCJyZW1vdmVDbGFzcyIsImRyb3Bkb3dubW9ibGllIiwiZHJvcGRvd25tb2JsaWUyIiwiZG9jdW1lbnQiLCJyZWFkeSIsIm93bENhcm91c2VsIiwibG9vcCIsIm1hcmdpbiIsIm5hdiIsInJlc3BvbnNpdmUiLCJpdGVtcyIsImhvbWVUYWIiLCJzaWJsaW5ncyIsInRvZ2dsZUNsYXNzIiwiYWN0aXZlIiwiYXR0ciIsInRleHQiLCJwYXJlbnQiLCJwcm9kdWN0U2xpZGUiLCJlYWNoIiwiU3dpcGVyIiwiZmluZCIsInNsaWRlc1BlclZpZXciLCJzcGFjZUJldHdlZW4iLCJhdXRvcGxheSIsImRlbGF5IiwibmF2aWdhdGlvbiIsIm5leHRFbCIsInByZXZFbCIsInNwZWVkIiwib2JzZXJ2ZXIiLCJvYnNlcnZlUGFyZW50cyIsImJyZWFrcG9pbnRzIiwibmV3c1NsaWRlIiwibGVuZ3RoIiwiYW5pbWF0ZUluIiwiYW5pbWF0ZU91dCIsImNlbnRlciIsInBhZGRpbmciLCJuYXZUZXh0IiwiZG90cyIsImF1dG9wbGF5VGltZW91dCIsImF1dG9wbGF5SG92ZXJQYXVzZSIsImNhbGxiYWNrcyIsInRvb2x0aXAiXSwibWFwcGluZ3MiOiI7O0FBQUE7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFFQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FDMUZBLFNBQUFBLGtCQUFBLEdBQUE7QUFDQUMsRUFBQUEsQ0FBQSxDQUFBLDJEQUFBLENBQUEsQ0FBQUMsRUFBQSxDQUFBLE9BQUEsRUFBQSxZQUFBO0FBQ0FELElBQUFBLENBQUEsQ0FBQSwwQkFBQSxDQUFBLENBQUFFLFFBQUEsQ0FBQSxRQUFBO0FBQ0FGLElBQUFBLENBQUEsQ0FBQSxrQkFBQSxDQUFBLENBQUFFLFFBQUEsQ0FBQSxRQUFBO0FBQ0EsR0FIQTtBQUlBRixFQUFBQSxDQUFBLENBQUEsa0JBQUEsQ0FBQSxDQUFBQyxFQUFBLENBQUEsT0FBQSxFQUFBLFlBQUE7QUFDQUQsSUFBQUEsQ0FBQSxDQUFBLDBCQUFBLENBQUEsQ0FBQUcsV0FBQSxDQUFBLFFBQUE7QUFDQUgsSUFBQUEsQ0FBQSxDQUFBLGtCQUFBLENBQUEsQ0FBQUcsV0FBQSxDQUFBLFFBQUE7QUFDQSxHQUhBO0FBSUE7O0FBQUE7O0FBQ0EsU0FBQUMsY0FBQSxHQUFBO0FBQ0FKLEVBQUFBLENBQUEsQ0FBQSxtRkFBQSxDQUFBLENBQUFDLEVBQUEsQ0FBQSxPQUFBLEVBQUEsWUFBQTtBQUNBRCxJQUFBQSxDQUFBLENBQUEsdUJBQUEsQ0FBQSxDQUFBRSxRQUFBLENBQUEsUUFBQTtBQUNBRixJQUFBQSxDQUFBLENBQUEsbUZBQUEsQ0FBQSxDQUFBRSxRQUFBLENBQUEsUUFBQTtBQUVBLEdBSkE7QUFLQUYsRUFBQUEsQ0FBQSxDQUFBLG9GQUFBLENBQUEsQ0FBQUMsRUFBQSxDQUFBLE9BQUEsRUFBQSxZQUFBO0FBQ0FELElBQUFBLENBQUEsQ0FBQSx1QkFBQSxDQUFBLENBQUFHLFdBQUEsQ0FBQSxRQUFBO0FBQ0FILElBQUFBLENBQUEsQ0FBQSxpQkFBQSxDQUFBLENBQUFHLFdBQUEsQ0FBQSxRQUFBO0FBQ0EsR0FIQTtBQUlBOztBQUFBOztBQUNBLFNBQUFFLGVBQUEsR0FBQTtBQUNBTCxFQUFBQSxDQUFBLENBQUEsNkdBQUEsQ0FBQSxDQUFBQyxFQUFBLENBQUEsT0FBQSxFQUFBLFlBQUE7QUFDQUQsSUFBQUEsQ0FBQSxDQUFBLHVCQUFBLENBQUEsQ0FBQUUsUUFBQSxDQUFBLFFBQUEsRUFEQSxDQUVBO0FBRUEsR0FKQSxFQURBLENBTUE7QUFDQTtBQUNBO0FBQ0E7QUFDQTs7QUFBQTtBQUNBRixDQUFBLENBQUFNLFFBQUEsQ0FBQSxDQUFBQyxLQUFBLENBQUEsWUFBQTtBQUVBUixFQUFBQSxrQkFBQTtBQUNBSyxFQUFBQSxjQUFBO0FBQ0EsQ0FKQSxFLENDOUJBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBOztBQ3ZCQUosQ0FBQSxDQUFBLGVBQUEsQ0FBQSxDQUFBUSxXQUFBLENBQUE7QUFDQUMsRUFBQUEsSUFBQSxFQUFBLElBREE7QUFFQUMsRUFBQUEsTUFBQSxFQUFBLENBRkE7QUFHQUMsRUFBQUEsR0FBQSxFQUFBLEtBSEE7QUFJQUMsRUFBQUEsVUFBQSxFQUFBO0FBQ0EsT0FBQTtBQUNBQyxNQUFBQSxLQUFBLEVBQUE7QUFEQSxLQURBO0FBSUEsU0FBQTtBQUNBQSxNQUFBQSxLQUFBLEVBQUE7QUFEQSxLQUpBO0FBT0EsVUFBQTtBQUNBQSxNQUFBQSxLQUFBLEVBQUE7QUFEQTtBQVBBO0FBSkEsQ0FBQTs7QUNBQSxTQUFBQyxPQUFBLEdBQUE7QUFDQWQsRUFBQUEsQ0FBQSxDQUFBLGlCQUFBLENBQUEsQ0FBQUMsRUFBQSxDQUFBLE9BQUEsRUFBQSxZQUFBO0FBQ0FELElBQUFBLENBQUEsQ0FBQSxJQUFBLENBQUEsQ0FBQWUsUUFBQSxDQUFBLFdBQUEsRUFBQUMsV0FBQSxDQUFBLFFBQUE7QUFDQSxHQUZBO0FBR0FoQixFQUFBQSxDQUFBLENBQUEseUJBQUEsQ0FBQSxDQUFBQyxFQUFBLENBQUEsT0FBQSxFQUFBLFlBQUE7QUFDQSxRQUFBZ0IsTUFBQSxHQUFBakIsQ0FBQSxDQUFBLElBQUEsQ0FBQSxDQUFBa0IsSUFBQSxDQUFBLFVBQUEsQ0FBQTtBQUNBbEIsSUFBQUEsQ0FBQSxDQUFBLGlCQUFBLENBQUEsQ0FBQW1CLElBQUEsQ0FBQW5CLENBQUEsQ0FBQSxJQUFBLENBQUEsQ0FBQW1CLElBQUEsRUFBQTtBQUNBbkIsSUFBQUEsQ0FBQSxDQUFBLElBQUEsQ0FBQSxDQUFBb0IsTUFBQSxHQUFBakIsV0FBQSxDQUFBLFFBQUE7QUFDQUgsSUFBQUEsQ0FBQSxDQUFBLHlCQUFBLENBQUEsQ0FBQUcsV0FBQSxDQUFBLFFBQUE7QUFDQUgsSUFBQUEsQ0FBQSxDQUFBLElBQUEsQ0FBQSxDQUFBRSxRQUFBLENBQUEsUUFBQTtBQUNBRixJQUFBQSxDQUFBLENBQUEscUNBQUEsQ0FBQSxDQUFBRyxXQUFBLENBQUEsUUFBQTtBQUNBSCxJQUFBQSxDQUFBLENBQUEsc0RBQUFpQixNQUFBLEdBQUEsR0FBQSxDQUFBLENBQUFmLFFBQUEsQ0FBQSxRQUFBO0FBQ0EsR0FSQTtBQVNBOztBQUNBRixDQUFBLENBQUFNLFFBQUEsQ0FBQSxDQUFBQyxLQUFBLENBQUEsWUFBQTtBQUNBTyxFQUFBQSxPQUFBO0FBQ0EsQ0FGQTs7QUNkQSxTQUFBTyxZQUFBLEdBQUE7QUFDQXJCLEVBQUFBLENBQUEsQ0FBQSxjQUFBLENBQUEsQ0FBQXNCLElBQUEsQ0FBQSxZQUFBO0FBQ0EsV0FBQSxJQUFBQyxNQUFBLENBQUF2QixDQUFBLENBQUEsSUFBQSxDQUFBLENBQUF3QixJQUFBLENBQUEsbUJBQUEsQ0FBQSxFQUFBO0FBQ0FDLE1BQUFBLGFBQUEsRUFBQSxDQURBO0FBRUFDLE1BQUFBLFlBQUEsRUFBQSxFQUZBO0FBR0FDLE1BQUFBLFFBQUEsRUFBQTtBQUNBQyxRQUFBQSxLQUFBLEVBQUE7QUFEQSxPQUhBO0FBTUFDLE1BQUFBLFVBQUEsRUFBQTtBQUVBQyxRQUFBQSxNQUFBLEVBQUE5QixDQUFBLENBQUEsSUFBQSxDQUFBLENBQUF3QixJQUFBLENBQUEsY0FBQSxDQUZBO0FBR0FPLFFBQUFBLE1BQUEsRUFBQS9CLENBQUEsQ0FBQSxJQUFBLENBQUEsQ0FBQXdCLElBQUEsQ0FBQSxjQUFBO0FBSEEsT0FOQTtBQVdBUSxNQUFBQSxLQUFBLEVBQUEsSUFYQTtBQVlBQyxNQUFBQSxRQUFBLEVBQUEsSUFaQTtBQWFBQyxNQUFBQSxjQUFBLEVBQUEsSUFiQTtBQWNBQyxNQUFBQSxXQUFBLEVBQUE7QUFDQSxhQUFBO0FBQ0FWLFVBQUFBLGFBQUEsRUFBQTtBQURBLFNBREE7QUFJQSxhQUFBO0FBQ0FBLFVBQUFBLGFBQUEsRUFBQTtBQURBLFNBSkE7QUFPQSxhQUFBO0FBQ0FBLFVBQUFBLGFBQUEsRUFBQTtBQURBO0FBUEE7QUFkQSxLQUFBLENBQUE7QUEwQkEsR0EzQkE7QUE2QkE7O0FBQ0F6QixDQUFBLENBQUFNLFFBQUEsQ0FBQSxDQUFBQyxLQUFBLENBQUEsWUFBQTtBQUNBYyxFQUFBQSxZQUFBO0FBQ0EsQ0FGQTs7QUMvQkEsU0FBQWUsU0FBQSxHQUFBO0FBQ0EsU0FBQSxJQUFBYixNQUFBLENBQUEsMkJBQUEsRUFBQTtBQUNBRSxJQUFBQSxhQUFBLEVBQUEsQ0FEQTtBQUVBQyxJQUFBQSxZQUFBLEVBQUEsRUFGQTtBQUdBQyxJQUFBQSxRQUFBLEVBQUE7QUFDQUMsTUFBQUEsS0FBQSxFQUFBO0FBREEsS0FIQTtBQU1BO0FBRUE7QUFDQTtBQUNBO0FBQ0FJLElBQUFBLEtBQUEsRUFBQSxJQVhBO0FBWUFDLElBQUFBLFFBQUEsRUFBQSxJQVpBO0FBYUFDLElBQUFBLGNBQUEsRUFBQSxJQWJBO0FBY0FDLElBQUFBLFdBQUEsRUFBQTtBQUNBLFdBQUE7QUFDQVYsUUFBQUEsYUFBQSxFQUFBO0FBREEsT0FEQTtBQUlBLFdBQUE7QUFDQUEsUUFBQUEsYUFBQSxFQUFBO0FBREE7QUFKQTtBQWRBLEdBQUEsQ0FBQTtBQXVCQTs7QUFDQXpCLENBQUEsQ0FBQU0sUUFBQSxDQUFBLENBQUFDLEtBQUEsQ0FBQSxZQUFBO0FBQ0E2QixFQUFBQSxTQUFBO0FBQ0EsQ0FGQTtBQ3pCQXBDLENBQUEsQ0FBQSxZQUFBO0FBQ0EsTUFBQUEsQ0FBQSxDQUFBLGlDQUFBLENBQUEsQ0FBQXFDLE1BQUEsRUFBQTtBQUNBckMsSUFBQUEsQ0FBQSxDQUFBLGlDQUFBLENBQUEsQ0FBQVEsV0FBQSxDQUFBO0FBQ0E4QixNQUFBQSxTQUFBLEVBQUEsUUFEQTtBQUVBQyxNQUFBQSxVQUFBLEVBQUEsU0FGQTtBQUdBMUIsTUFBQUEsS0FBQSxFQUFBLENBSEE7QUFJQUosTUFBQUEsSUFBQSxFQUFBLEtBSkE7QUFLQStCLE1BQUFBLE1BQUEsRUFBQSxLQUxBO0FBTUFDLE1BQUFBLE9BQUEsRUFBQSxFQU5BO0FBT0EvQixNQUFBQSxNQUFBLEVBQUEsRUFQQTtBQVFBZ0MsTUFBQUEsT0FBQSxFQUFBLENBQUEsb0NBQUEsRUFBQSxxQ0FBQSxDQVJBO0FBU0EvQixNQUFBQSxHQUFBLEVBQUEsSUFUQTtBQVVBZ0MsTUFBQUEsSUFBQSxFQUFBLElBVkE7QUFXQWhCLE1BQUFBLFFBQUEsRUFBQSxLQVhBO0FBWUFpQixNQUFBQSxlQUFBLEVBQUEsSUFaQTtBQWFBQyxNQUFBQSxrQkFBQSxFQUFBLElBYkE7QUFjQUMsTUFBQUEsU0FBQSxFQUFBLElBZEE7QUFlQWxDLE1BQUFBLFVBQUEsRUFBQTtBQUNBLGFBQUE7QUFDQUMsVUFBQUEsS0FBQSxFQUFBO0FBREEsU0FEQTtBQUlBLGFBQUE7QUFDQUEsVUFBQUEsS0FBQSxFQUFBLENBREE7QUFFQUYsVUFBQUEsR0FBQSxFQUFBLElBRkE7QUFHQWdDLFVBQUFBLElBQUEsRUFBQTtBQUhBLFNBSkE7QUFTQSxhQUFBO0FBQ0E5QixVQUFBQSxLQUFBLEVBQUE7QUFEQTtBQVRBO0FBZkEsS0FBQTtBQTZCQTtBQUVBLENBakNBLENBQUEsQyxDQW9DQTs7QUFDQWIsQ0FBQSxDQUFBTSxRQUFBLENBQUEsQ0FBQUMsS0FBQSxDQUFBLFlBQUE7QUFDQVAsRUFBQUEsQ0FBQSxDQUFBLHlCQUFBLENBQUEsQ0FBQStDLE9BQUE7QUFDQSxDQUZBIiwiZmlsZSI6Im1haW4uanMiLCJzb3VyY2VzQ29udGVudCI6WyIvLyBjb25zdCBhcHAgPSB7XG4vLyAgICAgcmVhZHk6IChmbikgPT4ge1xuLy8gICAgICAgICBpZiAoZG9jdW1lbnQuYXR0YWNoRXZlbnQgPyBkb2N1bWVudC5yZWFkeVN0YXRlID09PSBcImNvbXBsZXRlXCIgOiBkb2N1bWVudC5yZWFkeVN0YXRlICE9PSBcImxvYWRpbmdcIikge1xuLy8gICAgICAgICAgICAgZm4oKTtcbi8vICAgICAgICAgfSBlbHNlIHtcbi8vICAgICAgICAgICAgIGRvY3VtZW50LmFkZEV2ZW50TGlzdGVuZXIoJ0RPTUNvbnRlbnRMb2FkZWQnLCBmbik7XG4vLyAgICAgICAgIH1cbi8vICAgICB9LFxuLy8gICAgIHNjcm9sbDogKGZuKSA9PiB7XG4vLyAgICAgICAgIHdpbmRvdy5hZGRFdmVudExpc3RlbmVyKCdzY3JvbGwnLCBmbilcbi8vICAgICB9LFxuLy8gICAgIHJlc2l6ZTogKGZuKSA9PiB7XG4vLyAgICAgICAgIHdpbmRvdy5hZGRFdmVudExpc3RlbmVyKCdyZXNpemUnLCBmbilcbi8vICAgICB9LFxuLy8gICAgIHNlbGVjdDogKGVsKSA9PiB7XG4vLyAgICAgICAgIHJldHVybiBkb2N1bWVudC5xdWVyeVNlbGVjdG9yKGVsKVxuLy8gICAgIH0sXG4vLyAgICAgc2VsZWN0QWxsOiAoZWwpID0+IHtcbi8vICAgICAgICAgcmV0dXJuIGRvY3VtZW50LnF1ZXJ5U2VsZWN0b3JBbGwoZWwpXG4vLyAgICAgfSxcbi8vICAgICB0b2dnbGVDbGFzczogKGVsLCBjbCkgPT4ge1xuLy8gICAgICAgICBlbC5jbGFzc0xpc3QudG9nZ2xlKGNsKVxuLy8gICAgIH0sXG4vLyAgICAgYWRkQ2xhc3M6IChlbCwgY2xhc3NOYW1lKSA9PiB7XG4vLyAgICAgICAgIGlmIChlbC5jbGFzc0xpc3QpXG4vLyAgICAgICAgICAgICBlbC5jbGFzc0xpc3QuYWRkKGNsYXNzTmFtZSk7XG4vLyAgICAgICAgIGVsc2Vcbi8vICAgICAgICAgICAgIGVsLmNsYXNzTmFtZSArPSAnICcgKyBjbGFzc05hbWU7XG4vLyAgICAgfSxcbi8vICAgICByZW1vdmVDbGFzczogKGVsLCBjbGFzc05hbWUpID0+IHtcbi8vICAgICAgICAgaWYgKGVsLmNsYXNzTGlzdClcbi8vICAgICAgICAgICAgIGVsLmNsYXNzTGlzdC5yZW1vdmUoY2xhc3NOYW1lKTtcbi8vICAgICAgICAgZWxzZVxuLy8gICAgICAgICAgICAgZWwuY2xhc3NOYW1lID0gZWwuY2xhc3NOYW1lLnJlcGxhY2UobmV3IFJlZ0V4cCgnKF58XFxcXGIpJyArIGNsYXNzTmFtZS5zcGxpdCgnICcpLmpvaW4oJ3wnKSArICcoXFxcXGJ8JCknLCAnZ2knKSwgJyAnKTtcbi8vICAgICB9LFxuLy8gICAgIGJnSW1nOiAoKSA9PiB7XG4vLyAgICAgICAgIGxldCBhID0gYXBwLnNlbGVjdEFsbCgnW2JnLWltZ10nKVxuLy8gICAgICAgICBmb3IgKGkgPSAwOyBpIDwgYS5sZW5ndGg7IGkrKykge1xuLy8gICAgICAgICAgICAgbGV0IGVsID0gYVtpXSxcbi8vICAgICAgICAgICAgICAgICBiZ2ltZyA9IGVsLmdldEF0dHJpYnV0ZSgnYmctaW1nJyksXG4vLyAgICAgICAgICAgICAgICAgcG9zID0gZWwuZ2V0QXR0cmlidXRlKCdiZy1wb3MnKSxcbi8vICAgICAgICAgICAgICAgICBzaXplID0gZWwuZ2V0QXR0cmlidXRlKCdiZy1zaXplJylcbi8vICAgICAgICAgICAgIGlmIChwb3MgIT0gbnVsbCkge1xuLy8gICAgICAgICAgICAgICAgIGVsLnN0eWxlLmJhY2tncm91bmRQb3NpdGlvbiA9IHBvcztcbi8vICAgICAgICAgICAgIH0gZWxzZSB7XG4vLyAgICAgICAgICAgICAgICAgZWwuc3R5bGUuYmFja2dyb3VuZFBvc2l0aW9uID0gJ2NlbnRlciBjZW50ZXInXG4vLyAgICAgICAgICAgICB9XG4vLyAgICAgICAgICAgICBpZiAoc2l6ZSAhPSBudWxsKSB7XG4vLyAgICAgICAgICAgICAgICAgZWwuc3R5bGUuYmFja2dyb3VuZFNpemUgPSBzaXplO1xuLy8gICAgICAgICAgICAgfSBlbHNlIHtcbi8vICAgICAgICAgICAgICAgICBlbC5zdHlsZS5iYWNrZ3JvdW5kU2l6ZSA9ICdjb3Zlcidcbi8vICAgICAgICAgICAgIH1cbi8vICAgICAgICAgICAgIGVsLnN0eWxlLmJhY2tncm91bmRJbWFnZSA9ICd1cmwoJyArIGJnaW1nICsgJyknXG4vLyAgICAgICAgIH1cbi8vICAgICB9LFxuLy8gICAgIGJhY2tUb1RvcDogKCkgPT4ge1xuLy8gICAgICAgICBhcHAuc2VsZWN0KCcjYmFja1RvVG9wJykuYWRkRXZlbnRMaXN0ZW5lcignY2xpY2snLCBmdW5jdGlvbigpIHtcbi8vICAgICAgICAgICAgIHdpbmRvdy5zY3JvbGxUbyh7XG4vLyAgICAgICAgICAgICAgICAgYmVoYXZpb3I6ICdzbW9vdGgnLFxuLy8gICAgICAgICAgICAgICAgIGxlZnQ6IDAsXG4vLyAgICAgICAgICAgICAgICAgdG9wOiAwXG4vLyAgICAgICAgICAgICB9KTtcbi8vICAgICAgICAgfSlcbi8vICAgICB9LFxuLy8gICAgIGZpeGVkTWFpbjogKCkgPT4ge1xuLy8gICAgICAgICBsZXQgaGVhZGVySGVpZ2h0ID0gYXBwLnNlbGVjdCgnaGVhZGVyJykub2Zmc2V0SGVpZ2h0XG4vLyAgICAgICAgIGFwcC5zZWxlY3QoJ21haW4nKS5zdHlsZS5wYWRkaW5nVG9wID0gaGVhZGVySGVpZ2h0ICsgJ3B4J1xuLy8gICAgIH0sXG4vLyAgICAgYW9zOiAoKSA9PiB7XG4vLyAgICAgICAgIEFPUy5pbml0KHtcbi8vICAgICAgICAgICAgIGR1cmF0aW9uOiAxMjAwLFxuLy8gICAgICAgICAgICAgb25jZTogdHJ1ZSxcbi8vICAgICAgICAgICAgIGRpc2FibGU6ICdwaG9uZSdcblxuLy8gICAgICAgICB9KTtcbi8vICAgICB9LFxuLy8gICAgIGllOiAoKSA9PiB7XG4vLyAgICAgICAgIHZhciB1YSA9IHdpbmRvdy5uYXZpZ2F0b3IudXNlckFnZW50O1xuLy8gICAgICAgICB2YXIgbXNpZSA9IHVhLmluZGV4T2YoXCJNU0lFIFwiKTtcbi8vICAgICAgICAgaWYgKG1zaWUgPiAwIHx8ICEhbmF2aWdhdG9yLnVzZXJBZ2VudC5tYXRjaCgvVHJpZGVudC4qcnZcXDoxMVxcLi8pKSB7XG4vLyAgICAgICAgICAgICBhcHAuYWRkQ2xhc3MoYXBwLnNlbGVjdCgnaHRtbCcpLCAnaWUtYnJvd3NlcicpXG4vLyAgICAgICAgIH1cbi8vICAgICB9XG4vLyB9XG4vLyBhcHAucmVhZHkoZnVuY3Rpb24oKSB7XG4vLyAgICAgYXBwLmJnSW1nKClcbi8vICAgICBhcHAuYmFja1RvVG9wKClcbi8vICAgICBhcHAuZml4ZWRNYWluKClcbi8vICAgICBhcHAuYW9zKClcbi8vICAgICBhcHAuaWUoKVxuLy8gfSkiLCJmdW5jdGlvbiBtb2JpbGVXcmFwSGlkZVNob3coKXtcblx0JCgnaGVhZGVyIC5tZW51LW1vYmxpZS1oZWFkZXIgLmNvbnRlbnQtaGVhZGVyIC5idXR0b24tbW9ibGllJykub24oJ2NsaWNrJyxmdW5jdGlvbigpe1xuXHRcdCQoJ2hlYWRlciAubWVudS1oaWRkZW4tbW9iaScpLmFkZENsYXNzKCdhY3RpdmUnKVxuXHRcdCQoJ2hlYWRlciAuYmFja2Ryb3AnKS5hZGRDbGFzcygnYWN0aXZlJylcblx0fSlcblx0JCgnaGVhZGVyIC5iYWNrZHJvcCcpLm9uKCdjbGljaycsZnVuY3Rpb24oKXtcblx0XHQkKCdoZWFkZXIgLm1lbnUtaGlkZGVuLW1vYmknKS5yZW1vdmVDbGFzcygnYWN0aXZlJylcblx0XHQkKCdoZWFkZXIgLmJhY2tkcm9wJykucmVtb3ZlQ2xhc3MoJ2FjdGl2ZScpXG5cdH0pXG59O1xuZnVuY3Rpb24gZHJvcGRvd25tb2JsaWUoKXtcblx0JCgnaGVhZGVyIC5tZW51LWhpZGRlbi1tb2JpIC5tZW51LW1vYmxpZS1iaWcgLmxpbmstbGlzdC1tb2JpIC5jdC1tb2JpIC5tZW51IC5mYS1wbHVzJykub24oJ2NsaWNrJyxmdW5jdGlvbigpe1xuXHRcdCQoJ2hlYWRlciAubWVudS1oaWRkZW4tMicpLmFkZENsYXNzKCdhY3RpdmUnKVxuXHRcdCQoJ2hlYWRlciAubWVudS1oaWRkZW4tbW9iaSAubWVudS1tb2JsaWUtYmlnIC5saW5rLWxpc3QtbW9iaSAuY3QtbW9iaSAubWVudSAuZmEtcGx1cycpLmFkZENsYXNzKCdhY3RpdmUnKVxuXHRcdFxuXHR9KVxuXHQkKCdoZWFkZXIgLm1lbnUtaGlkZGVuLW1vYmkgLm1lbnUtbW9ibGllLWJpZyAubGluay1saXN0LW1vYmkgLmN0LW1vYmkgLm1lbnUgLmZhLW1pbnVzJykub24oJ2NsaWNrJyxmdW5jdGlvbigpe1xuXHRcdCQoJ2hlYWRlciAubWVudS1oaWRkZW4tMicpLnJlbW92ZUNsYXNzKCdhY3RpdmUnKVxuXHRcdCQoJ2hlYWRlciAuZmEtcGx1cycpLnJlbW92ZUNsYXNzKCdhY3RpdmUnKVxuXHR9KVxufTtcbmZ1bmN0aW9uIGRyb3Bkb3dubW9ibGllMigpe1xuXHQkKCdoZWFkZXIgLm1lbnUtaGlkZGVuLW1vYmkgLm1lbnUtbW9ibGllLWJpZyAubGluay1saXN0LW1vYmkgLmN0LW1vYmkgLm1lbnUgLm1lbnUtaGlkZGVuLTIgLm1lbnUtbS0yIC5mYS1taW51cycpLm9uKCdjbGljaycsZnVuY3Rpb24oKXtcblx0XHQkKCdoZWFkZXIgLm1lbnUtaGlkZGVuLTMnKS5hZGRDbGFzcygnYWN0aXZlJylcblx0XHQvLyAkKCdoZWFkZXIgLm1lbnUtaGlkZGVuLW1vYmkgLm1lbnUtbW9ibGllLWJpZyAubGluay1saXN0LW1vYmkgLmN0LW1vYmkgLm1lbnUgLmZhLXBsdXMnKS5hZGRDbGFzcygnYWN0aXZlJylcblx0XHRcblx0fSlcblx0Ly8gJCgnaGVhZGVyIC5tZW51LWhpZGRlbi1tb2JpIC5tZW51LW1vYmxpZS1iaWcgLmxpbmstbGlzdC1tb2JpIC5jdC1tb2JpIC5tZW51IC5mYS1taW51cycpLm9uKCdjbGljaycsZnVuY3Rpb24oKXtcblx0Ly8gXHQkKCdoZWFkZXIgLm1lbnUtaGlkZGVuLTInKS5yZW1vdmVDbGFzcygnYWN0aXZlJylcblx0Ly8gXHQkKCdoZWFkZXIgLmZhLXBsdXMnKS5yZW1vdmVDbGFzcygnYWN0aXZlJylcblx0Ly8gfSlcbn07XG4kKGRvY3VtZW50KS5yZWFkeShmdW5jdGlvbigpe1xuXHRcblx0bW9iaWxlV3JhcEhpZGVTaG93KClcblx0ZHJvcGRvd25tb2JsaWUoKVxufSlcbiIsIlxuXG4vLyB2YXIgc3dpcGVyID0gbmV3IFN3aXBlcignLnN3aXBlci1jb250YWluZXInLCB7XG4vLyAgICAgZWZmZWN0OiAnY292ZXJmbG93Jyxcbi8vICAgICBncmFiQ3Vyc29yOiB0cnVlLFxuLy8gICAgIGNlbnRlcmVkU2xpZGVzOiB0cnVlLFxuLy8gICAgIHNsaWRlc1BlclZpZXc6ICdhdXRvJyxcbi8vICAgICBjb3ZlcmZsb3dFZmZlY3Q6IHtcbi8vICAgICAgIHJvdGF0ZTogNTAsXG4vLyAgICAgICBzdHJldGNoOiAwLFxuLy8gICAgICAgZGVwdGg6IDEwMCxcbi8vICAgICAgIG1vZGlmaWVyOiAxLFxuLy8gICAgICAgc2xpZGVTaGFkb3dzIDogdHJ1ZSxcbi8vICAgICB9LFxuLy8gICAgIHBhZ2luYXRpb246IHtcbi8vICAgICAgIGVsOiAnLnN3aXBlci1wYWdpbmF0aW9uJyxcbi8vICAgICB9LFxuLy8gICB9KTtcbi8vIHZhciBzd2lwZXIgPSBuZXcgU3dpcGVyKCcuc3dpcGVyLWNvbnRhaW5lcicsIHtcbi8vICAgbmF2aWdhdGlvbjoge1xuLy8gICAgIG5leHRFbDogJy5zd2lwZXItYnV0dG9uLW5leHQnLFxuLy8gICAgIHByZXZFbDogJy5zd2lwZXItYnV0dG9uLXByZXYnLFxuLy8gICB9LFxuLy8gfSk7XG4iLCIkKCcub3dsLWNhcm91c2VsJykub3dsQ2Fyb3VzZWwoe1xuICAgIGxvb3A6dHJ1ZSxcbiAgICBtYXJnaW46MCxcbiAgICBuYXY6ZmFsc2UsXG4gICAgcmVzcG9uc2l2ZTp7XG4gICAgICAgIDA6e1xuICAgICAgICAgICAgaXRlbXM6MVxuICAgICAgICB9LFxuICAgICAgICA2MDA6e1xuICAgICAgICAgICAgaXRlbXM6MVxuICAgICAgICB9LFxuICAgICAgICAxMDAwOntcbiAgICAgICAgICAgIGl0ZW1zOjFcbiAgICAgICAgfVxuICAgIH1cbn0pXG4iLCJmdW5jdGlvbiBob21lVGFiKCkge1xyXG4gICAgJCgnLmhvbWUtMiAuc2hvd2VkJykub24oJ2NsaWNrJywgZnVuY3Rpb24oKSB7XHJcbiAgICAgICAgJCh0aGlzKS5zaWJsaW5ncygnLm1haW4tbmF2JykudG9nZ2xlQ2xhc3MoJ2FjdGl2ZScpXHJcbiAgICB9KVxyXG4gICAgJCgnLmhvbWUtMiAubWFpbi1uYXYgLml0ZW0nKS5vbignY2xpY2snLCBmdW5jdGlvbigpIHtcclxuICAgICAgICBsZXQgYWN0aXZlID0gJCh0aGlzKS5hdHRyKCdkYXRhLXRhYicpXHJcbiAgICAgICAgJCgnLmhvbWUtMiAuc2hvd2VkJykudGV4dCgkKHRoaXMpLnRleHQoKSlcclxuICAgICAgICAkKHRoaXMpLnBhcmVudCgpLnJlbW92ZUNsYXNzKCdhY3RpdmUnKVxyXG4gICAgICAgICQoJy5ob21lLTIgLm1haW4tbmF2IC5pdGVtJykucmVtb3ZlQ2xhc3MoJ2FjdGl2ZScpXHJcbiAgICAgICAgJCh0aGlzKS5hZGRDbGFzcygnYWN0aXZlJylcclxuICAgICAgICAkKCcuaG9tZS0yIC5tYWluLWNvbnRlbnQgLmNvbnRlbnQtaXRlbScpLnJlbW92ZUNsYXNzKCdhY3RpdmUnKVxyXG4gICAgICAgICQoJy5ob21lLTIgLm1haW4tY29udGVudCAuY29udGVudC1pdGVtW2RhdGEtY29udGVudD0nICsgYWN0aXZlICsgJ10nKS5hZGRDbGFzcygnYWN0aXZlJylcclxuICAgIH0pXHJcbn1cclxuJChkb2N1bWVudCkucmVhZHkoZnVuY3Rpb24oKSB7XHJcbiAgICBob21lVGFiKClcclxufSkiLCJmdW5jdGlvbiBwcm9kdWN0U2xpZGUoKSB7XG5cdCQoJ1tkYXRhLXNsaWRlXScpLmVhY2goZnVuY3Rpb24oKXtcblx0XHRyZXR1cm4gbmV3IFN3aXBlcigkKHRoaXMpLmZpbmQoJy5zd2lwZXItY29udGFpbmVyJyksIHtcblx0XHRcdHNsaWRlc1BlclZpZXc6IDUsXG5cdFx0XHRzcGFjZUJldHdlZW46IDMwLFxuXHRcdFx0YXV0b3BsYXk6IHtcblx0XHRcdFx0ZGVsYXk6IDQwMDBcblx0XHRcdH0sXG5cdFx0XHRuYXZpZ2F0aW9uOiB7XG5cdFxuXHRcdFx0XHRuZXh0RWw6ICQodGhpcykuZmluZCgnLnN3aXBlci1uZXh0JyksXG5cdFx0XHRcdHByZXZFbDogJCh0aGlzKS5maW5kKCcuc3dpcGVyLXByZXYnKSxcblx0XHRcdH0sXG5cdFx0XHRzcGVlZDogMTAwMCxcblx0XHRcdG9ic2VydmVyOiB0cnVlLFxuXHRcdFx0b2JzZXJ2ZVBhcmVudHM6IHRydWUsXG5cdFx0XHRicmVha3BvaW50czoge1xuXHRcdFx0XHQ5OTI6IHtcblx0XHRcdFx0XHRzbGlkZXNQZXJWaWV3OiAzXG5cdFx0XHRcdH0sXG5cdFx0XHRcdDc2ODoge1xuXHRcdFx0XHRcdHNsaWRlc1BlclZpZXc6IDJcblx0XHRcdFx0fSxcblx0XHRcdFx0NTc2OiB7XG5cdFx0XHRcdFx0c2xpZGVzUGVyVmlldzogMVxuXHRcdFx0XHR9XG5cdFx0XHR9XG5cdFx0fSlcblx0fSlcbiAgIFxufVxuJChkb2N1bWVudCkucmVhZHkoZnVuY3Rpb24oKSB7XG4gICAgcHJvZHVjdFNsaWRlKClcbn0pXG4iLCJmdW5jdGlvbiBuZXdzU2xpZGUoKSB7XHJcbiAgICByZXR1cm4gbmV3IFN3aXBlcignLmhvbWUtNCAuc3dpcGVyLWNvbnRhaW5lcicsIHtcclxuICAgICAgICBzbGlkZXNQZXJWaWV3OiAzLFxyXG4gICAgICAgIHNwYWNlQmV0d2VlbjogMzAsXHJcbiAgICAgICAgYXV0b3BsYXk6IHtcclxuICAgICAgICAgICAgZGVsYXk6IDQwMDBcclxuICAgICAgICB9LFxyXG4gICAgICAgIC8vIG5hdmlnYXRpb246IHtcclxuXHJcbiAgICAgICAgLy8gICAgIG5leHRFbDogJy5ob21lLTMgLnN3aXBlci1uZXh0JyxcclxuICAgICAgICAvLyAgICAgcHJldkVsOiAnLmhvbWUtMyAuc3dpcGVyLXByZXYnLFxyXG4gICAgICAgIC8vIH0sXHJcbiAgICAgICAgc3BlZWQ6IDEwMDAsXHJcbiAgICAgICAgb2JzZXJ2ZXI6IHRydWUsXHJcbiAgICAgICAgb2JzZXJ2ZVBhcmVudHM6IHRydWUsXHJcbiAgICAgICAgYnJlYWtwb2ludHM6IHtcclxuICAgICAgICAgICAgNzY4OiB7XHJcbiAgICAgICAgICAgICAgICBzbGlkZXNQZXJWaWV3OiAyXHJcbiAgICAgICAgICAgIH0sXHJcbiAgICAgICAgICAgIDU3Njoge1xyXG4gICAgICAgICAgICAgICAgc2xpZGVzUGVyVmlldzogMVxyXG4gICAgICAgICAgICB9XHJcbiAgICAgICAgfVxyXG4gICAgfSlcclxufVxyXG4kKGRvY3VtZW50KS5yZWFkeShmdW5jdGlvbigpIHtcclxuICAgIG5ld3NTbGlkZSgpXHJcbn0pIiwiJChmdW5jdGlvbigpIHtcbiAgICBpZiAoJCgnLmNhcm91c2VsLXByb2R1Y3QgLm93bC1jYXJvdXNlbCcpLmxlbmd0aCkge1xuICAgICAgICAkKCcuY2Fyb3VzZWwtcHJvZHVjdCAub3dsLWNhcm91c2VsJykub3dsQ2Fyb3VzZWwoe1xuICAgICAgICAgICAgYW5pbWF0ZUluOiAnZmFkZUluJyxcbiAgICAgICAgICAgIGFuaW1hdGVPdXQ6ICdmYWRlT3V0JyxcbiAgICAgICAgICAgIGl0ZW1zOiAxLFxuICAgICAgICAgICAgbG9vcDogZmFsc2UsXG4gICAgICAgICAgICBjZW50ZXI6IGZhbHNlLFxuICAgICAgICAgICAgcGFkZGluZzogMTAsXG4gICAgICAgICAgICBtYXJnaW46IDIwLFxuICAgICAgICAgICAgbmF2VGV4dDogWyc8aSBjbGFzcz1cImZhIGZhLWNoZXZyb24tbGVmdFwiPjwvaT4nLCAnPGkgY2xhc3M9XCJmYSBmYS1jaGV2cm9uLXJpZ2h0XCI+PC9pPiddLFxuICAgICAgICAgICAgbmF2OiB0cnVlLFxuICAgICAgICAgICAgZG90czogdHJ1ZSxcbiAgICAgICAgICAgIGF1dG9wbGF5OiBmYWxzZSxcbiAgICAgICAgICAgIGF1dG9wbGF5VGltZW91dDogNTAwMCxcblx0XHRcdGF1dG9wbGF5SG92ZXJQYXVzZTogdHJ1ZSxcbiAgICAgICAgICAgIGNhbGxiYWNrczogdHJ1ZSxcbiAgICAgICAgICAgIHJlc3BvbnNpdmU6IHtcbiAgICAgICAgICAgICAgICA0ODA6IHtcbiAgICAgICAgICAgICAgICAgICAgaXRlbXM6IDJcbiAgICAgICAgICAgICAgICB9LFxuICAgICAgICAgICAgICAgIDc2ODoge1xuICAgICAgICAgICAgICAgICAgICBpdGVtczogMyxcblx0XHRcdFx0XHRuYXY6IHRydWUsXG5cdFx0XHRcdFx0ZG90czogZmFsc2VcbiAgICAgICAgICAgICAgICB9LFxuICAgICAgICAgICAgICAgIDk5Mjoge1xuICAgICAgICAgICAgICAgICAgICBpdGVtczogNFxuICAgICAgICAgICAgICAgIH1cbiAgICAgICAgICAgIH1cbiAgICAgICAgfSk7XG4gICAgfVxuXG59KTtcblxuXG4vLy90b29sdGlwXG4kKGRvY3VtZW50KS5yZWFkeShmdW5jdGlvbigpe1xuICAgICQoJ1tkYXRhLXRvZ2dsZT1cInRvb2x0aXBcIl0nKS50b29sdGlwKCk7IFxuICB9KTtcbiJdfQ==
