<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Restaurant003.Cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        Gio hang
    </title>
    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
 
    <meta name="keywords" content=""/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>

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
                            <li class="nav-item active"><a class="nav-link" href="index.html">Trang chủ</a></li>
                            <li class="nav-item"><a class="nav-link" href="menu.html">Thực đơn</a></li>
                            <li class="nav-item"><a class="nav-link" href="about.html">Giới thiệu</a></li>
                            <li class="nav-item"><a class="nav-link" href="contact.html">Đặt bàn</a></li>
                            <li class="nav-item"><a class="nav-link" href="contact.html">Liên hệ</a></li>
                            <li class="nav-item d-flex">
                                <a class="nav-link" href="contact.html">Giỏ hàng</a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="dropdown-a" data-toggle="dropdown">Tài khoản</a>
                                <div class="dropdown-menu" aria-labelledby="dropdown-a">
                                    <a class="dropdown-item" href="blog.html">Đăng nhập</a>
                                    <a class="dropdown-item" href="blog-details.html">Đăng ký</a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </header>
        <div style="margin: 50px auto; width: 900px;">
            <asp:GridView ID="gridCart" runat="server" 
                AutoGenerateColumns="false"
                CssClass="table table-bordered table-hover text-center"
                >
                <Columns>
                    <asp:BoundField DataField="itemName" HeaderText="Tên món"  />
                    <asp:BoundField DataField="quantity" HeaderText="Số lượng" />
                    <asp:BoundField DataField="price" HeaderText="Đơn giá"  />
                    <asp:BoundField DataField="subTotal" HeaderText="Thành tiền"  />
                </Columns>

            </asp:GridView>
            <asp:Label ID="tongTien" runat="server" />
            <div style="display:flex; justify-content: space-between; margin-top: 20px;" >
                <asp:Button ID="muaTiep" 
                    runat="server" 
                    Text="Tiếp tục đặt món" 
                    CssClass="btn btn-success" 
                    Font-Size="10" 
                    PostBackUrl="~/Home.aspx"
                    />
                <asp:Button Text="Thanh toán" 
                    ID="thanhToan" 
                    runat="server" 
                    CssClass="btn btn-danger" 
                    Font-Size="10"
                    
                    />
            </div>
        </div>
    </form>
    <!-- ALL JS FILES -->
	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
    <!-- ALL PLUGINS -->
	<script src="js/jquery.superslides.min.js"></script>
	<script src="js/images2-loded.min.js"></script>
	<script src="js/isotope.min.js"></script>
	<script src="js/baguetteBox.min.js"></script>
	<script src="js/form-validator.min.js"></script>
    <script src="js/contact-form-script.js"></script>
    <script src="js/custom.js"></script>
</body>
</html>
