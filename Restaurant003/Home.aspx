<%@ Page Title="" Language="C#" MasterPageFile="~/ClientPages.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Restaurant003.Home1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Trang chu
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="itemsQuantity" runat="server">
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <div style="padding: 10px;">
        <asp:DataList ID="DataList1" runat="server" RepeatColumns="3">
            <ItemTemplate>
                <asp:Image ID="anhMon" runat="server" ImageUrl= '<%# "~/Images/" + Eval("anh")%>' />
                <asp:Label ID="tenMonLbl" runat="server" Text='<%# Eval("tenMon") %>' />
                <asp:Label ID="giaLbl" runat="server" Text='<%#"đ" + Eval("donGia") %>' />
                </br>
                <asp:Button ID="choVaoGio" runat="server" 
                    Text="Thêm vào giỏ" 
                    CssClass="btn btn-danger p-1" 
                    Font-Size="9"
                    CommandName="choVaoGio"
                    CommandArgument='<%# Bind("maMon") %>'
                    OnCommand="ChoVaoGio_Click"
                    />
            </ItemTemplate>
        </asp:DataList>
    </div>
</asp:Content>
