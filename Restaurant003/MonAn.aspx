<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPages.Master" AutoEventWireup="true" CodeBehind="MonAn.aspx.cs" Inherits="Restaurant003.MonAn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Mon an
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <div style="padding: 3px;">
        <asp:GridView ID="gridMon" CssClass="table table-bordered table-hover text-center" runat="server" AutoGenerateColumns="False" AllowPaging="True" OnPageIndexChanging="gridMon_PageIndexChanging" PageSize="3">
            <Columns>
                <asp:BoundField DataField="maMon" HeaderText="Mã món" />
                <asp:BoundField DataField="tenMon" HeaderText="Tên món" />
                <asp:BoundField DataField="soLuong" HeaderText="Số lượng" />
                <asp:BoundField DataField="donGia" HeaderText="Đơn giá" />
                <asp:BoundField DataField="anh" HeaderText="Ảnh" />
                <asp:BoundField DataField="giaKm" HeaderText="Giá khuyến mãi" />
                <asp:BoundField DataField="maDm" HeaderText="Danh mục" />
            </Columns>
        </asp:GridView>
    </div>
    
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="pageTitle" runat="server">Món ăn</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="pagePath" runat="server">Món ăn</asp:Content>
