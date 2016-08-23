// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.




// console.log("this is a test");

// var test = $('.food-preferences').text();
// console.log(test);




$(document).ready(function() {
  $('.edit-user-tabs').click(function() {
    $('.edit-user-tabs').removeClass('active');
    $(this).addClass('active');
    $('.tab-content').addClass('hidden');
    target = $(this).data('target');
    $('#' + target).removeClass('hidden');
    $(".tooltip").hide();
  });

  $('.tooltip-link').tooltip();
})

