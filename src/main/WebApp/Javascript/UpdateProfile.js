(function() {
    var emailPattern = /^\w+([.-]?\w+)*@\w+([.-]?\w+)*(\.\w{2,3})+$/;
    updateProfileForm =document.getElementById("updatProfileForm");
    currentPasswordInput=document.getElementById("currentPassword");
    currentPasswordValidation=document.getElementById("currentPasswordValidation");
    uppdateProfileEmail=document.getElementById('email');
    updateProfileValidationEmail=document.getElementById('updateProfileValidationEmail');
    UpdateProfilepasswordInput= document.getElementById('updateProfilePassword');
    passwordPattern = /^(?=.*[A-Z])(?=.*\d).+$/;
    newPasswordValidation=document.getElementById("newPasswordValidation");
    currentPasswordInput.addEventListener("focus", function () {
        currentPasswordInput.classList.remove("is-invalid");
    
      });
    updateProfileForm.addEventListener("submit", function (event) {
        validateUpadateProfileForm=true;
        event.preventDefault();
        event.stopPropagation();
        UpdateProfilepasswordInput.addEventListener("focus", function () {
            UpdateProfilepasswordInput.classList.remove("is-invalid");
          });
        
          UpdateProfilepasswordInput.addEventListener("blur", function () {
              if (passwordPattern.test(UpdateProfilepasswordInput.value) === false) {
                newPasswordValidation.innerHTML = "Password must contain at least 8 characters, including at least one lowercase letter, one uppercase letter, and one number.";
                UpdateProfilepasswordInput.classList.add("is-invalid");
                validateUpadateProfileForm=false;
                
              }
              else {
                newPasswordValidation.innerHTML = ''
                UpdateProfilepasswordInput.classList.remove("is-invalid");
              }
            
          });
        if(currentPasswordInput.value.trim()==''){
            currentPasswordValidation.innerHTML = 'Enter your current password';
            currentPasswordInput.classList.add("is-invalid");
            validateUpadateProfileForm=false;
        }
        else{
        $.post('password', { currentPassword:currentPasswordInput.value}, function (data) {
            console.log(data);
            if (data === "incorrect") { 
                currentPasswordValidation.innerHTML = 'Incorect password';
                currentPasswordInput.classList.add("is-invalid");
                validateUpadateProfileForm=false;
            } else {
                currentPasswordValidation.innerHTML = '';
                currentPasswordInput.classList.remove("is-invalid");
            
            }
        
          
          });
        }
        uppdateProfileEmail.addEventListener("focus", function () {
            uppdateProfileEmail.classList.remove("is-invalid");
        
          });
        if (emailPattern.test(uppdateProfileEmail.value) === false) {
            updateProfileValidationEmail.innerHTML = "Enter Vaild Email";
            uppdateProfileEmail.classList.add("is-invalid");
            validateUpadateProfileForm=false;
          }
        else {
          $.get('email', { email: uppdateProfileEmail.value }, function (data) {
            if (data === 'exist') {
                updateProfileValidationEmail.innerHTML = "Email is exist";
              uppdateProfileEmail.classList.add("is-invalid");
              validateUpadateProfileForm=false;
    
            }
            else {
              updateProfileValidationEmail.innerHTML = '';
              uppdateProfileEmail.classList.remove("is-invalid");
            }
          });
          if(validateUpadateProfileForm){
            updateProfileForm.submit();
          }
       
  }})})();