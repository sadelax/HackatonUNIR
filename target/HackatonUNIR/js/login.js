// Get the login form and the input fields
const loginForm = document.querySelector('.login-form');
const usernameField = document.getElementById('username');
const passwordField = document.getElementById('password');
const rememberMeCheckbox = document.getElementById('remember-me');

// Add an event listener to the form submit button
loginForm.addEventListener('submit', (event) => {
  event.preventDefault(); // Prevent the form from submitting

  // Get the values of the input fields
  const username = usernameField.value;
  const password = passwordField.value;
  const rememberMe = rememberMeCheckbox.checked;

  // TODO: Add code here to validate the input fields and log the user in

  // Clear the input fields
  usernameField.value = '';
  passwordField.value = '';
  rememberMeCheckbox.checked = false;
});
