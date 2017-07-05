$(document).ready(function() {
  $('.slick').slick();

  var height = $('.cta-block').position().top + 3;            
  $(window).scroll(function() {
    var windowpos = $(window).scrollTop();
    if (windowpos >= height) {
      $('.nav').addClass("pop");
    } else {
      $('.nav').removeClass("pop"); 
    }
  });
});
