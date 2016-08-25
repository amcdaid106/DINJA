// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).ready(function() {
  $('.tabs').click(function() {
    $('.tabs').removeClass('active');
    $(this).addClass('active');
    $('.tab-content').addClass('hidden');
    target = $(this).data('target');
    $('#' + target).removeClass('hidden');
  })
})
