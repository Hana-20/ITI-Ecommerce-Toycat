<aside class='grid-column-1 container d-flex flex-lg-column align-items-lg-start justify-content-lg-start flex-md-column align-items-md-start float-lg-left'>
<div class="profile mb-4 d-flex flex-column justify-content-center align-items-start">
    <h6 class="font-weight-bold my-account-heading">MY ACCOUNT</h6>
    <img src="Images/R.png" alt="Profile picture" width="85" height="85">
    <p class='mb-0 mt-2'>${sessionScope.user.username}</p>
    <p>${sessionScope.user.email}</p>
</div>
<div class="orders mb-4">
    <h6 class="font-weight-bold">ORDERS</h6>
    <div class="list-group border-0">
        <a href="my-order.html" class="list-items">My Order</a>
        <a href="Track-order.html" class="list-items">Track Order</a>
        <a href="Return-order.html" class="list-items">Return Order</a>
        <a href="Track-order.html" class="list-items">Cancelled Order</a>
    </div>
</div>
<div class="account mb-4">
    <h6 class="font-weight-bold">ACCOUNT</h6>
    <div class="list-group">
        <a href="My-profile.html" class="list-items list-item-active font-weight-bold">Profile</a>
        <a href="My-profile.html" class="list-items">Saved Addresses</a>
        <a href="My-profile.html" class="list-items">Saved Cards</a>
        <a href="My-profile.html" class="list-items">Change Password</a>
    </div>
</div>
<div class="payment mb-4">
    <h6 class="font-weight-bold">PAYMENT</h6>
    <div class="list-group">
        <a href="#" class="list-items">PhonePe</a>
        <a href="#" class="list-items">Gift Card</a>
        <a href="#" class="list-items">Credit Card</a>
        <a href="#" class="list-items">Debit Card</a>
    </div>
</div>
</aside>