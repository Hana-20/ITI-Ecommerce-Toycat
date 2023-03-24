(function () {
  'use strict';

  function loadCategories() {
    fetch('http://localhost:9090/toycat/api/categories')
      .then((response) => response.json())
      .then((data) => {
        console.log('categories: ', data);
        const select = document.getElementById('category-select');
        data.forEach((category) => {
          const option = document.createElement('option');
          option.value = category.id;
          option.text = category.name;
          select.appendChild(option);
        });
      })
      .catch((error) => console.error(error));
  }

  window.onload = function () {
    loadCategories();
  };

  // Fetch all the forms we want to apply custom Bootstrap validation styles to
  var forms = document.querySelectorAll('.needs-validation');

  Array.prototype.slice.call(forms).forEach(function (form) {
    form.addEventListener(
      'submit',
      function (event) {
        if (!form.checkValidity()) {
          event.preventDefault();
          event.stopPropagation();
        }

        form.classList.add('was-validated');
      },
      false
    );
  });
})();
