$(document).ready(function(){
  $(function() {
    $('.edit').froalaEditor()
  });

  $('#bgvid').on('ended', function(){
    console.log("video ended");
    window.location.assign('http://localhost:3000/blog');
  });
});
