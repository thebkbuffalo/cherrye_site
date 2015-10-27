$(document).ready(function(){
  $(function() {
    $('.edit').froalaEditor();
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

  $('.individual_image').on('click', function(){
    console.log($(this));
    $('#overlay, #overlay-back').fadeIn(350);
    
  });

});
