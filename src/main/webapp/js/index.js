document.addEventListener("DOMContentLoaded", function () {
  const learnMoreButtons = document.querySelectorAll(".btn");

  learnMoreButtons.forEach((button) => {
    button.addEventListener("click", function () {
      alert("Learn More clicked!");
    });
  });
});
