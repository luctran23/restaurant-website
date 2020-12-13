<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPages.Master" AutoEventWireup="true" CodeBehind="SuaMon.aspx.cs" Inherits="Restaurant003.SuaMon" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Sua mon
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="pageTitle" runat="server">
    Sửa món
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="pagePath" runat="server">
    Sửa món
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="content" runat="server">
    <div class="card-body">
        <div class="form-group">
            <label for="lbMaMon">Mã món</label>
            <asp:TextBox ID="lbMaMon" runat="server" CssClass="form-control" Enabled="false"/>
        </div>
        <div class="form-group">
            <label for="lbTenMon">Tên món</label>
            <asp:TextBox ID="lbTenMon" runat="server" CssClass="form-control" />
        </div>
        <div class="form-group">
            <label for="lbSoLuong">Số lượng</label>
            <asp:TextBox ID="lbSoLuong" runat="server"  CssClass="form-control" />
        </div>
        <div class="form-group">
            <label for="lbDonGia">Đơn giá</label>
            <asp:TextBox ID="lbDonGia" runat="server"  CssClass="form-control" />
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
            <asp:TextBox ID="lbDonGiaKm" runat="server"  CssClass="form-control" />
        </div>
        <asp:DropDownList ID="ddlMaDm" runat="server" size="1" CssClass="form-control"/>
    </div>
    <!-- /.card-body -->

    <div class="card-footer">
        <asp:Button Text="Cập nhật" ID="btnSua" runat="server" CssClass="btn btn-primary" OnClick="btnSua_Click"/>
    </div>
    <asp:Label ID="lbsua" runat="server" ForeColor="Red" />
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="scriptThemMon" runat="server">
    <script src="../../plugins/bs-custom-file-input/bs-custom-file-input.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            bsCustomFileInput.init();
        });
    </script>
</asp:Content>
