var firstOne=false;
var form = document.getElementById("registration-form");
var passwordInput = document.getElementById("password");
var emailInput = document.getElementById("email");
var passwordPattern = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$/;
validationPassword = document.getElementById("passwordValidation");
validationEmail = document.getElementById("emailValidation");
cPasswordInput = document.getElementById("confirmPassword");
validateConfirmPassword = document.getElementById("cPasswordValidation");
var inputs = form.querySelectorAll("input[required]");
allFieldsAreValid = 0;
cPasswordInput.addEventListener("blur", function () {
  if (cPasswordInput.value.trim() === '') {
    validateConfirmPassword.innerHTML = "Please enter your password confirmtion"
      cPasswordInput.classList.add("is-invalid");
  }
  
  else {
    if (cPasswordInput.value !== passwordInput.value) {
      validateConfirmPassword.innerHTML = "Passwords must match";
        cPasswordInput.classList.add("is-invalid");
    }
    else {
      validateConfirmPassword.innerHTML = '';
        cPasswordInput.classList.remove("is-invalid");

    }
  }
});
cPasswordInput.addEventListener("focus", function () {
  cPasswordInput.classList.remove("is-invalid");

});
form.addEventListener("submit", function (event) {
  event.preventDefault();
  event.stopPropagation();
  form.classList.remove("was-validated");
  for (i = 0; i < inputs.length; i++) {
    if (inputs[i].id !== "email" && inputs[i].id !== "password") {
      inputs[i].addEventListener("blur", createBlurHandler(i));
    }
    inputs[i].addEventListener("focus", createFocusHandler(i));
  }

  function createBlurHandler(index) {
    return function () {
      console.log(inputs[index].value);
      if (inputs[index].value.trim() === '') {
          inputs[index].classList.add("is-invalid");
        // console.log(inputs[index].value);
      } else {
        if (inputs[index].classList.contains("is-invalid")) {
          inputs[index].classList.remove("is-invalid");
          allFieldsAreValid--;
        }
      }
    };
  }

  function createFocusHandler(index) {
    return function () {
      inputs[index].classList.remove("is-invalid");
    };
  }
  passwordInput.addEventListener("focus", function () {
    passwordInput.classList.remove("is-invalid");
  });

  passwordInput.addEventListener("blur", function () {
    if (passwordInput.value.trim() === '') {
      validationPassword.innerHTML = "Please enter your password"
        passwordInput.classList.add("is-invalid");
      

    }
    else {
      if (passwordPattern.test(passwordInput.value) === false) {
        validationPassword.innerHTML = "Password must contain at least 8 characters, including at least one lowercase letter, one uppercase letter, and one number.";
          passwordInput.classList.add("is-invalid");
          allFieldsAreValid++;
          firstOne=true;
        
      }
      else {

        validationPassword.innerHTML = ''
        passwordInput.classList.remove("is-invalid");
        if (passwordInput.classList.contains("is-invalid")) {
          passwordInput.classList.remove("is-invalid");
          allFieldsAreValid--;
        }
      }
    }
  });
  emailInput.addEventListener("focus", function () {
    emailInput.classList.remove("is-invalid");

  });

  emailInput.addEventListener("blur", function () {
      validationEmail.innerHTML = "Please enter your email"
      if (!emailInput.classList.contains("is-invalid")) {
        emailInput.classList.add("is-invalid");
    }
    else {
      $.post('email', { email: emailInput.value }, function (data) {
        if (data === 'exist') {
          validationEmail.innerHTML = "Email is exist";
            emailInput.classList.add("is-invalid");

        } else {
          validationEmail.innerHTML = '';
            emailInput.classList.remove("is-invalid");
        }

      });

    }
  });
  if (form.checkValidity() === false) {
    event.preventDefault();
    event.stopPropagation();
  }
  var valid=true;
      for(i=0;i<inputs.length;i++){
      if (inputs[i].value.trim() === '') {
          inputs[i].classList.add("is-invalid");
        }
        if(inputs[i].classList.contains("is-invalid")){
          valid=false;
          console.log("not valid");
        }
  }
  if(valid){
    form.submit();
  }
  
});


