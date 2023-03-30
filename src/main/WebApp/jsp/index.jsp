<jsp:include page="header.jsp" />
<!-- LOGIN MODAL -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-label="exampleModalCenterTitle"
    aria-hidden="true">
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
                            aria-controls="login" aria-selected='true' role="tab" tabindex=1 data-toggle='tab'>LOGIN</a>
                    </li>
                    <li class="nav-item">
                        <a href="#create-account" id="tab2" class='nav-link' style="border-color: white;"
                            aria-controls="create-account" aria-selected='false' role="tab" tabindex=0
                            data-toggle='tab'>CREATE
                            ACCOUNT</a>
                    </li>
                </ul>
                <div class="tab-content mt-3" id="myTabContent">
                    <div class="tab-pane active" id="login" role="tabpanel" aria-labelledby="tab1" aria-hidden='false'>
                        <!-- Addition of Form 1 -->
                        <form class="d-flex flex-column" action="login" method="post" id="loginForm"
                            class="needs-validation" novalidate>
                            <div class="text-danger error-message"></div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Email address <span class='required'>*</span></label>
                                <input type="email" class="form-control" id="loginEmail" role="email" name="loginEmail"
                                    placeholder="Enter email" required>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">Password <span class='required'>*</span></label>
                                <div class="input-group d-flex flex-row">
                                    <input type="password" class="form-control" id="loginPassword" role="password"
                                        name="loginPassword" placeholder="Password" required>
                                    <div class="input-group-append">
                                        <div class="input-group-text">
                                            <i class='bi bi-eye-fill ml-2'></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <button type="submit" class="btn btn-orange rounded-0">SIGN
                                IN</button><br>
                        </form>
                    </div>
                    <div class="tab-pane" id="create-account" role="tabpanel" aria-labelledby="tab2" aria-hidden='true'>
                        <!-- Addition of Form 2 -->
                        <form class="d-flex flex-column" action="register" method="post" id="registration-form"
                            class="needs-validation" novalidate>
                            <div class="form-group">
                                <label for="exampleInputUsername2">Username <span class='required'>*</span></label>
                                <input type="text" class="form-control" id="exampleInputUsername2" role="username"
                                    name="name" placeholder="Enter Username" required>
                                <div class="invalid-feedback">Please enter your name.</div>
                            </div>
                            <div class="form-group">
                                <label for="email">Email address <span class='required'>*</span></label>
                                <input type="email" class="form-control" id="email" role="email" name="email"
                                    placeholder="Enter email" required>
                                <div class="invalid-feedback" id="emailValidation">Please enter your
                                    email.
                                </div>

                            </div>

                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label for="creditLimit">Credit limit <span class="required">*</span></label>
                                        <input type="number" class="form-control" id="creditLimit" role="creditLimit"
                                            name="creditLimit" placeholder="Enter credit limit" required>
                                        <div class="invalid-feedback">Please enter your creditLimit.
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label for="birthdate">Birthdate <span class="required">*</span></label>
                                        <input type="date" class="form-control" id="birthdate" role="birthdate"
                                            name="birthdate" placeholder="Enter birthdate" required>
                                        <div class="invalid-feedback">Please enter your birthdate.</div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="address">Address:<span class='required'>*</span></label>
                                <input type="text" class="form-control" id="address" role="address" name="address"
                                    placeholder="Enter your address" required>
                                <div class="invalid-feedback">Please enter your address.</div>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword2">Password <span class='required'>*</span></label>
                                <div class="input-group d-flex flex-row">
                                    <input type="password" class="form-control" id="password" placeholder="Password"
                                        name="password" required>
                                    <div class="invalid-feedback" id="passwordValidation">Please enter
                                        your
                                        password </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="confirmPassword">Confirm Password <span class='required'>*</span></label>
                                <div class="input-group d-flex flex-row">
                                    <input type="password" class="form-control" id="confirmPassword"
                                        placeholder="Confirm password" name="confirmPassword" required>
                                    <div class="invalid-feedback" id="cPasswordValidation">Please enter
                                        your
                                        password confirmation </div>
                                </div>
                            </div>
                            <button type="submit" class="btn btn-default btn-hover btn-orange rounded-0">CREATE
                                ACCOUNT</button><br>
                        </form>
                    </div>
                </div>
            </div>
            <!-- End of Tabs -->
        </div>
    </div>
</div>
<!-- LOGIN MODAL -->

