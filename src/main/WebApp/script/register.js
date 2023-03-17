var form = document.getElementById("registration-form");

// Add a listener for form submission
form.addEventListener("submit", function(event) {
  // Check if the form is valid
  console.log("actionListener");
  if (form.checkValidity() === false) {
    // Prevent form submission if it is not valid
    event.preventDefault();
    event.stopPropagation();
  }

  // Add the "was-validated" class to show validation messages
  form.classList.add("was-validated");
}, false);