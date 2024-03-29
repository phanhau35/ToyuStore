<%-- 
    Document   : index
    Created on : Feb 1, 2023, 12:06:21 AM
    Author     : phanh
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:set var="title" value="Home"/>

<!DOCTYPE html>
<html>
    <jsp:include page="header.jsp" />  
    <body>

        <div class="hero_area">
            <!-- header section strats -->
            <header class="header_section">
                <jsp:include page="header-user.jsp" />
                <div class="header_bottom">
                    <div class="container-fluid">
                        <nav class="navbar navbar-expand-lg custom_nav-container ">
                            <a class="navbar-brand" href="index.jsp">
                                <span>
                                    Mistify
                                </span>
                            </a>

                            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                                <span class=""> </span>
                            </button>

                            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                                <ul class="navbar-nav ">
                                    <li class="nav-item active">
                                        <a class="nav-link" href="">Home <span class="sr-only">(current)</span></a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="about.jsp"> About</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="product">Products</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="why.jsp">Why Us</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="testimonial.jsp">Testimonial</a>
                                    </li>
                                </ul>
                            </div>
                        </nav>
                    </div>
                </div>
            </header>
            <!-- end header section -->
            <!-- slider section -->
            <section class="slider_section ">
                <div id="customCarousel1" class="carousel slide" data-ride="carousel">
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <div class="container ">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="detail-box">
                                            <h1>
                                                Welcome to our shop
                                            </h1>
                                            <p>
                                                We provide you collectibles from your favourite series.
                                            </p>
                                            <a href="">
                                                Read More
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="img-box">
                                            <img src="images/slider-img.png" alt="">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <div class="container ">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="detail-box">
                                            <h1>
                                                Welcome to our shop
                                            </h1>
                                            <p>
                                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iste quam velit saepe dolorem deserunt quo quidem ad optio.
                                            </p>
                                            <a href="">
                                                Read More
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="img-box">
                                            <img src="images/slider-img.png" alt="">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <div class="container ">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="detail-box">
                                            <h1>
                                                Welcome to our shop
                                            </h1>
                                            <p>
