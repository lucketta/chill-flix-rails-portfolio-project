$(function() {
  $("a.js-show").on("click", function(e){
    $.getJSON(this.href).success(function(json) {
      var $main = $(".main-page");
      $main.html("");
      var template = Handlebars.compile(document.getElementById("show-template").innerHTML);
      var result = template(json);

      $main.html(result);
    });
    e.preventDefault();
  });
});

Handlebars.registerHelper('get_genres', function(genre) {
  var result = "";
  for (var i = 0; i < genre.length; i++) {
    result += genre[i].name + " | ";
  }
  return result;
});
