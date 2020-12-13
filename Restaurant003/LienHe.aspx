<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPages.Master" AutoEventWireup="true" CodeBehind="LienHe.aspx.cs" Inherits="Restaurant003.LienHe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Lien he
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="pageTitle" runat="server">
    Liên hệ
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="pagePath" runat="server">
    Liên hệ
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="content" runat="server">
    <div style="padding: 3px;">
        <asp:GridView ID="gridLienHe" runat="server" AutoGenerateColumns="false"
            CssClass="table table-bordered table-hover text-center"
            AllowPaging="True"
            PageSize="3"
            OnPageIndexChanging="gridLienHe_PageIndexChanging"
            >
            <Columns>
                <asp:BoundField DataField="maLh" HeaderText="Mã liên hệ"/>
                <asp:BoundField DataField="ten" HeaderText="Họ tên" />
                <asp:BoundField DataField="email" HeaderText="Email" />
                <asp:BoundField DataField="chuThich" HeaderText="Chú thích" />
            </Columns>

        </asp:GridView>
    </div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="scriptThemMon" runat="server">
</asp:Content>
