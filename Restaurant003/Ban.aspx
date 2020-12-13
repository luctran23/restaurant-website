<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPages.Master" AutoEventWireup="true" CodeBehind="Ban.aspx.cs" Inherits="Restaurant003.Ban" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Ban
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="pageTitle" runat="server">
    Bàn
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="pagePath" runat="server">
    Bàn
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="content" runat="server">
    <div style="padding: 3px;">
        <asp:GridView ID="gridBan" runat="server"
            AutoGenerateColumns="false"
            CssClass="table table-bordered table-hover text-center"
            AllowPaging="True"
            PageSize="3" 
            OnPageIndexChanging="gridBan_PageIndexChanging"
            >
            <Columns>
                <asp:BoundField DataField="maBan" HeaderText="Mã bàn" />
                <asp:BoundField DataField="tenBan" HeaderText="Tên bàn"  />
                <asp:BoundField DataField="tinhTrang" HeaderText="Tình trạng" />
                <asp:TemplateField HeaderText="Xóa">
                    <ItemTemplate>
                        <asp:Button ID="xoa" runat="server" 
                            CommandName="xoa"
                            CommandArgument='<%# Bind("maBan") %>'
                            Text="Xóa"
                            OnCommand="Xoa_Click"
                            OnClientClick="return confirm ('Bạn có chắc chắn xóa không?')"
                            CssClass="btn btn-danger"
                            />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Sửa">
                    <ItemTemplate>
                        <asp:Button ID="sua" Text="Sửa" runat="server"
                            CommandName="sua"
                            CommandArgument='<%# Bind("maBan") %>'
                            OnCommand="Sua_Click"
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
