$('document').ready(function(){
  $(".product-description").hide();
  $(".product-name").click(function() {
    $(this).parent().find(".product-description").toggle();
  });
});