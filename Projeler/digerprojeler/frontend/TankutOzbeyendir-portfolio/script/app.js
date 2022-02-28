AOS.init();
var num = 1; //number of pixels before modifying styles

$(window).bind('scroll', function () {
    if ($(window).scrollTop() > num) {
        $('#navFixed').addClass('fixed');
    } else {
        $('#navFixed').removeClass('fixed');
    }
});

// Wrap every letter in a span
var textWrapper = document.querySelector('.ml11 .letters');
textWrapper.innerHTML = textWrapper.textContent.replace(/([^\x00-\x80]|\w)/g, "<span class='letter'>$&</span>");

anime.timeline({loop: true})
  .add({
    targets: '.ml11 .line',
    scaleY: [0,2],
    opacity: [0.5,1],
    easing: "easeOutExpo",
    duration: 700
  })
  .add({
    targets: '.ml11 .line',
    translateX: [0, document.querySelector('.ml11 .letters').getBoundingClientRect().width + 50],
    easing: "easeOutExpo",
    duration: 700,
    delay: 100
  }).add({
    targets: '.ml11 .letter',
    opacity: [0,1],
    easing: "easeOutExpo",
    duration: 600,
    offset: '-=775',
    delay: (el, i) => 34 * (i+1)
  }).add({
    targets: '.ml11',
    opacity: 0,
    duration: 1000,
    easing: "easeOutExpo",
    delay: 1000
  });

  const navbar = document.querySelector("#navFixed");
  a = navbar.querySelectorAll("a")

  a.forEach(function (element) {
    element.addEventListener("click", function () {
      for (let i = 0; i < a.length; i++) {
        a[i].classList.remove("active")
      }
      this.classList.add("active");
      document.querySelector("#navFixed").classList.toggle("show");
    })
  })


  var num2 = 300; 
  const goTop = document.querySelector(".gotopbtn");
  $(window).bind('scroll', function () {
    if ($(window).scrollTop() > num) {
        $('.gotopbtn').addClass('fixedd');
    } else {
        $('.gotopbtn').removeClass('fixedd');
    }
});


// set the starting position of the cursor outside of the screen
let clientX = -100;
let clientY = -100;
const innerCursor = document.querySelector(".cursor--small");

const initCursor = () => {
  // add listener to track the current mouse position
  document.addEventListener("mousemove", e => {
    clientX = e.clientX;
    clientY = e.clientY;
  });
  
  // transform the innerCursor to the current mouse position
  // use requestAnimationFrame() for smooth performance
  const render = () => {
    innerCursor.style.transform = `translate(${clientX}px, ${clientY}px)`;
    // if you are already using TweenMax in your project, you might as well
    // use TweenMax.set() instead
    // TweenMax.set(innerCursor, {
    //   x: clientX,
    //   y: clientY
    // });
    
    requestAnimationFrame(render);
  };
  requestAnimationFrame(render);
};

initCursor();
let lastX = 0;
let lastY = 0;
let isStuck = false;
let showCursor = false;
let group, stuckX, stuckY, fillOuterCursor;

const initCanvas = () => {
  const canvas = document.querySelector(".cursor--canvas");
  const shapeBounds = {
    width: 75,
    height: 75
  };
  paper.setup(canvas);
  const strokeColor = "rgba(255, 0, 0, 0.5)";
  const strokeWidth = 1;
  const segments = 8;
  const radius = 15;
  
  // we'll need these later for the noisy circle
  const noiseScale = 150; // speed
  const noiseRange = 4; // range of distortion
  let isNoisy = false; // state
  
  // the base shape for the noisy circle
  const polygon = new paper.Path.RegularPolygon(
    new paper.Point(0, 0),
    segments,
    radius
  );
  polygon.strokeColor = strokeColor;
  polygon.strokeWidth = strokeWidth;
  polygon.smooth();
  group = new paper.Group([polygon]);
  group.applyMatrix = false;
  
  const noiseObjects = polygon.segments.map(() => new SimplexNoise());
  let bigCoordinates = [];
  
  // function for linear interpolation of values
  const lerp = (a, b, n) => {
    return (1 - n) * a + n * b;
  };
  
  // function to map a value from one range to another range
  const map = (value, in_min, in_max, out_min, out_max) => {
    return (
      ((value - in_min) * (out_max - out_min)) / (in_max - in_min) + out_min
    );
  };
  
  // the draw loop of Paper.js 
  // (60fps with requestAnimationFrame under the hood)
  paper.view.onFrame = event => {
    // using linear interpolation, the circle will move 0.2 (20%)
    // of the distance between its current position and the mouse
    // coordinates per Frame
    lastX = lerp(lastX, clientX, 0.2);
    lastY = lerp(lastY, clientY, 0.2);
    group.position = new paper.Point(lastX, lastY);
  }
}

initCanvas();


$(".fa-toggle-off").click(function(){
  $(".fa-toggle-off").css("display", "none");
  $(".fa-toggle-on").css("display", "inline");

  var imageUrl = "./images/bg.jpg";
  $("header").css("background-image", "url(" + imageUrl + ")");
  $(".text span").css("color", "#f4f4f4");
  $("header nav h1").css("text-shadow", "2px 2px #000");
  $(".type").css("text-shadow", "2px 2px #000");
  $("nav ul li a").css("text-shadow", "2px 2px #000");
  $("nav ul li a").css("font-weight", "300");

  var imageUrlabout = "./images/bg2.jpg";
  $("#about").css("background-image", "url(" + imageUrlabout + ")");
  $(".about-right p").css("text-shadow", "2px 2px #000");

  var imageUrlexperience = "./images/bg3.jpg";
  $("#experience").css("background-image", "url(" + imageUrlexperience + ")");

  var imageUrlContact = "./images/bg4.jpg";
  $("#contact").css("background-image", "url(" + imageUrlContact + ")");

  

});

$(".fa-toggle-on").click(function(){
  $(".fa-toggle-off").css("display", "inline");
  $(".fa-toggle-on").css("display", "none");

  var imageUrl2 = "./images/bg.jpg";
  $("header").css("background", "linear-gradient(to bottom, rgba(0,0,0.5), rgba(0,0,0,.1)),url(" + imageUrl2 + ") center no-repeat");
  var imageUrlabout2 = "./images/bg2.jpg";
  $("#about").css("background", "linear-gradient(to bottom, rgba(0,0,0.5), rgba(0,0,0,.1)),url(" + imageUrlabout2 + ") center no-repeat");
  var imageUrlexperience2 = "./images/bg3.jpg";
  $("#experience").css("background", "linear-gradient(to bottom, rgba(0,0,0.5), rgba(0,0,0,.1)),url(" + imageUrlexperience2 + ") center no-repeat");
  var imageUrlcontact2 = "./images/bg4.jpg";
  $("#contact").css("background", "linear-gradient(to bottom, rgba(0,0,0.5), rgba(0,0,0,.1)),url(" + imageUrlcontact2 + ") center no-repeat");
  $(".text span").css("color", "rgb(129, 33, 33)");
  $("header nav h1").css("text-shadow", "none");
  $(".type").css("text-shadow", "none");
  $("nav ul li a").css("text-shadow", "none");
  $("nav ul li a").css("font-size", "16px");
  $("nav ul li a").css("font-weight", "100");
});


