var farmEventListener = {
  greenToggle: function() {
    $('.unfulfilled').on('click', function(e) {
      $(this).removeClass('unfulfilled');
      $(this).append("<div class='avatar'><img class='image' src='http://www.gravatar.com/avatar/b64488fa3db5b2d472e1bc7e23325a30?s=40'></div>");
    });
  }
}

