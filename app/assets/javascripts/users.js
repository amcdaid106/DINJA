// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.




// console.log("this is a test");

// var test = $('.food-preferences').text();
// console.log(test);




$(document).ready(function() {
  $('.edit-user-tabs').click(function() {
    // remove active class from all items having this class
    $('.edit-user-tabs').removeClass('active');
    // add active class on $(this)
    $(this).addClass('active');
    $('.tab-content').addClass("hidden");
    target = $(this).data('target');
    $('#' + target).removeClass("hidden");
    $(".tooltip").hide();
    // var id = this.id;
    // $('.tab-content').addClass('hidden');
    // $(.id).removeClass('hidden');
  });

  $('.tooltip-link').tooltip();
})

