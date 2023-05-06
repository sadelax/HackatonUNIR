// Get the button element
var btn = document.querySelector('.btn');

// Add a click event listener to the button
btn.addEventListener('click', function() {
  // Get the container element
  var container = document.querySelector('.container');

  // Toggle the container class
  container.classList.toggle('container-expanded');
});