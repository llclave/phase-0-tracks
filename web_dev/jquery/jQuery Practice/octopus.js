$(document).ready(function(){
  $("img").mouseenter(function(){
    $(this).animate({
      height: '+=5px',
      width: '+=5px'
    });
  });
  $('img').mouseleave(function() {
    $(this).animate({
      height: '-=5px',
      width: '-=5px'
    }); 
  });
  $('#hat').click(function(){
    $(this).animate({
      height: '+=25px',
      width: '+=25px'
    })
  })
  $('#glasses').click(function(){
    $('#glasses').hide();
  });
  $('#octopus').click(function(){
    $("body").css("background-color", "blue");
  })
});