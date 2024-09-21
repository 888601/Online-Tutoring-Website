var slides = document.querySelectorAll(".slide");
var index = 0;
var timer;

function changeSlide() {
  var slides = document.querySelectorAll(".slide");
  for (let i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";
    slides[i].style.opacity = 0;
  }
  console.log(index)
  slides[index].style.display = "block";
  slides[index].style.opacity = 1;
}

function prevSlide() {
  var slides = document.querySelectorAll(".slide");
  console.log(slides)
  index = (index - 1 + slides.length) % slides.length;
  changeSlide();
}

function nextSlide() {
  var slides = document.querySelectorAll(".slide");
  index = (index + 1) % slides.length;
  changeSlide();
  if (index === 0) {
	 stopAutomaticSlideChange()
    startAutomaticSlideChange(); // Restart automatic slide change when reaching the end
  }
}

function navigateToPage(url) {
  window.location.href = url;
}

// Function to start the automatic slide changer
function startAutomaticSlideChange() {
  timer = setInterval(function () {
    nextSlide();
  }, 5000); // Change slide every 5 seconds (adjust as needed)
}

// Function to stop the automatic slide changer
function stopAutomaticSlideChange() {
  clearInterval(timer);
}

// Attach click event to each arrow
document.getElementById("prev-arrow").addEventListener("click", function () {
  prevSlide();
 // Stop automatic slide change on manual navigation
});

document.getElementById("next-arrow").addEventListener("click", function () {
  nextSlide();
  // Stop automatic slide change on manual navigation
});

// Set initial slider position to show the first image and start automatic slide change
changeSlide();
startAutomaticSlideChange();


function startAutomaticSlideChange() {
  timer = setInterval(function () {
    nextSlide();
  }, 8000); // Change slide every 8 seconds to match the CSS animation duration
}
