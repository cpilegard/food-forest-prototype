$('body').on('submit', '#contribute_form', function(e) {
  e.preventDefault();
  $('#contribute_modal').foundation('reveal', 'close');
});

