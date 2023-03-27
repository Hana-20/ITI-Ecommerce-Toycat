<html lang="en">
<jsp:include page="header.jsp" />
<body>
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a class="text-dark" href="home">Home</a></li>
            <li class="breadcrumb-item active" aria-current="page">Edit Profile</li>
        </ol>
    </nav>
    <section class="edit-profile">
        <div class="mega-container">
            <jsp:include page="aside.jsp" />
            <main class='flex-container grid-column-2'>
                <h3 class="font-weight-bold">EDIT PROFILE</h3>
                <hr>
                <form class='edit-profile-form' action="editProfile" method="post" id="updatProfileForm" class="needs-validation" novalidate>
                    <div class="mb-3">
                        <label for="profileInputFullname" class="form-label">Name</label>
                        <input placeholder="Enter your name" type="text" class="form-control" id="profileInputFullname" name="username" value="${sessionScope.user.username}">
                    </div>
                    <div class="mb-3">
                        <label for="profileInputCreditLimit" placeholder="Enter your credit  limit" class="form-label">Credit Limit</label>
                        <input type="number" 
                            class="form-control" id="profileInputCreditLimit" placeholder="Enter Credit Limit" aria-label="contactnumber" name="creditLimit" value="${sessionScope.user.creditLimit}">
                    </div>
                    <div class="mb-3 form-group">
                        <label for="profileInputEmail1" class="form-label">Email</label>
                        <input type="email" class="form-control" placeholder="Enter your email "
                            id="email" aria-label="Email" name="email" value="${sessionScope.user.email}">
                            <div class="invalid-feedback" id="updateProfileValidationEmail"></div>
                    </div>
                    <div class="mb-3">
                        <label for="profileInputBirthday" class="form-label">Birthday (dd/mm/yyyy)</label>
                        <input type="date" class="form-control" placeholder="Enter your birthday " id="profileInputBirthday" aria-label="Birthday" name="birthday" value="${sessionScope.user.birthday}">
                    </div>
                    <div class="mb-3">
                        <label for="profileInputAddress" class="form-label">Address</label>
                        <input placeholder="Enter your current location" type="text" class="form-control" id="profileInputLocation"aria-label="Address" name="address" value="${sessionScope.user.address}">  
                    </div>
                    <div class="mb-3 form-group">
                        <label for="profileInputCurrentPassword" class="form-label">Current Password<span
                            class="required">*</span></label>
                        <input placeholder="Enter your current password" type="password" class="form-control" id="currentPassword"aria-label="currentPassword" 
                        name="currentPassword" required> 
                        <div class="invalid-feedback" id="currentPasswordValidation"></div> 
                    </div>
                    <div class="mb-3 form-group">
                        <label for="profileInputNewPassword" class="form-label">New Password</label>
                        <input placeholder="Enter your new password" type="password" class="form-control" id="updateProfilePassword" aria-label="NewPassword" name="password">  
                        <div class="invalid-feedback" id="newPasswordValidation"></div> 
                    </div>
                    <div class="button-group d-flex flex-column mt-3" id="btn-group">
                    <button class="btn" id="save-btn" type="submit">SAVE
                        DETAILS</button>
                    </div>
                </div>
                </form>
            </main>
        </div>
    </section>



    <!-- Start of Payment and Help -->

    <section class='payment-help mt-5' aria-label='payments and help section'>
        <div class="container-fluid w-75">
            <div class="row">
                <div
                    class="col col-xl-3 col-lg-3 col-md-6 col-sm-12 d-flex flex-column align-items-center justify-content-center text-center">
                    <img src="Images/secure-pay.png" alt="securepay" role="img" aria-label='secure pay image'>
                    <h2>100% SECURE PAYMENTS</h2>
                    <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Voluptatibus, hic?</p>
                </div>
                <div
                    class="col col-xl-3 col-lg-3 col-md-6 col-sm-12 d-flex flex-column align-items-center justify-content-center text-center">
                    <img src="Images/trust-pay.png" alt="trustpay" role="img" aria-label='trust pay image'>
                    <h2>TRUST PAY</h2>
                    <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Voluptatibus, hic?</p>
                </div>
                <div
                    class="col col-xl-3 col-lg-3 col-md-6 col-sm-12 d-flex flex-column align-items-center justify-content-center text-center">
                    <img src="Images/help-center.png" alt="helpcenter" role="img" aria-label='help center image'>
                    <h2>HELP CENTER</h2>
                    <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Voluptatibus, hic?</p>
                </div>
                <div
                    class="col col-xl-3 col-lg-3 col-md-6 col-sm-12 d-flex flex-column align-items-center justify-content-center text-center">
                    <img src="Images/shop-on-go.png" alt="shopongo" role="img" aria-label='shop on go image'>
                    <h2>SHOP ON THE GO</h2>
                    <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Voluptatibus, hic?</p>
                </div>
            </div>
        </div>
    </section>


    <!-- End of Payments and Help -->

    <!-- Start of Footer -->
    <footer class="mt-5">
        <div class="container-fluid w-75">
            <div class="row">
                <div
                    class="col col-xl-2 col-lg-3 col-md-3 col-sm-4 d-flex flex-column align-items-start justify-content-start">
                    <h3>POLICY INFO</h3>
                    <a href="#" role='link'>Privacy Policy</a>
                    <a href="#" role='link'>Terms of Sale</a>
                    <a href="#" role='link'>Terms of Use</a>
                    <a href="#" role='link'>Report Abuse and Takedown Policy</a>
                </div>
                <div class="col col-xl-2 col-lg-3 col-md-2 col-sm-3 d-flex flex-column align-items-start">
                    <h3>COMPANY</h3>
                    <a href="#" role='link'>About Us</a>
                    <a href="#" role='link'>Core Values</a>
                    <a href="#" role='link'>Careers</a>
                    <a href="#" role='link'>Blog</a>
                    <a href="#" role='link'>Site Map</a>
                </div>
                <div class="col col-xl-3 col-lg-3 col-md-4 col-sm-5 d-flex flex-column align-items-start">
                    <h3>SNAPDEAL BUSINESS</h3>
                    <a href="#" role='link'>Shopping App</a>
                    <a href="#" role='link'>Sell on Snapdeal</a>
                    <a href="#" role='link'>Advertise on Snapdeal</a>
                    <a href="#" role='link'>Media Enquiries</a>
                    <a href="#" role='link'>Be an Affiliate</a>
                </div>
                <div
                    class="col col-xl-2 col-lg-3 col-md-3 col-sm-4 mt-md-0 mt-sm-5 d-flex flex-column align-items-start">
                    <h3>NEED HELP ?</h3>
                    <a href="#" role='link'>Contact Us</a>
                    <a href="FAQ.html" role='link'>FAQ</a>
                    <a href="#" role='link'>Online Shopping</a>
                </div>
                <div class="col col-xl-3 col-lg-5 col-md-6 col-sm-7 mt-xl-0 mt-lg-5 mt-md-5 mt-sm-5">
                    <h3>SUBSCRIBE</h3>
                    <div class="input-group mb-2 d-flex justify-content-center align-items-center">
                        <input type="text" class="form-control" placeholder="Your Email Address"
                            aria-label="Recipient's username" aria-describedby="button-addon2">
                        <button class="btn btn-outline-secondary d-flex align-items-center" type="button"
                            id="button-addon2">Search</button>
                    </div>
                    <small>Register now to get updates on promotions and coupons.<br> Or <a href="#">Download
                            App</a></small>
                </div>
            </div>
        </div>
        <hr>
        <div class="bottom-footer container-fluid w-75">
            <div class="row">
                <div class="col d-flex flex-row justify-content-between">
                    <div class="box-1">
                        <h3>PAYMENT</h3>
                        <div class="card-holder">
                            <img src="Images/card1.png" alt="card1" role="icon" aria-label='card image'>
                            <img src="Images/card2.png" alt="card2" role="icon" aria-label='card image'>
                            <img src="Images/card3.png" alt="card3" role="icon" aria-label='card image'>
                            <img src="Images/card4.png" alt="card4" role="icon" aria-label='card image'>
                            <img src="Images/card2.png" alt="cod" role="icon" aria-label='card image'>
                            <img src="Images/card1.png" alt="netbanking" role="icon" aria-label='card image'>
                        </div>
                    </div>
                    <div class="box-2">
                        <h3>SOCIAL</h3>
                        <div class="social-holder">
                            <img src="Images/facebook.png" alt="facebook" role="icon" aria-label='facebook icon'>
                            <img src="Images/tw-footer.png" alt="twitter" role="icon" aria-label='twitter icon'>
                            <img src="Images/yt-footer.png" alt="youtube" role="icon" aria-label='youtube icon'>
                            <img src="Images/ins-footer.png" alt="instagram" role="icon" aria-label='instagram icon'>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous">
    </script>
    <script src="Javascript/index.js"></script>
    <script src="Javascript/UpdateProfile.js"></script>
    <script src="Javascript/jQuery.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous">
    </script>
     <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</body>

</html>