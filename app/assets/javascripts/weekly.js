 $(function() {
  var count = 0;

  $('.recipe-select').click(function() {
    count++;
    $(this).prev().removeClass('hidden').text(count + " added");
  });
});
