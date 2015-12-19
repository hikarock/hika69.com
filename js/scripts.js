$(function() {
  FastClick.attach(document.body);
  $('.hover').on('touchstart touchend', function(evt) {
    evt.preventDefault();
    $(this).toggleClass('hover-effect');
  });
});
