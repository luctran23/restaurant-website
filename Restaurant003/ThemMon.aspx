<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPages.Master" AutoEventWireup="true" CodeBehind="ThemMon.aspx.cs" Inherits="Restaurant003.ThemMon" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Them mon
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="pageTitle" runat="server">
    Thêm món ăn
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="pagePath" runat="server">
    Thêm món ăn
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="content" runat="server">
    <div class="card-body">
        <div class="form-group">
            <label for="lbTenMon">Tên món</label>
            <asp:TextBox ID="lbTenMon" runat="server" CssClass="form-control" required />
        </div>
        <div class="form-group">
            <label for="lbSoLuong">Số lượng</label>
            <asp:TextBox ID="lbSoLuong" runat="server"  CssClass="form-control" required/>
        </div>
        <div class="form-group">
            <label for="lbDonGia">Đơn giá</label>
            <asp:TextBox ID="lbDonGia" runat="server"  CssClass="form-control" required/>
        </div>
        <div class="form-group">
            <label for="lbAnh">Ảnh</label>
            <div class="input-group">
                <div class="custom-file">
                    <asp:FileUpload ID="lbAnh" runat="server" CssClass="custom-file-input" />
                    <label class="custom-file-label" for="exampleInputFile">Chọn tệp</label>
                </div>
                <div class="input-group-append">
                    <span class="input-group-text" id="">Tải lên</span>
                </div>
            </div>
        </div>
        <div class="form-group">
            <label for="lbDonGiaKm">Giá khuyến mãi</label>
            <asp:TextBox ID="lbDonGiaKm" runat="server"  CssClass="form-control" required/>
        </div>
        <asp:DropDownList ID="ddlMaDm" runat="server" size="1" CssClass="form-control"/>
    </div>
    <!-- /.card-body -->

    <div class="card-footer">
        <asp:Button Text="Thêm" ID="btnThem" runat="server" CssClass="btn btn-primary" OnClick="Unnamed1_Click" />
    </div>
    <asp:Label ID="message" runat="server" Font-Italic="true" ForeColor="Red"/>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="scriptThemMon" runat="server">
    <script src="../../plugins/bs-custom-file-input/bs-custom-file-input.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            bsCustomFileInput.init();
        });
    </script>
</asp:Content>
