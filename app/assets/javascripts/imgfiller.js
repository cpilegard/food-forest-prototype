$(document).ready(function() {
  $(".imgLiquidFill").imgLiquid();

  var original_message = "<span id='original-message'>Hover over a Forest to see what resources are needed.</span>"

  $(".forest-needs").append(original_message);


  var brocolli_message = "<span id='hover-message'>The OG Brocolli Forest has 14 members and has 3 resource needs.</span>"
  var cole_message = "<span id='hover-message'>The Cole Valley Forest has 3 members and has 11 resource needs.</span>"  
  var richmond_message = "<span id='hover-message'>The Richmond's First Forest has 15 members and has 2 resource needs.</span>"  
  var hipster_message = "<span id='hover-message'>The Ye Ol' Hipster Forest has 8 members and has 5 resource needs.</span>"  
  var park_message = "<span id='hover-message'>The Forest of the Park has 6 members and has 13 resource needs.</span>"  
  var noe_message = "<span id='hover-message'>The Noe Forest Around Here has 10 members and has 7 resource needs.</span>"  
  var bernal_message = "<span id='hover-message'>The Such Great Heights Forest has 20 members and has 0 resource needs.</span>"  
  var castro_message = "<span id='hover-message'>The Castro Forest has 3 members and has 10 resource needs.</span>"  



  BindMessage("#brocolli", brocolli_message);
  BindMessage("#cole", cole_message);
  BindMessage("#richmond", richmond_message);
  BindMessage("#hipster", hipster_message);
  BindMessage("#park", park_message);
  BindMessage("#noe", noe_message);
  BindMessage("#bernal", bernal_message);
  BindMessage("#castro", castro_message);


  function BindMessage(target_box, message) {
    $(target_box)
  .mouseenter(function(e) {
    e.preventDefault();
    $("span").remove("#original-message");
    $(".forest-needs").append(message);
  })
  .mouseleave(function(e) {
    e.preventDefault();
    $("span").remove("#hover-message");
    $(".forest-needs").append(original_message);
  });
  }
});