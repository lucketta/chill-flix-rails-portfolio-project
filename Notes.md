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



<br>
<h3> Your Favorite Shows: </h3>
  <% @programs.each do |program| %>
    <% show = Show.find(program.show_id) %>
    <%= link_to show.name, show_path(show), class: "js-show" if program.nickname.nil? %>
    <%= link_to program.nickname, show_path(show), class: "js-show" if !program.nickname.nil? %>
  <br>
  <% end %>
