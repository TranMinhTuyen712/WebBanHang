<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="XemThem.aspx.cs" Inherits="WebBanHang.XemThem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container contact_container"style="padding-top:10%">
<div class="row">
	<div class="col">

		<!-- Breadcrumbs -->
                 <br />
		<div class="breadcrumbs d-flex flex-row align-items-center">
			<ul>
				<a class="btn btn-outline-primary" href="qlTrangChu.aspx">Trang Chủ</a>

			</ul>
		</div>

	</div>
</div>
   
<!-- Map Container -->

<div class="row">
	<div class="col">
		
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.1132614138423!2d106.64472347480532!3d10.802636589347768!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752948a9492ea5%3A0xbbe79e44b6b11c5c!2zMTIxIEhvw6BuZyBIb2EgVGjDoW0sIFBoxrDhu51uZyAxMywgVMOibiBCw6xuaCwgVGjDoG5oIHBo4buRIEjhu5MgQ2jDrSBNaW5oLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1711520523155!5m2!1svi!2s" width="1200" height="500" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
			
		</div>
	
</div>
        <style >
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
        </style>
<!-- Contact Us -->
<div class="row">
	<div class="col-lg-8 contact_col">
		<div class="contact_contents">
			<h1>Liên hệ chúng tôi</h1>

			<div >
				<p class="m-0">(+84)0123 456 789 </p>
				<p>info.ThoitrangShop@gmail.com</p>
                 
			</div>

			
		</div>

		<!-- Follow Us -->
        </div>
		<div class="col-lg-4 follow_us_contents" style="text-align:right">
			<h1>Theo dõi</h1>
                        <span class="box50 border-danger mr-2 " style="padding-right:5px">

<i class="fa-brands fa-facebook col-2 btn btn-outline-primary"></i>
<i class="fa-brands fa-instagram col-2 btn btn-outline-danger"></i>
                            </span>
			
		</div>

	

</div>
		</div>
	<section class="myfooter bg-dark text-white py-2">
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
                    <i class="fa-solid fa-truck" style="font-size: 20px"></i>
                    Giao hàng tận nơi 
                        cho đơn hàng trên 1.000.000đ
                </div>
            </div>

            <div class="col-md-4" style="color: #ded7d7">
                <h5 style="color: #057cab; font-family: 'Arial Rounded MT'">VĂN PHÒNG GIAO DỊCH</h5>
                <div class="col-12 ">
                    <i class="fa-solid fa-rotate-left" style="font-size: 10px"></i>

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
                    <i class="fa-brands fa-facebook col-2 btn btn-outline-primary"></i>
                    <i class="fa-brands fa-instagram col-2 btn btn-outline-danger"></i>
                    <i class="fa-solid fa-envelope col-2 btn btn-outline-warning"></i>
                    <i class="fa-solid fa-phone col-2 btn btn-outline-light"></i>
                    

                </span>
            </div>
        </div>




    </div>

    <br />
    <marquee>
        <div class="text-center" style="color: crimson;">


            <p>Nguyễn Phạm Văn An - Trần Minh Tuyền - Chế Văn Trường </p>
        </div>
    </marquee>
</section>

</asp:Content>
