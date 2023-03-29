// function refreshUsers() {
    categoryTable=document.getElementById("category-table");
    function refreshCategoryTable() {
    $.post("categories", function(categories) { 
      categoryTable.innerHTML='';
      $.each(categories, function(index, category) {
             categoryTable.innerHTML+=`
      <tr>
        <td>${category.id}</td>
        <td>${category.name}</td>
      </tr>
    `
      });
      });
      }
      
    //   // refresh the table every 5 seconds
    setInterval( refreshCategoryTable, 5000);
    
    // call the refresh function once on page load
    refreshCategoryTable();