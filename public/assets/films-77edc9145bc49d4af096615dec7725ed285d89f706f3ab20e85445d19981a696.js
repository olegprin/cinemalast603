(function() {
  $(document).ready(function() {
    return $(".btn-info").click(function() {
      return $("#comment_hide").toggle("slow");
    });
  });

  $(document).ready(function() {
    var text_counter;
    text_counter = function(input_text, target) {
      var max;
      max = 400;
      return $(input_text).keydown(function() {
        var current, text;
        text = $(input_text).val();
        current = text.length;
        return $(target).text(current + "/" + max);
      });
    };
    text_counter('#description', '#description_counter');
  });

  $.ajax(function() {
    return {
      dataType: "json",
      success: data(function() {}),
      error: xhr(function() {
        var errors;
        errors = $.parseJSON(xhr.responseText).errors;
      })
    };
  });

}).call(this);
