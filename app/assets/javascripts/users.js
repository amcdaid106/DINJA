// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.




// console.log("this is a test");

// var test = $('.food-preferences').text();
// console.log(test);


$('.edit-user-tabs').click(function() {
  // remove active class from all items having this class
  $('.edit-user-tabs').removeClass('active');
  // add active class on $(this)
  $(this).addClass('active');
});
