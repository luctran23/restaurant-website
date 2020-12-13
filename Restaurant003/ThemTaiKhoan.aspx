<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPages.Master" AutoEventWireup="true" CodeBehind="ThemTaiKhoan.aspx.cs" Inherits="Restaurant003.ThemTaiKhoan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Them tai khoan
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="pageTitle" runat="server">
    Thêm tài khoản
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="pagePath" runat="server">
    Tài khoản/ Thêm tài khoản
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="content" runat="server">
    <div class="card-body">
        <div class="form-group">
            <label for="txtTentk">Tên tài khoản</label>
            <asp:TextBox ID="txtTentk" runat="server" CssClass="form-control" />
        </div>
        <div class="form-group">
            <label for="txtMatKhau">Mật khẩu</label>
            <asp:TextBox ID="txtMatKhau" runat="server"  CssClass="form-control" TextMode="Password" />
        </div>
    </div>
    <!-- /.card-body -->
    <div class="card-footer">
        <asp:Button Text="Thêm" ID="btnThemTk" runat="server" CssClass="btn btn-primary" OnClick="btnThem_Click" />
    </div>
    <asp:Label ID="message" runat="server" Font-Italic="true" ForeColor="Red"/>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="scriptThemMon" runat="server">
    <script src="../../plugins/bs-custom-file-input/bs-custom-file-input.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            bsCustomFileInput.init();
        });
    </script>
</asp:Content>
