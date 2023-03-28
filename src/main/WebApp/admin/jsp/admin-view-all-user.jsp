<jsp:include page="admin-header.jsp"/>

        <main id="main" class="main">

            <div class="pagetitle">
                <h1>Users</h1>
            </div><!-- End Page Title -->

            <section class="section dashboard">
                <!-- Product List -->
                <div class="col-12">
                    <div class="card recent-sales overflow-auto">

                        <div class="card-body">
                            <h5 class="card-title">users List</h5>

                            <table class="table table-borderless datatable">
                                <thead>
                                    <tr>
                                        <th scope="col">Nmae</th>
                                        <th scope="col">Email</th>
                                        <th scope="col">Address</th>
                                        <th scope="col">CreditLimit</th>
                                        <th scope="col">Birthdate</th>
                                        <th scope="col">Role</th>
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