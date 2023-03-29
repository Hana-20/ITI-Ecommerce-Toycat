// function refreshUsers() {
userTable=document.getElementById("user-table");
function refreshTable() {
$.post("users", function(users) { 
  userTable.innerHTML='';
  $.each(users, function(index, user) {
         userTable.innerHTML+=`
  <tr>
    <td>${user.username}</td>
    <td>${user.email}</td>
    <td>${user.address}</td>
    <td>${user.creditLimit}</td>
    <td>${user.birthday}</td>
    <td>${user.role}</td>
  </tr>
`
  });
  });
  }
  
//   // refresh the table every 5 seconds
setInterval( refreshTable, 5000);

// call the refresh function once on page load
refreshTable();