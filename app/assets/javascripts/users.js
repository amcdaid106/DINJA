$(function() {
  $('.edit-user-tabs').click(function() {
    $('.edit-user-tabs').removeClass('active');
    $(this).addClass('active');
    $('.user-profile-tab-content').addClass('hidden');
    target = $(this).data('target');
    $('#' + target).removeClass('hidden');
    $(".tooltip").hide();
  });

  $('.tooltip-link').tooltip();
})

