<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="qlTrangChu.aspx.cs" Inherits="WebBanHang.qlTrangChu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   


    <!--Slider -->

    <div class="body1" style="padding-left: 15px; padding-right: 15px">
        <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel" style="padding-top: 8%">
            <ol class="carousel-indicators">

                <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
                <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner" style="font-family: 'Ink Free'">
                <div class="carousel-item active">
                    <img src="images/slider_1.jpg" class="d-block w-100" alt="...">
                    <div class="carousel-caption d-none d-md-block">

                        <h3 class="text-danger">Sản Phẩm Hot Mới</h3>
                        <h4 class="text-dark">Giảm đến 40% cho tất cả sản phẩm</h4>
                         <div class="btn btn-warning">
                         <p> <a href="qlDanhMucSP.aspx" style="color: aliceblue; font-size: 15px">Sắm ngay</a></p>
                     </div>

                    </div>
                </div>
                <div class="carousel-item">
                    <img src="images/lg_08.jpg" class="d-block w-100" alt="...">
                    <div class="carousel-caption d-none d-md-block">
                        <h3 class="text-danger">Sản Phẩm Hot Mới</h3>
                        <h4 class="text-dark">Giảm đến 40% cho tất cả sản phẩm</h4>
                        <div class="btn btn-warning">
                         <p> <a href="qlDanhMucSP.aspx" style="color: aliceblue; font-size: 15px">Sắm ngay</a></p>
                     </div>

                    </div>
                </div>

                <div class="carousel-item">
                    <img src="images/slider_6.jpg" class="d-block w-100" alt="...">
                    <div class="carousel-caption d-none d-md-block">
                        <h3 class="text-danger">Sản Phẩm Hot Mới</h3>
                        <h4 class="text-dark">Giảm đến 40% cho tất cả sản phẩm</h4>
                        <div class="btn btn-warning">
                            <p> <a href="qlDanhMucSP.aspx" style="color: aliceblue; font-size: 15px">Sắm ngay</a></p>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

    <hr />
    <style>
        @keyframes move {
    0% { transform: translateX(0); }
    50% { transform: translateX(20px); }
    100% { transform: translateX(0); }
}

 .sp{
    display: inline-block;
    animation: move 2s infinite;
    filter:drop-shadow(20px 10px 20px green)
}
    </style>
    <div class="container text-center">
    <h2 class="sp" style="font-family:'Cascadia Mono'">Sản Phẩm mới</h2>
        </div>
    <br />
 
  
    <div >
        
        <div class="row">
             
        <div class="col-md-8" style="text-align: center; margin: 0 auto;display:block; height: 50%">
            <asp:ListView ID="lvsanPham" runat="server" DataSourceID="dssanPham">
                <ItemTemplate>

                    <div class="col product text-center">
                        <i class="fa-solid fa-comment" style="font-size: 20px; color: green">
                            <a style="font-size: 10px">new</a>
                        </i>
                        <hr />
                        <a href="ChiTiet.aspx" class="images-text">
                            <div>
                                <img style= "width: 100%;height:190px  " alt="" src="images/<%# Eval("Hinh") %>" />
                            </div>

                        </a>
                        <br />
                        <div style="text-align: center; height: 30px">
                            <%#  Eval("TieuDe") %>
                        </div>
                        <br />
                        <hr />
                        <p>
                            <span class="original-price"><%# Eval("donGia","{0:#,##0}đ   ")   %></span><span class="sale-price">  <%# Eval("donGia","{0:#,##0}đ   ")   %>
                  
                            </span>
                        </p>
                        <br />
                        <asp:Button ID="btAddToCard" runat="server" class="btn btn-outline-success" style="width: 85%; text-align: center;" Text="Mua ngay"
    CommandArgument='<%# Eval("id") %>' OnClick="btAddToCard_Click" />
                    </div>

                </ItemTemplate>
                <LayoutTemplate>
                    <div class="row">
                        <div id="itemPlaceHolder" runat="server">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col text-center">
                            <asp:DataPager ID="DataPager1" runat="server" PageSize="5">
                                <Fields>
                                    <asp:NumericPagerField />
                                </Fields>
                            </asp:DataPager>
                        </div>
                    </div>
                </LayoutTemplate>
            </asp:ListView>
        </div>
           
    </div>
        </div>
    <hr />
   
    <div class="container text-center" style="font-family: 'Maiandra GD'">

        <h2 class="container col-md-8 hd-text">Bán gần đây</h2>
        <br>
    </div>

    <div class="row">
        <div class="row-md-10" style="padding-left: 2%; margin: 0 auto; height: 50%">

            <asp:ListView ID="lvsp" runat="server" DataSourceID="dssanPham">
                <ItemTemplate>

                    <div class="row product text-center">
                        <i class="fa-solid fa-tag" style="font-size: 20px; color: red">
                            <a style="font-size: 10px">sale</a>
                        </i>
                        <hr />
                        <a href="ChiTiet.aspx" class="images-text">
                            <div>
                                <img style="width: 100%;" alt="" src="images/<%# Eval("Hinh") %>" />
                            </div>
                        </a>
                        <br />
                        <div style="text-align: center; height: 30px">
                            <%#  Eval("TieuDe") %>
                        </div>
                        <br />
                        <hr />
                        <p>
                            <span class="original-price"><%# Eval("donGia","{0:#,##0}đ ")   %></span><span class="sale-price">  <%# Eval("donGia","{0:#,##0}đ   ")   %>
                  
                            </span>
                        </p>
                        <br />

                        <asp:Button ID="btAddToCard" runat="server" class="btn badge-danger card-body" style="width: 85%; text-align: center;" Text="Thêm vào giỏ hàng"
                            CommandArgument='<%# Eval("id") %>' OnClick="btAddToCard_Click" />
                    </div>

                </ItemTemplate>
                 <LayoutTemplate>
     
         <div id="itemPlaceHolder" runat="server">
         </div>
     
     <div class="row">
         <div class="col text-center">
             <asp:DataPager ID="DataPager1" runat="server" PageSize="7">
                 <Fields>
                     <asp:NumericPagerField />
                 </Fields>
             </asp:DataPager>
         </div>
     </div>
 </LayoutTemplate>
            </asp:ListView>
        </div>
    </div>
    <br />
    <hr />

    <div>

        <div class="container col-10" style="padding-top: 5%; padding-bottom: 1%; margin-block: auto; -webkit-box-reflect: below 0px linear-gradient(to bottom, rgba(0,0,0,0.0), rgba(0,0,0,0.4));">

            <div class="mvc">

                <div style="display: inline-block; margin: 0 65px;">

                    <div class="carousel-inner" style="font-family: Constantia;">
                        <div class="carousel-item active">

                            <div style="width: 100%;">
                                <h2 class="table-warning" style="text-align: center">Giá sốc</h2>
                                <h3 class="text-danger">Nhiều Ưu đãi hấp dẫn </h3>
                            </div>

                        </div>
                    </div>

                </div>
                <div style="display: inline-block; margin: 0 50px">
                    <div class="carousel-inner" style="font-family: 'Ink Free'">
                        <div class="carousel-item active">
                            <div style="width: 100%">
                                <h2 class="table-dark" style="text-align: center">Uy Tín - Chất Lượng</h2>
                                <h3 class="text-danger"></h3>
                            </div>
                        </div>

                    </div>

                </div>

                <div style="display: inline-block; margin: 0 65px">

                    <div class="carousel-inner" style="font-family: Constantia">
                        <div class="carousel-item active">
                            <div style="width: 100%;">
                                <h2 class="table-warning" style="text-align: center">Mua tại cửa hàng</h2>
                                <h3 class="text-danger">Có voucher giảm 20% </h3>
                            </div>


                        </div>
                    </div>

                </div>
            </div>

        </div>

    </div>


    <br />
    <hr />
    <div class="row" style="padding-left: 15px; padding-top: 5%">

        <div class="col-md-8" style="font-family: 'Maiandra GD'">

            <h2 class="hd-text" style="text-align: center; background: #eee9e9;">Bán chạy nhất</h2>

            <br />

            <br />
        </div>
        <br />
        <div class="col-md-8" style="height: 50%">
            <div class="product text-center">
                <i class="fa-solid fa-tag" style="font-size: 20px; color: red">
                    <a style="font-size: 10px">sale</a>
                </i>
                <hr />
                <div class="product_image">
                    <a href="ChiTiet.aspx">
                        <img href="GioHang.aspx" src="images/product_10.png" alt=""></a>
                </div>

                <h5>Áo thun tay dài </h5>
                <hr />
                <p><span class="original-price">225.000đ</span><span class="sale-price">190.000đ</span></p>
                <a href="qlDanhMucSP.aspx">
                    <div style="width: 85%" class="btn btn-outline-warning">Sắm Ngay</div>
                </a>
            </div>
            <div class="product text-center">
                <i class="fa-solid fa-face-grin-hearts" style="font-size: 40px; color: gold">
                    <a style="font-size: 10px">hot</a>
                </i>
                <hr />
                <div class="product_image">
                    <a href="ChiTiet.aspx">
                        <img src="images/product_3.png" alt="">
                    </a>
                </div>

                <h5>Áo len tay dài </h5>
                <hr />
                <p><span class="original-price">225.000đ</span><span class="sale-price">190.000đ</span></p>
                <a href="qlDanhMucSP.aspx">
                    <div style="width: 85%" class="btn btn-outline-warning">Sắm Ngay</div>
                </a>

            </div>
            <div class="product text-center">

                <hr />
                <div class="product_image">
                    <a href="ChiTiet.aspx">
                        <img src="images/product_1.png" alt=""></a>
                </div>

                <h5>Áo khoác lạnh </h5>
                <hr />
                <p><span class="price">245.000đ</span></p>
                <a href="qlDanhMucSP.aspx">
                    <div style="width: 85%" class="btn btn-outline-warning">Sắm Ngay</div>
                </a>
            </div>


            <div class="product text-center">
                <hr />
                <div class="product_image">
                    <a href="ChiTiet.aspx">
                        <img src="images/product_9.png" alt=""></a>
                </div>

                <h5>Áo khoác bambo </h5>
                <hr />
                <p><span class="price">245.000đ</span></p>
                <a href="qlDanhMucSP.aspx">
                    <div style="width: 85%" class="btn btn-outline-warning">Sắm ngay</div>
                </a>
            </div>
            <div class="product text-center">
                <i class="fa-solid fa-comment" style="font-size: 20px; color: green">
                    <a style="font-size: 10px">new</a>
                </i>
                <hr />
                <div class="product_image">
                    <a href="ChiTiet.aspx">

                        <img src="images/product_7.png" alt=""></a>
                </div>

                <h5>Áo thun tay dài vãi b3 </h5>
                <hr />
                <p><span class="original-price">500.000đ</span> <span class="sale-price">355.000đ</span></p>
                <a href="qlDanhMucSP.aspx">
                    <div style="width: 85%" class="btn btn-outline-warning">Sắm Ngay</div>
                </a>
            </div>


        </div>

        <div class="col-md-4" style="text-align: center; border-left-style: ridge; border-bottom-style: ridge">

            <h2 style="text-align: center; font-family: Centaur; color: crimson; width: 100%; background: #ded7d7" class="srm">Sắp ra mắt</h2>


            <div class="tr text-center">


                <div class="product_image" >
                    <a href="ChiTiet.aspx">

                        <img src="images/moi_01.jpg" alt="" style="width: 50%; height: auto"></a>

                </div>
                           

   
            </div>

        </div>
    </div>


    <br />

    <!--footer-->
    <style>
        @keyframes blink {
            0% {
                opacity: 1;
            }

            50% {
                opacity: 0;
            }

            100% {
                opacity: 1;
            }
        }


        .srm {
            animation: blink 1s infinite; /* Tạo hiệu ứng nhấp nháy trong 1 giây và lặp lại vô hạn */
        }

        img {
            object-fit: cover;
        }

      /* img{
            object-fit:cover;
                filter:grayscale(100%);
        }
        img:hover{
              filter:grayscale(30%);
        }
        */ 
        .product {
            font-size: 13px;
            display: inline-block;
            width: 170px;
            height: 100%;
            margin: 10px;
            border: 1px solid initial;
            padding: 1px;
            text-align: center;
        }


        .btn {
            font-size: 10px;
        }

            .btn:hover {
                transform: scale(1.2);
            }

        .product img {
            width: 100%;
        }

        .product h5 {
            margin-top: 0;
            padding-top: 5px;
            font-size: 13px;
        }


        .sale-price {
            color: crimson;
            font-weight: bold;
        }

        .original-price {
            text-decoration: line-through;
            color: #808080;
        }

        .product {
            transition: all 0.4s ease-in-out;
        }

            .product:hover {
                background-color: #ded7d7;
                font-size: 15px;
                color: black;
                transform: scale(1);
                box-shadow: 5px 5px 5px rgb(62, 58, 58);
            }

        section {
            margin: 0;
            padding: 0;
            height: 100%;
            overflow: hidden;
        }

        section {
            position: relative;
            width: 98%;
            margin: 50px auto;
            overflow: hidden;
        }

            section:before,
            section:after {
                content: "";
                position: absolute;
                width: 100%;
                height: 100%;
                border: 2px solid #4b5354;
                transition: transform 0.2s ease-in;
            }

            section:before {
                top: -2px;
                left: -2px;
                transform-origin: top left;
                transform: rotate(-45deg);
            }



        section {
            padding: 20px;
        }

        .mvc {
            text-align: center;
            animation: bounce 0.5s infinite alternate; /* Sử dụng animation với tên là "bounce", thời gian 1s, lặp vô hạn và chuyển đổi ngược lại */
        }

        @keyframes bounce {
            from {
                transform: translateY(0); /* Bắt đầu từ vị trí ban đầu */
            }

            to {
                transform: translateY(10px); /* Di chuyển c7hữ  xuống 10px */
            }
        }
    </style>
    <section class="col-md-12 bg-dark text-white ">
        <div class="container" style="padding-top: 5%">
            <div class="row">

                <div class="col-md-4">
                    <h5 style="color: #057cab; font-family: 'Arial Rounded MT'">CHÍNH SÁCH BÁN HÀNG</h5>

                    <ul class="list-menu" style="color: #ded7d7">
                        <li class="list-menu">Trang chủ</li>
                        <li class="list-menu">Giới thiệu </li>
                        <li class="list-menu">Sản phẩm</li>
                        <li class="list-menu">Tin Mới Nhất</li>
                        <li class="list-menu">Câu hỏi thường gặp</li>
                        <li class="list-menu">Liên hệ</li>
                    </ul>
                </div>

                <div class="col-md-3">
                    <h5 style="color: #057cab; font-family: 'Arial Rounded MT'">VẬN CHUYỂN MIỄN PHÍ</h5>
                    <div class="col-12" style="color: #ded7d7">
                        <i class="fa-solid fa-truck" style="font-size: 20px;color:#931111"></i>
                        Giao hàng tận nơi 
                            cho đơn hàng trên 1.000.000đ
                    </div>
                </div>

                <div class="col-md-4" style="color: #ded7d7">
                    <h5 style="color: #057cab; font-family: 'Arial Rounded MT'">VĂN PHÒNG GIAO DỊCH</h5>
                    <div class="col-12 ">
                        <i class="fa-solid fa-rotate-left" style="font-size: 20px;color:green"></i>

                        Trả hàng hoàn tiền sau 2 ngày 
                            khi hàng gặp sự cố

                    </div>

                </div>


            </div>


            <div class="row">
                <div class="col-md-9">
                    <a class="navbar-brand" href="#">
                        <h4 style="font-family: Cambria, Cochin, Georgia, Times, Times New Roman, serif; color: black">Shop<span style="color: red;">ATT</span></h4>
                    </a>
                    <div style="font-family: Arial; font-size: 12px">
                        <p class="m-0">Tên công ty: CTTNHH-MTV</p>
                        <p class="m-0">Giấy chứng nhận đăng ký doanh nghiệp số: 0123456789, đăng ký lần đầu ngày 26/3/2024</p>
                        <p class="m-0">Địa chỉ đăng ký kinh doanh: 252 Lý Chính Thắng, Phường 9, Quận 3, TP.HCM </p>
                        <p class="m-0">Địa chỉ trụ sở doanh nghiệp: 121 Hoàng Hoa Thám, Phường 13, Q.Tân Bình</p>
                        <p class="m-0">Để được giải đáp thắc mắc, vui lòng truy cập trang FAQ/Trợ giúp</p>
                        <p class="m-0">Điện thoại: (028) 5656 7227 - Email: ATT@gmail.com </p>
                    </div>
                </div>
                <div class="text-white col-md-3" style="padding-top: 15%">
                    <span class="box50 border-danger mr-3 ">

                        <p style="font-family: 'Berlin Sans FB'">Liên hệ chúng tôi qua </p>
                        <i  class="fa-brands fa-facebook col-2 btn btn-outline-primary" ></i>
                        <i class="fa-brands fa-instagram col-2 btn btn-outline-danger"></i>
                        <i class="fa-solid fa-envelope col-2 btn btn-outline-warning"></i>
                        <i class="fa-solid fa-phone col-2 btn btn-outline-light"></i>


                    </span>
                </div>
            </div>




        </div>

        <br />

   
   
    <asp:SqlDataSource ID="dsTen" runat="server"
        ConnectionString="<%$ ConnectionStrings:QLQuanAoConnectionString %>"
        SelectCommand="SELECT * FROM [loaiSanPham]"></asp:SqlDataSource>


    <asp:SqlDataSource ID="dssanPham" runat="server"
        ConnectionString="<%$ ConnectionStrings:QLQuanAoConnectionString %>"
        SelectCommand="SELECT * FROM [sanPham] WHERE ([NoiBat] = @NoiBat)">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="1" Name="NoiBat" QueryStringField="NoiBat" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
         </section>
</asp:Content>
