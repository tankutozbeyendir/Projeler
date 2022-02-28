$(window).on("load",function(){
     $(".loader-wrapper").delay(1000).fadeOut("slow");

});

setTimeout(function() {
     $("body").css("overflow", "visible");
}, 1000); 


$(document).ready(function () {
        if ($(window).scrollTop() > 100) {
            $(".gotopbtn").fadeIn();
        }
        else {
            $(".gotopbtn").fadeOut();
        }   

        $(".gotopbtn").click(function () {
                $("html, body").animate({
                    scrollTop: 0
                }, 400);
                return false;
            });

  
});

