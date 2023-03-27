<jsp:include page="header.jsp" />
    <a class='back-to-top-btn float-right' id="scroll-btn" role='button' aria-label='back to top button'>
        <img src="Images/up-green.png" alt="goto top" role="icon" aria-label='back to top image'>
    </a>
    <!-- End of Latest Products -->
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a class='text-dark' href="home">Home</a></li>
            <li class="breadcrumb-item font-weight-bold active" aria-current="page">All Products</li>
        </ol>
    </nav>

    <div id="main">
        <!-- <aside class='left-main-container'>
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
           
        </aside> -->
        <main class='right-main-container'>
            <div
                class="top-box d-flex flex-lg-row flex-md-row flex-sm-column justify-content-lg-between justify-content-md-between align-items-sm-center justify-content-sm-center">
                <h5>ALL PRODUCTS</h5>
                <!-- <select name="popular" id="pop-items">
                    <optgroup>
                        <option value="Popularity">Sort by : Popularity</option>
                        <option value="Price">Sort by : Price</option>
                        <option value="Discount">Sort by : Discount</option>
                    </optgroup>
                </select> -->
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