<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">

        <title>Dashboard - Toycat</title>
        <meta content="" name="description">
        <meta content="" name="keywords">

        <!-- Google Fonts -->
        <link href="https://fonts.gstatic.com" rel="preconnect">
        <link
            href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
            rel="stylesheet">

        <!-- Vendor CSS Files -->
        <link href="${pageContext.request.contextPath}/admin/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/admin/vendor/bootstrap-icons/bootstrap-icons.css"
            rel="stylesheet">
        <link href="${pageContext.request.contextPath}/admin/css/style.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/admin/vendor/simple-datatables/style.css" rel="stylesheet">
        <!-- Template Main CSS File -->
        <link href="${pageContext.request.contextPath}/admin/css/style.css" rel="stylesheet">



    </head>

    <body>

        <!-- ======= Header ======= -->
        <header id="header" class="header fixed-top d-flex align-items-center">

            <div class="d-flex align-items-center justify-content-between">
                <a href="${pageContext.request.contextPath}/admin" class="logo d-flex align-items-center">
                    <img src="assets/img/logo.png" alt="">
                    <span class="d-none d-lg-block">ToyCat</span>
                </a>
                <i class="bi bi-list toggle-sidebar-btn"></i>
            </div><!-- End Logo -->



        </header><!-- End Header -->

        <!-- ======= Sidebar ======= -->
        <aside id="sidebar" class="sidebar">

            <ul class="sidebar-nav" id="sidebar-nav">

                <li class="nav-item">
                    <a class="nav-link " href="index.html">
                        <i class="bi bi-grid"></i>
                        <span>Dashboard</span>
                    </a>
                </li><!-- End Dashboard Nav -->

                <li class="nav-item">
                    <a class="nav-link collapsed" href="#">
                        <i class="bi bi-bag"></i>
                        <span>Products</span>
                    </a>

                </li><!-- End Products Nav -->

                <li class="nav-item">
                    <a class="nav-link collapsed" href="index.html">
                        <i class="bi bi-person"></i>
                        <span>Customers</span>
                    </a>
                </li><!-- End Customers Nav -->

                <li class="nav-item">
                    <a class="nav-link collapsed" href="index.html">
                        <i class="bi bi-cash"></i>
                        <span>Orders</span>
                    </a>
                </li><!-- End Orders Nav -->

                <li class="nav-item">
                    <a class="nav-link collapsed" href="pages-login.html">
                        <i class="bi bi-box-arrow-in-right"></i>
                        <span>Logout</span>
                    </a>
                </li>



            </ul>

        </aside><!-- End Sidebar-->

        <main id="main" class="main">

            <div class="pagetitle">
                <h1>Products</h1>
            </div><!-- End Page Title -->

            <section class="section dashboard">
                <!-- Product List -->
                <div class="col-12">
                    <div class="card recent-sales overflow-auto">



                        <div class="card-body">
                            <h5 class="card-title">Products List <span>|<a
                                        href="${pageContext.request.contextPath}/admin/products/add"> Add
                                        Product</a></span></h5>

                            <table class="table table-borderless datatable">
                                <thead>
                                    <tr>
                                        <th scope="col">Preview</th>
                                        <th scope="col">Product</th>
                                        <th scope="col">Quantity</th>
                                        <th scope="col">Price</th>
                                        <th scope="col">Category</th>
                                        <th scope="col">Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="product" items="${productsList}">
                                        <tr id="${product.id}">
                                            <td class="top-selling"><img src="${product.image}" alt=""></td>
                                            <td>${product.name}</td>
                                            <td>${product.quantity}</td>
                                            <td>${product.price}</td>
                                            <td>${product.categoryDto.name}</td>
                                            <td class="d-flex justify-content-evenly">
                                                <form method="POST"
                                                    action="${pageContext.request.contextPath}/admin/products/delete?id=${product.id}">
                                                    <button class="icon-delete-button" type="submit"><i
                                                            class="bi bi-trash-fill"></i></button>
                                                </form>


                                                <a
                                                    href="${pageContext.request.contextPath}/admin/products/edit?id=${product.id}"><i
                                                        class="bi bi-pencil-square"></i></a>

                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>

                        </div>

                    </div>
                </div><!-- End Product List -->
            </section>

        </main><!-- End #main -->



        <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i
                class="bi bi-arrow-up-short"></i></a>

        <!-- Vendor JS Files -->
        <script src="${pageContext.request.contextPath}/admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="${pageContext.request.contextPath}/admin/vendor/simple-datatables/simple-datatables.js"></script>
        <script src="${pageContext.request.contextPath}/admin/vendor/tinymce/tinymce.min.js"></script>

        <!-- Template Main JS File -->
        <script src="${pageContext.request.contextPath}/admin/js/main.js"></script>

    </body>

    </html>