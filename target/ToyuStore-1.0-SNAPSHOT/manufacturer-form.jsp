<%-- 
    Document   : manufacturer-form
    Created on : Feb 26, 2023, 1:14:40 PM
    Author     : phanh
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="header.jsp" /> 

        <title>Detail</title>
    </head>
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
                                    <li class="nav-item ">
                                        <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="about.jsp"> About</a>
                                    </li>
                                    <li class="nav-item active">
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
        </div>
        <!-- end header section code start here-->
        <div class="container">


            <c:if test="${param.action == 'create'}">
                <h2>Create</h2>
                <form method="post" action="manufacturers">
                    <div class="form-group">
                        <label for="description">Name</label>
                        <input class="form-control" name="name" id="description" value=""></input>
                    </div>
                    <div class="form-group">
                        <label for="countrySelect">Select a Country:</label>
                        <select class="form-control" id="countrySelect" name="country">
                            <!--<option value="">--Select--</option>-->
                            <option value="Australia">Australia</option>
                            <option value="Canada">Canada</option>
                            <option value="China">China</option>
                            <option value="France">France</option>
                            <option value="Germany">Germany</option>
                            <option value="Japan">Japan</option>
                            <option value="United Kingdom">United Kingdom</option>
                            <option value="United States">United States</option>
                            <option value="Vietnam">Vietnam</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label>
                            <input name="status" type="checkbox" id="enable-checkbox" checked>
                            <span id="enable-text">Status: Enable</span>
                        </label>
                    </div>
                    <input type="hidden" name="action" value="do-create">
                    <button type="submit" class="btn btn-primary btn-lg">Create</button>
                </form>
            </c:if>
            <c:if test="${param.action == 'edit'}">
                <c:set var="object" value="${manufacturer}" />
                <h2>Create</h2>
                <form method="post" action="manufacturers">
                    <div class="form-group">
                        <label for="description">Name</label>
                        <input class="form-control" name="name" id="description" value="${manufacturer.name}"></input>
                    </div>
                    <div class="form-group">
                        <label for="countrySelect">Select a Country:</label>
                        <select class="form-control" id="countrySelect" name="country">
                            <!--<option value="">--Select--</option>-->
                            <option value="Australia">Australia</option>
                            <option value="Canada">Canada</option>
                            <option value="China">China</option>
                            <option value="France">France</option>
                            <option value="Germany">Germany</option>
                            <option value="Japan">Japan</option>
                            <option value="United Kingdom">United Kingdom</option>
                            <option value="United States">United States</option>
                            <option value="Vietnam">Vietnam</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label>
                            <input name="status" type="checkbox" id="enable-checkbox" checked>
                            <span id="enable-text">Status: Enable</span>
                        </label>
                    </div>
                    <input type="hidden" name="action" value="do-edit">
                    <input type="hidden" name="id" value="${manufacturer.id}">
                    <button type="submit" class="btn btn-primary btn-lg">Edit</button>
                </form>
            </c:if>

        </div>        <!-- info section -->
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
                                    <a href="about.jsp">
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
        <c:if test="${param.action == 'edit'}">
            <c:set var="object" value="${manufacturer}" />
            <script>
                $(document).ready(function () {
                    $("#countrySelect").val("${manufacturer.country}");
                });
            </script>
        </c:if>
    </body>
</html>

