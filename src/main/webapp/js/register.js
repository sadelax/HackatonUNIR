// Get the registration form and the input fields
const registrationForm = document.querySelector('form');
const usernameField = document.getElementById('username');
const emailField = document.getElementById('email');
const passwordField = document.getElementById('password');
const password2Field = document.getElementById('password2');
const phoneField = document.getElementById('phone');
const dobField = document.getElementById('dob');
const genderField = document.getElementById('gender');
const countryField = document.getElementById('country');
const provinceField = document.getElementById('province');
const profilePicField = document.getElementById('profile-pic');
const termsCheckbox = document.getElementById('terms');

// Add an event listener to the form submit button
registrationForm.addEventListener('submit', (event) => {
  event.preventDefault(); // Prevent the form from submitting

  // Get the values of the input fields
  const username = usernameField.value;
  const email = emailField.value;
  const password = passwordField.value;
  const password2 = password2Field.value;
  const phone = phoneField.value;
  const dob = dobField.value;
  const gender = genderField.value;
  const country = countryField.value;
  const province = provinceField.value;
  const profilePic = profilePicField.value;
  const terms = termsCheckbox.checked;

  // TODO: Add code here to validate the input fields and submit the form

  // Clear the input fields
  usernameField.value = '';
  emailField.value = '';

  passwordField.value = '';
  password1Field.value = '';
  phoneField.value = '';
  dobField.value = '';
  genderField.value = '';
  countryField.value = '';
  provinceField.value = '';
  profilePicField.value = '';
  termsCheckbox.checked = false;
});