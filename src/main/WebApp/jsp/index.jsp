<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Swag of India - Home</title>
    <link rel="icon" type="image/png" href="Images/carts.png">
    <link rel="stylesheet" href="style/style.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
        integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
</head>

<body>
    <header class='mb-5'>
        <!-- Start of Top Bar -->
        <div class="top-header" role='top header' id="back-to-top">
            <div class="social-img-holder" role='image holder'>
                <img src="Images/facebook.png" alt="facebook-icon" role='icon' aria-label='facebook icon'>
                <img src="Images/youtube.png" alt="youtube-icon" role='icon' aria-label='youtube icon'>
                <img src="Images/Twitter.png" alt="twitter-icon" role='icon' aria-label='twitter icon'>
            </div>
            <div class="search-box" role='search' id="search-box">
                <input type="search" name="searchbox" role="form" id="searchbox"
                    placeholder="Search Products and Brands" aria-labelledby="search-box">
                <img src="Images/magglass.png" alt="search-icon" role='icon' aria-label='magnifying glass icon'>
            </div>
            <div class="information-tab" role="info container">
                <img src="Images/call.png" id='call-icon' alt="call-icon" role='icon' aria-label='Phone icon'>
                <a id='ph-number' href="" role='link'>+91 9838203708</a>
                <a href="Seller-page.html" role='link'>Sell on Company</a>
                <a href="#" role='link'>Download App</a>
                <img src="Images/langicon.png" id="flag-icon" alt="lang-icon" role='icon' aria-label='language icon'>
                <form action="#" aria-label='form'>
                    <select name="lang-select" id="lang-select" aria-labelledby="select box">
                        <option value="India" role="option" aria-labelledby="Option1">India</option>
                        <option value="UK" role="option" aria-labelledby="Option1">UK</option>
                        <option value="Canada" role="option" aria-labelledby="Option2">Canada</option>
                        <option value="Germany" role="option" aria-labelledby="Option3">Germany</option>
                    </select>
                </form>
            </div>
        </div>
        <!-- End of Top Bar -->

        <!-- Start of Bottom Header -->
        <div class="bottom-header" id="bottom-head">
            <div class="sticky-bar-wrapper bg-white" id="sticky-section">
                <nav class="navbar navbar-expand-lg navbar-light bg-white" id="bottom-header-navbar">
                    <div class="container-fluid">
                        <a class="navbar-brand" href="index.html"><img id="logo_img" src="Images/logo.png" alt="logo" role="img"
                                aria-label=" website logo"></a>
                        <div class="input-group d-xl-none d-lg-none" id="search-box-container">
                            <input type="search" id="search-box-hidden" class="form-control"
                                placeholder="Search products and Brands" aria-label="search box"
                                aria-describedby="basic-addon1">
                            <span id="basic-addon1"><img src="Images/magglass.png" alt="search-icon" role="icon"
                                    aria-labelledby="magnifying glass icon"></span>
                        </div>
                        <button class="navbar-toggler" type="button" data-toggle="collapse"
                            data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false"
                            aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
                            <ul class="navbar-nav mr-auto mt-2 ml-xl-5 ml-lg-5 ml-md-0 mt-lg-0 text-center">
                                <li class="nav-item">
                                    <a class="nav-link active" href="index.html">Home</a>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link drop-btn" href="Product-list.html">Categories</a>
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
                                    <a class="nav-link" href="Cart-page.html" id="cart-btn">Cart</a>
                                    <span class="badge" id="cart-badge">0</span>
                                </li>
                            </ul>
                            <form class="form-inline my-2 my-lg-0 d-flex flex-column align-items-stretch justify-content-start">
                                <button class="btn btn-orange my-2 my-sm-0" id="signin" type="button" data-toggle="modal"
                                data-target="#exampleModalCenter" aria-labelledby='sign-in-btn'>SIGN IN</button>
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
                                    <a href="#login" id="tab1" class='nav-link active' style="border-color: white;" aria-controls="login"
                                        aria-selected='true' role="tab" tabindex=1 data-toggle='tab'>LOGIN</a>
                                </li>
                                <li class="nav-item">
                                    <a href="#create-account" id="tab2" class='nav-link' style="border-color: white;" aria-controls="create-account"
                                        aria-selected='false' role="tab" tabindex=0 data-toggle='tab'>CREATE ACCOUNT</a>
                                </li>
                            </ul>
                            <div class="tab-content mt-3" id="myTabContent">
                                <div class="tab-pane active" id="login" role="tabpanel" aria-labelledby="tab1"
                                    aria-hidden='false'>
                                    <!-- Addition of Form 1 -->
                                    <form class="d-flex flex-column" >
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
                                    <form class="d-flex flex-column" action="register" method="post">
                                        <div class="form-group">
                                            <label for="exampleInputUsername2">Username <span
                                                    class='required'>*</span></label>
                                            <input type="text" class="form-control" id="exampleInputUsername2"
                                                role="username" name="name" placeholder="Enter Username">
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail2">Email address <span
                                                    class='required'>*</span></label>
                                            <input type="email" class="form-control" id="exampleInputEmail2"
                                                role="email" name="email" placeholder="Enter email">
                                        </div>
                                
                                        <div class="row">
                                            <div class="col-sm-6">
                                              <div class="form-group">
                                                <label for="creditLimit">Credit limit <span class="required">*</span></label>
                                                <input type="number" class="form-control" id="creditLimit" role="creditLimit" name ="creditLimit" placeholder="Enter credit limit">
                                              </div>
                                            </div>
                                            <div class="col-sm-6">
                                              <div class="form-group">
                                                <label for="birthdate">Birthdate <span class="required">*</span></label>
                                                <input type="date" class="form-control" id="birthdate" role="birthdate" name="birthdate" placeholder="Enter birthdate" >
                                              </div>
                                            </div>
                                          </div>
                                        <div class="form-group">
                                            <label for="address">Address:<span
                                                    class='required'>*</span></label>
                                            <input type="text" class="form-control" id="address" role="address" name="address" placeholder="Enter your address">
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputPassword2">Password <span class='required'>*</span></label>
                                            <div class="input-group d-flex flex-row">
                                                <input type="password" class="form-control" id="exampleInputPassword2" placeholder="Password" name="password">
                                                <div class="input-group-append">
                                                    <div class="input-group-text">
                                                        <i class='bi bi-eye-fill ml-2'></i>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <input type="submit"
                                            class="btn btn-default btn-hover btn-orange rounded-0">CREATE
                                            ACCOUNT</button><br>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <!-- End of Tabs -->
                        <!-- Start of Modal Footer -->
                    </div>
                </div>
            </div>
            <!-- LOGIN MODAL -->
            <!-- main banner photo carousel start -->
            <div id="carousel-slider" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img class="d-block w-100" src="Images/banner-model.png" alt="First slide">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" src="Images/banner-model.png" alt="Second slide">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" src="Images/banner-model.png" alt="Third slide">
                    </div>
                    <div class="carousel-slider-text">
                        <p>60% Discount</p>
                        <h2>Ethnic<br>Collection</h2>
                        <p>Best Cloth Collection of 2020!</p>
                        <button onclick="location.href='Product-list.html';">SHOP NOW</button>
                    </div>
                </div>
            </div>
            <!-- main banner photo carousel end -->
        </div>
    </header>
    <a class='back-to-top-btn float-right' id="scroll-btn" role='button' aria-label='back to top button'>
        <img src="Images/up-green.png" alt="goto top" role="icon" aria-label='back to top image'>
    </a>
    <!-- End of Bottom Header -->

    <section class="categories-section" aria-label='Categories section'>
        <div class="container-fluid w-75 p-0" id="categories">
            <h1>SHOP BY CATEGORIES</h1>
            <div class="row">
                <div class="col col-xl-4 col-lg-4 col-md-6 col-sm-6 col-xs-12">
                    <img src="Images/cat1.png" alt="womens wear" role="img" aria-label="categories image1">
                    <div class="text-box text-box1" role="textbox" aria-label='textbox3'>
                        <h2>WOMENS</h2>
                        <button onclick="location.href='Product-list.html';">SHOP NOW</button>
                    </div>
                </div>
                <div class="col col-xl-4 col-lg-4 col-md-6 col-sm-6 col-xs-12">
                    <img src="Images/cat2.png" alt="ethnic wear" role="img" aria-label="categories image2">
                    <div class="text-box text-box2" role="textbox" aria-label='textbox2'>
                        <h2>ETHNIC WEAR</h2>
                        <button onclick="location.href='Product-list.html';">SHOP NOW</button>
                    </div>
                </div>
                <div class="col col-xl-4 col-lg-4 col-md-6 col-sm-6 col-xs-12 mt-lg-0 mt-md-4 mt-sm-4 mt-xs-0">
                    <img src="Images/cat3.png" alt="mens" role="img" aria-label="categories image3">
                    <div class="text-box text-box3" role="textbox" aria-label='textbox3'>
                        <h2>MENS</h2>
                        <button onclick="location.href='Product-list.html';">SHOP NOW</button>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <!-- Start of Latest Products -->
    <section class='latest-prods' aria-label='latest products section'>
        <div class="latest-prod-title-bar" aria-label='latest products section title bar'>
            <h2 class="text-center">LATEST PRODUCTS</h2>
            <ul class="desc-tabs nav nav-tabs" id="myProductsTab" role="tablist">
                <li class="nav-item">
                    <a href="#pd-list-1" id="tab1" class='nav-link active' aria-controls="product list 1"
                        aria-selected='true' role="tab" tabindex=1 data-toggle='tab'>All</a>
                </li>
                <li class="nav-item">
                    <a href="#pd-list-2" id="tab2" class='nav-link' aria-controls="create-account" aria-selected='false'
                        role="tab" tabindex=0 data-toggle='tab'>Featured</a>
                </li>
                <li class="nav-item">
                    <a href="#pd-list-3" id="tab3" class='nav-link' aria-controls="create-account" aria-selected='false'
                        role="tab" tabindex=0 data-toggle='tab'>Latest</a>
                </li>
                <li class="nav-item">
                    <a href="#pd-list-4" id="tab4" class='nav-link' aria-controls="create-account" aria-selected='false'
                        role="tab" tabindex=0 data-toggle='tab'>Best Rated</a>
                </li>
            </ul>
        </div>
        <div class="desc-tabs-content tab-content" id="myProductsTabContent">
            <div class="tab-pane active" id="pd-list-1" role="tabpanel" aria-labelledby="tab1" aria-hidden='false'>
                <div class="container-fluid mt-5">
                    <div class="row">
                        <div class="p-col-1 col col-lg-4 col-md-6 col-sm-12">
                            <div class="prod-card mb-4" id="product1">
                                <div class="icons d-flex justify-content-center" id="card_icons">
                                    <a class="heart"><img class='img1' src="Images/heart-icon-trans.png"
                                            alt="inner heart icon"></a>
                                    <a href="Product-view.html"><img src="Images/eye-icon-trans.png" alt="inner eye icon"></a>
                                    <a class="shopping"><img src="Images/shopping-icon-trans.png" alt="inner shopping icon"></a>
                                </div>
                                <img class="card-img-top" src="Images/product1.png" alt="Card image cap">
                                <span class='new_tag'>NEW</span>
                                <div class="card-body d-flex flex-column align-items-center">
                                    <h5 class="card-title">Dummy Text Lorel</h5>
                                    <p class="card-text mb-0"><strong>Rs 480</strong> <del>Rs 1200</del> <span
                                            class="offer">(60%Off)</span></p>
                                    <div class="stars-group d-flex align-items-center mt-2" id="starsgroup">
                                        <img class="stars" src="Images/star.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star-empty.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star-empty.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="p-col-1 col col-lg-4 col-md-6 col-sm-12">
                            <div class="prod-card mb-4" id="product2">
                                <div class="icons d-flex justify-content-center" id="card_icons">
                                    <a class="heart"><img class='img1' src="Images/heart-icon-trans.png"
                                            alt="inner heart icon"></a>
                                    <a href="Product-view.html"><img src="Images/eye-icon-trans.png" alt="inner eye icon"></a>
                                    <a class="shopping"><img src="Images/shopping-icon-trans.png" alt="inner shopping icon"></a>
                                </div>
                                <img class="card-img-top" src="Images/product2.png" alt="Card image cap">
                                <div class="card-body d-flex flex-column align-items-center">
                                    <h5 class="card-title">Dummy Text Lorel</h5>
                                    <p class="card-text mb-0"><strong>Rs 536</strong> <del>Rs 1340</del> <span
                                            class="offer">(60%Off)</span></p>
                                    <div class="stars-group d-flex align-items-center mt-2" id="starsgroup">
                                        <img class="stars" src="Images/star.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star-empty.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="p-col-2 col col-lg-4 col-md-6 col-sm-12">
                            <div class="prod-card mb-4" id="product3">
                                <div class="icons d-flex justify-content-center" id="card_icons">
                                    <a class="heart"><img class='img1' src="Images/heart-icon-trans.png"
                                            alt="inner heart icon"></a>
                                    <a href="Product-view.html"><img src="Images/eye-icon-trans.png" alt="inner eye icon"></a>
                                    <a class="shopping"><img src="Images/shopping-icon-trans.png" alt="inner shopping icon"></a>
                                </div>
                                <img class="card-img-top" src="Images/product3.png" alt="Card image cap">
                                <span class='new_tag'>NEW</span>
                                <div class="card-body d-flex flex-column align-items-center">
                                    <h5 class="card-title">Dummy Text Lorel</h5>
                                    <p class="card-text mb-0"><strong>Rs 824</strong> <del>Rs 2060</del> <span
                                            class="offer">(60%Off)</span></p>
                                    <div class="stars-group d-flex align-items-center mt-2" id="starsgroup">
                                        <img class="stars" src="Images/star.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star.png" alt="star-rating" role="icon"
                                        aria-label='star rating'>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="p-col-2 col col-lg-4 col-md-6 col-sm-12">
                            <div class="prod-card mb-4" id="product4">
                                <div class="icons d-flex justify-content-center" id="card_icons">
                                    <a class="heart"><img class='img1' src="Images/heart-icon-trans.png"
                                            alt="inner heart icon"></a>
                                    <a href="Product-view.html"><img src="Images/eye-icon-trans.png" alt="inner eye icon"></a>
                                    <a class="shopping"><img src="Images/shopping-icon-trans.png" alt="inner shopping icon"></a>
                                </div>
                                <img class="card-img-top" src="Images/product4.png" alt="Card image cap">
                                <span class='new_tag'>NEW</span>
                                <div class="card-body d-flex flex-column align-items-center">
                                    <h5 class="card-title">Dummy Text Lorel</h5>
                                    <p class="card-text mb-0"><strong>Rs 748</strong> <del>Rs 1870</del> <span
                                            class="offer">(60%Off)</span></p>
                                    <div class="stars-group d-flex align-items-center mt-2" id="starsgroup">
                                        <img class="stars" src="Images/star.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star-empty.png" alt="star-rating" role="icon"
                                        aria-label='star rating'>
                                        <img class="stars" src="Images/star-empty.png" alt="star-rating" role="icon"
                                        aria-label='star rating'>
                                        <img class="stars" src="Images/star-empty.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="p-col-3 col col-lg-4 col-md-6 col-sm-12">
                            <div class="prod-card mb-4" id="product5">
                                <div class="icons d-flex justify-content-center" id="card_icons">
                                    <a class="heart"><img class='img1' src="Images/heart-icon-trans.png"
                                            alt="inner heart icon"></a>
                                    <a href="Product-view.html"><img src="Images/eye-icon-trans.png" alt="inner eye icon"></a>
                                    <a class="shopping"><img src="Images/shopping-icon-trans.png" alt="inner shopping icon"></a>
                                </div>
                                <img class="card-img-top" src="Images/product5.png" alt="Card image cap">
                                <div class="card-body d-flex flex-column align-items-center">
                                    <h5 class="card-title">Dummy Text Lorel</h5>
                                    <p class="card-text mb-0"><strong>Rs 400</strong> <del>Rs 1000</del> <span
                                            class="offer">(60%Off)</span></p>
                                    <div class="stars-group d-flex align-items-center mt-2" id="starsgroup">
                                        <img class="stars" src="Images/star.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star-empty.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="p-col-3 col col-lg-4 col-md-6 col-sm-12">
                            <div class="prod-card mb-4" id="product6">
                                <div class="icons d-flex justify-content-center" id="card_icons">
                                    <a class="heart"><img class='img1' src="Images/heart-icon-trans.png"
                                            alt="inner heart icon"></a>
                                    <a href="Product-view.html"><img src="Images/eye-icon-trans.png" alt="inner eye icon"></a>
                                    <a class="shopping"><img src="Images/shopping-icon-trans.png" alt="inner shopping icon"></a>
                                </div>
                                <img class="card-img-top" src="Images/product6.png" alt="Card image cap">
                                <div class="card-body d-flex flex-column align-items-center">
                                    <h5 class="card-title">Dummy Text Lorel</h5>
                                    <p class="card-text mb-0"><strong>Rs 1200</strong> <del>Rs 3000</del> <span
                                            class="offer">(60%Off)</span></p>
                                    <div class="stars-group d-flex align-items-center mt-2" id="starsgroup">
                                        <img class="stars" src="Images/star.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star-empty.png" alt="star-rating" role="icon"
                                        aria-label='star rating'>
                                        <img class="stars" src="Images/star-empty.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="tab-pane" id="pd-list-2" role="tabpanel" aria-labelledby="tab2" aria-hidden='false'>
                <div class="container-fluid mt-5">
                    <div class="row">
                        <div class="col col-lg-4 col-md-6 col-sm-12">
                            <div class="prod-card mb-4" id="product5">
                                <div class="icons d-flex justify-content-center" id="card_icons">
                                    <a class="heart"><img class='img1' src="Images/heart-icon-trans.png"
                                            alt="inner heart icon"></a>
                                    <a href="Product-view.html"><img src="Images/eye-icon-trans.png" alt="inner eye icon"></a>
                                    <a class="shopping"><img src="Images/shopping-icon-trans.png" alt="inner shopping icon"></a>
                                </div>
                                <img class="card-img-top" src="Images/product5.png" alt="Card image cap">
                                <div class="card-body d-flex flex-column align-items-center">
                                    <h5 class="card-title">Dummy Text Lorel</h5>
                                    <p class="card-text mb-0"><strong>Rs 400</strong> <del>Rs 1000</del> <span
                                            class="offer">(60%Off)</span></p>
                                    <div class="stars-group d-flex align-items-center mt-2" id="starsgroup">
                                        <img class="stars" src="Images/star.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star-empty.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col col-lg-4 col-md-6 col-sm-12">
                            <div class="prod-card mb-4" id="product5">
                                <div class="icons d-flex justify-content-center" id="card_icons">
                                    <a class="heart"><img class='img1' src="Images/heart-icon-trans.png"
                                            alt="inner heart icon"></a>
                                    <a href="Product-view.html"><img src="Images/eye-icon-trans.png" alt="inner eye icon"></a>
                                    <a class="shopping"><img src="Images/shopping-icon-trans.png" alt="inner shopping icon"></a>
                                </div>
                                <img class="card-img-top" src="Images/product5.png" alt="Card image cap">
                                <span class='new_tag'>NEW</span>
                                <div class="card-body d-flex flex-column align-items-center">
                                    <h5 class="card-title">Dummy Text Lorel</h5>
                                    <p class="card-text mb-0"><strong>Rs 400</strong> <del>Rs 1000</del> <span
                                            class="offer">(60%Off)</span></p>
                                    <div class="stars-group d-flex align-items-center mt-2" id="starsgroup">
                                        <img class="stars" src="Images/star.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star-empty.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col col-lg-4 col-md-6 col-sm-12">
                            <div class="prod-card mb-4" id="product5">
                                <div class="icons d-flex justify-content-center" id="card_icons">
                                    <a class="heart"><img class='img1' src="Images/heart-icon-trans.png"
                                            alt="inner heart icon"></a>
                                    <a href="Product-view.html"><img src="Images/eye-icon-trans.png" alt="inner eye icon"></a>
                                    <a class="shopping"><img src="Images/shopping-icon-trans.png" alt="inner shopping icon"></a>
                                </div>
                                <img class="card-img-top" src="Images/product5.png" alt="Card image cap">
                                <div class="card-body d-flex flex-column align-items-center">
                                    <h5 class="card-title">Dummy Text Lorel</h5>
                                    <p class="card-text mb-0"><strong>Rs 400</strong> <del>Rs 1000</del> <span
                                            class="offer">(60%Off)</span></p>
                                    <div class="stars-group d-flex align-items-center mt-2" id="starsgroup">
                                        <img class="stars" src="Images/star.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star-empty.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col col-lg-4 col-md-6 col-sm-12">
                            <div class="prod-card mb-4" id="product5">
                                <div class="icons d-flex justify-content-center" id="card_icons">
                                    <a class="heart"><img class='img1' src="Images/heart-icon-trans.png"
                                            alt="inner heart icon"></a>
                                    <a href="Product-view.html"><img src="Images/eye-icon-trans.png" alt="inner eye icon"></a>
                                    <a class="shopping"><img src="Images/shopping-icon-trans.png" alt="inner shopping icon"></a>
                                </div>
                                <img class="card-img-top" src="Images/product5.png" alt="Card image cap">
                                <div class="card-body d-flex flex-column align-items-center">
                                    <h5 class="card-title">Dummy Text Lorel</h5>
                                    <p class="card-text mb-0"><strong>Rs 400</strong> <del>Rs 1000</del> <span
                                            class="offer">(60%Off)</span></p>
                                    <div class="stars-group d-flex align-items-center mt-2" id="starsgroup">
                                        <img class="stars" src="Images/star.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star-empty.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col col-lg-4 col-md-6 col-sm-12">
                            <div class="prod-card mb-4" id="product5">
                                <div class="icons d-flex justify-content-center" id="card_icons">
                                    <a class="heart"><img class='img1' src="Images/heart-icon-trans.png"
                                            alt="inner heart icon"></a>
                                    <a href="Product-view.html"><img src="Images/eye-icon-trans.png" alt="inner eye icon"></a>
                                    <a class="shopping"><img src="Images/shopping-icon-trans.png" alt="inner shopping icon"></a>
                                </div>
                                <img class="card-img-top" src="Images/product5.png" alt="Card image cap">
                                <span class='new_tag'>NEW</span>
                                <div class="card-body d-flex flex-column align-items-center">
                                    <h5 class="card-title">Dummy Text Lorel</h5>
                                    <p class="card-text mb-0"><strong>Rs 400</strong> <del>Rs 1000</del> <span
                                            class="offer">(60%Off)</span></p>
                                    <div class="stars-group d-flex align-items-center mt-2" id="starsgroup">
                                        <img class="stars" src="Images/star.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star-empty.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col col-lg-4 col-md-6 col-sm-12">
                            <div class="prod-card mb-4" id="product5">
                                <div class="icons d-flex justify-content-center" id="card_icons">
                                    <a class="heart"><img class='img1' src="Images/heart-icon-trans.png"
                                            alt="inner heart icon"></a>
                                    <a href="Product-view.html"><img src="Images/eye-icon-trans.png" alt="inner eye icon"></a>
                                    <a class="shopping"><img src="Images/shopping-icon-trans.png" alt="inner shopping icon"></a>
                                </div>
                                <img class="card-img-top" src="Images/product5.png" alt="Card image cap">
                                <span class='new_tag'>NEW</span>
                                <div class="card-body d-flex flex-column align-items-center">
                                    <h5 class="card-title">Dummy Text Lorel</h5>
                                    <p class="card-text mb-0"><strong>Rs 400</strong> <del>Rs 1000</del> <span
                                            class="offer">(60%Off)</span></p>
                                    <div class="stars-group d-flex align-items-center mt-2" id="starsgroup">
                                        <img class="stars" src="Images/star.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star-empty.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="tab-pane" id="pd-list-3" role="tabpanel" aria-labelledby="tab3" aria-hidden='false'>
                <div class="container-fluid mt-5">
                    <div class="row">
                        <div class="col col-lg-4 col-md-6 col-sm-12">
                            <div class="prod-card mb-4" id="product4">
                                <div class="icons d-flex justify-content-center" id="card_icons">
                                    <a class="heart"><img class='img1' src="Images/heart-icon-trans.png"
                                            alt="inner heart icon"></a>
                                    <a href="Product-view.html"><img src="Images/eye-icon-trans.png" alt="inner eye icon"></a>
                                    <a class="shopping"><img src="Images/shopping-icon-trans.png" alt="inner shopping icon"></a>
                                </div>
                                <img class="card-img-top" src="Images/product4.png" alt="Card image cap">
                                <span class='new_tag'>NEW</span>
                                <div class="card-body d-flex flex-column align-items-center">
                                    <h5 class="card-title">Dummy Text Lorel</h5>
                                    <p class="card-text mb-0"><strong>Rs 748</strong> <del>Rs 1870</del> <span
                                        class="offer">(60%Off)</span></p>
                                    <div class="stars-group d-flex align-items-center mt-2" id="starsgroup">
                                        <img class="stars" src="Images/star.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star-empty.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star-empty.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star-empty.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col col-lg-4 col-md-6 col-sm-12">
                            <div class="prod-card mb-4" id="product4">
                                <div class="icons d-flex justify-content-center" id="card_icons">
                                    <a class="heart"><img class='img1' src="Images/heart-icon-trans.png"
                                            alt="inner heart icon"></a>
                                    <a href="Product-view.html"><img src="Images/eye-icon-trans.png" alt="inner eye icon"></a>
                                    <a class="shopping"><img src="Images/shopping-icon-trans.png" alt="inner shopping icon"></a>
                                </div>
                                <img class="card-img-top" src="Images/product4.png" alt="Card image cap">
                                <div class="card-body d-flex flex-column align-items-center">
                                    <h5 class="card-title">Dummy Text Lorel</h5>
                                    <p class="card-text mb-0"><strong>Rs 748</strong> <del>Rs 1870</del> <span
                                        class="offer">(60%Off)</span></p>
                                    <div class="stars-group d-flex align-items-center mt-2" id="starsgroup">
                                        <img class="stars" src="Images/star.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star-empty.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star-empty.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star-empty.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col col-lg-4 col-md-6 col-sm-12">
                            <div class="prod-card mb-4" id="product4">
                                <div class="icons d-flex justify-content-center" id="card_icons">
                                    <a class="heart"><img class='img1' src="Images/heart-icon-trans.png"
                                            alt="inner heart icon"></a>
                                    <a href="Product-view.html"><img src="Images/eye-icon-trans.png" alt="inner eye icon"></a>
                                    <a class="shopping"><img src="Images/shopping-icon-trans.png" alt="inner shopping icon"></a>
                                </div>
                                <img class="card-img-top" src="Images/product4.png" alt="Card image cap">
                                <div class="card-body d-flex flex-column align-items-center">
                                    <h5 class="card-title">Dummy Text Lorel</h5>
                                    <p class="card-text mb-0"><strong>Rs 748</strong> <del>Rs 1870</del> <span
                                        class="offer">(60%Off)</span></p>
                                    <div class="stars-group d-flex align-items-center mt-2" id="starsgroup">
                                        <img class="stars" src="Images/star.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star-empty.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star-empty.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star-empty.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col col-lg-4 col-md-6 col-sm-12">
                            <div class="prod-card mb-4" id="product4">
                                <div class="icons d-flex justify-content-center" id="card_icons">
                                    <a class="heart"><img class='img1' src="Images/heart-icon-trans.png"
                                            alt="inner heart icon"></a>
                                    <a href="Product-view.html"><img src="Images/eye-icon-trans.png" alt="inner eye icon"></a>
                                    <a class="shopping"><img src="Images/shopping-icon-trans.png" alt="inner shopping icon"></a>
                                </div>
                                <img class="card-img-top" src="Images/product4.png" alt="Card image cap">
                                <div class="card-body d-flex flex-column align-items-center">
                                    <h5 class="card-title">Dummy Text Lorel</h5>
                                    <p class="card-text mb-0"><strong>Rs 748</strong> <del>Rs 1870</del> <span
                                        class="offer">(60%Off)</span></p>
                                    <div class="stars-group d-flex align-items-center mt-2" id="starsgroup">
                                        <img class="stars" src="Images/star.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star-empty.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star-empty.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star-empty.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col col-lg-4 col-md-6 col-sm-12">
                            <div class="prod-card mb-4" id="product4">
                                <div class="icons d-flex justify-content-center" id="card_icons">
                                    <a class="heart"><img class='img1' src="Images/heart-icon-trans.png"
                                            alt="inner heart icon"></a>
                                    <a href="Product-view.html"><img src="Images/eye-icon-trans.png" alt="inner eye icon"></a>
                                    <a class="shopping"><img src="Images/shopping-icon-trans.png" alt="inner shopping icon"></a>
                                </div>
                                <img class="card-img-top" src="Images/product4.png" alt="Card image cap">
                                <span class='new_tag'>NEW</span>
                                <div class="card-body d-flex flex-column align-items-center">
                                    <h5 class="card-title">Dummy Text Lorel</h5>
                                    <p class="card-text mb-0"><strong>Rs 748</strong> <del>Rs 1870</del> <span
                                        class="offer">(60%Off)</span></p>
                                    <div class="stars-group d-flex align-items-center mt-2" id="starsgroup">
                                        <img class="stars" src="Images/star.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star-empty.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star-empty.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star-empty.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col col-lg-4 col-md-6 col-sm-12">
                            <div class="prod-card mb-4" id="product4">
                                <div class="icons d-flex justify-content-center" id="card_icons">
                                    <a class="heart"><img class='img1' src="Images/heart-icon-trans.png"
                                            alt="inner heart icon"></a>
                                    <a href="Product-view.html"><img src="Images/eye-icon-trans.png" alt="inner eye icon"></a>
                                    <a class="shopping"><img src="Images/shopping-icon-trans.png" alt="inner shopping icon"></a>
                                </div>
                                <img class="card-img-top" src="Images/product4.png" alt="Card image cap">
                                <div class="card-body d-flex flex-column align-items-center">
                                    <h5 class="card-title">Dummy Text Lorel</h5>
                                    <p class="card-text mb-0"><strong>Rs 748</strong> <del>Rs 1870</del> <span
                                        class="offer">(60%Off)</span></p>
                                    <div class="stars-group d-flex align-items-center mt-2" id="starsgroup">
                                        <img class="stars" src="Images/star.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star-empty.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star-empty.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star-empty.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="tab-pane" id="pd-list-4" role="tabpanel" aria-labelledby="tab4" aria-hidden='false'>
                <div class="container-fluid mt-5">
                    <div class="row">
                        <div class="col col-lg-4 col-md-6 col-sm-12">
                            <div class="prod-card mb-4" id="product6">
                                <div class="icons d-flex justify-content-center" id="card_icons">
                                    <a class="heart"><img class='img1' src="Images/heart-icon-trans.png"
                                            alt="inner heart icon"></a>
                                    <a href="Product-view.html"><img src="Images/eye-icon-trans.png" alt="inner eye icon"></a>
                                    <a class="shopping"><img src="Images/shopping-icon-trans.png" alt="inner shopping icon"></a>
                                </div>
                                <img class="card-img-top" src="Images/product6.png" alt="Card image cap">
                                <div class="card-body d-flex flex-column align-items-center">
                                    <h5 class="card-title">Dummy Text Lorel</h5>
                                    <p class="card-text mb-0"><strong>Rs 1200</strong> <del>Rs 3000</del> <span
                                        class="offer">(60%Off)</span></p>
                                    <div class="stars-group d-flex align-items-center mt-2" id="starsgroup">
                                        <img class="stars" src="Images/star.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star-empty.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star-empty.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col col-lg-4 col-md-6 col-sm-12">
                            <div class="prod-card mb-4" id="product6">
                                <div class="icons d-flex justify-content-center" id="card_icons">
                                    <a class="heart"><img class='img1' src="Images/heart-icon-trans.png"
                                            alt="inner heart icon"></a>
                                    <a href="Product-view.html"><img src="Images/eye-icon-trans.png" alt="inner eye icon"></a>
                                    <a class="shopping"><img src="Images/shopping-icon-trans.png" alt="inner shopping icon"></a>
                                </div>
                                <img class="card-img-top" src="Images/product6.png" alt="Card image cap">
                                <div class="card-body d-flex flex-column align-items-center">
                                    <h5 class="card-title">Dummy Text Lorel</h5>
                                    <p class="card-text mb-0"><strong>Rs 1200</strong> <del>Rs 3000</del> <span
                                        class="offer">(60%Off)</span></p>
                                    <div class="stars-group d-flex align-items-center mt-2" id="starsgroup">
                                        <img class="stars" src="Images/star.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star-empty.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star-empty.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col col-lg-4 col-md-6 col-sm-12">
                            <div class="prod-card mb-4" id="product6">
                                <div class="icons d-flex justify-content-center" id="card_icons">
                                    <a class="heart"><img class='img1' src="Images/heart-icon-trans.png"
                                            alt="inner heart icon"></a>
                                    <a href="Product-view.html"><img src="Images/eye-icon-trans.png" alt="inner eye icon"></a>
                                    <a class="shopping"><img src="Images/shopping-icon-trans.png" alt="inner shopping icon"></a>
                                </div>
                                <img class="card-img-top" src="Images/product6.png" alt="Card image cap">
                                <div class="card-body d-flex flex-column align-items-center">
                                    <h5 class="card-title">Dummy Text Lorel</h5>
                                    <p class="card-text mb-0"><strong>Rs 1200</strong> <del>Rs 3000</del> <span
                                        class="offer">(60%Off)</span></p>
                                    <div class="stars-group d-flex align-items-center mt-2" id="starsgroup">
                                        <img class="stars" src="Images/star.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star-empty.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star-empty.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col col-lg-4 col-md-6 col-sm-12">
                            <div class="prod-card mb-4" id="product6">
                                <div class="icons d-flex justify-content-center" id="card_icons">
                                    <a class="heart"><img class='img1' src="Images/heart-icon-trans.png"
                                            alt="inner heart icon"></a>
                                    <a href="Product-view.html"><img src="Images/eye-icon-trans.png" alt="inner eye icon"></a>
                                    <a class="shopping"><img src="Images/shopping-icon-trans.png" alt="inner shopping icon"></a>
                                </div>
                                <img class="card-img-top" src="Images/product6.png" alt="Card image cap">
                                <div class="card-body d-flex flex-column align-items-center">
                                    <h5 class="card-title">Dummy Text Lorel</h5>
                                    <p class="card-text mb-0"><strong>Rs 1200</strong> <del>Rs 3000</del> <span
                                        class="offer">(60%Off)</span></p>
                                    <div class="stars-group d-flex align-items-center mt-2" id="starsgroup">
                                        <img class="stars" src="Images/star.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star-empty.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star-empty.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col col-lg-4 col-md-6 col-sm-12">
                            <div class="prod-card mb-4" id="product6">
                                <div class="icons d-flex justify-content-center" id="card_icons">
                                    <a class="heart"><img class='img1' src="Images/heart-icon-trans.png"
                                            alt="inner heart icon"></a>
                                    <a href="Product-view.html"><img src="Images/eye-icon-trans.png" alt="inner eye icon"></a>
                                    <a class="shopping"><img src="Images/shopping-icon-trans.png" alt="inner shopping icon"></a>
                                </div>
                                <img class="card-img-top" src="Images/product6.png" alt="Card image cap">
                                <span class='new_tag'>NEW</span>
                                <div class="card-body d-flex flex-column align-items-center">
                                    <h5 class="card-title">Dummy Text Lorel</h5>
                                    <p class="card-text mb-0"><strong>Rs 1200</strong> <del>Rs 3000</del> <span
                                        class="offer">(60%Off)</span></p>
                                    <div class="stars-group d-flex align-items-center mt-2" id="starsgroup">
                                        <img class="stars" src="Images/star.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star-empty.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star-empty.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col col-lg-4 col-md-6 col-sm-12">
                            <div class="prod-card mb-4" id="product6">
                                <div class="icons d-flex justify-content-center" id="card_icons">
                                    <a class="heart"><img class='img1' src="Images/heart-icon-trans.png"
                                            alt="inner heart icon"></a>
                                    <a href="Product-view.html"><img src="Images/eye-icon-trans.png" alt="inner eye icon"></a>
                                    <a class="shopping"><img src="Images/shopping-icon-trans.png" alt="inner shopping icon"></a>
                                </div>
                                <img class="card-img-top" src="Images/product6.png" alt="Card image cap">
                                <span class='new_tag'>NEW</span>
                                <div class="card-body d-flex flex-column align-items-center">
                                    <h5 class="card-title">Dummy Text Lorel</h5>
                                    <p class="card-text mb-0"><strong>Rs 1200</strong> <del>Rs 3000</del> <span
                                        class="offer">(60%Off)</span></p>
                                    <div class="stars-group d-flex align-items-center mt-2" id="starsgroup">
                                        <img class="stars" src="Images/star.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star-empty.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                        <img class="stars" src="Images/star-empty.png" alt="star-rating" role="icon"
                                            aria-label='star rating'>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="view-more-btn" aria-label='view more button holder'>
            <a href="Product-list.html"><button aria-labelledby="view more">VIEW MORE +</button></a>
        </div>
    </section>

    <!-- End of Latest Products -->

    <!-- Start of Payment and Help -->
    <section class='payment-help mt-5' aria-label='payments and help section'>
        <div class="container-fluid">
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

    <script src="Javascript/index.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous">
    </script>
    <script>
        // cart page
        window.onload = function () {
            cart_num = JSON.parse(localStorage.getItem("Products_IDs")).length;
            document.querySelector('#cart-badge').innerHTML = cart_num;
            wishlist_num = JSON.parse(localStorage.getItem("Wishlist_IDs")).length;
            document.querySelector('#wishlist-badge').innerHTML = wishlist_num;
        }
    </script>
</body>
</html>