<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPages.Master" AutoEventWireup="true" CodeBehind="MonAn.aspx.cs" Inherits="Restaurant003.MonAn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Mon an
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <div style="padding: 3px;">
        <asp:GridView ID="gridMon" CssClass="table table-bordered table-hover text-center" runat="server" AutoGenerateColumns="False" AllowPaging="True" OnPageIndexChanging="gridMon_PageIndexChanging" PageSize="3" OnSelectedIndexChanged="gridMon_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="maMon" HeaderText="Mã món" />
                <asp:BoundField DataField="tenMon" HeaderText="Tên món" />
                <asp:BoundField DataField="soLuong" HeaderText="Số lượng" />
                <asp:BoundField DataField="donGia" HeaderText="Đơn giá" />
                <%--<asp:BoundField DataField="anh" HeaderText="Ảnh" />--%>
                <asp:TemplateField HeaderText="Ảnh">
                    <ItemTemplate>
                        <asp:Image ID="img1" runat="server" ImageUrl='<%# "~/Images/" + Eval("anh") %>' Height="40px" Width="50px"/>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="giaKm" HeaderText="Giá khuyến mãi" />
                <asp:BoundField DataField="maDm" HeaderText="Danh mục" />
                <asp:TemplateField HeaderText="Xóa">
                    <ItemTemplate>
                        <asp:Button ID="xoa" CommandName="xoa"
                            CommandArgument='<%# Bind("maMon") %>'
                            OnCommand="Xoa_Click"
                            Text="Xoá" runat="server" CssClass="btn btn-danger"
                            OnClientClick="return confirm('Bạn có chắc chắn xóa không?')"
                            />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Sửa">
                    <ItemTemplate>
                        <asp:Button ID="sua" CommandName="sua"
                            CommandArgument='<%# Bind("maMon") %>'
                            OnCommand="Sua_Click"
                            Text="Sửa" runat="server" CssClass="btn btn-success"
                            />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
    
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="pageTitle" runat="server">Món ăn</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="pagePath" runat="server">Món ăn</asp:Content>
