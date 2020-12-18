<%@ Page Title="" Language="C#" MasterPageFile="~/ClientPages.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Restaurant003.Home1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Trang chu
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <!-- Start Menu -->
        <div class="menu-box">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="heading-title text-center">
                            <h2>Menu</h2>
                            <p>Với thực đơn gần 100 món ăn, đậm chất miền Nam Bộ, Nhà hàng Phương Nam chắc chắn sẽ chinh phục dược</p>
                            <div style="display: flex;">
                                <asp:TextBox ID="txtTimKiem" runat="server" CssClass="form-control"
                                    placeholder="Nhập trên món ăn" />
                                <asp:Button ID="btnTimKiem" runat="server" Text="Tìm kiếm" CssClass="btn" style="background: #d65106;color: #fff;" OnClick="btnTimKiem_Click"/>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row inner-menu-box">
                    <div class="col-3">
                        <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                            <a class="nav-link active" id="v-pills-home-tab" data-toggle="pill" href="#v-pills-home" role="tab" aria-controls="v-pills-home" aria-selected="true">Tất cả</a>
                            <a class="nav-link" id="v-pills-profile-tab" data-toggle="pill" href="#v-pills-profile" role="tab" aria-controls="v-pills-profile" aria-selected="false">Bữa trưa</a>
                            <a class="nav-link" id="v-pills-messages-tab" data-toggle="pill" href="#v-pills-messages" role="tab" aria-controls="v-pills-messages" aria-selected="false">Bữa chiều</</a>
                            <a class="nav-link" id="v-pills-settings-tab" data-toggle="pill" href="#v-pills-settings" role="tab" aria-controls="v-pills-settings" aria-selected="false">Bữa tối</a>
                        </div>
                    </div>

                    <div class="col-9">
                        <div class="tab-content" id="v-pills-tabContent">
                            <div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">
                                <div class="row">
                                    <div>
                                        <div style="padding: 10px;">
                                            <asp:DataList ID="DataList1" runat="server" RepeatColumns="3">
                                                <ItemTemplate>
                                                    <asp:Image ID="anhMon" runat="server" ImageUrl='<%# "~/Images/" + Eval("anh")%>' />
                                                    <asp:Label ID="tenMonLbl" runat="server" Text='<%# Eval("tenMon") %>' />
                                                    <asp:Label ID="giaLbl" runat="server" Text='<%#"đ" + Eval("donGia") %>' />
                                                    <br>
                                                    </br>
                                                    <asp:Button ID="choVaoGio" runat="server"
                                                        Text="Thêm vào giỏ"
                                                        CssClass="btn btn-danger p-1"
                                                        Font-Size="9"
                                                        CommandName="choVaoGio"
                                                        CommandArgument='<%# Bind("maMon") %>'
                                                        OnCommand="ChoVaoGio_Click" />
                                                </ItemTemplate>
                                            </asp:DataList>
                                            <asp:Label ID="message" runat="server" ForeColor="red"/>
                                        </div>
                                    </div>
                                </div>

                            </div>
                            <div class="tab-pane fade" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab">
                                <div class="row">
                                    <div class="col-lg-4 col-md-6 special-grid drinks">
                                        <div class="gallery-single fix">
                                            <img src="images2/img-01.jpg" class="img-fluid" alt="Image">
                                            <div class="why-text">
                                                <h4>Special Drinks 1</h4>
                                                <p>Sed id magna vitae eros sagittis euismod.</p>
                                                <h5>$7.79</h5>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-lg-4 col-md-6 special-grid drinks">
                                        <div class="gallery-single fix">
                                            <img src="images2/img-02.jpg" class="img-fluid" alt="Image">
                                            <div class="why-text">
                                                <h4>Special Drinks 2</h4>
                                                <p>Sed id magna vitae eros sagittis euismod.</p>
                                                <h5>$9.79</h5>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-lg-4 col-md-6 special-grid drinks">
                                        <div class="gallery-single fix">
                                            <img src="images2/img-03.jpg" class="img-fluid" alt="Image">
                                            <div class="why-text">
                                                <h4>Special Drinks 3</h4>
                                                <p>Sed id magna vitae eros sagittis euismod.</p>
                                                <h5>$10.79</h5>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                            <div class="tab-pane fade" id="v-pills-messages" role="tabpanel" aria-labelledby="v-pills-messages-tab">
                                <div class="row">
                                    <div class="col-lg-4 col-md-6 special-grid lunch">
                                        <div class="gallery-single fix">
                                            <img src="images2/img-04.jpg" class="img-fluid" alt="Image">
                                            <div class="why-text">
                                                <h4>Special Lunch 1</h4>
                                                <p>Sed id magna vitae eros sagittis euismod.</p>
                                                <h5>$15.79</h5>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-lg-4 col-md-6 special-grid lunch">
                                        <div class="gallery-single fix">
                                            <img src="images2/img-05.jpg" class="img-fluid" alt="Image">
                                            <div class="why-text">
                                                <h4>Special Lunch 2</h4>
                                                <p>Sed id magna vitae eros sagittis euismod.</p>
                                                <h5>$18.79</h5>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-lg-4 col-md-6 special-grid lunch">
                                        <div class="gallery-single fix">
                                            <img src="images2/img-06.jpg" class="img-fluid" alt="Image">
                                            <div class="why-text">
                                                <h4>Special Lunch 3</h4>
                                                <p>Sed id magna vitae eros sagittis euismod.</p>
                                                <h5>$20.79</h5>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="v-pills-settings" role="tabpanel" aria-labelledby="v-pills-settings-tab">
                                <div class="row">
                                    <div class="col-lg-4 col-md-6 special-grid dinner">
                                        <div class="gallery-single fix">
                                            <img src="images2/img-07.jpg" class="img-fluid" alt="Image">
                                            <div class="why-text">
                                                <h4>Special Dinner 1</h4>
                                                <p>Sed id magna vitae eros sagittis euismod.</p>
                                                <h5>$25.79</h5>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-lg-4 col-md-6 special-grid dinner">
                                        <div class="gallery-single fix">
                                            <img src="images2/img-08.jpg" class="img-fluid" alt="Image">
                                            <div class="why-text">
                                                <h4>Special Dinner 2</h4>
                                                <p>Sed id magna vitae eros sagittis euismod.</p>
                                                <h5>$22.79</h5>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-lg-4 col-md-6 special-grid dinner">
                                        <div class="gallery-single fix">
                                            <img src="images2/img-09.jpg" class="img-fluid" alt="Image">
                                            <div class="why-text">
                                                <h4>Special Dinner 3</h4>
                                                <p>Sed id magna vitae eros sagittis euismod.</p>
                                                <h5>$24.79</h5>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <!-- End Menu -->
    
</asp:Content>
