$(document).ready(function() {
  $(".pass").on("click", function(event) {
    event.preventDefault();
    var url = $(this).parent().attr("action");
    $(this).css("background-color", "yellow");

    function setBackground() {
      $(event.target).css("background-color", "white");
    }

    $.post({ url })
      .done(function(response) {
        setTimeout(setBackground, 500);
      })
  })
})
