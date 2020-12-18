<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangKyClient.aspx.cs" Inherits="Restaurant003.DangKyClient" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dang ky</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <style>
        body {
            background-image: url(bgImages/bg3.jpg);
            background-repeat: no-repeat;
            background-size: auto;
        }

        .login-form label {
            font-size: 12px;
            color: #fff;
        }

        .login-form {
            position: relative;
            z-index: 1;
            padding: 57px 24px;
            border-radius: 10px;
            box-shadow: 2px 5px 10px 5px #00000047;
            background-color: #101010a8;
            margin-top: 10%;
            animation-name: login;
            animation-duration: 4s;
        }

        .text-muted {
            color: #fff !important;
        }

        .login-form h2 {
            position: relative;
            top: -10px;
        }

        .form-control1 {
            display: block;
            width: 100%;
            height: calc(1.5em + .75rem + 2px);
            font-size: 0.9rem;
            font-weight: 400;
            line-height: 1.5;
            color: #eaecef;
            background-color: #08082b0f;
            background-clip: padding-box;
            border-top: none;
            border-left: none;
            border-right: none;
            border-bottom: 1px solid #fff;
            border-radius: 0rem;
            transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out;
        }

        .btn-danger {
            color: #fff;
            background-color: #ff006a;
            border: 2px solid #ef0063;
            padding: 7px 38px;
            font-size: 16px;
            border-radius: 0px;
        }

        .login-circle {
            position: relative;
            top: 60px;
            color: #ff006a;
            z-index: 2;
        }

        @keyframes login {
            0% {
                transform: translateY(270px);
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="offset-md-4 col-md-4">
                    <div class="login-circle text-center"><i class="fa fa-user-circle fa-5x"></i></div>
                    <div class="login-form">
                        <h2 class="text-white">Đăng ký </h2>
                        <div class="form-group">
                            <label>Email *</label>
                            <asp:TextBox ID="txtEmail" runat="server" class="form-control1" placeholder="Nhập email" required/>
                        </div>
                        <div class="form-group">
                            <label>Mật khẩu *</label>
                            <asp:TextBox ID="txtMatKhau" runat="server" class="form-control1" placeholder="Nhập mật khẩu" required/>
                        </div>
                        <asp:Button ID="btnDangKy" runat="server" Text="Đăng ký" CssClass="btn btn-danger btn-block" OnClick="btnDangKy_Click" />
                        
                    </div>
                    
                </div>
                <asp:Label ID="message" runat="server" ForeColor="Red" />
            </div>
        </div>
    </form>
    <script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
    <script src="js/form-validator.min.js"></script>
</body>
</html>
