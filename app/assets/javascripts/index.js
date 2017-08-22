$(function() {
  $("a.js-all-shows").on("click", function(e) {
    $.getJSON(this.href).success(function(json) {
      var $main = $(".main-page");
      $main.html("");
      var template = Handlebars.compile(document.getElementById("index-template").innerHTML);
      var result = template(json);
      $main.html(result);
    });
    e.preventDefault();
  });

});
