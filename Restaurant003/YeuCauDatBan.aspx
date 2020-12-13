<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPages.Master" AutoEventWireup="true" CodeBehind="YeuCauDatBan.aspx.cs" Inherits="Restaurant003.YeuCauDatBan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Yeu cau dat ban
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="pageTitle" runat="server">
    Yêu cầu đặt bàn
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="pagePath" runat="server">
    Bàn / Yêu cầu đặt bàn
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="content" runat="server">
    <asp:GridView ID="gridYeuCau" runat="server"
        CssClass="table table-bordered table-hover text-center" 
        AutoGenerateColumns="False" 
        AllowPaging="True" 
        PageSize="3" OnPageIndexChanging="gridYeuCau_PageIndexChanging"
        >
        <Columns>
            <asp:BoundField DataField="maDatBan" HeaderText="Mã đặt bàn"  />
            <asp:BoundField DataField="hoten" HeaderText="Họ tên"  />
            <asp:BoundField DataField="email" HeaderText="Email" />
            <asp:BoundField DataField="soDt" HeaderText="Số điện thoại"  />
            <asp:BoundField DataField="soLuongKhach" HeaderText="Số lượng khách" />
            <asp:BoundField DataField="ngay" HeaderText="Ngày" />
        </Columns>

    </asp:GridView>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="scriptThemMon" runat="server">
</asp:Content>
