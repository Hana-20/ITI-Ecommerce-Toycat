(function() {
  loginForm =document.getElementById("loginForm");
emailInputLogin=document.getElementById("loginEmail");
loginInput=document.getElementById("loginPassword");
var errorMessage = document.querySelector('.error-message');
loginForm.addEventListener("submit", function (event) {
    event.preventDefault();
    event.stopPropagation();
    // console.log(emailInputLogin.value);
    // console.log(loginInput.value);
    $.post('login', { loginEmail: emailInputLogin.value ,loginPassword:loginInput.value}, function (data) {
        console.log(data);
        if (data === "invalid login") { 
            errorMessage.innerHTML = 'Invalid email or password';
        } else {
          errorMessage.innerHTML = '';
          loginForm.submit();
        }
      
      });
});
})();
