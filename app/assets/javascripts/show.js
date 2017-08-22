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

Handlebars.registerHelper('get_genres', function(show) {
  var result = "";
  for (var i = 0; i < show.length; i++) {
    result += show[i].name + " | "
  }
  return result
});
