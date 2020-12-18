<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactClients.aspx.cs" Inherits="Restaurant003.ContactClients" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        Lien he
    </title>
    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
 
    <meta name="keywords" content=""/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <link href="StyleSheet1.css" rel="stylesheet" />
    <!-- Site Icons -->
    <link rel="shortcut icon" href="images2/favicon.ico" type="image/x-icon"/>
    <link rel="apple-touch-icon" href="images2/apple-touch-icon.png"/>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css"/>    
	<!-- Site CSS -->
    <link rel="stylesheet" href="css/style.css"/>    
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="css/responsive.css"/>
    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/custom.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <header class="top-navbar">
            <nav class="navbar navbar-expand-lg navbar-light bg-light" style="position: static">
                <div class="container">
                    <a class="navbar-brand" href="index.html">
                        Hoai Thu's restaurant
                    </a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbars-rs-food" aria-controls="navbars-rs-food" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbars-rs-food">
                        <ul class="navbar-nav ml-auto">
                            <li class="nav-item active"><a class="nav-link" href="Home.aspx">Trang chủ</a></li>
                            <li class="nav-item"><a class="nav-link" href="Menu.aspx">Thực đơn</a></li>
                            <li class="nav-item"><a class="nav-link" href="About.aspx">Giới thiệu</a></li>
                            <li class="nav-item"><a class="nav-link" href="DatBan.aspx">Đặt bàn</a></li>
                            <li class="nav-item"><a class="nav-link" href="ContactClients.aspx">Liên hệ</a></li>
                            <li class="nav-item d-flex">
                                <a class="nav-link" href="Cart.aspx">Giỏ hàng</a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="dropdown-a" data-toggle="dropdown">
                                    <asp:Label ID="username" runat="server"/>
                                    </a>
                                <div class="dropdown-menu" aria-labelledby="dropdown-a">
                                    <asp:Button ID="btndx" runat="server" Text="Đăng xuất" PostBackUrl="#" CssClass="btn btn-warning" OnClick="logout"/>
                                    <asp:Button ID="btndn" runat="server" Text="Đăng nhập" PostBackUrl="~/DangNhap.aspx" CssClass="btn btn-warning"/>
                                    <asp:Button ID="btndk" runat="server" Text="Đăng ký"  PostBackUrl="~/DangKyClient.aspx" CssClass="btn btn-warning"/>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </header>
        <!-- End header -->

        <!-- Start All Pages -->
        <div class="all-page-title page-breadcrumb">
            <div class="container text-center">
                <div class="row">
                    <div class="col-lg-12">
                        <h1>Contact</h1>
                    </div>
                </div>
            </div>
        </div>
        <!-- End All Pages -->

        <!-- Start Contact -->
        <div class="contact-box">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="heading-title text-center">
                            <h2>Contact</h2>
                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting</p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div id="contactForm">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" id="txtTen" runat="server" placeholder="Họ tên" required data-error="Vui lòng điền họ tên"/>
                                        <div class="help-block with-errors"></div>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" id="txtEmail" runat="server" placeholder="Email" required data-error="Vui lòng nhập email"/>
                                        <div class="help-block with-errors"></div>
                                    </div>
                                </div>
                               
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <asp:TextBox id="txtChuThich" TextMode="multiline" Columns="50" Rows="5" runat="server" placeholder="Chú thích" CssClass="form-control" required data-error="Vui lòng nhập chú thích"/>
                                        <div class="help-block with-errors"></div>
                                    </div>
                                    <div class="submit-button text-center">
                                        <asp:Button ID="btnLienHe" runat="server" CssClass="btn btn-common" Text="Gửi liên hệ" OnClick="btnLienHe_Click" />
                                        <div id="msgSubmit" class="h3 text-center hidden"></div>
                                        <div class="clearfix"></div>
                                    </div>
                                </div>
                                <asp:Label ID="lblMessage" runat="server" ForeColor="Red"/>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Contact -->

        <!-- Start Contact info -->
        <div class="contact-imfo-box">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 arrow-right">
                        <i class="fa fa-volume-control-phone"></i>
                        <div class="overflow-hidden">
                            <h4>Phone</h4>
                            <p class="lead">
                                +01 123-456-4590
                            </p>
                        </div>
                    </div>
                    <div class="col-md-4 arrow-right">
                        <i class="fa fa-envelope"></i>
                        <div class="overflow-hidden">
                            <h4>Email</h4>
                            <p class="lead">
                                yourmail@gmail.com
                            </p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <i class="fa fa-map-marker"></i>
                        <div class="overflow-hidden">
                            <h4>Location</h4>
                            <p class="lead">
                                800, Lorem Street, US
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Contact info -->

        <!-- Start Footer -->
        <footer class="footer-area bg-f">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-6">
                        <h3>About Us</h3>
                        <p>Integer cursus scelerisque ipsum id efficitur. Donec a dui fringilla, gravida lorem ac, semper magna. Aenean rhoncus ac lectus a interdum. Vivamus semper posuere dui.</p>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <h3>Subscribe</h3>
                        <div class="subscribe_form">
                            <form class="subscribe_form">
                                <input name="EMAIL" id="subs-email" class="form_input" placeholder="Email Address..." type="email">
                                <button type="submit" class="submit">SUBSCRIBE</button>
                                <div class="clearfix"></div>
                            </form>
                        </div>
                        <ul class="list-inline f-social">
                            <li class="list-inline-item"><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                            <li class="list-inline-item"><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                            <li class="list-inline-item"><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                            <li class="list-inline-item"><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
                            <li class="list-inline-item"><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                        </ul>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <h3>Contact information</h3>
                        <p class="lead">Ipsum Street, Lorem Tower, MO, Columbia, 508000</p>
                        <p class="lead"><a href="#">+01 2000 800 9999</a></p>
                        <p><a href="#">info@admin.com</a></p>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <h3>Opening hours</h3>
                        <p><span class="text-color">Monday: </span>Closed</p>
                        <p><span class="text-color">Tue-Wed :</span> 9:Am - 10PM</p>
                        <p><span class="text-color">Thu-Fri :</span> 9:Am - 10PM</p>
                        <p><span class="text-color">Sat-Sun :</span> 5:PM - 10PM</p>
                    </div>
                </div>
            </div>

            <div class="copyright">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <p class="company-name">
                                All Rights Reserved. &copy; 2018 <a href="#">Live Dinner Restaurant</a> Design By : 
					<a href="https://html.design/">html design</a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>

        </footer>
        <!-- End Footer -->

        <a href="#" id="back-to-top" title="Back to top" style="display: none;"><i class="fa fa-paper-plane-o" aria-hidden="true"></i></a>
    </form>
    <!-- ALL JS FILES -->
	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
    <!-- ALL PLUGINS -->
	
	<script src="js/jquery.superslides.min.js"></script>
	<script src="js/images-loded.min.js"></script>
	<script src="js/isotope.min.js"></script>
	<script src="js/baguetteBox.min.js"></script>
	<script src="js/jquery.mapify.js"></script>
	<script src="js/form-validator.min.js"></script>
    <script src="js/contact-form-script.js"></script>
    <script src="js/custom.js"></script>
	<script>
        $('.map-full').mapify({
            points: [
                {
                    lat: 40.7143528,
                    lng: -74.0059731,
                    marker: true,
                    title: 'Marker title',
                    infoWindow: 'Live Dinner Restaurant'
                }
            ]
        });
    </script>
</body>
</html>
