
// scroll fix bar

var num = 1;

$(window).bind('scroll', function () {
    if ($(window).scrollTop() > num) {
        $('#navBar').addClass('navBarDuzelt');
    } else {
        $('#navBar').removeClass('navBarDuzelt');
    }
});

// scroll yukarı buton showup-showdown

var num2 = 300;
const goTop = document.querySelector(".gotopbtn");
$(window).bind('scroll', function () {
    if ($(window).scrollTop() > num) {
        $('.yukaricik').addClass('yukaricikDuzelt');
    } else {
        $('.yukaricik').removeClass('yukaricikDuzelt');
    }
});

// dark-light theme

$(".fa-toggle-off").click(function () {
    $(".fa-toggle-off").css("display", "none");
    $(".fa-toggle-on").css("display", "inline");

    var imageUrl = "../images/bg.jpg";
    $("header").css("background-image", "url(" + imageUrl + ")");
    $(".yazi span").css("color", "#f4f4f4");
    $("header nav h1").css("text-shadow", "2px 2px #000");
    $("nav ul li a").css("text-shadow", "2px 2px #000");
    $("nav ul li a").css("font-weight", "300");

    var imageUrlabout = "../images/bg2.jpg";
    $("#hakkimizda").css("background-image", "url(" + imageUrlabout + ")");
    $(".hakkimizda-sag p").css("text-shadow", "2px 2px #000");

    var imageUrlContact = "../images/bg4.jpg";
    $("#iletisim").css("background-image", "url(" + imageUrlContact + ")");

    var imageUrlProject = "../images/d3.jpg";
    $("#projeler").css("background-image", "url(" + imageUrlProject + ")");
});

$(".fa-toggle-on").click(function () {
    $(".fa-toggle-off").css("display", "inline");
    $(".fa-toggle-on").css("display", "none");

    var imageUrl2 = "../images/bg.jpg";
    $("header").css("background", "linear-gradient(to bottom, rgba(0,0,0.5), rgba(0,0,0,.1)),url(" + imageUrl2 + ") center no-repeat");
    var imageUrlabout2 = "../images/bg2.jpg";
    $("#hakkimizda").css("background", "linear-gradient(to bottom, rgba(0,0,0.5), rgba(0,0,0,.1)),url(" + imageUrlabout2 + ") center no-repeat");
    var imageUrlcontact2 = "../images/bg4.jpg";
    $("#iletisim").css("background", "linear-gradient(to bottom, rgba(0,0,0.5), rgba(0,0,0,.1)),url(" + imageUrlcontact2 + ") center no-repeat");
    var imageUrlproject2 = "../images/d3.jpg";
    $("#projeler").css("background", "linear-gradient(to bottom, rgba(0,0,0.5), rgba(0,0,0,.1)),url(" + imageUrlproject2 + ") center no-repeat");
    $(".yazi span").css("color", "rgb(129, 33, 33)");
    $("header nav h1").css("text-shadow", "none");
    $("nav ul li a").css("text-shadow", "none");
    $("nav ul li a").css("font-size", "16px");
    $("nav ul li a").css("font-weight", "100");
});

