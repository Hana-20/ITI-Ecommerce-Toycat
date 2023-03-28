<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Swag of India - Home</title>
        <link rel="icon" type="image/png" href="Images/carts.png">
        <link rel="stylesheet" href="style/style.css">
        <link rel="stylesheet" href="style/styleSheet.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
            integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    </head>
   <body>
        <header class='mb-5'>
            <div name="lang-select" id="lang-select" aria-labelledby="select box">
            </div>

            <!-- Start of Bottom Header -->
            <div class="bottom-header" id="bottom-head">
                <div class="sticky-bar-wrapper bg-white" id="sticky-section">
                    <nav class="navbar navbar-expand-lg navbar-light bg-white" id="bottom-header-navbar">
                        <div class="container-fluid">
                            <a class="navbar-brand" href="index.html"><img id="logo_img" src="Images/logo.png"
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

                                    <li class="nav-item notification">
                                        <a class="nav-link" href="${pageContext.request.contextPath}/cart" id="cart-btn">Cart</a>
                                        <span class="badge" id="cart-badge">0</span>
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
                                            <button class="btn btn-primary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                              Hello, <b>${sessionScope.user.username}</b>
                                            </button>
                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                <c:if test="${sessionScope.user.role.toString()  eq '1'}">
                                                    <a class="dropdown-item" href="${pageContext.request.contextPath}/admin">admin </a> 
                                                     </c:if>
                                                     
                                                <a class="dropdown-item" href="${pageContext.request.contextPath}/profile">profile &nbsp;&nbsp;  <i class="fa fa-user"></i></a> 
                                                <form method="post" action="logout">
                                                <button class="dropdown-item" id="signout" type="submit"
                                                    class="sign" >log out &nbsp;&nbsp;<i class="fa fa-sign-out"></i></button>
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