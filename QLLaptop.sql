CREATE DATABASE QLLapTop
GO

USE [QLLapTop]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HangLaptop](
	[MaHang] NVARCHAR (10) NOT NULL,
	[TenHang] NVARCHAR(100) NOT NULL UNIQUE,
 CONSTRAINT [PK_MaHang] PRIMARY KEY CLUSTERED 
(
	[MaHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Laptop](
    [MaMay] NVARCHAR(10) NOT NULL,
    [TenMay] NVARCHAR(100) NOT NULL,	
    [ThongSo] NVARCHAR(MAX) NOT NULL,
    [SoLuong] INT NOT NULL,
    [GiaNhap] DECIMAL(18,2) NOT NULL,
    [GiaBan] DECIMAL(18,2) NOT NULL,
    [Anh] NVARCHAR(MAX) NULL,
	[TenHang] NVARCHAR(100) NOT NULL,
	[MaHang] NVARCHAR(10) NOT NULL,
CONSTRAINT [PK_Laptop] PRIMARY KEY CLUSTERED 
(
    [MaMay] ASC
) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien] (
    [MaNhanVien] NVARCHAR(10) NOT NULL,
    [TenNhanVien] NVARCHAR(100) NOT NULL,
    [GioiTinh] NVARCHAR(10) NOT NULL,
    [SDT] VARCHAR(10) NOT NULL UNIQUE,
    [DiaChi] NVARCHAR(MAX) NULL,
    [NgayVaoLam] DATE NOT NULL,
CONSTRAINT [PK_MaNhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang] (
    [MaKhachHang] NVARCHAR(10) NOT NULL,
    [TenKhachHang] NVARCHAR(100) NOT NULL,
    [SoDienThoai] VARCHAR(10) NOT NULL UNIQUE,
    [DiaChi] NVARCHAR(MAX) NULL,
CONSTRAINT [PK_MaKhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang] (
    [MaDonHang] NVARCHAR(10) NOT NULL,
    [TenMay] NVARCHAR(MAX) NOT NULL,
	[GiamGia] FLOAT NULL,
    [NgayLap] DATE NOT NULL,
    [MaNhanVien] NVARCHAR(10) NOT NULL,
    [TenNhanVien] NVARCHAR(100) NOT NULL,
    [MaKhachHang] NVARCHAR(10) NOT NULL,
    [TenKhachHang] NVARCHAR(100) NOT NULL,
    [SoDienThoaiKhachHang] VARCHAR(10) NOT NULL,
	[ThanhTien] MONEY NOT NULL,
	[TongTien] MONEY NOT NULL,
CONSTRAINT [PK_MaDonHang] PRIMARY KEY CLUSTERED
(
	[MaDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

--Thêm hãng
INSERT [dbo].[HangLaptop] ([MaHang], [TenHang]) VALUES ('MH01', 'DELL')
INSERT [dbo].[HangLaptop] ([MaHang], [TenHang]) VALUES ('MH02', 'ACER')
INSERT [dbo].[HangLaptop] ([MaHang], [TenHang]) VALUES ('MH03', 'LENOVO')
INSERT [dbo].[HangLaptop] ([MaHang], [TenHang]) VALUES ('MH04', 'LG')
INSERT [dbo].[HangLaptop] ([MaHang], [TenHang]) VALUES ('MH05', 'HP')
INSERT [dbo].[HangLaptop] ([MaHang], [TenHang]) VALUES ('MH06', 'MSI')
INSERT [dbo].[HangLaptop] ([MaHang], [TenHang]) VALUES ('MH07', 'APPLE')
INSERT [dbo].[HangLaptop] ([MaHang], [TenHang]) VALUES ('MH08', 'ASUS')
INSERT [dbo].[HangLaptop] ([MaHang], [TenHang]) VALUES ('MH09', 'Gigabyte')
INSERT [dbo].[HangLaptop] ([MaHang], [TenHang]) VALUES ('MH10', 'VAIO')
INSERT [dbo].[HangLaptop] ([MaHang], [TenHang]) VALUES ('MH11', 'Samsung')
INSERT [dbo].[HangLaptop] ([MaHang], [TenHang]) VALUES ('MH12', 'Huawei')
INSERT [dbo].[HangLaptop] ([MaHang], [TenHang]) VALUES ('MH13', 'Xiaomi')
INSERT [dbo].[HangLaptop] ([MaHang], [TenHang]) VALUES ('MH14', 'Microsoft')
INSERT [dbo].[HangLaptop] ([MaHang], [TenHang]) VALUES ('MH15', 'Honor')
INSERT [dbo].[HangLaptop] ([MaHang], [TenHang]) VALUES ('MH16', 'Clevo')
INSERT [dbo].[HangLaptop] ([MaHang], [TenHang]) VALUES ('MH17', 'Chuwi')

--Thêm laptop
INSERT [dbo].[Laptop] ([MaMay], [TenMay], [TenHang], [ThongSo], [SoLuong], [GiaNhap], [GiaBan], [Anh]) VALUES
('MM01', 'Laptop Dell Latitude L3540', 'DELL', 'i5 1235U/16GB/512GB/15.6" FHD/Win11', 200, 12000000, 15990000, 'D:\VS Projects\DoADocNet\DoADocNet\bin\Debug\HinhLaptop\dell_latitude_15_3540.png‪')
INSERT [dbo].[Laptop] ([MaMay], [TenMay], [TenHang], [ThongSo], [SoLuong], [GiaNhap], [GiaBan], [Anh]) VALUES
('MM02', 'Macbook Air 13 M2 2024', 'APPLE', '8CPU/8GPU/16GB/256GB', 200, 20000000, 25990000, 'D:\VS Projects\DoADocNet\DoADocNet\bin\Debug\HinhLaptop\macbook_air_13_m2.png‪')
INSERT [dbo].[Laptop] ([MaMay], [TenMay], [TenHang], [ThongSo], [SoLuong], [GiaNhap], [GiaBan], [Anh]) VALUES
('MM03', 'Laptop HP 245 G10 R7', 'HP', '7730U/16GB/512GB/14" FHD/Win11_8F157PA', 300, 13000000, 16000000, 'D:\VS Projects\DoADocNet\DoADocNet\bin\Debug\HinhLaptop\2024_5_13.png')
INSERT [dbo].[Laptop] ([MaMay], [TenMay], [TenHang], [ThongSo], [SoLuong], [GiaNhap], [GiaBan], [Anh]) VALUES
('MM04', 'Laptop Acer Swift Lite 14 AI SFL14-51M-56HS', 'ACER', 'Ultra5 125U/16GB/512GB/Win11" FHD/Win11', 400, 15000000, 19000000, 'D:\VS Projects\DoADocNet\DoADocNet\bin\Debug\HinhLaptop\acer_swift_lite_14_ai.png')
INSERT [dbo].[Laptop] ([MaMay], [TenMay], [TenHang], [ThongSo], [SoLuong], [GiaNhap], [GiaBan], [Anh]) VALUES
('MM05', 'Laptop MSI Gaming Thin A15 B7UC-261VN', 'MSI', 'R5 7535HS/16GB/512GB/15.6" FHD/RTX3050_4GB/Win11', 300, 11000000, 16990000, '‪D:\VS Projects\DoADocNet\DoADocNet\bin\Debug\HinhLaptop\msi_thin_a15.png')
INSERT [dbo].[Laptop] ([MaMay], [TenMay], [TenHang], [ThongSo], [SoLuong], [GiaNhap], [GiaBan], [Anh]) VALUES
('MM06', 'Laptop Asus Vivobook X1504ZA-NJ1039W', 'ASUS', 'i7-1255U/16GB/512GB/15.6'' FHD/Win11', 500, 11000000, 15890000, '‪D:\VS Projects\DoADocNet\DoADocNet\bin\Debug\HinhLaptop\asus_vivobook_x1504za.png')
INSERT [dbo].[Laptop] ([MaMay], [TenMay], [TenHang], [ThongSo], [SoLuong], [GiaNhap], [GiaBan], [Anh]) VALUES
('MM07', 'Laptop Dell Inspiron N3530', 'DELL', 'i7 1355U/16GB/512GB/15.6"FHD/Win11', 100, 12000000, 15990000, 'D:\VS Projects\DoADocNet\DoADocNet\bin\Debug\HinhLaptop\dell_inspiron_15_3530.png‪')
INSERT [dbo].[Laptop] ([MaMay], [TenMay], [TenHang], [ThongSo], [SoLuong], [GiaNhap], [GiaBan], [Anh]) VALUES
('MM08', 'Laptop Asus Vivobook 15 OLED A1505VA-MA466W', 'ASUS', 'i5-13500H/16GB/512GB/15.6'' 2.8K/Win11', 500, 10000000, 17990000, '‪D:\VS Projects\DoADocNet\DoADocNet\bin\Debug\HinhLaptop\00908885_asus_vivobook_15_oled.png')
INSERT [dbo].[Laptop] ([MaMay], [TenMay], [TenHang], [ThongSo], [SoLuong], [GiaNhap], [GiaBan], [Anh]) VALUES
('MM09', 'Laptop MSI Gaming Katana15 B13VFK-2099VN', 'MSI', 'i7 13620H/AI/32GB/1TB/15.6"FHD/RTX4060 8GB/W11', 400, 20000000, 28990000, 'D:\VS Projects\DoADocNet\DoADocNet\bin\Debug\HinhLaptop\msi_katana_15.png‪')
INSERT [dbo].[Laptop] ([MaMay], [TenMay], [TenHang], [ThongSo], [SoLuong], [GiaNhap], [GiaBan], [Anh]) VALUES
('MM10', 'Macbook Pro M3 14 2024', 'APPLE', '8CPU 10GPU/16GB/1TB', 500, 30000000, 49990000, '‪D:\VS Projects\DoADocNet\DoADocNet\bin\Debug\HinhLaptop\macbook-pro-14-2023-m3.png')
INSERT [dbo].[Laptop] ([MaMay], [TenMay], [TenHang], [ThongSo], [SoLuong], [GiaNhap], [GiaBan], [Anh]) VALUES
('MM11', 'Samsung Galaxy Book3 Pro 360', 'Samsung', 'i7-1360P 10GPU/16GB LPDDR5/1TB', 200, 36000000, 42000000, 'C:\Users\ACER\Downloads\DoADocNet\DoADocNet\bin\Debug\HinhLaptop\Samsung_Galaxy_Book3_Pro_360.jpg')
INSERT [dbo].[Laptop] ([MaMay], [TenMay], [TenHang], [ThongSo], [SoLuong], [GiaNhap], [GiaBan], [Anh]) VALUES
('MM12', 'Huawei MateBook X Pro 2023', 'Huawei', 'i7-1360P 10GPU/16GB LPDDR5/1TB', 150, 34000000, 40000000, 'C:\Users\ACER\Downloads\DoADocNet\DoADocNet\bin\Debug\HinhLaptop\Huawei_MateBook_X_Pro_2023.jpg')
INSERT [dbo].[Laptop] ([MaMay], [TenMay], [TenHang], [ThongSo], [SoLuong], [GiaNhap], [GiaBan], [Anh]) VALUES
('MM13', 'Xiaomi Mi Notebook Pro 14', 'Xiaomi', 'i7-1360P 10GPU/16GB LPDDR5/512GB ', 200, 27000000, 31000000, 'C:\Users\ACER\Downloads\DoADocNet\DoADocNet\bin\Debug\HinhLaptop\Xiaomi_Mi_Notebook_Pro_14.jgp')
INSERT [dbo].[Laptop] ([MaMay], [TenMay], [TenHang], [ThongSo], [SoLuong], [GiaNhap], [GiaBan], [Anh]) VALUES
('MM14', 'Microsoft Surface Laptop 5', 'Microsoft', 'i7-1255U/16GB LPDDR5/512GB ', 300, 34000000  , 39000000, 'C:\Users\ACER\Downloads\DoADocNet\DoADocNet\bin\Debug\HinhLaptop\Microsoft_Surface_Laptop_5.jgp')
INSERT [dbo].[Laptop] ([MaMay], [TenMay], [TenHang], [ThongSo], [SoLuong], [GiaNhap], [GiaBan], [Anh]) VALUES
('MM15', 'Honor MagicBook X 14', 'Honor', ' i5-1235U/16GB LPDDR5/512GB ', 300, 14000000, 16500000, 'C:\Users\ACER\Downloads\DoADocNet\DoADocNet\bin\Debug\HinhLaptop\Honor_MagicBook_X_14.jgp')
INSERT [dbo].[Laptop] ([MaMay], [TenMay], [TenHang], [ThongSo], [SoLuong], [GiaNhap], [GiaBan], [Anh]) VALUES
('MM16', 'Clevo NH77DPQ', 'Clevo', ' i7-12700H/16GB LPDDR5/512GB ', 200, 28000000, 32000000, 'C:\Users\ACER\Downloads\DoADocNet\DoADocNet\bin\Debug\HinhLaptop\Clevo NH77DPQ.jgp')
INSERT [dbo].[Laptop] ([MaMay], [TenMay], [TenHang], [ThongSo], [SoLuong], [GiaNhap], [GiaBan], [Anh]) VALUES
('MM17', 'Chuwi CoreBook X Pro', 'Chuwi', ' i5-8259U/16GB LPDDR5/512GB ', 500, 11500000, 14000000, 'C:\Users\ACER\Downloads\DoADocNet\DoADocNet\bin\Debug\HinhLaptop\Chuwi_CoreBook_X_Pro.jgp')

--Thêm nhân viên
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [GioiTinh], [SDT], [DiaChi], [NgayVaoLam]) VALUES ('NV01', N'Nguyễn Văn An', 'Nam','0123456789','An Giang', CAST('1992-08-26' AS Date))
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [GioiTinh], [SDT], [DiaChi], [NgayVaoLam]) VALUES ('NV02', N'Nguyễn Thị Lan Hương', N'Nữ','9876543210', N'Hà Nội', CAST('2022-08-15' AS Date))

--Thêm khách hàng
INSERT [dbo].[KhachHang] ([MaKhachHang],[TenKhachHang],[SoDienThoai],[DiaChi]) VALUES ('KH01', N'Nguyễn Xuân Hồng', '123456789', N'Mỹ Thới')
INSERT [dbo].[KhachHang] ([MaKhachHang],[TenKhachHang],[SoDienThoai],[DiaChi]) VALUES ('KH02', N'Nguyễn Thị Huỳnh Như', '132456789', N'Mỹ Thạnh')
INSERT [dbo].[KhachHang] ([MaKhachHang],[TenKhachHang],[SoDienThoai],[DiaChi]) VALUES ('KH03', N'Huỳnh Thị Như Quỳnh', '132546789', N'Mỹ Phước')
INSERT [dbo].[KhachHang] ([MaKhachHang],[TenKhachHang],[SoDienThoai],[DiaChi]) VALUES ('KH04', N'Đặng Minh Thuận', '132547698', N'Mỹ Hoà')
INSERT [dbo].[KhachHang] ([MaKhachHang],[TenKhachHang],[SoDienThoai],[DiaChi]) VALUES ('KH05', N'Lê Thị Hồng Thắm', '234567891', N'Mỹ Quí')
INSERT [dbo].[KhachHang] ([MaKhachHang],[TenKhachHang],[SoDienThoai],[DiaChi]) VALUES ('KH06', N'Văng Đức Tiến', '234567887', N'Mỹ Bình')
INSERT [dbo].[KhachHang] ([MaKhachHang],[TenKhachHang],[SoDienThoai],[DiaChi]) VALUES ('KH07', N'Nguyễn Tấn Trung', '775643219', N'Mỹ Long')
INSERT [dbo].[KhachHang] ([MaKhachHang],[TenKhachHang],[SoDienThoai],[DiaChi]) VALUES ('KH08', N'Nguyễn Thành Tài', '65487911', N'Bình Khánh')
INSERT [dbo].[KhachHang] ([MaKhachHang],[TenKhachHang],[SoDienThoai],[DiaChi]) VALUES ('KH09', N'Phan Thị Kim Vàng', '752467812', N'Châu Thành')
INSERT [dbo].[KhachHang] ([MaKhachHang],[TenKhachHang],[SoDienThoai],[DiaChi]) VALUES ('KH10', N'Hồ Chí Hào', '549087523', N'Châu Phú')
INSERT [dbo].[KhachHang] ([MaKhachHang],[TenKhachHang],[SoDienThoai],[DiaChi]) VALUES ('KH11', N'Dương Thị Thu Hương', '725912655', N'Châu Đốc')


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[MaTaiKhoan] [nvarchar](4) NOT NULL,
	[HoVaTen] [nvarchar](50) NOT NULL,
	[TenDangNhap] [nvarchar](20) NOT NULL,
	[MatKhau] [nvarchar](100) NOT NULL,
	[QuyenHan] [nvarchar](10) NOT NULL,
	[GhiChu] [nvarchar](max) NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[MaTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[TaiKhoan] ([MaTaiKhoan], [HoVaTen], [TenDangNhap], [MatKhau], [QuyenHan], [GhiChu]) VALUES (N'TK01', N'Nguyễn Hà Thanh', N'nhthanh', N'123456', N'user', N'Nhân viên')
INSERT [dbo].[TaiKhoan] ([MaTaiKhoan], [HoVaTen], [TenDangNhap], [MatKhau], [QuyenHan], [GhiChu]) VALUES (N'TK02', N'Lê Văn Nam', N'lvnam', N'123456', N'user', N'Nhân viên')
INSERT [dbo].[TaiKhoan] ([MaTaiKhoan], [HoVaTen], [TenDangNhap], [MatKhau], [QuyenHan], [GhiChu]) VALUES (N'TK03', N'Nguyễn Tân Hưng', N'nthung', N'123456', N'admin', N'Quản lý')
INSERT [dbo].[TaiKhoan] ([MaTaiKhoan], [HoVaTen], [TenDangNhap], [MatKhau], [QuyenHan], [GhiChu]) VALUES (N'TK04', N'Nguyễn Thắng Đạt', N'ntdat', N'123456', N'admin', N'Quản lý')
GO
--Thêm khoá ngoại
GO
ALTER TABLE DonHang
ADD CONSTRAINT FK_DonHang_NhanVien
FOREIGN KEY (MaNhanVien)
REFERENCES NhanVien(MaNhanVien)
ON DELETE CASCADE
ON UPDATE CASCADE;
GO
ALTER TABLE DonHang
ADD CONSTRAINT FK_DonHang_KhachHang
FOREIGN KEY (MaKhachHang)
REFERENCES KhachHang(MaKhachHang)
ON DELETE CASCADE
ON UPDATE CASCADE;
GO
ALTER TABLE [dbo].[Laptop]
ADD CONSTRAINT FK_Laptop_HangLaptop
FOREIGN KEY (MaHang)
REFERENCES HangLaptop(MaHang)
ON DELETE CASCADE
ON UPDATE CASCADE;
GO