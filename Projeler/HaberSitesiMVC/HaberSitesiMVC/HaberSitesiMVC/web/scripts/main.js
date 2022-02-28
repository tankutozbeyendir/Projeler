document.body.style.overflow = 'hidden';

const btnHam = document.querySelector('.ham-btn');
const btnTimes = document.querySelector('.times-btn');
const navBar = document.getElementById('nav-bar');

btnHam.addEventListener('click', function () {
	if (btnHam.className !== "") {
		btnHam.style.display = "none";
		btnTimes.style.display = "block";
		navBar.classList.add("show-nav");
	}
});

btnTimes.addEventListener('click', function () {
	if (btnHam.className !== "") {
		this.style.display = "none";
		btnHam.style.display = "block";
		navBar.classList.remove("show-nav");
	}
});

var scroll = new SmoothScroll('a[href*="#"]');
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function (event) {
	if (event.target == modal) {
		modal.style.display = "none";
	}
};

let processScroll = () => {
	let docElem = document.documentElement,
		docBody = document.body,
		scrollTop = docElem['scrollTop'] || docBody['scrollTop'],
		scrollBottom = (docElem['scrollHeight'] || docBody['scrollHeight']) - window.innerHeight,
		scrollPercent = scrollTop / scrollBottom * 100 + '%';

	// console.log(scrollTop + ' / ' + scrollBottom + ' / ' + scrollPercent);

	document.getElementById("progress-bar").style.setProperty("--scrollAmount", scrollPercent);
};

document.addEventListener('scroll', processScroll);