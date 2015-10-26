$(document).ready(function(){
  $(function() {
    $('.edit').froalaEditor();
  });

  $('#bgvid').on('ended', function(){
    window.location.assign('http://localhost:3000/blog');
  });




  $('.fa-bars').on('click', function(){
    $('#overlay, #overlay-back').fadeIn(500);
  });
  

});