<!-- main banner photo carousel start -->
<div id="carousel-slider" class="carousel slide" data-ride="carousel">
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img class="d-block w-100" src="Images/babies2.jpg" alt="First slide">
        </div>
        <div class="carousel-item">
            <img class="d-block w-100" src="Images/babies3.jpg" alt="Second slide">
        </div>
        <div class="carousel-item">
            <img class="d-block w-100" src="Images/babies2.jpg" alt="Third slide">
        </div>
        <div class="carousel-slider-text">
            <p>60% Discount</p>
            <h2>Coolest<br>Toys</h2>
            <p>Best Toys 2023!</p>
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

<!--  -->



<!-- 
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<div id="carouselExampleControls" class="carousel carousel-dark slide" data-bs-ride="carousel">
    <div class="carousel-inner">
        <div class="carousel-item active">
            <div class="card-wrapper container-sm d-flex  justify-content-around">
                <div class="card  " style="width: 18rem;">
                    <img src="https://source.unsplash.com/collection/190727/1600x900" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>

                    </div>
                </div>
                <div class="card" style="width: 18rem;">
                    <img src="https://source.unsplash.com/collection/190727/1600x900" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>

                    </div>
                </div>
                <div class="card" style="width: 18rem;">
                    <img src="https://source.unsplash.com/collection/190727/1600x900" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>

                    </div>
                </div>
            </div>
        </div>
        <div class="carousel-item">
            <div class="card-wrapper container-sm d-flex   justify-content-around">
                <div class="card  " style="width: 18rem;">
                    <img src="https://source.unsplash.com/collection/190727/1600x900" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>

                    </div>
                </div>
                <div class="card" style="width: 18rem;">
                    <img src="https://source.unsplash.com/collection/190727/1600x900" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>

                    </div>
                </div>
                <div class="card" style="width: 18rem;">
                    <img src="https://source.unsplash.com/collection/190727/1600x900" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>

                    </div>
                </div>
            </div>
        </div>
        <div class="carousel-item">
            <div class="card-wrapper container-sm d-flex  justify-content-around">
                <div class="col col-xl-4 col-lg-4 col-md-6 col-sm-6 col-xs-12">
                    <img src="Images/cat1.png" alt="womens wear" role="img" aria-label="categories image1">
                    <div class="text-box text-box1" role="textbox" aria-label='textbox3'>
                        <h2>WOMENS</h2>
                        <button onclick="location.href='products';">SHOP NOW</button>
                    </div>
                </div>
                <div class="col col-xl-4 col-lg-4 col-md-6 col-sm-6 col-xs-12">
                    <img src="Images/cat2.png" alt="ethnic wear" role="img" aria-label="categories image2">
                    <div class="text-box text-box2" role="textbox" aria-label='textbox2'>
                        <h2>ETHNIC WEAR</h2>
                        <button onclick="location.href='products';">SHOP NOW</button>
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
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls"
            data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls"
            data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>




    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
        crossorigin="anonymous"></script>
 -->

<!-- end of categroies carousel -->
<section class="categories-section" aria-label='Categories section'>
    <div class="container-fluid w-75 p-0" id="categories">
        <h1>SHOP BY CATEGORIES</h1>
        <div class="row">
            <jsp:include page="slider.jsp" />
            <!-- <div class="col col-xl-4 col-lg-4 col-md-6 col-sm-6 col-xs-12">
                <img src="Images/cat1.png" alt="womens wear" role="img" aria-label="categories image1">
                <div class="text-box text-box1" role="textbox" aria-label='textbox3'>
                    <h2>WOMENS</h2>
                    <button onclick="location.href='products';">SHOP NOW</button>
                </div>
            </div>
            <div class="col col-xl-4 col-lg-4 col-md-6 col-sm-6 col-xs-12">
                <img src="Images/cat2.png" alt="ethnic wear" role="img" aria-label="categories image2">
                <div class="text-box text-box2" role="textbox" aria-label='textbox2'>
                    <h2>ETHNIC WEAR</h2>
                    <button onclick="location.href='products';">SHOP NOW</button>
                </div>
            </div>
            <div class="col col-xl-4 col-lg-4 col-md-6 col-sm-6 col-xs-12 mt-lg-0 mt-md-4 mt-sm-4 mt-xs-0">
                <img src="Images/cat3.png" alt="mens" role="img" aria-label="categories image3">
                <div class="text-box text-box3" role="textbox" aria-label='textbox3'>
                    <h2>MENS</h2>
                    <button onclick="location.href='Product-list.html';">SHOP NOW</button>
                </div>
            </div> -->
        </div>
    </div>
</section>

<!--  -->







