$(document).ready(function(){
  $(function() {
    $('.edit').froalaEditor();
  });

  $('#bgvid').on('ended', function(){
    window.location.assign('http://localhost:3000/blog');
  });


  if($('#overlay').css('display') == 'none'){
    console.log('black background display is none');
    $('.fa-bars').on('click', function(){
      console.log("clicked");
      $('#overlay, #overlay-back').fadeIn(500);
    });
  }else{
    console.log('no black background');
  }

});
