$(window).on("load",function(){
     $(".loader-wrapper").delay(1000).fadeOut("slow");

});

setTimeout(function() {
     $("body").css("overflow", "visible");
}, 1000); 


$(window).bind('mousewheel', function(event) {
if (event.originalEvent.wheelDelta >= 0) {
	  $(".gotopbtn").css("display", "none");

}
else {
      $(".gotopbtn").css("display", "inline");
}
});

$( "#gotopbtnclickevent" ).click(function() {
      $(".gotopbtn").css("display", "none");
});