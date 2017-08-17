$(document).ready(function() {
  $('.slick').slick();

  var height = $('.cta-block').position().top + 3;            
  $(window).scroll(function() {
    var windowpos = $(window).scrollTop();
    if (windowpos >= height) {
      $('.custom-nav').addClass("pop");
    } else {
      $('.custom-nav').removeClass("pop"); 
    }
  });
});
