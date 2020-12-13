<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPages.Master" AutoEventWireup="true" CodeBehind="ThemBan.aspx.cs" Inherits="Restaurant003.ThemBan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Them ban
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="pageTitle" runat="server">
    Thêm bàn
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="pagePath" runat="server">
    Bàn / Thêm bàn
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="content" runat="server">
    <div class="card-body">
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
        <asp:Button Text="Thêm" ID="btnThemBan" runat="server" CssClass="btn btn-primary" OnClick="btnThemBan_Click" />
    </div>
    <asp:Label ID="message" runat="server" Font-Italic="true" ForeColor="Red"/>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="scriptThemMon" runat="server">
</asp:Content>
