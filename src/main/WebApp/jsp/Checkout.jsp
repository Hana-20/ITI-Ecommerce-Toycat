<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>ToyCat - Checkout</title>
        <link rel="icon" type="image/png" href="Images/carts.png">
        <link rel="stylesheet" href="style/style.css">
        <link rel="stylesheet" href="style/styleSheet.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
            integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
        <link rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    </head>

    <body>
        <header>
            <div name="lang-select" id="lang-select" aria-labelledby="select box">
            </div>

            <!-- Start of Bottom Header -->
            <div class="bottom-header" id="bottom-head">
                <div class="sticky-bar-wrapper bg-white" id="sticky-section">
                    <nav class="navbar navbar-expand-lg navbar-light bg-white" id="bottom-header-navbar">
                        <div class="container-fluid">
                            <a class="navbar-brand" href="${pageContext.request.contextPath}"><img id="logo_img" src="Images/logo.png"
                                    alt="logo" role="img" aria-label=" website logo"></a>
                            <div class="input-group d-xl-none d-lg-none" id="search-box-container">
                                <input type="search" id="search-box-hidden" class="form-control"
                                    placeholder="Search products and Brands" aria-label="search box"
                                    aria-describedby="basic-addon1">
                                <span id="basic-addon1"><img src="Images/magglass.png" alt="search-icon" role="icon"
                                        aria-labelledby="magnifying glass icon"></span>
                            </div>
                            <button class="navbar-toggler" type="button" data-toggle="collapse"
                                data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02"
                                aria-expanded="false" aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>
                            <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
                                <ul class="navbar-nav mr-auto mt-2 ml-xl-5 ml-lg-5 ml-md-0 mt-lg-0 text-center">
                                    <li class="nav-item">
                                        <a class="nav-link active" href="${pageContext.request.contextPath}">Home</a>
                                    </li>
                                    <li class="nav-item dropdown">
                                        <a class="nav-link drop-btn" href="Product-list.html">Categories</a>
                                        <div class="dropdown-content mt-2">
                                            <a href="Product-list.html">Men</a>
                                            <a href="Product-list.html">Women</a>
                                            <a href="Product-list.html">Ethnic</a>
                                        </div>
                                    </li>

                                    <li class="nav-item notification">
                                        <a class="nav-link" href="${pageContext.request.contextPath}/cart"
                                            id="cart-btn">Cart</a>
                                        <!-- <span class="badge" id="cart-badge">0</span> -->
                                    </li>
                                    <li>

                                </ul>
                                <div>
                                    <form action="/toycat/products" class="search-boxa" method="get">
                                        <input type="text" name="q" autocomplete="off" autocapitalize="off"
                                            placeholder="enter search" required />
                                        <button type="submit"><i class="search-icon"></i></button>
                                    </form>
                                </div>
                                <c:choose>

                                    <c:when test="${not empty sessionScope.user}">
                                        <div class="dropdown">
                                            <button class="btn btn-primary dropdown-toggle" type="button"
                                                id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true"
                                                aria-expanded="false">
                                                Hello, <b>${sessionScope.user.username}</b>
                                            </button>
                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                <c:if test="${sessionScope.user.role.toString()  eq '1'}">
                                                    <a class="dropdown-item"
                                                        href="${pageContext.request.contextPath}/admin">admin </a>
                                                </c:if>

                                                <a class="dropdown-item"
                                                    href="${pageContext.request.contextPath}/profile">profile
                                                    &nbsp;&nbsp; <i class="fa fa-user"></i></a>
                                                <form method="post" action="logout">
                                                    <button class="dropdown-item" id="signout" type="submit"
                                                        class="sign">log out &nbsp;&nbsp;<i
                                                            class="fa fa-sign-out"></i></button>
                                                </form>
                                            </div>
                                        </div>
                                    </c:when>
                                    <c:otherwise>
                                        <form
                                            class="form-inline my-2 my-lg-0 d-flex flex-column align-items-stretch justify-content-start">
                                            <button class="btn btn-orange my-2 my-sm-0" id="signin" type="button"
                                                data-toggle="modal" data-target="#exampleModalCenter" class="sign"
                                                aria-labelledby='sign-in-btn'>SIGN IN</button>
                                        </form>
                                    </c:otherwise>
                                </c:choose>
                            </div>
                        </div>
                    </nav>
                </div>
                <!-- LOGIN MODAL -->
                <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog"
                    aria-label="exampleModalCenterTitle" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content">
                            <div class="modal-header d-flex flex-column align-items-center">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                                <img src="Images/logo.png" alt="modal logo">
                            </div>
                            <div class="modal-body">
                                <!-- Addition of Tabs -->
                                <ul class="nav nav-tabs nav-justified" id="myTab" role="tablist">
                                    <li class="nav-item">
                                        <a href="#login" id="tab1" class='nav-link active' style="border-color: white;"
                                            aria-controls="login" aria-selected='true' role="tab" tabindex=1
                                            data-toggle='tab'>LOGIN</a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="#create-account" id="tab2" class='nav-link'
                                            style="border-color: white;" aria-controls="create-account"
                                            aria-selected='false' role="tab" tabindex=0 data-toggle='tab'>CREATE
                                            ACCOUNT</a>
                                    </li>
                                </ul>
                                <div class="tab-content mt-3" id="myTabContent">
                                    <div class="tab-pane active" id="login" role="tabpanel" aria-labelledby="tab1"
                                        aria-hidden='false'>
                                        <!-- Addition of Form 1 -->
                                        <form class="d-flex flex-column">
                                            <div class="form-group">
                                                <label for="exampleInputEmail1">Email address <span
                                                        class='required'>*</span></label>
                                                <input type="email" class="form-control" id="exampleInputEmail1"
                                                    role="email" placeholder="Enter email">
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleInputPassword1">Password <span
                                                        class='required'>*</span></label>
                                                <div class="input-group d-flex flex-row">
                                                    <input type="password" class="form-control"
                                                        id="exampleInputPassword1" placeholder="Password">
                                                    <div class="input-group-append">
                                                        <div class="input-group-text">
                                                            <i class='bi bi-eye-fill ml-2'></i>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <button type="submit" class="btn btn-orange rounded-0">SIGN
                                                IN</button><br>
                                            <button type="submit" class="btn btn-default2 rounded-0">FORGOT YOUR
                                                PASSWORD?</button>
                                        </form>
                                    </div>
                                    <div class="tab-pane" id="create-account" role="tabpanel" aria-labelledby="tab2"
                                        aria-hidden='true'>
                                        <!-- Addition of Form 2 -->
                                        <form class="d-flex flex-column">
                                            <div class="form-group">
                                                <label for="exampleInputUsername2">Username <span
                                                        class='required'>*</span></label>
                                                <input type="text" class="form-control" id="exampleInputUsername2"
                                                    role="username" placeholder="Enter Username">
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleInputEmail2">Email address <span
                                                        class='required'>*</span></label>
                                                <input type="email" class="form-control" id="exampleInputEmail2"
                                                    role="email" placeholder="Enter email">
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleInputPassword2">Password <span
                                                        class='required'>*</span></label>
                                                <div class="input-group d-flex flex-row">
                                                    <input type="password" class="form-control"
                                                        id="exampleInputPassword2" placeholder="Password">
                                                    <div class="input-group-append">
                                                        <div class="input-group-text">
                                                            <i class='bi bi-eye-fill ml-2'></i>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <button type="submit"
                                                class="btn btn-default btn-hover btn-orange rounded-0">CREATE
                                                ACCOUNT</button><br>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <!-- End of Tabs -->
                            <!-- Start of Modal Footer -->
                            <div class="modal-footer d-flex flex-column justify-items-center">
                                <span>Or Login With</span>
                                <div class="modal-social-btn">
                                    <a class="btn text-white" style="background-color: #3b5998" href="#!"
                                        role="button"><span class="bi bi-facebook">FACEBOOK</span></a>
                                    <a class="btn text-white" style="background-color: #55acee" href="#!"
                                        role="button"><span class="bi bi-twitter">TWITTER</span></a>
                                    <a class="btn text-white" style="background-color: #dd4b39" href="#!"
                                        role="button"><span class="bi bi-google">GOOGLE</span></a>
                                </div>
                            </div>
                            <!-- Start of Modal Footer -->
                        </div>
                    </div>
                </div>
                <!-- LOGIN MODAL -->
            </div>
        </header>
        <a class='back-to-top-btn float-right' id="scroll-btn" role='button' aria-label='back to top button'>
            <img src="Images/up-green.png" alt="goto top" role="icon" aria-label='back to top image'>
        </a>
        <!-- End of Bottom Header -->

        <!-- Start of my-profile page -->

        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a class="text-dark" href="${pageContext.request.contextPath}">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">Checkout</li>
            </ol>
        </nav>

        <section class="cart-section">
            <div class="container-fluid">
                <div class="top-flex-container">
                    <h4 class="font-weight-bold mb-3">MY Order</h4>
                    <!-- <div class="totalCost d-flex justify-content-xl-between">
                        <p class='key font-weight-bold mr-2'>Total</p>
                        :
                        <p class='value d-flex font-weight-bold ml-2'>Rs.<span id="totalCartValue">0</span></p>
                    </div> -->
                </div>
                <div class="row">
                    <div class="column1 col ml-xl-0 ml-sm-2 mb-2 col-xl-8 col-lg-12 col-md-12 col-sm-12">
                        <!-- cart items -->
                        <c:set var="totalPrice" value="0" />
                        <div class="cart-items-area" id="cart-items-area">
                            <c:forEach var="cartItem" items="${cart}">
                                <c:set var="totalPrice"
                                    value="${totalPrice + cartItem.productDto.price*cartItem.quantity }" />
                                <div class="cart-items-holder" id='cart-${cartItem.productDto.id}'>
                                    <div class='pdt-container' id='pdt-single'>
                                        <img class='img-sweater' src="${cartItem.productDto.image}" alt="Sweater Image">
                                        <div class="ml-4 w-100">
                                            <div class="text1">
                                                <h6>${cartItem.productDto.name}</h6>

                                            </div>
                                            <p class='pricing mb-0'>Quantity: <strong
                                                    id='final-price'>${cartItem.quantity}</strong>

                                            <p class='pricing mb-0'>Item Price: <strong
                                                    id='final-price'>${cartItem.productDto.price}</strong>

                                            <p class='pricing mb-0'>Total: <strong
                                                    id='final-price'>${cartItem.productDto.price *
                                                    cartItem.quantity}</strong>
                                        </div>
                                    </div>
                                </div>
                                <br>
                            </c:forEach>

                        </div>
                    </div>
                    <div class="column2 col ml-xl-0 ml-sm-2 mb-2 col-xl-4 col-lg-12 col-md-12 col-sm-12">
                        <div class="billing-section">
                            <!-- <h5 class="font-weight-bold">COUPONS</h5>
                            <span class="font-weight-bold"><img class="mr-2" src="Images/tag-icon.png"
                                    alt="tag icon">Apply Coupons</span>
                            <button type="button" class="btn btn-default ml-3" aria-label='edit button'>Apply</button>
                            <hr> -->
                            <h6>Summary</h6>
                            <br>
                            <div class="flex-item flex-item-1 d-flex justify-content-between">
                                <p class='key'>Total Price</p>
                                <p class='value'><span id="total-price">${totalPrice}</span></p>
                            </div>
                            <!-- <div class="flex-item flex-item-1 d-flex justify-content-between">
                                <p class='key'>Bag Discount</p>
                                <p class='value text-success'>Rs.<span id="bagDiscount">0</span></p>
                            </div>
                            <div class="flex-item flex-item-1 d-flex justify-content-between">
                                <p class='key'>Coupon Discount</p>
                                <p class='value'><a href="#">Apply Coupon</a></p>
                            </div>
                            <div class="flex-item flex-item-1 d-flex justify-content-between">
                                <p class='key'>Order Total</p>
                                <p class='value'>Rs.<span id="orderTotal">0</span></p>
                            </div>
                            <div class="flex-item flex-item-1 d-flex justify-content-between">
                                <p class='key'>Delivery Charges</p>
                                <p class='value text-success'><del class='text-dark mr-2'>Rs.99</del>Free</p>
                            </div> -->
                            <hr>
                            <button type="button" class="btn btn-orange w-100" aria-label='edit button'
                                onclick="confirmOrder()">Confirm
                                Order</button>

                        </div>

                        <div class="alert alert-danger text-center mt-4" id="payment-error" role="alert" style="display: none;"> 
                            Payment Failed
                        </div>
                    </div>
                </div>
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
                        <a href="#" role='link'>FAQ</a>
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
                                <img src="Images/ins-footer.png" alt="instagram" role="icon"
                                    aria-label='instagram icon'>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>


        <script src="Javascript/index.js"></script>
        <script src="Javascript/cart.js"></script>
        <script src="Javascript/checkout.js"></script>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
            integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous">
            </script>
        <script src="Javascript/jQuery.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous">
            </script>
        <script>

        </script>
    </body>

    </html>