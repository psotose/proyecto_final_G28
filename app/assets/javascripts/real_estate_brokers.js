$(document).on("ready turbolinks:load", function() {
  $("[name=q]").on("keyup", function() {
    if ($(this).val().length > 2) {
      $.ajax({
        type: "get",
        url: "/",
        data: { q: $(this).val() },
        dataType: "script"
      });
    }
    if ($(this).val().length == 0) {
      $.ajax({
        type: "get",
        url: "/",
        dataType: "script"
      });
    }
  });
});
