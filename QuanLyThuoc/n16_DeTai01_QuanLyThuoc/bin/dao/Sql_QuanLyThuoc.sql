USE [master]
GO
/****** Object:  Database [QuanLyThuoc]    Script Date: 10/05/2021 3:42:32 CH ******/
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
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 10/05/2021 3:42:32 CH ******/
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
/****** Object:  Table [dbo].[HoaDon]    Script Date: 10/05/2021 3:42:32 CH ******/
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
/****** Object:  Table [dbo].[KhachHang]    Script Date: 10/05/2021 3:42:32 CH ******/
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
/****** Object:  Table [dbo].[LoaiThuoc]    Script Date: 10/05/2021 3:42:32 CH ******/
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
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 10/05/2021 3:42:32 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[maNCC] [nvarchar](50) NOT NULL,
	[tenNCC] [nvarchar](50) NULL,
	[diachi] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[maNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 10/05/2021 3:42:32 CH ******/
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
/****** Object:  Table [dbo].[NuocSX]    Script Date: 10/05/2021 3:42:32 CH ******/
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
/****** Object:  Table [dbo].[Thuoc]    Script Date: 10/05/2021 3:42:32 CH ******/
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
