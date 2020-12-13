<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPages.Master" AutoEventWireup="true" CodeBehind="CtHoaDon.aspx.cs" Inherits="Restaurant003.CtHoaDon" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Chi tiet hoa don
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="pageTitle" runat="server">
    Chi tiết hóa đơn
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="pagePath" runat="server">
    Hóa đơn / Chi tiết hóa đơn
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="content" runat="server">
    <div style="padding: 3px;">
        <asp:Table ID="CtKhachTable" runat="server" CssClass="table">
            <asp:TableRow>
                <asp:TableCell>Mã hóa đơn: </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtCtMaHd" runat="server" CssClass="form-control" Enabled="false" />
                </asp:TableCell></asp:TableRow><asp:TableRow>
                <asp:TableCell>Tên khách hàng: </asp:TableCell><asp:TableCell>
                    <asp:TextBox ID="txtCtTenKh" runat="server" CssClass="form-control" Enabled="false" />
                </asp:TableCell></asp:TableRow><asp:TableRow>
                <asp:TableCell>Địa chỉ: </asp:TableCell><asp:TableCell>
                    <asp:TextBox ID="txtCtDiaChi" runat="server" CssClass="form-control" Enabled="false" />
                </asp:TableCell></asp:TableRow><asp:TableRow>
                <asp:TableCell>Số điện thoại: </asp:TableCell><asp:TableCell>
                    <asp:TextBox ID="txtCtSoDienThoai" runat="server" CssClass="form-control" Enabled="false" />
                </asp:TableCell></asp:TableRow><asp:TableRow>
                <asp:TableCell>Email: </asp:TableCell><asp:TableCell>
                    <asp:TextBox ID="txtCtEmail" runat="server" CssClass="form-control" Enabled="false" />
                </asp:TableCell></asp:TableRow></asp:Table></div>
    <asp:GridView ID="gridCtMon" runat="server"
        AutoGenerateColumns="false"
        CssClass="table table-bordered table-hover text-center"
        AllowPaging="True"
        PageSize="3" OnPageIndexChanging="gridCtMon_PageIndexChanging"
        >
        <Columns>
            <asp:BoundField DataField="maMon" HeaderText="Mã món" />
            <asp:BoundField DataField="tenMon" HeaderText="Tên món" />
            <asp:BoundField DataField="soLuong" HeaderText="Số lượng" />
            <asp:BoundField DataField="donGia" HeaderText="Đơn giá" />
            <asp:BoundField DataField="thanhTien" HeaderText="Thành tiền" />
            
        </Columns>
    </asp:GridView>
    <asp:TextBox ID="txtTotal" runat="server" CssClass="form-control" Enabled="false" />
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="scriptThemMon" runat="server">
</asp:Content>
