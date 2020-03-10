$("[name=q]").on("keyup", function() {

    if ($(this).val().length > 2) {
      $.ajax({
        type: "get",
        url: "/real_estate_brokers",
        data: { q: $(this).val() },
        dataType: "script"
      });
    }
    if ($(this).val().length == 0) {
      $.ajax({
        type: "get",
        url: "/real_estate_brokers",
        dataType: "script"
      });
    }
});