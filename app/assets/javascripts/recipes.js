// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).ready(function() {
  $('.recipe-show-tab').click(function() {
    $('.recipe-show-tab').removeClass('active');
    $(this).addClass('active');
    $('.recipe-show-tab-content').addClass('hidden');
    target = $(this).data('target');
    $('#' + target).removeClass('hidden');
  })
})
