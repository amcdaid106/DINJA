$(document).ready(function() {
  $('#current-address').on('click', '#edit-address-button', function() {
    $('#current-address').addClass('hidden');
    $('#edit-address-form').removeClass('hidden');
  });
})
