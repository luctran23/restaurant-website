<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPages.Master" AutoEventWireup="true" CodeBehind="SuaTaiKhoan.aspx.cs" Inherits="Restaurant003.SuaTaiKhoan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Sua tai khoan
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="pageTitle" runat="server">
    Sửa tài khoản
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="pagePath" runat="server">
    Tài khoản / Sửa tài khoản
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="content" runat="server">
    <div class="card-body">
        <div class="form-group">
            <label for="txtMaTk">Mã tài khoản</label>
            <asp:TextBox ID="txtMaTk" runat="server" CssClass="form-control" Enabled="false"/>
        </div>
        <div class="form-group">
            <label for="txtTentk">Tên tài khoản</label>
            <asp:TextBox ID="txtTentk" runat="server" CssClass="form-control" />
        </div>
        <div class="form-group">
            <label for="txtMatKhau">Mật khẩu</label>
            <asp:TextBox ID="txtMatKhau" runat="server"  CssClass="form-control" />
        </div>
    </div>
    <!-- /.card-body -->
    <div class="card-footer">
        <asp:Button Text="Sửa" ID="btnSuaTk" runat="server" CssClass="btn btn-primary" OnClick="btnSuaTk_Click"  />
    </div>
    <asp:Label ID="message" runat="server" Font-Italic="true" ForeColor="Red"/>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="scriptThemMon" runat="server">
</asp:Content>
