$(function() {
  $("form.new_review").submit(function(e) {
    data = {
      'authenticity_token': $("input[name='authenticity_token']").val(),
      'review': {
        'content': $('#review_content').val(),
        'show_id': $('#review_show_id').val(),
      }
    }
    $.ajax({
      type: "post",
      url: this.action,
      data: data,
      success: function(response) {
        $ul = $("div.more_reviews");
        $ul.append("<li>" + response.content + "</li>");
        $('#review_content').val("");
      }
    });
    e.preventDefault();
  });
});
