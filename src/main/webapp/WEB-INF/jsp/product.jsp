<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <link rel="icon" href="img/fev.png" type="image/png"/>
  <title>Home</title>
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="<c:url value="/resources/css/css/bootstrap.css"/>">
  <link rel="stylesheet" href="<c:url value="/resources/css/vendors/liner/style.css"/>">
  <link rel="stylesheet" href="<c:url value="/resources/css/css/font-awesome.min.css"/>">
  <link rel="stylesheet" href="<c:url value="/resources/css/css/them-icons.css"/>">
  <link rel="stylesheet" href="<c:url value="/resources/css/css/flat.css"/>">
  <link rel="stylesheet" href="<c:url value="/resources/css/vendors/owl-carousel/owl.carousel.min.css"/>">
  <link rel="stylesheet" href="<c:url value="/resources/css/vendors/lightbox/simpleLightbox.css"/>">
  <link rel="stylesheet" href="<c:url value="/resources/css/vendors/nice-select/css/nice-select.css"/>">
  <link rel="stylesheet" href="<c:url value="/resources/css/vendors/animate-css/animate.css"/>">
  <link rel="stylesheet" href="<c:url value="/resources/css/vendors/jquery-ui/jquery-ui.css"/>">
  <!-- main css -->
  <link rel="stylesheet" href="<c:url value="/resources/css/css/style.css"/>"/>
  <link rel="stylesheet" href="<c:url value="/resources/css/css/responsive.css"/>"/>


  <link rel="stylesheet" href="<c:url value="/resources/css/font-free-6.1.2-web/css/solid.css"/>">
  <link rel="stylesheet" href="<c:url value="/resources/css/pageHome.css"/>">


</head>

