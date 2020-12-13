<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPages.Master" AutoEventWireup="true" CodeBehind="HoaDon.aspx.cs" Inherits="Restaurant003.HoaDon" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Hoa don
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="pageTitle" runat="server">
    Hóa đơn
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="pagePath" runat="server">
    Hóa đơn
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="content" runat="server">
    <div style="padding: 3px;">
        <asp:GridView ID="gridHoaDon" runat="server"
            AutoGenerateColumns="false"
            CssClass="table table-bordered table-hover text-center"
            AllowPaging="True"
            PageSize="3" OnPageIndexChanging="gridHoaDon_PageIndexChanging"
            
            >
            <Columns>
                <asp:BoundField DataField="maHd" HeaderText="Mã hóa đơn" />
                <asp:BoundField DataField="ngayLap" HeaderText="Ngày lập" />
                <asp:BoundField DataField="maKh" HeaderText="Mã khách hàng" />
                <asp:TemplateField HeaderText="Thao tác">
                    <ItemTemplate>
                        <asp:Button ID="chiTiet" runat="server"
                            CommandName="chiTiet"
                            CommandArgument='<%# Bind("maHd") %>'
                            Text="Chi tiết"
                            CssClass="btn btn-info"
                            OnCommand="ChiTiet_Click" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="scriptThemMon" runat="server">
</asp:Content>
