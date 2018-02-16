$(document).ready(function() {
  $(".zero-hit").on("submit", function(event) {
    event.preventDefault();
    $(this).css("background-color", "blue");
  })
})
