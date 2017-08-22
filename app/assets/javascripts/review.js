function Review(attributes) {
  this.content = attributes.content
  this.id = attributes.id
  this.username = attributes.username
}

Review.prototype.renderLI = function () {
  return "<li>" + this.content + "<br> - " + this.username + "</li>"
};

$(function() {
  $("form#new_review").submit(function(e) {
    e.preventDefault();

    var $form = $(this);
    var action = $form.attr('action');
    var params = $form.serialize();
    $.ajax({
      url: action,
      data: params,
      dataType: "json",
      method: "POST"
    })
    .success(function(json){
      var review = new Review(json)
      var reviewLi = review.renderLI()

      $("div.more_reviews").append(reviewLi)
    })
  });
});
