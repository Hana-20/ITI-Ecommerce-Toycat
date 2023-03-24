form =document.getElementById("loginForm");
emailInput=document.getElementById("loginEmail");
loginInput=document.getElementById("loginPassword");
var errorMessage = document.querySelector('.error-message');
form.addEventListener("submit", function (event) {
    event.preventDefault();
    event.stopPropagation();
    $.post('login', { loginEmail: emailInput.value ,loginPassword:loginPassword.value}, function (data) {
        console.log(data);
        if (data === "invalid login") { 
            errorMessage.innerHTML = 'Invalid email or password';
        } else {
          errorMessage.innerHTML = '';
          form.submit();
        }
      
      });
});