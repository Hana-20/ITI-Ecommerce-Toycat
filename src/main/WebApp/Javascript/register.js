var form = document.getElementById("registration-form");
var passwordInput = document.getElementById("password");
var passwordPattern = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$/;
validationPassword=document.getElementById("passwordValidation");
form.addEventListener("submit", function(event) {
  event.preventDefault(); 
    event.stopPropagation();
  // Check if the form is valid
  if (form.checkValidity() === false) {
    // Prevent form submission if it is not valid
    event.preventDefault();
    event.stopPropagation();
    form.classList.add("was-validated");
  }

  var password = passwordInput.value;
  if (passwordPattern.test(password) === false) {
    event.preventDefault(); 
    event.stopPropagation(); 
    form.classList.remove("was-validated");
    validationPassword.innerHTML="Password must contain at least 8 characters, including at least one lowercase letter, one uppercase letter, and one number."
    passwordInput.classList.add("is-invalid");
    // form.classList.add("was-validated");
  } else {
    validationPassword.innerHTML="Please enter your password"
    passwordInput.classList.remove("is-invalid");
    passwordInput.classList.add("is-valid");
    // form.classList.add("was-validated");
  }
  form.classList.add("was-validated");
}, false);
