<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPages.Master" AutoEventWireup="true" CodeBehind="KhachHang.aspx.cs" Inherits="Restaurant003.KhachHang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Khach hang
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="pageTitle" runat="server">
    Khách hàng
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="pagePath" runat="server">
    Khách hàng
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="content" runat="server">
    <div style="padding: 3px;">
        <asp:GridView ID="gridKhachHang" runat="server" CssClass="table table-bordered table-hover text-center" AutoGenerateColumns="False" AllowPaging="True" PageSize="3" 
            OnPageIndexChanging="gridKhachHang_PageIndexChanging">
            <Columns>
                <asp:BoundField DataField="maKh" HeaderText="Mã khách hàng" />
                <asp:BoundField DataField="tenKh" HeaderText="Tên khách hàng"  />
                <asp:BoundField DataField="diaChi" HeaderText="Địa chỉ"  />
                <asp:BoundField DataField="soDienThoai" HeaderText="Số điện thoại"  />
                <asp:BoundField DataField="email" HeaderText="Email" />
                <asp:BoundField DataField="matKhau" HeaderText="Mật khẩu"  />
            </Columns>

        </asp:GridView>
    </div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="scriptThemMon" runat="server">
</asp:Content>