<!--  -->

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
                <div class="row" id="area1">
                    <!-- <div class="p-col-1 col col-lg-4 col-md-6 col-sm-12">
                            <div class="prod-card mb-4" id="product1">
                                <div class="icons d-flex justify-content-center" id="card_icons">
                                    <a class="heart"><img class='img1' src="Images/heart-icon-trans.png"
                                            alt="inner heart icon"></a>
                                    <a href="Product-view.html"><img src="Images/eye-icon-trans.png"
                                            alt="inner eye icon"></a>
                                    <a class="shopping"><img src="Images/shopping-icon-trans.png"
                                            alt="inner shopping icon"></a>
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
                                    <a href="Product-view.html"><img src="Images/eye-icon-trans.png"
                                            alt="inner eye icon"></a>
                                    <a class="shopping"><img src="Images/shopping-icon-trans.png"
                                            alt="inner shopping icon"></a>
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
                                    <a href="Product-view.html"><img src="Images/eye-icon-trans.png"
                                            alt="inner eye icon"></a>
                                    <a class="shopping"><img src="Images/shopping-icon-trans.png"
                                            alt="inner shopping icon"></a>
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
                                    <a href="Product-view.html"><img src="Images/eye-icon-trans.png"
                                            alt="inner eye icon"></a>
                                    <a class="shopping"><img src="Images/shopping-icon-trans.png"
                                            alt="inner shopping icon"></a>
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
                                    <a href="Product-view.html"><img src="Images/eye-icon-trans.png"
                                            alt="inner eye icon"></a>
                                    <a class="shopping"><img src="Images/shopping-icon-trans.png"
                                            alt="inner shopping icon"></a>
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
                                    <a href="Product-view.html"><img src="Images/eye-icon-trans.png"
                                            alt="inner eye icon"></a>
                                    <a class="shopping"><img src="Images/shopping-icon-trans.png"
                                            alt="inner shopping icon"></a>
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
                    </div> -->
                </div>
            </div>
            <div class="tab-pane" id="pd-list-2" role="tabpanel" aria-labelledby="tab2" aria-hidden='false'>
                <div class="container-fluid mt-5">
                    <!-- <div class="row" id="area2">
                        <div class="col col-lg-4 col-md-6 col-sm-12">
                            <div class="prod-card mb-4" id="product5">
                                <div class="icons d-flex justify-content-center" id="card_icons">
                                    <a class="heart"><img class='img1' src="Images/heart-icon-trans.png"
                                            alt="inner heart icon"></a>
                                    <a href="Product-view.html"><img src="Images/eye-icon-trans.png"
                                            alt="inner eye icon"></a>
                                    <a class="shopping"><img src="Images/shopping-icon-trans.png"
                                            alt="inner shopping icon"></a>
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
                                    <a href="Product-view.html"><img src="Images/eye-icon-trans.png"
                                            alt="inner eye icon"></a>
                                    <a class="shopping"><img src="Images/shopping-icon-trans.png"
                                            alt="inner shopping icon"></a>
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
                                    <a href="Product-view.html"><img src="Images/eye-icon-trans.png"
                                            alt="inner eye icon"></a>
                                    <a class="shopping"><img src="Images/shopping-icon-trans.png"
                                            alt="inner shopping icon"></a>
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
                                    <a href="Product-view.html"><img src="Images/eye-icon-trans.png"
                                            alt="inner eye icon"></a>
                                    <a class="shopping"><img src="Images/shopping-icon-trans.png"
                                            alt="inner shopping icon"></a>
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
                                    <a href="Product-view.html"><img src="Images/eye-icon-trans.png"
                                            alt="inner eye icon"></a>
                                    <a class="shopping"><img src="Images/shopping-icon-trans.png"
                                            alt="inner shopping icon"></a>
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
                                    <a href="Product-view.html"><img src="Images/eye-icon-trans.png"
                                            alt="inner eye icon"></a>
                                    <a class="shopping"><img src="Images/shopping-icon-trans.png"
                                            alt="inner shopping icon"></a>
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
                </div> -->
                </div>
                <div class="tab-pane" id="pd-list-3" role="tabpanel" aria-labelledby="tab3" aria-hidden='false'>
                    <div class="container-fluid mt-5">
                        <div class="row" id="area3">
                            <!-- <div class="col col-lg-4 col-md-6 col-sm-12">
                            <div class="prod-card mb-4" id="product4">
                                <div class="icons d-flex justify-content-center" id="card_icons">
                                    <a class="heart"><img class='img1' src="Images/heart-icon-trans.png"
                                            alt="inner heart icon"></a>
                                    <a href="Product-view.html"><img src="Images/eye-icon-trans.png"
                                            alt="inner eye icon"></a>
                                    <a class="shopping"><img src="Images/shopping-icon-trans.png"
                                            alt="inner shopping icon"></a>
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
                                    <a href="Product-view.html"><img src="Images/eye-icon-trans.png"
                                            alt="inner eye icon"></a>
                                    <a class="shopping"><img src="Images/shopping-icon-trans.png"
                                            alt="inner shopping icon"></a>
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
                                    <a href="Product-view.html"><img src="Images/eye-icon-trans.png"
                                            alt="inner eye icon"></a>
                                    <a class="shopping"><img src="Images/shopping-icon-trans.png"
                                            alt="inner shopping icon"></a>
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
                                    <a href="Product-view.html"><img src="Images/eye-icon-trans.png"
                                            alt="inner eye icon"></a>
                                    <a class="shopping"><img src="Images/shopping-icon-trans.png"
                                            alt="inner shopping icon"></a>
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
                                    <a href="Product-view.html"><img src="Images/eye-icon-trans.png"
                                            alt="inner eye icon"></a>
                                    <a class="shopping"><img src="Images/shopping-icon-trans.png"
                                            alt="inner shopping icon"></a>
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
                                    <a href="Product-view.html"><img src="Images/eye-icon-trans.png"
                                            alt="inner eye icon"></a>
                                    <a class="shopping"><img src="Images/shopping-icon-trans.png"
                                            alt="inner shopping icon"></a>
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
                        </div> -->
                        </div>
                    </div>
                </div>
                <div class="tab-pane" id="pd-list-4" role="tabpanel" aria-labelledby="tab4" aria-hidden='false'>
                    <div class="container-fluid mt-5">
                        <div class="row" id="area4">
                            <!-- <div class="col col-lg-4 col-md-6 col-sm-12">
                            <div class="prod-card mb-4" id="product6">
                                <div class="icons d-flex justify-content-center" id="card_icons">
                                    <a class="heart"><img class='img1' src="Images/heart-icon-trans.png"
                                            alt="inner heart icon"></a>
                                    <a href="Product-view.html"><img src="Images/eye-icon-trans.png"
                                            alt="inner eye icon"></a>
                                    <a class="shopping"><img src="Images/shopping-icon-trans.png"
                                            alt="inner shopping icon"></a>
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
                                    <a href="Product-view.html"><img src="Images/eye-icon-trans.png"
                                            alt="inner eye icon"></a>
                                    <a class="shopping"><img src="Images/shopping-icon-trans.png"
                                            alt="inner shopping icon"></a>
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
                                    <a href="Product-view.html"><img src="Images/eye-icon-trans.png"
                                            alt="inner eye icon"></a>
                                    <a class="shopping"><img src="Images/shopping-icon-trans.png"
                                            alt="inner shopping icon"></a>
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
                                    <a href="Product-view.html"><img src="Images/eye-icon-trans.png"
                                            alt="inner eye icon"></a>
                                    <a class="shopping"><img src="Images/shopping-icon-trans.png"
                                            alt="inner shopping icon"></a>
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
                                    <a href="Product-view.html"><img src="Images/eye-icon-trans.png"
                                            alt="inner eye icon"></a>
                                    <a class="shopping"><img src="Images/shopping-icon-trans.png"
                                            alt="inner shopping icon"></a>
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
                                    <a href="Product-view.html"><img src="Images/eye-icon-trans.png"
                                            alt="inner eye icon"></a>
                                    <a class="shopping"><img src="Images/shopping-icon-trans.png"
                                            alt="inner shopping icon"></a>
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
                        </div> -->
                        </div>
                    </div>
                </div>
            </div>
            <div class="view-more-btn" aria-label='view more button holder'>
                <a href="products"><button aria-labelledby="view more">VIEW MORE +</button></a>
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
                <a href="#" role='link'>Advertise on Snapdeal</a>

            </div>
            <div class="col col-xl-2 col-lg-3 col-md-3 col-sm-4 mt-md-0 mt-sm-5 d-flex flex-column align-items-start">
                <h3>NEED HELP ?</h3>
                <a href="#" role='link'>Contact Us</a>
                <a href="FAQ.html" role='link'>FAQ</a>
                <a href="#" role='link'>Online Shopping</a>
            </div>

        </div>
    </div>
    </div>

    </section>

</footer>

<script src="Javascript/sliderscript.js"></script>

<script src="Javascript/index.js"></script>
<script src="Javascript/register.js"></script>
<script src="Javascript/login.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous">
    </script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js"></script>


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