<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPages.Master" AutoEventWireup="true" CodeBehind="TaiKhoan.aspx.cs" Inherits="Restaurant003.TaiKhoan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Tai khoan
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="pageTitle" runat="server">
    Tài khoản
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="pagePath" runat="server">
    Tài khoản
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="content" runat="server">
    <div style="padding: 3px;">
        <asp:GridView ID="gridTaiKhoan" runat="server"
            AutoGenerateColumns="false"
            CssClass="table table-bordered table-hover text-center"
            AllowPaging="True"
            PageSize="3" 
            OnPageIndexChanging="gridTaiKhoan_PageIndexChanging"
            >
            <Columns>
                <asp:BoundField DataField="maTk" HeaderText="Mã tài khoản"/>
                <asp:BoundField DataField="tenTk" HeaderText="Tên tài khoản" />
                <asp:BoundField DataField="mk" HeaderText="Mật khẩu" />
                <asp:TemplateField HeaderText="Xóa">
                    <ItemTemplate>
                        <asp:Button ID="xoa" Text="Xóa" runat="server"
                            CommandName="xoa"
                            CommandArgument='<%# Bind("maTk") %>'
                            OnCommand="Xoa1_Click"
                            CssClass="btn btn-danger"
                            OnClientClick="return confirm('Bạn có chắc xóa không')"
                            />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Sửa">
                    <ItemTemplate>
                        <asp:Button ID="suaTk" Text="Sửa" runat="server"
                            CommandName="sua"
                            CommandArgument='<%# Bind("matk") %>'
                             OnCommand="Sua1_Click"
                            CssClass="btn btn-success"
                            />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="scriptThemMon" runat="server">
</asp:Content>
