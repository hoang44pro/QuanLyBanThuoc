USE [master]
GO
/****** Object:  Database [QuanLyThuoc]    Script Date: 15/05/2021 3:36:55 CH ******/
CREATE DATABASE [QuanLyThuoc]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLyThuoc_Data', FILENAME = N'D:\QuanLyThuoc\QLT_data.mdf' , SIZE = 10240KB , MAXSIZE = 15360KB , FILEGROWTH = 20%)
 LOG ON 
( NAME = N'QuanLyBangDia_Log', FILENAME = N'D:\QuanLyThuoc\QLT_log.ldf' , SIZE = 10240KB , MAXSIZE = 15360KB , FILEGROWTH = 20%)
GO
ALTER DATABASE [QuanLyThuoc] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyThuoc].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyThuoc] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyThuoc] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyThuoc] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyThuoc] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyThuoc] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyThuoc] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QuanLyThuoc] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyThuoc] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyThuoc] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyThuoc] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyThuoc] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyThuoc] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyThuoc] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyThuoc] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyThuoc] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyThuoc] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QuanLyThuoc] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyThuoc] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyThuoc] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyThuoc] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyThuoc] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyThuoc] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyThuoc] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyThuoc] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QuanLyThuoc] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyThuoc] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyThuoc] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyThuoc] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyThuoc] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [QuanLyThuoc]
GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 15/05/2021 3:36:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[maChiTietHD] [nvarchar](50) NOT NULL,
	[soLuong] [int] NULL,
	[maThuoc] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[maChiTietHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 15/05/2021 3:36:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[maHoaDon] [nvarchar](50) NOT NULL,
	[ngayLap] [date] NULL,
	[maNV] [nvarchar](50) NULL,
	[maKH] [nvarchar](50) NULL,
	[maChiTietHD] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[maHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 15/05/2021 3:36:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[maKh] [nvarchar](50) NOT NULL,
	[hoTen] [nvarchar](50) NULL,
	[ngaySinh] [date] NULL,
	[gioiTinh] [bit] NULL,
	[diaChi] [nvarchar](50) NULL,
	[SDT] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[maKh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiThuoc]    Script Date: 15/05/2021 3:36:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiThuoc](
	[maLoai] [nvarchar](50) NOT NULL,
	[tenLoai] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[maLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 15/05/2021 3:36:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[maNCC] [nvarchar](50) NOT NULL,
	[tenNCC] [nvarchar](50) NULL,
	[diachi] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[maNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 15/05/2021 3:36:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[maNV] [nvarchar](50) NOT NULL,
	[luong] [money] NULL,
	[hoTen] [nvarchar](50) NULL,
	[ngaySinh] [date] NULL,
	[gioiTinh] [bit] NULL,
	[diaChi] [nvarchar](50) NULL,
	[SDT] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[maNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NuocSX]    Script Date: 15/05/2021 3:36:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NuocSX](
	[idNuoc] [nvarchar](50) NOT NULL,
	[tenNuoc] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[idNuoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Thuoc]    Script Date: 15/05/2021 3:36:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Thuoc](
	[maThuoc] [nvarchar](50) NOT NULL,
	[tenThuoc] [nvarchar](50) NULL,
	[donGia] [money] NULL,
	[ngaySX] [date] NULL,
	[hanSuDung] [date] NULL,
	[SLTon] [int] NULL,
	[maNCC] [nvarchar](50) NULL,
	[maLoai] [nvarchar](50) NULL,
	[idNuoc] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[maThuoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[ChiTietHoaDon] ([maChiTietHD], [soLuong], [maThuoc]) VALUES (N'CTHD0001', 1, N'T0001')
INSERT [dbo].[ChiTietHoaDon] ([maChiTietHD], [soLuong], [maThuoc]) VALUES (N'CTHD0002', 6, N'T0008')
INSERT [dbo].[ChiTietHoaDon] ([maChiTietHD], [soLuong], [maThuoc]) VALUES (N'CTHD0003', 3, N'T0010')
INSERT [dbo].[ChiTietHoaDon] ([maChiTietHD], [soLuong], [maThuoc]) VALUES (N'CTHD0004', 2, N'T0012')
INSERT [dbo].[ChiTietHoaDon] ([maChiTietHD], [soLuong], [maThuoc]) VALUES (N'CTHD0005', 1, N'T0010')
INSERT [dbo].[ChiTietHoaDon] ([maChiTietHD], [soLuong], [maThuoc]) VALUES (N'CTHD0006', 2, N'T0008')
INSERT [dbo].[HoaDon] ([maHoaDon], [ngayLap], [maNV], [maKH], [maChiTietHD]) VALUES (N'HD0001', CAST(N'2021-05-15' AS Date), N'NV0001', N'KH0001', N'CTHD0001')
INSERT [dbo].[HoaDon] ([maHoaDon], [ngayLap], [maNV], [maKH], [maChiTietHD]) VALUES (N'HD0002', CAST(N'2021-05-15' AS Date), N'NV0001', N'KH0002', N'CTHD0002')
INSERT [dbo].[HoaDon] ([maHoaDon], [ngayLap], [maNV], [maKH], [maChiTietHD]) VALUES (N'HD0003', CAST(N'2021-05-15' AS Date), N'NV0001', N'KH0003', N'CTHD0003')
INSERT [dbo].[HoaDon] ([maHoaDon], [ngayLap], [maNV], [maKH], [maChiTietHD]) VALUES (N'HD0004', CAST(N'2021-05-14' AS Date), N'NV0002', N'KH0004', N'CTHD0004')
INSERT [dbo].[HoaDon] ([maHoaDon], [ngayLap], [maNV], [maKH], [maChiTietHD]) VALUES (N'HD0005', CAST(N'2021-05-13' AS Date), N'NV0003', N'KH0005', N'CTHD0005')
INSERT [dbo].[KhachHang] ([maKh], [hoTen], [ngaySinh], [gioiTinh], [diaChi], [SDT]) VALUES (N'KH0001', N'Phan Hữu Trọng', CAST(N'1992-08-03' AS Date), 1, N' Hoàng Văn Thụ, phường 8, Phú Nhuận', N'0374598439')
INSERT [dbo].[KhachHang] ([maKh], [hoTen], [ngaySinh], [gioiTinh], [diaChi], [SDT]) VALUES (N'KH0002', N'Nguyễn Văn Đức', CAST(N'1996-04-28' AS Date), 1, N'125/16/11 đường Bùi Đình Túy, P24, Quận Bình Thạnh', N'0325484883')
INSERT [dbo].[KhachHang] ([maKh], [hoTen], [ngaySinh], [gioiTinh], [diaChi], [SDT]) VALUES (N'KH0003', N'Hà Đức Chinh', CAST(N'1997-11-23' AS Date), 1, N'167 đường số 15, Phường Tân Quy, Quận 7', N'0383681481')
INSERT [dbo].[KhachHang] ([maKh], [hoTen], [ngaySinh], [gioiTinh], [diaChi], [SDT]) VALUES (N'KH0004', N'Nguyễn Thị Bảo Vy', CAST(N'1989-09-23' AS Date), 0, N'181 Nguyễn Gia Trí, Phường 25, Bình Thạnh', N'0334975466')
INSERT [dbo].[KhachHang] ([maKh], [hoTen], [ngaySinh], [gioiTinh], [diaChi], [SDT]) VALUES (N'KH0005', N'Trận Thị Cát Tường', CAST(N'1986-12-04' AS Date), 0, N'ĐT7A, An Điền, Bến Cát, Bình Dương', N'0335309994')
INSERT [dbo].[LoaiThuoc] ([maLoai], [tenLoai]) VALUES (N'LT001', N'Thuốc kháng di ứng')
INSERT [dbo].[LoaiThuoc] ([maLoai], [tenLoai]) VALUES (N'LT002', N'Thuốc kháng viêm')
INSERT [dbo].[LoaiThuoc] ([maLoai], [tenLoai]) VALUES (N'LT003', N'Thuốc ngừa thai')
INSERT [dbo].[LoaiThuoc] ([maLoai], [tenLoai]) VALUES (N'LT004', N'Thuốc cảm lạnh, ')
INSERT [dbo].[LoaiThuoc] ([maLoai], [tenLoai]) VALUES (N'LT005', N'Thuốc da liễu')
INSERT [dbo].[LoaiThuoc] ([maLoai], [tenLoai]) VALUES (N'LT006', N'Thuốc giảm cân')
INSERT [dbo].[LoaiThuoc] ([maLoai], [tenLoai]) VALUES (N'LT007', N'Thuốc Mắt/Tai/Mũi')
INSERT [dbo].[LoaiThuoc] ([maLoai], [tenLoai]) VALUES (N'LT008', N'Thuốc tiêu hóa')
INSERT [dbo].[LoaiThuoc] ([maLoai], [tenLoai]) VALUES (N'LT009', N'Thuốc thần kinh')
INSERT [dbo].[LoaiThuoc] ([maLoai], [tenLoai]) VALUES (N'LT010', N'Giảm đau, hạ sốt')
INSERT [dbo].[LoaiThuoc] ([maLoai], [tenLoai]) VALUES (N'LT011', N'Dầu gió, dầu cù là ...')
INSERT [dbo].[LoaiThuoc] ([maLoai], [tenLoai]) VALUES (N'LT012', N'Thuốc dành cho phụ nữ')
INSERT [dbo].[LoaiThuoc] ([maLoai], [tenLoai]) VALUES (N'LT013', N'Thuốc dành cho nam')
INSERT [dbo].[LoaiThuoc] ([maLoai], [tenLoai]) VALUES (N'LT014', N'Thuốc cơ xương khớp')
INSERT [dbo].[LoaiThuoc] ([maLoai], [tenLoai]) VALUES (N'LT015', N'Vitamin & Khoáng chất')
INSERT [dbo].[NhaCungCap] ([maNCC], [tenNCC], [diachi]) VALUES (N'NCC001', N'Sanofi Aventis', N'Xa lộ Hà Nội, Long Bình, Quận 9, Thành phố Hồ Chí Minh, Vietnam')
INSERT [dbo].[NhaCungCap] ([maNCC], [tenNCC], [diachi]) VALUES (N'NCC002', N'Merap Group', N'89 Trần Thiện Chánh, Phường 12, Quận 10, Thành phố Hồ Chí Minh, Vietnam')
INSERT [dbo].[NhaCungCap] ([maNCC], [tenNCC], [diachi]) VALUES (N'NCC003', N'Gedeon Richter', N'Budapest, Gyömrői út 19-21, 1103 Hungary')
INSERT [dbo].[NhaCungCap] ([maNCC], [tenNCC], [diachi]) VALUES (N'NCC004', N'Engelhard', N'Industriestraße 8, 85072 Eichstätt, Germany')
INSERT [dbo].[NhaCungCap] ([maNCC], [tenNCC], [diachi]) VALUES (N'NCC005', N'Bidiphar', N'67 Đ. Số 12, Phường 10, Gò Vấp, Thành phố Hồ Chí Minh, Vietnam')
INSERT [dbo].[NhaCungCap] ([maNCC], [tenNCC], [diachi]) VALUES (N'NCC006', N'Pymepharco', N'44 Đồng Nai, Phường 15, Quận 10, Thành phố Hồ Chí Minh, Vietnam')
INSERT [dbo].[NhaCungCap] ([maNCC], [tenNCC], [diachi]) VALUES (N'NCC007', N'Rohto-Mentholatum', N'Lầu 18 Phòng 1808, Trade Tower, 37 Đ. Tôn Đức Thắng, Bến Nghé, Quận 1, Thành phố Hồ Chí Minh, Vietnam')
INSERT [dbo].[NhaCungCap] ([maNCC], [tenNCC], [diachi]) VALUES (N'NCC008', N'Janssen    ', N'Room 1203, 12th Floor, Harbour View Tower 35 Nguyen Hue St. Ben Nghe Ward, District 1, HCMC, Bến Nghé, Quận 1, Thành phố Hồ Chí Minh, Vietnam')
INSERT [dbo].[NhaCungCap] ([maNCC], [tenNCC], [diachi]) VALUES (N'NCC009', N'Tanganil', N'23 Chemin de Penchenery, 81100 Castres, Pháp')
INSERT [dbo].[NhaCungCap] ([maNCC], [tenNCC], [diachi]) VALUES (N'NCC010', N'Panadol', N'New Frontiers Science Park, Third Ave, Harlow CM19 5AW, Vương quốc Anh')
INSERT [dbo].[NhaCungCap] ([maNCC], [tenNCC], [diachi]) VALUES (N'NCC011', N'Truong Son', N'43/2 Hoà Bình, P. Tân Thới Hoà, Q. Tân Phú, TP. HCM, Việt Nam')
INSERT [dbo].[NhaCungCap] ([maNCC], [tenNCC], [diachi]) VALUES (N'NCC012', N'Gynofar', N'367 Nguyễn Trãi, P. Nguyễn Cư Trinh, Quận 1, TP. Hồ Chí Minh, Việt Nam')
INSERT [dbo].[NhaCungCap] ([maNCC], [tenNCC], [diachi]) VALUES (N'NCC013', N'Danapha', N'Lô 14 Đường số 8, Tân Tạo A, Bình Tân, TP. Hồ Chí Minh, Việt Nam')
INSERT [dbo].[NhaCungCap] ([maNCC], [tenNCC], [diachi]) VALUES (N'NCC014', N'SPM', N'Lô 51, Đường số 2, KCN Tân Tạo, Q.Bình Tân, TP.HCM, Việt Nam')
INSERT [dbo].[NhaCungCap] ([maNCC], [tenNCC], [diachi]) VALUES (N'NCC015', N'BristolMyersSquibb', N'3 Rue Joseph Monier, 92506 Rueil-Malmaison, Pháp')
INSERT [dbo].[NhanVien] ([maNV], [luong], [hoTen], [ngaySinh], [gioiTinh], [diaChi], [SDT]) VALUES (N'NV0001', 15000000.0000, N'Nguyễn Văn Toàn', CAST(N'1993-03-09' AS Date), 1, N'802B Âu Cơ, Phường 14, Quận Tân Bình', N'0378154986')
INSERT [dbo].[NhanVien] ([maNV], [luong], [hoTen], [ngaySinh], [gioiTinh], [diaChi], [SDT]) VALUES (N'NV0002', 15000000.0000, N'Nguyễn Tiến Linh', CAST(N'1990-08-22' AS Date), 1, N'167 đường số 15, Phường Tân Quy, Quận 7', N'0389422142')
INSERT [dbo].[NhanVien] ([maNV], [luong], [hoTen], [ngaySinh], [gioiTinh], [diaChi], [SDT]) VALUES (N'NV0003', 17000000.0000, N'Nguyễn Công Phượng', CAST(N'1996-08-09' AS Date), 1, N'56a Cầu Xéo, Tân quí, Tân Phú', N'0342844199')
INSERT [dbo].[NhanVien] ([maNV], [luong], [hoTen], [ngaySinh], [gioiTinh], [diaChi], [SDT]) VALUES (N'NV0004', 20000000.0000, N'Nguyễn Thành Lương', CAST(N'1991-04-18' AS Date), 1, N'đường số 59 Phan Văn Trị, Phường 16, Gò Vấp ', N'0334172541')
INSERT [dbo].[NhanVien] ([maNV], [luong], [hoTen], [ngaySinh], [gioiTinh], [diaChi], [SDT]) VALUES (N'NV0005', 30000000.0000, N'Nguyễn Thị Ngọc Hoa', CAST(N'1990-07-19' AS Date), 0, N'12 Nguyễn Văn Bảo, phường 4, Gò Vấp', N'0862303930')
INSERT [dbo].[NuocSX] ([idNuoc], [tenNuoc]) VALUES (N'N001', N'Mỹ')
INSERT [dbo].[NuocSX] ([idNuoc], [tenNuoc]) VALUES (N'N002', N'Ấn Độ')
INSERT [dbo].[NuocSX] ([idNuoc], [tenNuoc]) VALUES (N'N003', N'Nga')
INSERT [dbo].[NuocSX] ([idNuoc], [tenNuoc]) VALUES (N'N004', N'Thái Lan')
INSERT [dbo].[NuocSX] ([idNuoc], [tenNuoc]) VALUES (N'N005', N'Pháp')
INSERT [dbo].[NuocSX] ([idNuoc], [tenNuoc]) VALUES (N'N006', N'Trung Quốc')
INSERT [dbo].[NuocSX] ([idNuoc], [tenNuoc]) VALUES (N'N007', N'Canada')
INSERT [dbo].[NuocSX] ([idNuoc], [tenNuoc]) VALUES (N'N008', N'Việt Nam')
INSERT [dbo].[NuocSX] ([idNuoc], [tenNuoc]) VALUES (N'N009', N'Indonesia')
INSERT [dbo].[NuocSX] ([idNuoc], [tenNuoc]) VALUES (N'N010', N'Nhật Bản')
INSERT [dbo].[NuocSX] ([idNuoc], [tenNuoc]) VALUES (N'N011', N'Đức')
INSERT [dbo].[NuocSX] ([idNuoc], [tenNuoc]) VALUES (N'N013', N'Hungary')
INSERT [dbo].[NuocSX] ([idNuoc], [tenNuoc]) VALUES (N'N014', N'Anh')
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [donGia], [ngaySX], [hanSuDung], [SLTon], [maNCC], [maLoai], [idNuoc]) VALUES (N'T0001', N'Telfast HD 180mg ', 75000.0000, CAST(N'2020-09-09' AS Date), CAST(N'2022-05-15' AS Date), 20, N'NCC001', N'LT001', N'N005')
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [donGia], [ngaySX], [hanSuDung], [SLTon], [maNCC], [maLoai], [idNuoc]) VALUES (N'T0002', N'Medoral (Chai 250ml)', 85000.0000, CAST(N'2020-06-02' AS Date), CAST(N'2022-06-16' AS Date), 30, N'NCC002', N'LT002', N'N008')
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [donGia], [ngaySX], [hanSuDung], [SLTon], [maNCC], [maLoai], [idNuoc]) VALUES (N'T0003', N'Postinor 1 1.5mg  ', 33000.0000, CAST(N'2021-01-09' AS Date), CAST(N'2022-02-12' AS Date), 130, N'NCC003', N'LT003', N'N013')
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [donGia], [ngaySX], [hanSuDung], [SLTon], [maNCC], [maLoai], [idNuoc]) VALUES (N'T0004', N'Prospan (100ml)', 680000.0000, CAST(N'2020-12-09' AS Date), CAST(N'2020-01-20' AS Date), 120, N'NCC004', N'LT004', N'N011')
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [donGia], [ngaySX], [hanSuDung], [SLTon], [maNCC], [maLoai], [idNuoc]) VALUES (N'T0005', N'Bidiphar (250ml) ', 459000.0000, CAST(N'2020-11-16' AS Date), CAST(N'2022-09-12' AS Date), 50, N'NCC005', N'LT005', N'N008')
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [donGia], [ngaySX], [hanSuDung], [SLTon], [maNCC], [maLoai], [idNuoc]) VALUES (N'T0006', N'Semiflit 120 ', 420000.0000, CAST(N'2020-12-07' AS Date), CAST(N'2021-08-20' AS Date), 20, N'NCC006', N'LT006', N'N008')
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [donGia], [ngaySX], [hanSuDung], [SLTon], [maNCC], [maLoai], [idNuoc]) VALUES (N'T0007', N'V.Rohto Vitamin (13ml) ', 46900.0000, CAST(N'2020-07-23' AS Date), CAST(N'2022-09-21' AS Date), 200, N'NCC007', N'LT007', N'N010')
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [donGia], [ngaySX], [hanSuDung], [SLTon], [maNCC], [maLoai], [idNuoc]) VALUES (N'T0008', N'Fugacar Mebendazole (500mg)', 18500.0000, CAST(N'2020-05-06' AS Date), CAST(N'2012-12-12' AS Date), 100, N'NCC008', N'LT008', N'N010')
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [donGia], [ngaySX], [hanSuDung], [SLTon], [maNCC], [maLoai], [idNuoc]) VALUES (N'T0009', N'Tanganil (500mg)', 150000.0000, CAST(N'2020-09-19' AS Date), CAST(N'2022-01-12' AS Date), 100, N'NCC009', N'LT009', N'N005')
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [donGia], [ngaySX], [hanSuDung], [SLTon], [maNCC], [maLoai], [idNuoc]) VALUES (N'T0010', N'Panadol Extra (180 viên/hộp)', 214000.0000, CAST(N'2020-04-30' AS Date), CAST(N'2022-06-12' AS Date), 150, N'NCC010', N'LT010', N'N014')
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [donGia], [ngaySX], [hanSuDung], [SLTon], [maNCC], [maLoai], [idNuoc]) VALUES (N'T0011', N'Dầu gió Trường Sơn (6ml)', 11000.0000, CAST(N'2020-05-01' AS Date), CAST(N'2023-12-22' AS Date), 50, N'NCC011', N'LT011', N'N008')
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [donGia], [ngaySX], [hanSuDung], [SLTon], [maNCC], [maLoai], [idNuoc]) VALUES (N'T0012', N'Gynofar (500ml)', 21000.0000, CAST(N'2020-12-29' AS Date), CAST(N'2022-01-12' AS Date), 50, N'NCC012', N'LT012', N'N008')
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [donGia], [ngaySX], [hanSuDung], [SLTon], [maNCC], [maLoai], [idNuoc]) VALUES (N'T0013', N'Tadimax (Hộp 1 lọ 42 viên)', 140000.0000, CAST(N'2020-05-26' AS Date), CAST(N'2022-05-03' AS Date), 30, N'NCC013', N'LT013', N'N008')
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [donGia], [ngaySX], [hanSuDung], [SLTon], [maNCC], [maLoai], [idNuoc]) VALUES (N'T0014', N'Mongor (Tuýp 20 viên)', 180000.0000, CAST(N'2020-04-04' AS Date), CAST(N'2024-01-04' AS Date), 120, N'NCC014', N'LT014', N'N008')
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [donGia], [ngaySX], [hanSuDung], [SLTon], [maNCC], [maLoai], [idNuoc]) VALUES (N'T0015', N'Upsa-C (1g)', 35000.0000, CAST(N'2020-08-09' AS Date), CAST(N'2025-10-20' AS Date), 200, N'NCC015', N'LT015', N'N005')
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD FOREIGN KEY([maThuoc])
REFERENCES [dbo].[Thuoc] ([maThuoc])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([maChiTietHD])
REFERENCES [dbo].[ChiTietHoaDon] ([maChiTietHD])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([maKH])
REFERENCES [dbo].[KhachHang] ([maKh])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([maNV])
REFERENCES [dbo].[NhanVien] ([maNV])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Thuoc]  WITH CHECK ADD FOREIGN KEY([idNuoc])
REFERENCES [dbo].[NuocSX] ([idNuoc])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Thuoc]  WITH CHECK ADD FOREIGN KEY([maLoai])
REFERENCES [dbo].[LoaiThuoc] ([maLoai])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Thuoc]  WITH CHECK ADD FOREIGN KEY([maNCC])
REFERENCES [dbo].[NhaCungCap] ([maNCC])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
USE [master]
GO
ALTER DATABASE [QuanLyThuoc] SET  READ_WRITE 
GO
