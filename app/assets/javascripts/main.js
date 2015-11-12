$(document).ready(function(){
  $('.ckeditor').ckeditor({

  });

  $('#bgvid').on('ended', function(){
    window.location.assign('http://localhost:3000/blog');
  });

  $('.fa-bars').on('click', function(){
    $('#overlay, #overlay-back, .playwright_link').fadeIn(500);
  });

  $('#overlay, #overlay-back').on('click', function(){
    $('#overlay, #overlay-back, .playwright_link').fadeOut(500);
  });

  var urlPath = window.location.pathname;
  if(urlPath === '/'){
    console.log(urlPath);
    $('.nav_bar').hide();
    $('.nav_bar').delay(8000).show(500);
  }

  $('.happening_now_menu').on('click', function(){
    $('#pw_now').removeClass('pw_inactive');
    $('#pw_later').addClass('pw_inactive');
  });

  $('.happening_later_menu').on('click', function(){
    $('#pw_later').removeClass('pw_inactive');
    $('#pw_now').addClass('pw_inactive');
  });

});
