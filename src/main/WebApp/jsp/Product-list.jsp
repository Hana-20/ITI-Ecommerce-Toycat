<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Swag of India - Product List </title>
    <link rel="icon" type="image/png" href="Images/carts.png">
    <link rel="stylesheet" href="style/style.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
        integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
</head>

<body>
    <header>
        <!-- Start of Top Bar -->
        <!-- <div class="top-header" role='top header' id="back-to-top"> -->

        <!-- <div class="search-box" role='search' id="search-box">
                <input type="search" name="searchbox" role="form" id="searchbox"
                    placeholder="Search Products and Brands" aria-labelledby="search-box">
                <img src="Images/magglass.png" alt="search-icon" role='icon' aria-label='magnifying glass icon'>
            </div>
            <div class="information-tab" role="info container">
                <img src="Images/call.png" id='call-icon' alt="call-icon" role='icon' aria-label='Phone icon'>
                <a id='ph-number' href="" role='link'>+91 9838203708</a>
                <a href="Seller-page.html" role='link'>Sell on Company</a>
                <a href="#" role='link'>Download App</a>
                <img src="Images/langicon.png" id="flag-icon" alt="lang-icon" role='icon' aria-label='language icon'> -->
        <!-- <form action="#" aria-label='form'> -->
        <div name="lang-select" id="lang-select" aria-labelledby="select box">
            <!-- <option value="India" role="option" aria-labelledby="Option1">India</option>
                        <option value="UK" role="option" aria-labelledby="Option1">UK</option>
                        <option value="Canada" role="option" aria-labelledby="Option2">Canada</option>
                        <option value="Germany" role="option" aria-labelledby="Option3">Germany</option> -->
        </div>
        <!-- </form> -->
        <!-- </div> -->
        </div>
        <!-- End of Top Bar -->

        <!-- Start of Bottom Header -->
        <div class="bottom-header" id="bottom-head">
            <div class="sticky-bar-wrapper bg-white" id="sticky-section">
                <nav class="navbar navbar-expand-lg navbar-light bg-white" id="bottom-header-navbar">
                    <div class="container-fluid">
                        <a class="navbar-brand" href="index.html"><img id="logo_img" src="Images/logo.png" alt="logo"
                                role="img" aria-label=" website logo"></a>
                        <form action="/toycat/products" class="input-group d-xl-none d-lg-none" id="search-box-container">
                            <input name="q" type="search" id="search-box-hidden" class="form-control"
                                placeholder="Search products and Brands" aria-label="search box"
                                aria-describedby="basic-addon1">
                            <span id="basic-addon1"><img src="Images/magglass.png" alt="search-icon" role="icon"
                                    aria-labelledby="magnifying glass icon"></span>
                            </form>
                        <button class="navbar-toggler" type="button" data-toggle="collapse"
                            data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false"
                            aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
                            <ul class="navbar-nav mr-auto mt-2 ml-xl-5 ml-lg-5 ml-md-0 mt-lg-0 text-center">
                                <li class="nav-item">
                                    <a class="nav-link" href="index.html">Home</a>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link active drop-btn" href="Product-list.html">Categories</a>
                                    <div class="dropdown-content mt-2">
                                        <a href="Product-list.html">Men</a>
                                        <a href="Product-list.html">Women</a>
                                        <a href="Product-list.html">Ethnic</a>
                                    </div>
                                </li>
                                <li class="nav-item dropdown2">
                                    <a class="nav-link drop-btn2" href="my-order.html">Orders</a>
                                    <div class="dropdown-content2 mt-2">
                                        <a href="my-order.html">My Orders</a>
                                        <a href="Track-order.html">Track Orders</a>
                                        <a href="Return-order.html">Return Orders</a>
                                    </div>
                                </li>
                                <li class="nav-item wishlist">
                                    <a class="nav-link" href="Wishlist.html">Wishlist</a>
                                    <span class="badge" id="wishlist-badge">0</span>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link ml-xl-3 ml-md-0" href="My-profile.html">Profile</a>
                                </li>
                                <li class="nav-item notification">
                                    <a class="nav-link" href="Cart-page.html">Cart</a>
                                    <span class="badge" id="cart-badge">0</span>
                                </li>

                            </ul>
                            <!--  -->

                            <div>
                                <form action="/toycat/products" class="search-boxa" method="get">
                                    <input type="search" name="q" autocomplete="off" autocapitalize="off"
                                        placeholder="enter search" required />
                                    <button type="submit"><i class="search-icon"></i></button>
                                </form>
                            </div>

                            <!-- seahc -->



                            <form
                                class="form-inline my-2 my-lg-0 d-flex flex-column align-items-stretch justify-content-start">
                                <button class="btn btn-orange my-2 my-sm-0" id="signin" type="button"
                                    data-toggle="modal" data-target="#exampleModalCenter"
                                    aria-labelledby='sign-in-btn'>SIGN IN</button>
                            </form>
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
                                    <a href="#create-account" id="tab2" class='nav-link' style="border-color: white;"
                                        aria-controls="create-account" aria-selected='false' role="tab" tabindex=0
                                        data-toggle='tab'>CREATE ACCOUNT</a>
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
                                                <input type="password" class="form-control" id="exampleInputPassword1"
                                                    placeholder="Password">
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
                                                <input type="password" class="form-control" id="exampleInputPassword2"
                                                    placeholder="Password">
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
    <!-- End of Latest Products -->
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a class='text-dark' href="index.jsp">Home</a></li>
            <li class="breadcrumb-item font-weight-bold active" aria-current="page">All Products</li>
        </ol>
    </nav>

    <div id="main">
        <aside class='left-main-container'>
            <h5>FILTERS</h5>
            <div class="categories mt-4">
                <h6>CATEGORIES</h6>
            <form action="/toycat/products">
                <input type="checkbox" name="Action Figures" id="Action_Figures"><label for='clothing'>Action Figures</label><br>
                <input type="checkbox" name="Dolls and Accessories" id="Dolls_and_Accessories"><label for='clothing'>Dolls and Accessories</label><br>
                <input type="checkbox" name="Building Toys" id="Building_Toys"><label for='clothing'>Building Toys</label><br>
                <input type="checkbox" name="Anouk" id="Outdoor_Toys"><label for='clothing'>Outdoor Toys</label><br>
                <input type="checkbox" name="Anouk" id="Board_Games_and_Puzzles"><label for='clothing'>Board Games and Puzzles</label><br>
                <input type="submit" value="apply">
            </form>
            </div>
           
        </aside>
        <main class='right-main-container'>
            <div
                class="top-box d-flex flex-lg-row flex-md-row flex-sm-column justify-content-lg-between justify-content-md-between align-items-sm-center justify-content-sm-center">
                <h5>ALL PRODUCTS</h5>
                <select name="popular" id="pop-items">
                    <optgroup>
                        <option value="Popularity">Sort by : Popularity</option>
                        <option value="Price">Sort by : Price</option>
                        <option value="Discount">Sort by : Discount</option>
                    </optgroup>
                </select>
            </div>
            <br>
            <div class="container-fluid">
                <div class="row" id="productListArea">
                </div>
                <!-- <p class="offer text-center mt-3 mb-5">Showing 18 - 25 out of 76 items</p> -->
                <div class="row" id="productListArea2">
                </div>
            </div>
        </main>
    </div>

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
                </div>
                <div class="col col-xl-3 col-lg-3 col-md-4 col-sm-5 d-flex flex-column align-items-start">
                    <h3>SNAPDEAL BUSINESS</h3>
                    <a href="#" role='link'>Shopping App</a>
                    <a href="#" role='link'>Sell on Snapdeal</a>
                </div>
                <div
                    class="col col-xl-2 col-lg-3 col-md-3 col-sm-4 mt-md-0 mt-sm-5 d-flex flex-column align-items-start">
                    <h3>NEED HELP ?</h3>
                    <a href="#" role='link'>Contact Us</a>
                    <a href="FAQ.html" role='link'>FAQ</a>
                </div>

            </div>
        </div>

    </footer>
    <!-- End of Footer -->
    <script src="Javascript/index.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous">
        </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous">
        </script>
    <script>
        window.onload = function () {
            cart_num = JSON.parse(localStorage.getItem("Products_IDs")).length;
            document.querySelector('#cart-badge').innerHTML = cart_num;
            wishlist_num = JSON.parse(localStorage.getItem("Wishlist_IDs")).length;
            document.querySelector('#wishlist-badge').innerHTML = wishlist_num;
        }
    </script>
</body>

</html>