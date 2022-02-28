$(".fa-toggle-off").click(function(){
  $(".fa-toggle-off").css("display", "none");
  $(".fa-toggle-on").css("display", "inline");

  var imageUrl = "../images/bg.jpg";
  $("header").css("background-image", "url(" + imageUrl + ")");
  $(".text span").css("color", "#f4f4f4");
  $("header nav h1").css("text-shadow", "2px 2px #000");
  $(".type").css("text-shadow", "2px 2px #000");
  $("nav ul li a").css("text-shadow", "2px 2px #000");
  $("nav ul li a").css("font-weight", "300");

  var imageUrlabout = "../images/bg2.jpg";
  $("#about").css("background-image", "url(" + imageUrlabout + ")");
  $(".about-right p").css("text-shadow", "2px 2px #000");

  var imageUrlexperience = "../images/bg3.jpg";
  $("#experience").css("background-image", "url(" + imageUrlexperience + ")");

  var imageUrlContact = "../images/bg4.jpg";
  $("#contact").css("background-image", "url(" + imageUrlContact + ")");

  var imageUrlProject = "../images/d3.jpg";
  $("#projects").css("background-image", "url(" + imageUrlProject + ")");


});

$(".fa-toggle-on").click(function(){
  $(".fa-toggle-off").css("display", "inline");
  $(".fa-toggle-on").css("display", "none");

  var imageUrl2 = "../images/bg.jpg";
  $("header").css("background", "linear-gradient(to bottom, rgba(0,0,0.5), rgba(0,0,0,.1)),url(" + imageUrl2 + ") center no-repeat");
  var imageUrlabout2 = "../images/bg2.jpg";
  $("#about").css("background", "linear-gradient(to bottom, rgba(0,0,0.5), rgba(0,0,0,.1)),url(" + imageUrlabout2 + ") center no-repeat");
  var imageUrlexperience2 = "../images/bg3.jpg";
  $("#experience").css("background", "linear-gradient(to bottom, rgba(0,0,0.5), rgba(0,0,0,.1)),url(" + imageUrlexperience2 + ") center no-repeat");
  var imageUrlcontact2 = "../images/bg4.jpg";
  $("#contact").css("background", "linear-gradient(to bottom, rgba(0,0,0.5), rgba(0,0,0,.1)),url(" + imageUrlcontact2 + ") center no-repeat");
  var imageUrlproject2 = "../images/d3.jpg";
  $("#projects").css("background", "linear-gradient(to bottom, rgba(0,0,0.5), rgba(0,0,0,.1)),url(" + imageUrlproject2 + ") center no-repeat");
  $(".text span").css("color", "rgb(129, 33, 33)");
  $("header nav h1").css("text-shadow", "none");
  $(".type").css("text-shadow", "none");
  $("nav ul li a").css("text-shadow", "none");
  $("nav ul li a").css("font-size", "16px");
  $("nav ul li a").css("font-weight", "100");
});


