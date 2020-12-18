<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Restaurant003.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đăng nhập</title>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

    <!-- Font Awesome -->
    <link rel="stylesheet" href="../../plugins/fontawesome-free/css/all.min.css"/>
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css"/>
    <!-- icheck bootstrap -->
    <link rel="stylesheet" href="../../plugins/icheck-bootstrap/icheck-bootstrap.min.css"/>
    <!-- Theme style -->
    <link rel="stylesheet" href="../../dist/css/adminlte.min.css"/>
    <!-- Google Font: Source Sans Pro -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-box" style="margin: 10px auto;">
            <div class="login-logo">
                <a href="../../index2.html"><b>Đăng nhập</b></a>
            </div>
            <!-- /.login-logo -->
            <div class="card">
                <div class="card-body login-card-body">
                    <p class="login-box-msg">Đăng nhập để bắt đầu phiên làm việc</p>

                        <div class="input-group mb-3">
                            <asp:TextBox ID="txtTenDangNhap" runat="server" CssClass="form-control" placeholder="Tên đăng nhập"/>
                            <div class="input-group-append">
                                <div class="input-group-text">
                                    <span class="fas fa-envelope"></span>
                                </div>
                            </div>
                        </div>
                        <div class="input-group mb-3">
                            <asp:TextBox ID="txtMatKhau" runat="server" placeholder="Mật khẩu" CssClass="form-control" TextMode="Password"/>
                            <div class="input-group-append">
                                <div class="input-group-text">
                                    <span class="fas fa-lock"></span>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-8">
                                <div class="icheck-primary">
                                    <input type="checkbox" id="remember"/>
                                    <label for="remember">
                                        Nhớ đăng nhập
                                    </label>
                                </div>
                            </div>
                            <!-- /.col -->
                            <div class="col-4">
                                <asp:Button ID="btnDangNhap" runat="server" Text="Đăng nhập" CssClass="btn btn-primary btn-block p-1" OnClick="btnDangNhap_Click" />
                            </div>
                            <!-- /.col -->
                        </div>
                    

                    <div class="social-auth-links text-center mb-3">
                        <p>- HOẶC -</p>
                        <a href="#" class="btn btn-block btn-primary">
                            <i class="fab fa-facebook mr-2"></i>Đăng nhập qua Facebook
                        </a>
                        <a href="#" class="btn btn-block btn-danger">
                            <i class="fab fa-google-plus mr-2"></i>Đăng nhập qua Google+
                        </a>
                    </div>
                    <!-- /.social-auth-links -->

                    <p class="mb-1">
                        <a href="forgot-password.html">Quên mật khẩu</a>
                    </p>
                    <p class="mb-0">
                        <a href="DangKy.aspx" class="text-center">Đăng ký</a>
                    </p>
                    <asp:Label ID="error" runat="server" ForeColor="Red"/>
                </div>
                <!-- /.login-card-body -->
            </div>
        </div> 
    </form>
    <!-- jQuery -->
    <script src="../../plugins/jquery/jquery.min.js"></script>
    <!-- Bootstrap 4 -->
    <script src="../../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- AdminLTE App -->
    <script src="../../dist/js/adminlte.min.js"></script>
</body>
</html>