<body>
  <header class="header_area">
    <div class="main_menu">
      <div class="container">
        <nav class="navbar navbar-expand-lg navbar-light w-100">

          <a class="navbar-brand logo_h" href="index.html">
            <img src="<c:url value='/resources/css/img/logo/Logo1_tp_icon.png'/>"/>

          </a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>

          <div class="collapse navbar-collapse offset w-100" id="navbarSupportedContent">
            <div class="row w-100 mr-0">
              <div class="col-lg-7 pr-0">
                <ul class="nav navbar-nav center_nav pull-right">
                  <li class="nav-item active">
                    <a class="nav-link" href="index.html">Trang Chủ</a>
                  </li>

                  <li class="nav-item submenu dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                      aria-expanded="false">Danh Mục</a>
                    <ul class="dropdown-menu">
                        <c:forEach var="category" items="${categoryList}" varStatus="index">
                          <li class="nav-item">
                            <a class="nav-link" href="blog.html">${category.name}</a>
                          </li>
                        </c:forEach>
                    </ul>
                  </li>
                  <li class="nav-item submenu dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                      aria-expanded="false">Pages</a>
                    <ul class="dropdown-menu">
                      <li class="nav-item">
                        <a class="nav-link" href="tracking.html">Tracking</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="elements.html">Elements</a>
                      </li>
                    </ul>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="contact.html">Contact</a>
                  </li>
                </ul>
              </div>

              <div class="col-lg-5 pr-0">
                <ul class="nav navbar-nav navbar-right right_nav pull-right">

                  <li class="nav-item">
                    <a href="#" class="icons">
                      <i class="ti-shopping-cart">Giỏ Hàng</i>
                    </a>
                  </li>

                  <li class="nav-items">
                      <li><a style="color: black;" href="#"><i class="fa fa-user"></i> Đăng Nhập</a></li>
                    </a>
                  </li>

                  <li class="nav-items">
                      <li><a style="color: black;" href="#"><i class="fa fa-user"></i> Đăng Ký</a></li>
                    </a>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </nav>
      </div>
    </div>
  </header>
  <div class="search">
    <form:form action="search" method="get">
      <div class="input-group">
          <input name="searchInput" type="text" class="form-control rounded" placeholder="Sản Phẩm Cần Tìm?" aria-label="Search"
              aria-describedby="search-addon" />
          <button type="submit" class="btn btn-outline-primary">Tìm Kiếm</button>
      </div>
  </form:form>
  </div>
  <section class="feature-area section_gap_bottom_custom">
    <div class="container">
      <div class="row">
        <div class="col-lg-3 col-md-6">
          <div class="single-feature">
            <a href="#">
            <img width="54px" src="<c:url value='/resources/css/img/logoDT.PNG'/>"/>
              <h3>Điện Thoại</h3>
            </a>
              <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                aria-expanded="false"></a>
              <ul class="dropdown-menu">
                <li class="nav-item">
                  <a class="nav-link" href="#">iPhone 14 Pro Max</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="single-product.html">iPhone 14 Plus</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="checkout.html">iPhone 13 Pro Max</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="cart.html">iPhone SE 2022</a>
                </li>
              </ul>

          </div>
        </div>

        <div class="col-lg-3 col-md-6">
          <div class="single-feature">
            <img src="<c:url value='/resources/css/img/logotablet3.PNG'/>"/>
              <h3>Tablet</h3>
              <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                aria-expanded="false"></a>
              <ul class="dropdown-menu">
                <li class="nav-item">
                  <a class="nav-link" href="#">iPad Pro</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="single-product.html">iPad Gen</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="checkout.html">Galaxy Tab</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="cart.html">Oppo Tab</a>
                </li>
              </ul>

          </div>
        </div>

        <div class="col-lg-3 col-md-6">
          <div class="single-feature">
            <img style="width: 82px;" src="<c:url value='/resources/css/img/logoLaptop.PNG'/>"/>
              <h3>LapTop&MAC</h3>
              <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
              aria-expanded="false"></a>
            <ul class="dropdown-menu">
              <li class="nav-item">
                <a class="nav-link" href="#">Macbook Pro</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="single-product.html">Macbook Air</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="checkout.html">Dell</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="cart.html">LG</a>
              </li>
            </ul>
          </div>
        </div>

        <div class="col-lg-3 col-md-6">
          <div class="single-feature">
            <img style="width: 37px;" src="<c:url value='/resources/css/img/logodongho.PNG'/>"/>
              <h3>Đồng Hồ</h3>
              <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
              aria-expanded="false"></a>
            <ul class="dropdown-menu">
              <li class="nav-item">
                <a class="nav-link" href="#">Apple Wacth Series 7</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="single-product.html">Apple Wacth Series 8</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="checkout.html">Apple Wacth SE 2022</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="cart.html">Apple Wacth Ultra</a>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </section>

  <section class="feature_product_area section_gap_bottom_custom">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-lg-12">
          <div class="main_title">
            <h2><span>Sản Phẩm Hot!!!</span></h2>
            <div class="img-logohome1">
              <div class="img-logo1">
                <img src="<c:url value='/resources/css/img/logohome1920x600-060323-min.png'/>"/>
              </div>
              <div class="img-logo2">
                <div class="img-logo2-top">
                  <img src="<c:url value='/resources/css/img/logohome-top.png'/>"/>
                </div>
                <div class="ing-logo2-bottom">
                  <img src="<c:url value='/resources/css/img/logohome-bottom.jpg'/>"/>
                </div>
              </div>
            </div>

          </div>
        </div>
      </div>

      <div class="row">
        <div class="col-lg-4 col-md-6">
          <div class="single-product">
            <div class="product-img">

              <img class="img-fluid w-100" src="./img/iphone_14_pro_max_deep_purple_2_1_1_1.png" alt="" />
              <div class="p_icon">
                <a href="#">
                  <i class="ti-eye"></i>
                </a>
                <a href="#">
                  <i class="ti-shopping-cart"></i>
                </a>
              </div>
            </div>
            <div class="product-btm">
              <a href="#" class="d-block">
                <h4>iPhone 14 Pro Max 1TB Chính Hãng VN/A</h4>
              </a>
              <div class="mt-3">
                <span class="mr-4">40.290.00 <u>đ</u></span>
                <del>51.090.000 <u>đ</u></del>
              </div>
            </div>
          </div>
        </div>

        <div class="col-lg-4 col-md-6">
          <div class="single-product">
            <div class="product-img">
              <img class="img-fluid w-100" src="img/product/feature-product/f-p-2.jpg" alt="" />
              <div class="p_icon">
                <a href="#">
                  <i class="ti-eye"></i>
                </a>
                <a href="#">
                  <i class="ti-shopping-cart"></i>
                </a>
              </div>
            </div>
            <div class="product-btm">
              <a href="#" class="d-block">
                <h4>Red women purses</h4>
              </a>
              <div class="mt-3">
                <span class="mr-4">$25.00</span>
                <del>$35.00</del>
              </div>
            </div>
          </div>
        </div>

        <div class="col-lg-4 col-md-6">
          <div class="single-product">
            <div class="product-img">
              <img class="img-fluid w-100" src="img/product/feature-product/f-p-3.jpg" alt="" />
              <div class="p_icon">
                <a href="#">
                  <i class="ti-eye"></i>
                </a>
                <a href="#">
                  <i class="ti-shopping-cart"></i>
                </a>
              </div>
            </div>
            <div class="product-btm">
              <a href="#" class="d-block">
                <h4>Men stylist Smart Watch</h4>
              </a>
              <div class="mt-3">
                <span class="mr-4">$25.00</span>
                <del>$35.00</del>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <section class="new_product_area section_gap_top section_gap_bottom_custom">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-lg-12">
          <div class="main_title">
            <h2><span>Sản Phẩm Mới</span></h2>
            <p>Bring called seed first of third give itself now ment</p>
          </div>
        </div>
      </div>

      <div class="row">
        <div class="col-lg-6">
          <div class="new_product">
            <h5 class="text-uppercase">collection of 2019</h5>
            <h3 class="text-uppercase">Men’s summer t-shirt</h3>
            <div class="product-img">
              <img class="img-fluid" src="<c:url value='/resources/css/img/product/new-product/new-product1.png'/>"/>
            </div>
            <h4>$120.70</h4>
            <a href="#" class="main_btn">Add to cart</a>
          </div>
        </div>

        <div class="col-lg-6 mt-5 mt-lg-0">
          <div class="row">
            <div class="col-lg-6 col-md-6">
              <div class="single-product">
                <div class="product-img">
                  <img class="img-fluid w-100" src="<c:url value='/resources/css/img/product/new-product/n1.jpg'/>"/>
                  <div class="p_icon">
                    <a href="#">
                      <i class="ti-eye"></i>
                    </a>
                    <a href="#">
                      <i class="ti-shopping-cart"></i>
                    </a>
                  </div>
                </div>
                <div class="product-btm">
                  <a href="#" class="d-block">
                    <h4>Nike latest sneaker</h4>
                  </a>
                  <div class="mt-3">
                    <span class="mr-4">$25.00</span>
                    <del>$35.00</del>
                  </div>
                </div>
              </div>
            </div>

            <div class="col-lg-6 col-md-6">
              <div class="single-product">
                <div class="product-img">
                  <img class="img-fluid w-100" src="<c:url value='/resources/css/img/product/new-product/n2.jpg'/>"/>
                  <div class="p_icon">
                    <a href="#">
                      <i class="ti-eye"></i>
                    </a>
                    <a href="#">
                      <i class="ti-shopping-cart"></i>
                    </a>
                  </div>
                </div>
                <div class="product-btm">
                  <a href="#" class="d-block">
                    <h4>Men’s denim jeans</h4>
                  </a>
                  <div class="mt-3">
                    <span class="mr-4">$25.00</span>
                    <del>$35.00</del>
                  </div>
                </div>
              </div>
            </div>

            <div class="col-lg-6 col-md-6">
              <div class="single-product">
                <div class="product-img">
                  <img class="img-fluid w-100" src="<c:url value='/resources/css/img/product/new-product/n3.jpg'/>"/>
                  <div class="p_icon">
                    <a href="#">
                      <i class="ti-eye"></i>
                    </a>
                    <a href="#">
                      <i class="ti-shopping-cart"></i>
                    </a>
                  </div>
                </div>
                <div class="product-btm">
                  <a href="#" class="d-block">
                    <h4>quartz hand watch</h4>
                  </a>
                  <div class="mt-3">
                    <span class="mr-4">$25.00</span>
                    <del>$35.00</del>
                  </div>
                </div>
              </div>
            </div>

            <div class="col-lg-6 col-md-6">
              <div class="single-product">
                <div class="product-img">
                  <img class="img-fluid w-100" src="<c:url value='/resources/css/img/product/new-product/n4.jpg'/>"/>
                  <div class="p_icon">
                    <a href="#">
                      <i class="ti-eye"></i>
                    </a>
                    <a href="#">
                      <i class="ti-shopping-cart"></i>
                    </a>
                  </div>
                </div>
                <div class="product-btm">
                  <a href="#" class="d-block">
                    <h4>adidas sport shoe</h4>
                  </a>
                  <div class="mt-3">
                    <span class="mr-4">$25.00</span>
                    <del>$35.00</del>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <section class="inspired_product_area section_gap_bottom_custom">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-lg-12">
          <div class="main_title">
            <h2><span>Danh Sách Sản Phẩm</span></h2>
            <p>Bring called seed first of third give itself now ment</p>
          </div>
        </div>
      </div>
      <h4>Phone</h4>
          <div class="row">
              <c:forEach var="product" items="${productListTopPhone}" varStatus="index">
                <div class="col-lg-3 col-md-6">
                  <div class="single-product">
                    <div class="product-img">
                      <img class="img-fluid w-100" src="<c:url value='/resources/css/img/product/inspired-product/i1.jpg'/>"/>
                      <div class="p_icon">
                        <a href="#">
                          <i class="ti-eye"></i>
                        </a>
                        <a href="#">
                          <i class="ti-shopping-cart"></i>
                        </a>
                      </div>
                    </div>
                    <div class="product-btm">
                      <a href="#" class="d-block">
                        <h4>${product.name}</h4>
                      </a>
                      <div class="mt-3">
                        <span class="mr-4"><fmt:formatNumber value="${product.price}" pattern="#,##0" /></span>
                        <del>$35.00</del>
                      </div>
                    </div>
                  </div>
                </div>
              </c:forEach>
          </div>

         <h4>LapTop</h4>
          <div class="row">
                <c:forEach var="product2" items="${productListTopLaptop}" varStatus="index">
                  <div class="col-lg-3 col-md-6">
                    <div class="single-product">
                      <div class="product-img">
                        <img class="img-fluid w-100" src="<c:url value='/resources/css/img/product/inspired-product/i1.jpg'/>"/>
                        <div class="p_icon">
                          <a href="#">
                            <i class="ti-eye"></i>
                          </a>
                          <a href="#">
                            <i class="ti-shopping-cart"></i>
                          </a>
                        </div>
                      </div>
                      <div class="product-btm">
                        <a href="#" class="d-block">
                          <h4>${product2.name}</h4>
                        </a>
                        <div class="mt-3">
                          <span class="mr-4"><fmt:formatNumber value="${product2.price}" pattern="#,##0" /></span>
                          <del>$35.00</del>
                        </div>
                      </div>
                    </div>
                  </div>
                </c:forEach>
          </div>
           <h4>đồng hồ</h4>
          <div class="row">
                <c:forEach var="product3" items="${productListDH}" varStatus="index">
                  <div class="col-lg-3 col-md-6">
                    <div class="single-product">
                      <div class="product-img">
                        <img class="img-fluid w-100" src="<c:url value='/resources/css/img/product/inspired-product/i1.jpg'/>"/>
                        <div class="p_icon">
                          <a href="#">
                            <i class="ti-eye"></i>
                          </a>
                          <a href="#">
                            <i class="ti-shopping-cart"></i>
                          </a>
                        </div>
                      </div>
                      <div class="product-btm">
                        <a href="#" class="d-block">
                          <h4>${product3.name}</h4>
                        </a>
                        <div class="mt-3">
                          <span class="mr-4"><fmt:formatNumber value="${product3.price}" pattern="#,##0" /></span>
                          <del>$35.00</del>
                        </div>
                      </div>
                    </div>
                  </div>
                </c:forEach>
          </div>
         <h4>TABLET</h4>
          <div class="row">
                <c:forEach var="product4" items="${showTopTapLet}" varStatus="index">
                  <div class="col-lg-3 col-md-6">
                    <div class="single-product">
                      <div class="product-img">
                        <img class="img-fluid w-100" src="<c:url value='/resources/css/img/product/inspired-product/i1.jpg'/>"/>
                        <div class="p_icon">
                          <a href="#">
                            <i class="ti-eye"></i>
                          </a>
                          <a href="#">
                            <i class="ti-shopping-cart"></i>
                          </a>
                        </div>
                      </div>
                      <div class="product-btm">
                        <a href="#" class="d-block">
                          <h4>${product4.name}</h4>
                        </a>
                        <div class="mt-3">
                          <span class="mr-4"><fmt:formatNumber value="${product4.price}" pattern="#,##0" /></span>
                          <del>$35.00</del>
                        </div>
                      </div>
                    </div>
                  </div>
                </c:forEach>
          </div>



    <div class="footer" style="width: 100%; display: flex; justify-content: center;">
      <spring:url value="./" var="productListUrl" />
      <nav aria-label="Page navigation">
          <ul class="pagination">
              <li class="page-item ${currentPage == 0 ? 'disabled' : ''}">
                  <spring:url value="${productListUrl}" var="previousPageUrl">
                      <spring:param name="page" value="${currentPage - 1}" />
                  </spring:url>
                  <a class="page-link" href="${previousPageUrl}" tabindex="-1"><<</a>
              </li>
              <c:forEach var="i" begin="0" end="${totalPages - 1}">
                  <spring:url value="${productListUrl}" var="pageUrl">
                      <spring:param name="page" value="${i}" />
                  </spring:url>
                  <li class="page-item ${currentPage == i ? 'active' : ''}">

                      <a class="page-link" href="${pageUrl}">1</a>
                  </li>
              </c:forEach>
              <li class="page-item ${currentPage == totalPages - 1 ? 'disabled' : ''}">
                  <spring:url value="${productListUrl}" var="nextPageUrl">
                      <spring:param name="page" value="${currentPage + 1}" />
                  </spring:url>
                  <a class="page-link" href="${nextPageUrl}">>></a>
              </li>
          </ul>
      </nav>
  </div>
  </section>

</body>
</html>