Welcome to our Mistique world! We are a premier online destination for all things anime, bringing you the latest and greatest in anime characters, collectibles, and games. Whether you're a fan of classic or contemporary anime, we've got you covered. Our extensive collection appeals to audiences of all ages, so there's something for everyone here. We also offer a range of Western-related figures for those looking to expand their collection beyond anime. Explore our world and discover the magic of anime with us.



                                            </p>
                                            <a href="">
                                                Read More
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="img-box">
                                            <img src="images/slider-img.png" alt="">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="carousel_btn_box">
                        <a class="carousel-control-prev" href="#customCarousel1" role="button" data-slide="prev">
                            <i class="fa fa-angle-left" aria-hidden="true"></i>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#customCarousel1" role="button" data-slide="next">
                            <i class="fa fa-angle-right" aria-hidden="true"></i>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                </div>
            </section>
            <!-- end slider section -->
        </div>


        <!-- product section -->

        <section class="product_section layout_padding">
            <div class="container">
                <div class="heading_container heading_center">
                    <h2>
                        Our Products
                    </h2>
                </div>
                <div class="row">
                    <c:if test="${empty productList}">
                        <c:redirect url="home" />
                    </c:if>
                    <c:forEach items="${productList}" var="o" begin="0" end="14">
                        <div class="col-sm-6 col-lg-4">
                            <div class="box">
                                <div class="img-container img-box">
                                    <img src="product/${o.id}.jpg" onerror="this.src='product/undefined.png';">
                                    <a href="cart?action=add&id=${o.id}" class="add_cart_btn">
                                        <span>
                                            Add To Cart
                                        </span>
                                    </a>
                                </div>
                                <div class="detail-box">
                                    <h5>
                                        <a href="url">${o.name}</a>
                                    </h5>
                                    <div class="product_info">
                                        <h5>
                                            <span>$</span> ${o.price}
                                        </h5>
                                        <div class="star_container">
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
                <div class="btn_box">
                    <a href="product" class="view_more-link">
                        View More
                    </a>
                </div>
            </div>
        </section>

        <!-- end product section -->

        <!-- about section -->

        <section class="about_section">
            <div class="container-fluid  ">
                <div class="row">
                    <div class="col-md-5 ml-auto">
                        <div class="detail-box pr-md-3">
                            <div class="heading_container">
                                <h2>
                                    We Provide Best For You
                                </h2>
                            </div>
                            <p>
                                Totam architecto rem beatae veniam, cum officiis adipisci soluta perspiciatis ipsa, expedita maiores quae accusantium. Animi veniam aperiam, necessitatibus mollitia ipsum id optio ipsa odio ab facilis sit labore officia!
                                Repellat expedita, deserunt eum soluta rem culpa. Aut, necessitatibus cumque. Voluptas consequuntur vitae aperiam animi sint earum, ex unde cupiditate, molestias dolore quos quas possimus eveniet facilis magnam? Vero, dicta.
                            </p>
                            <a href="">
                                Read More
                            </a>
                        </div>
                    </div>
                    <div class="col-md-6 px-0">
                        <div class="img-box">
                            <img src="images/about-img.jpg" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- end about section -->

        <!-- why us section -->

        <section class="why_us_section layout_padding">
            <div class="container">
                <div class="heading_container heading_center">
                    <h2>
                        Why Choose Us
                    </h2>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="box ">
                            <div class="img-box">
                                <img src="images/w1.png" alt="">
                            </div>
                            <div class="detail-box">
                                <h5>
                                    Fast Delivery
                                </h5>
                                <p>
                                    variations of passages of Lorem Ipsum available
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="box ">
                            <div class="img-box">
                                <img src="images/w2.png" alt="">
                            </div>
                            <div class="detail-box">
                                <h5>
                                    Free Shiping
                                </h5>
                                <p>
                                    variations of passages of Lorem Ipsum available
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="box ">
                            <div class="img-box">
                                <img src="images/w3.png" alt="">
                            </div>
                            <div class="detail-box">
                                <h5>
                                    Best Quality
                                </h5>
                                <p>
                                    variations of passages of Lorem Ipsum available
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- end why us section -->


        <!-- client section -->

        <section class="client_section layout_padding-bottom">
            <div class="container">
                <div class="heading_container heading_center">
                    <h2>
                        What Says Our Customers
                    </h2>
                </div>
            </div>
            <div class="client_container ">
                <div id="carouselExample2Controls" class="carousel slide" data-ride="carousel">
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <div class="container">
                                <div class="box">
                                    <div class="detail-box">
                                        <p>
                                            <i class="fa fa-quote-left" aria-hidden="true"></i>
                                        </p>
                                        <p>
                                            It is a long established fact that a reader will be distracted by the readable content of a page
                                            when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal
                                            distribution of letters, as opposed to using 'Content here, content here', making it lookIt is a
                                            long established fact that a reader will be distracted by the readable content of a page when
                                            looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal
                                            distribution of letters, as opposed to using 'Content here, content here', making it look
                                        </p>
                                    </div>
                                    <div class="client-id">
                                        <div class="img-box">
                                            <img src="images/client.jpg" alt="">
                                        </div>
                                        <div class="name">
                                            <h5>
                                                James Dew
                                            </h5>
                                            <h6>
                                                Photographer
                                            </h6>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <div class="container">
                                <div class="box">
                                    <div class="detail-box">
                                        <p>
                                            <i class="fa fa-quote-left" aria-hidden="true"></i>
                                        </p>
                                        <p>
                                            It is a long established fact that a reader will be distracted by the readable content of a page
                                            when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal
                                            distribution of letters, as opposed to using 'Content here, content here', making it lookIt is a
                                            long established fact that a reader will be distracted by the readable content of a page when
                                            looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal
                                            distribution of letters, as opposed to using 'Content here, content here', making it look
                                        </p>
                                    </div>
                                    <div class="client-id">
                                        <div class="img-box">
                                            <img src="images/client.jpg" alt="">
                                        </div>
                                        <div class="name">
                                            <h5>
                                                James Dew
                                            </h5>
                                            <h6>
                                                Photographer
                                            </h6>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <div class="container">
                                <div class="box">
                                    <div class="detail-box">
                                        <p>
                                            <i class="fa fa-quote-left" aria-hidden="true"></i>
                                        </p>
                                        <p>
                                            It is a long established fact that a reader will be distracted by the readable content of a page
                                            when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal
                                            distribution of letters, as opposed to using 'Content here, content here', making it lookIt is a
                                            long established fact that a reader will be distracted by the readable content of a page when
                                            looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal
                                            distribution of letters, as opposed to using 'Content here, content here', making it look
                                        </p>
                                    </div>
                                    <div class="client-id">
                                        <div class="img-box">
                                            <img src="images/client.jpg" alt="">
                                        </div>
                                        <div class="name">
                                            <h5>
                                                James Dew
                                            </h5>
                                            <h6>
                                                Photographer
                                            </h6>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="carousel_btn-box">
                        <a class="carousel-control-prev" href="#carouselExample2Controls" role="button" data-slide="prev">
                            <span>
                                <i class="fa fa-angle-left" aria-hidden="true"></i>
                            </span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#carouselExample2Controls" role="button" data-slide="next">
                            <span>
                                <i class="fa fa-angle-right" aria-hidden="true"></i>
                            </span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                </div>
            </div>
        </section>
        <!-- end client section -->

        <!-- info section -->
        <section class="info_section ">
            <div class="container">
                <div class="row">
                    <div class="col-md-3">
                        <div class="info_contact">
                            <h5>
                                <a href="" class="navbar-brand">
                                    <span>
                                        Mistify
                                    </span>
                                </a>
                            </h5>
                            <p>
                                <i class="fa fa-map-marker" aria-hidden="true"></i>
                                Address
                            </p>
                            <p>
                                <i class="fa fa-phone" aria-hidden="true"></i>
                                +01 1234567890
                            </p>
                            <p>
                                <i class="fa fa-envelope" aria-hidden="true"></i>
                                demo@gmail.com
                            </p>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="info_info">
                            <h5>
                                Information
                            </h5>
                            <p>
                                Eligendi sunt, provident, debitis nemo, facilis cupiditate velit libero dolorum aperiam enim nulla iste maxime corrupti ad illo libero minus.
                            </p>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="info_links">
                            <h5>
                                Useful Link
                            </h5>
                            <ul>
                                <li>
                                    <a href="index.jsp">
                                        Home
                                    </a>
                                </li>
                                <li>
                                    <a href="about.jsp.jsp">
                                        About
                                    </a>
                                </li>
                                <li>
                                    <a href="product.jsp">
                                        Products
                                    </a>
                                </li>
                                <li>
                                    <a href="why.jsp">
                                        Why Us
                                    </a>
                                </li>
                                <li>
                                    <a href="testimonial.jsp">
                                        Testimonial
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="info_form ">
                            <h5>
                                Newsletter
                            </h5>
                            <form action="">
                                <input type="email" placeholder="Enter your email">
                                <button>
                                    Subscribe
                                </button>
                            </form>
                            <div class="social_box">
                                <a href="">
                                    <i class="fa fa-facebook" aria-hidden="true"></i>
                                </a>
                                <a href="">
                                    <i class="fa fa-twitter" aria-hidden="true"></i>
                                </a>
                                <a href="">
                                    <i class="fa fa-instagram" aria-hidden="true"></i>
                                </a>
                                <a href="">
                                    <i class="fa fa-youtube" aria-hidden="true"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- end info_section -->


        <!-- footer section -->
        <footer class="footer_section">
            <div class="container">
                <p>
                    &copy; <span id="displayYear"></span> All Rights Reserved By
                    <a href="https://html.design/">Free Html Templates</a>
                </p>
            </div>
        </footer>
        <!-- footer section -->

        <!-- jQery -->
        <script src="js/jquery-3.4.1.min.js"></script>
        <!-- bootstrap js -->
        <script src="js/bootstrap.js"></script>
        <!-- custom js -->
        <script src="js/custom.js"></script>


    </body>

</html>