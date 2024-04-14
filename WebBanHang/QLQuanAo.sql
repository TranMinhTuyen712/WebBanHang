create database QLQuanAo
GO
USE QLQuanAo
GO

 CREATE TABLE loaiSanPham (
	id int IDENTITY(1,1)NOT NULL,
	Ten nvarchar(255) NOT NULL,
	CONSTRAINT pk_loaiSanPham PRIMARY KEY CLUSTERED 
(
	id ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
)
SET IDENTITY_INSERT loaiSanPham ON 
INSERT INTO loaiSanPham(id, Ten) VALUES
(1, N'Quần Dai'),
(2, N'Quần Sort'),
(3, N'Áo Khoác'),
(4, N'Quần Thể Thao'),
(5, N'Quần Tây'),
(6, N'Áo Polo'),
(7, N'Áo Thun')
SET IDENTITY_INSERT loaiSanPham off
 select*from loaiSanPham

CREATE TABLE slide (
	id int IDENTITY(1,1)NOT NULL,
	Ten nvarchar(255) NOT NULL,
	Hinh varchar(255) NOT NULL,
	CONSTRAINT pk_slide PRIMARY KEY CLUSTERED 
(
	id ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
SET IDENTITY_INSERT slide ON 
INSERT INTO slide(id, Ten,Hinh) VALUES
(1, N'quần jean', N'quan-jeans-nam-qjm3071-7.jpg'),
(2, N'áo thun', N'aothun.jpg'),
(3, N'áo khoác', N'aokhoac.jpg')
SET IDENTITY_INSERT slide OFF
 select*from slide

 
CREATE TABLE sanPham (
  id int IDENTITY(1,1)NOT NULL,
  TieuDe nvarchar(255) NOT NULL,
  donGia int not null,
  NoiDung nvarchar(max),
  Hinh varchar(255) NOT NULL,
  NoiBat int NOT NULL DEFAULT 0,
  idLoaiSanPham int NOT NULL,
  CONSTRAINT pk_sanPham PRIMARY KEY CLUSTERED 
(
	id ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
CONSTRAINT FK_sanpham_idloaisanpham FOREIGN KEY (idLoaiSanPham) REFERENCES [dbo].[loaiSanPham](id)
) 
SET IDENTITY_INSERT sanPham ON
INSERT INTO sanPham(id,TieuDe, donGia,NoiDung,Hinh,NoiBat,idLoaiSanPham) VALUES

(1, N'Áo Sơ Mi Cổ Bẻ Tay Dài Sợi Tre Ít Nhăn Trơn - Chính hãng YaMe.vn', 260000, N'áo sơ mi - Sơ Mi Tay Dài Đơn Giản M26,Chất liệu: Vải Sợi Tre (Bamboo),Thành phần,50% bamboo 50% poly,Kháng khuẩn,Chống tia UV,Thân thiện ,môi trường,Thông thoáng, Ít hăn,Họa tiết thêu ', N'aosomitaydaisoitre.jpg', 1, 1),
(2, N'Áo Thun Cổ Tròn Tay Ngắn Sợi Nhân Tạo Thoáng Mát ', 149600, N'Áo Thun Cổ Tròn Tối Giản M9,Chất liệu: Hexagon Poly Fabric,Thành phần: 100% Polyester,Mềm mại',N'aothuncotrontayngan.jpg', 0, 1),
(3, N'Quần Short Lưng Thun Dưới Gối Vải Dù Nhanh Khô', 205600, N'Quần Short Đơn Giản Y Nguyên Bản Ver26,Chất liệu: Vải Linen,Thành phần: 49% Rayon 17% Nylon 34% Polyester', N'Quần Short Lung Thun Dưới Gối.jpg', 0, 1),
(4, N'Áo Sơ Mi Cổ Lãnh tụ Tay Dài Sợi', 261600, N'Sơ Mi Cổ Lãnh Tụ Đơn Giản Y Nguyên Bản Ver15,Chất liệu: Sợi Cà Phê,Thành phần: 50% Coffee 50% Polyester', N'aosomicolanh.jpg', 0, 1),
(5, N'Quần Dài Lưng Thun Ống Đứng Vải Dù Đứng Dáng Trơn ', 229600, N'Quần Dài Trouser Đơn Giản Y Nguyên Bản Ver10,Thành phần: 55% Cotton 27% Nylon 15% Rayon 3% Spandex', N'QuanDaiVaiDu.jpg', 1, 1),
(6, N'Áo Polo Cổ Bẻ Tay Ngắn Sợi Nhân Tạo Thoáng Mát Trơn Dáng Vừa Đơn Giản Gu Tối Giản M19', 309600, N'Áo Thun Cổ Trụ Tối Giản M19,Chất liệu: Seamless Polyamide Spandex,Công nghệ Seamless: tối thiểu đường may, tạo ra sản phẩm liền mạch cho cảm giác thoài mái nhất khi mặc.', N'aopolobecotayngan.jpg', 1, 5),
(7, N'Áo Khoác Có Nón Vải Thun Chống Nắng Biểu Tượng Dáng Vừa Đơn Giản Gu Tối Giản M9', 285600, N'Áo Khoác Classic Tối Giản M9,Chất liệu: Hexagon Poly Fabric,Mềm mại', N'aokhoatconon.jpg', 0, 5),
(8, N'Áo Khoác Không Nón Vải Thun Thoáng Mát Biểu Tượng Dáng Rộng Đơn Giản Y2010 Originals Ver46', 309600, N'Áo Khoác Cardigan Đơn Giản Y Nguyên Bản Ver46,Chất liệu: COTTON DOUBLE FACE, Vải sợi Cotton được dệt theo "DOUBLE-FACE" có cấu trúc 2 bề mặt giống nhau, có thể sử dụng được cả 2 mặt vải,Thành phần: 87% Cotton 13% Polyester', N'aokhoatkhongnonvaithun.jpg', 1, 5),
(9, N'Áo Khoác Classic Đơn Giản Y Nguyên Bản Ver54', 237600, N'Reverse Coil Zipper ,Những chiếc khoá túi này có bề mặt ngoài dẹp, phẳng trong khi răng khoá thì ở trong', N'AoKhoacClassic.jpg', 0, 3),
(10, N'Áo Thun Cổ Trụ Tối Giản M4', 205600, N'Thành phần: 61% Polyester 33% Cotton 6% Spandex,Thoáng mát,Co giãn tối ưu', N'AoThunCoTru.jpg', 1, 3),
(11, N'Áo Thun Cổ Trụ Thể Thao M27', 229600, N'Chất liệu: Nylon Fabric,Thành phần: 80% Nylon 20% Spandex,Mềm mại', N'AoThunTheThaoM27.jpg', 0, 3),
(12, N'Áo Sơ Mi Tay Dài Đơn Giản Y Nguyên Bản Ver47', 261600, N'Chất liệu: Cotton Poly,Thành phần: 55% Polyester 45% Cotton,Độ bền', N'AoSoMiTayDai.jpg', 1, 3),
(13, N'Áo Polo Cổ Bẻ Tay Ngắn Vải Cotton 2 Chiều', 229600, N'Chất liệu: Cotton Compact 2C,Thành phần: 100% Cotton,Thân thiện,Thấm hút thoát ẩm,Điều hòa nhiệt,Không dùng thuốc tẩy hoặc xà phòng có tính tẩy mạnh ', N'aopolocobetayngan.jpg', 1, 4),
(14, N'Áo Polo Cổ Bẻ Tay Dài Vải Cotton 4 Chiều Thấm Hút', 284000, N'Chất liệu: MINI ZURRY,Thấm hút thoát ẩm,Mềm mại,Ít nhăn,Co giản tối ưu,Họa tiết in dẻo', N'AoPoloBeCoTayDaiCotton.jpg', 1, 4),
(15, N'Quần Short Lưng Gài Trên Gối Vải Denim Co Giãn ', 261600, N'Quần Short Đơn Giản Y Nguyên Bản Ver31,Chất liệu: Kaki Nhung,Thành phần: 55% Cotton 27% Nylon 15% Rayon 3% Spandex,Kẹp logo #Y2010 túi sau', N'QuanShortLungGai.jpg', 1, 2),
(16, N'Quần Short Lưng Thun Trên Gối Vải Thun Co Giãn', 229600, N'Quần Short Đơn Giản Y Nguyên Bản Ver39,Thành phần : 97% Polyesster 3% Spandex,Cấu trúc dệt đặc biệt: Jacquard Knitting,Vải Jacquard có cấu trúc các sợi liên kết với nhau rất cao, kết hợp thêm kiểu dệt Jacquard tạo ra một loại vải có chất lượng cao và tạo hiệu ứng đẹp cho mặt vải.', N'QuanShortLungThun.jpg', 0, 2),
(17, N'Quần Dài Lưng Thun Ống Ôm Vải Thun Co Giãn', 317600, N'Quần Dài Jogger Đơn Giản Y Nguyên Bản Ver9,Chất liệu: COTTON DOUBLE FACE,Vải sợi Cotton được dệt theo "DOUBLE-FACE" có cấu trúc 2 bề mặt giống nhau, có thể sử dụng được cả 2 mặt vải,Thành phần: 87% Cotton 13% Polyester', N'QuanDaiLungThunOngOm.jpg', 1, 2),
(18, N'Quần Dài Lưng Thun Ống Đứng Vải Denim Co Giãn', 319200, N'Quần Dài Trouser Đơn Giản Y Nguyên Bản Ver10,Chất liệu: Kaki nhung,Thành phần: 55% Cotton 27% Nylon 15% Rayon 3% Spandex', N'QuanDaiLungThunOngDung.jpg', 0, 2),
(19, N'Áo Thun Cổ Tròn Tay Dài Vải Cotton 2 Chiều Thấm Hút', 200900, N'Thành phần 87% Cotton 13% Polyester,Cấu trúc dệt WAFFLE đặc biệt, Hạn chế nhăn,Mềm mại,Áo may dạng phom sweater tay dài rộng thoải mái,Chất liệu lạ mắt cấu trúc waffle,Thân trước phối hình thêu 2D trước ngực, dưới lai may đắp logo dệt', N'AoThunCoTronTayDai.jpg', 0, 2),
(20, N'Áo Khoác Không Nón Vải Denim Chống Nắng Phối Màu', 333000, N'Áo Khoác Varsity Ngân Hà Space Ver3,Chất liệu : Vải Kaki Nhung,Thành phần: 100% Polyester,Họa tiết thêu + thêu đắp giống,Cổ áo, cổ tay, lai áo được bo vải gân,Áo được cài bằng nút bấm', N'AoKhoacKhongNonVaiDenim.jpg', 0, 2)
SET IDENTITY_INSERT sanPham off
select*from sanPham
 
CREATE TABLE users (
	id int IDENTITY(1,1) not null,
	name nvarchar(255) NOT NULL,
	email varchar(255) unique,
	password varchar(255) NOT NULL,
	CONSTRAINT pk_users PRIMARY KEY CLUSTERED 
(
	id ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
) 

SET IDENTITY_INSERT users ON 
INSERT INTO users (id, name, email, password) VALUES
(1, N'Ngọc Ly', N'lynguyen08.cv@gmail.com', N'1'),
(2, N'Huong Lan', N'huonglan08@gmail.com', N'1'),
(3, N'User_3', N'user_3@mymail.com', N'1'),
(4, N'User_4', N'user_4@mymail.com', N'1'),
(5, N'User_5', N'user_5@mymail.com', N'1'),
(6, N'User_6', N'user_6@mymail.com', N'1'),
(7, N'User_7', N'user_7@mymail.com', N'1'),
(8, N'User_8', N'user_8@mymail.com', N'1'),
(9, N'User_9', N'user_9@mymail.com', N'1'),
(10, N'trottraoduyen', N'trotraoduyen@mymail.com', N'1'),
(11, N'Minh Tuyen', N'minhtuyen@gmail.com', N'1')
SET IDENTITY_INSERT users off
select * from users


CREATE TABLE comment(
  id int IDENTITY(1,1) NOT NULL,
  idUser int NOT NULL,
  idSanPham int NOT NULL,
  NoiDung nvarchar(255) NOT NULL,
  	CONSTRAINT pk_comment PRIMARY KEY CLUSTERED 
(
	id ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
CONSTRAINT FK_comment_idsanpham FOREIGN KEY (idSanPham) REFERENCES [dbo].[sanPham](id),
CONSTRAINT FK_comment_idusers FOREIGN KEY (idUser) REFERENCES [dbo].[users](id)
)
GO
SET IDENTITY_INSERT comment ON 
INSERT INTO comment (id, idUser, idSanPham, NoiDung) VALUES
(1, 10, 1, N'Bài viết này được'),
(2, 8, 19, N'Hay quá trời'),
(3, 2, 20, N'Tôi rất thích bài viết này'),
(4, 2, 11, N'Ý kiến của tôi khác so với bài này'),
(5, 6, 10, N'Tôi rất thích bài viết này'),
(6, 9, 9, N'Bài viết này được'),
(7, 5, 4, N'Bài viết này được'),
(8, 8, 9, N'Bài viết này được'),
(9, 7, 2, N'Bài viết này được'),
(10, 5, 4, N'Tôi chưa có ý kiến gì'),
(11, 4, 9, N'Bài viết này chưa được hay lắm'),
(12, 5, 8, N'Bài viết này được'),
(13, 6, 7, N'Tôi chưa có ý kiến gì'),
(14, 5, 6, N'Tôi rất thích bài viết này'),
(15, 7, 8, N'Bài viết này được'),
(16, 9, 8, N'Bài viết này được'),
(17, 1, 19, N'Không thích bài viết này'),
(18, 4, 8, N'Tôi rất thích bài viết này'),
(19, 10, 4, N'Bài viết này tạm ổn'),
(20, 2, 17, N'Bài viết rất hay'),
(21, 5, 20, N'Tôi chưa có ý kiến gì'),
(22, 1, 8, N'Không thích bài viết này'),
(23, 4, 8, N'Hay quá trời'),
(24, 10, 1, N'Bài viết này chưa được hay lắm'),
(25, 4, 8, N'Bài viết này tạm ổn'),
(26, 10, 9, N'Tôi rất thích bài viết này'),
(27, 4, 6, 'NBài viết này được'),
(28, 6, 15, N'Ý kiến của tôi khác so với bài này'),
(29, 3, 14, N'Hay quá trời'),
(30, 10, 10, N'Tôi chưa có ý kiến gì'),
(31, 10, 5, N'Bài viết này được'),
(32, 5, 1, N'Hay quá trời'),
(33, 9, 6, N'Bài viết này tạm ổn'),
(34, 5, 5, N'Tôi rất thích bài viết này'),
(35, 8, 12, N'Bài viết rất hay'),
(36, 9, 2, N'Tôi chưa có ý kiến gì'),
(37, 4, 2, N'Bài viết này chưa được hay lắm'),
(38, 4, 7, N'Bài viết này được'),
(39, 7, 8, N'Bài viết rất hay'),
(40, 5, 14, N'Hay quá trời'),
(41, 7, 7, N'Tôi rất thích bài viết này'),
(42, 10, 3, N'Tôi sẽ học thèo bài viết này'),
(43, 3, 4, N'Bài viết này chưa được hay lắm'),
(44, 4, 7, N'Bài viết rất hay'),
(45, 1, 17, N'Ý kiến của tôi khác so với bài này'),
(46, 5, 13, N'Tôi sẽ học thèo bài viết này'),
(47, 7, 7, N'Bài viết này được'),
(48, 3, 9, N'Không thích bài viết này'),
(49, 2, 6, N'Bài viết rất hay'),
(50, 10, 2, N'Hay quá trời'),
(51, 3, 7, N'Tôi sẽ học thèo bài viết này'),
(52, 3, 1, N'Bài viết này tạm ổn'),
(53, 5, 4, N'Tôi chưa có ý kiến gì'),
(54, 5, 6, N'Hay quá trời'),
(55, 3, 5, N'Tôi chưa có ý kiến gì'),
(56, 1, 19, N'Tôi rất thích bài viết này'),
(57, 6, 18, N'Hay quá trời'),
(58, 5, 17, N'Bài viết rất hay'),
(59, 10, 14, N'Tôi chưa có ý kiến gì'),
(60, 9, 4, N'Không thích bài viết này'),
(61, 9, 12, N'Bài viết này được'),
(62, 9, 6, N'Ý kiến của tôi khác so với bài này'),
(63, 7, 4, N'Không thích bài viết này'),
(64, 3, 10, N'Hay quá trời'),
(65, 2, 2, N'Bài viết này tạm ổn'),
(66, 10, 1, 'NKhông thích bài viết này'),
(67, 7, 7, N'Hay quá trời'),
(68, 4, 5, N'Bài viết rất hay'),
(69, 6, 8, N'Bài viết này tạm ổn'),
(70, 7, 12, N'Ý kiến của tôi khác so với bài này'),
(71, 2, 9, N'Không thích bài viết này'),
(72, 10, 8, N'Không thích bài viết này'),
(73, 1, 1, N'Tôi chưa có ý kiến gì'),
(74, 5, 6, N'Không thích bài viết này'),
(75, 6, 16, N'Tôi chưa có ý kiến gì'),
(76, 1, 15, N'Tôi rất thích bài viết này'),
(77, 9, 18, N'Bài viết này được'),
(78, 3, 18, N'Ý kiến của tôi khác so với bài này'),
(79, 10, 16, N'Bài viết rất hay'),
(80, 5, 6, N'Không thích bài viết này'),
(81, 7, 4, N'Bài viết này được'),
(82, 4, 16, N'Bài viết này chưa được hay lắm'),
(83, 10, 8, N'Tôi chưa có ý kiến gì'),
(84, 2, 4, N'Hay quá trời'),
(85, 9, 5, N'Tôi sẽ học thèo bài viết này'),
(86, 8, 19, N'Bài viết này được'),
(87, 5, 20, N'Không thích bài viết này'),
(88, 1, 16, N'Bài viết này chưa được hay lắm'),
(89, 2, 17, N'Không thích bài viết này'),
(90, 9, 4, N'Tôi chưa có ý kiến gì'),
(91, 10, 10, N'Bài viết này chưa được hay lắm'),
(92, 1, 7, N'Tôi chưa có ý kiến gì'),
(93, 9, 9, N'Bài viết này chưa được hay lắm'),
(94, 6, 19, N'Bài viết này tạm ổn'),
(95, 7, 15, N'Hay quá trời'),
(96, 9, 6, N'Hay quá trời'),
(97, 8, 7, N'Bài viết này chưa được hay lắm'),
(98, 3, 2, N'Hay quá trời'),
(99, 1, 8, N'Bài viết rất hay'),
(100, 8, 11, N'Tôi rất thích bài viết này'),
(101, 1, 1, N'Được'),
(102, 1, 1, N'Chán muốn chết'),
(103, 1, 13, N'a')
SET IDENTITY_INSERT comment off 
 select*from comment
