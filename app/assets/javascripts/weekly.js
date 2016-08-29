 $(function() {

  $("#link-how-it-works").click(function() {
      $('html, body').animate({
          scrollTop: $("#how-it-works").offset().top
      }, 1000);
  });

  $("#link-to-starters").click(function() {
      $('html, body').animate({
          scrollTop: $("#starters").offset().top
      }, 1000);
  });
});
