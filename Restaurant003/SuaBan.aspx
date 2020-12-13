<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPages.Master" AutoEventWireup="true" CodeBehind="SuaBan.aspx.cs" Inherits="Restaurant003.SuaBan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Sua ban
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="pageTitle" runat="server">
    Sửa bàn
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="pagePath" runat="server">
    Bàn / Sửa bàn
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="content" runat="server">
    <div class="card-body">
        <div class="form-group">
            <label for="txtMaBan">Mã bàn</label>
            <asp:TextBox ID="txtMaBan" runat="server" CssClass="form-control" Enabled="false"/>
        </div>
        <div class="form-group">
            <label for="txtTenBan">Tên bàn</label>
            <asp:TextBox ID="txtTenBan" runat="server" CssClass="form-control" />
        </div>
        <div class="form-group">
            <label for="txtTinhTrang">Tình trạng</label>
            <asp:TextBox ID="txtTinhTrang" runat="server"  CssClass="form-control" />
        </div>
    </div>
    <!-- /.card-body -->
    <div class="card-footer">
        <asp:Button Text="Cập nhật" ID="btnSuaBan" runat="server" CssClass="btn btn-primary" OnClick="btnSuaBan_Click" />
    </div>
    <asp:Label ID="message" runat="server" Font-Italic="true" ForeColor="Red"/>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="scriptThemMon" runat="server">
</asp:Content>
