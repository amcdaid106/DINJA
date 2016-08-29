$(function() {
  // TABS
  $('.edit-user-tabs').click(function() {
    $('.edit-user-tabs').removeClass('active');
    $(this).addClass('active');
    $('.user-profile-tab-content').addClass('hidden');
    target = $(this).data('target');
    $('#' + target).removeClass('hidden');
    $(".tooltip").hide();
  });

  // TOOLTIP
  $('.tooltip-link').tooltip();


  // BANISHED INGREDIENTS AUTOCOMPLETE
  var ingredients = new Bloodhound({
    datumTokenizer: Bloodhound.tokenizers.obj.whitespace('value'),
    queryTokenizer: Bloodhound.tokenizers.whitespace,
    prefetch: '/ingredients.json',
    remote: {
      url: '/ingredients.json?query=%QUERY',
      wildcard: '%QUERY'
    }
  });
  ingredients.initialize();

  $('#banished_ingredients_autocomplete').typeahead(null, {
    name: 'name',
    display: 'value',
    source: ingredients,
    templates: {
      suggestion: function(data){
        return '<p><strong>' + data.name + '</strong></p>';
      }
    }
  });

  $('#banished_ingredients_autocomplete').bind('typeahead:select', function(ev, suggestion) {
    var element = "<li>";
    element = element + suggestion.name;
    element = element + '<input type="hidden" name="banned_ingredients[]" value="' + suggestion.id +'" />';
    element = element + "</li>";

    $("#banished_ingredients_list").append(element);
  });
});
