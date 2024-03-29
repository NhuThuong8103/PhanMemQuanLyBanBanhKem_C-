USE [master]
GO
/****** Object:  Database [QLTiemBanhKem]    Script Date: 12/16/19 9:46:39 PM ******/
CREATE DATABASE [QLTiemBanhKem]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLTiemBanhKem', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\QLTiemBanhKem.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QLTiemBanhKem_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\QLTiemBanhKem_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QLTiemBanhKem] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLTiemBanhKem].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLTiemBanhKem] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLTiemBanhKem] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLTiemBanhKem] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLTiemBanhKem] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLTiemBanhKem] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLTiemBanhKem] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QLTiemBanhKem] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [QLTiemBanhKem] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLTiemBanhKem] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLTiemBanhKem] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLTiemBanhKem] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLTiemBanhKem] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLTiemBanhKem] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLTiemBanhKem] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLTiemBanhKem] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLTiemBanhKem] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLTiemBanhKem] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLTiemBanhKem] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLTiemBanhKem] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLTiemBanhKem] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLTiemBanhKem] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLTiemBanhKem] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLTiemBanhKem] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLTiemBanhKem] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLTiemBanhKem] SET  MULTI_USER 
GO
ALTER DATABASE [QLTiemBanhKem] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLTiemBanhKem] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLTiemBanhKem] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLTiemBanhKem] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [QLTiemBanhKem]
GO
/****** Object:  StoredProcedure [dbo].[BanhKemDelete]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BanhKemDelete]
		@MaBanhKem [int]
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION
		DELETE FROM [dbo].[BanhKem]
		WHERE ([MaBanhKem] = SCOPE_IDENTITY())
	COMMIT

GO
/****** Object:  StoredProcedure [dbo].[BanhKemInsert]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BanhKemInsert]
	(
		@TenBanhKem [nvarchar](50),
		@HinhAnh [nvarchar](50),
		@MoTa [nvarchar](255),
		@MaLoaiBanh [int],
		@MaGiamGia [int]
	)
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION

	INSERT INTO [dbo].[BanhKem]
	(
		[TenBanhKem], [HinhAnh], [MoTa], [MaLoaiBanh], [MaGiamGia]
	)
	VALUES
	(
		@TenBanhKem,
		@HinhAnh,
		@MoTa,
		@MaLoaiBanh,
		@MaGiamGia

	)
	SELECT [MaBanhKem], [TenBanhKem], [HinhAnh], [MoTa], [MaLoaiBanh], [MaGiamGia]
	FROM [dbo].[BanhKem]
	WHERE ([MaBanhKem] = SCOPE_IDENTITY())

	COMMIT

GO
/****** Object:  StoredProcedure [dbo].[BanhKemSelect]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BanhKemSelect]
		@MaBanhKem [int]
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION

	SELECT [MaBanhKem], [TenBanhKem], [HinhAnh], [MoTa], [MaLoaiBanh], [MaGiamGia]
	FROM [dbo].[BanhKem]
	WHERE ([MaBanhKem] = SCOPE_IDENTITY())

	COMMIT

GO
/****** Object:  StoredProcedure [dbo].[BanhKemUpdate]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BanhKemUpdate]
	(
		@MaBanhKem [int],
		@TenBanhKem [nvarchar](50),
		@HinhAnh [nvarchar](50),
		@MoTa [nvarchar](255),
		@MaLoaiBanh [int],
		@MaGiamGia [int]
	)
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION
		UPDATE [dbo].[BanhKem]
		SET [TenBanhKem] = @TenBanhKem, [HinhAnh] = @HinhAnh, [MoTa] = @MoTa, [MaLoaiBanh] = @MaLoaiBanh, [MaGiamGia] = @MaGiamGia
		WHERE ([MaBanhKem] = SCOPE_IDENTITY())
	COMMIT

GO
/****** Object:  StoredProcedure [dbo].[BanhTrongNgayDelete]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BanhTrongNgayDelete]
		@MaBanhTrongNgay [int]
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION
		DELETE FROM [dbo].[BanhTrongNgay]
		WHERE ([MaBanhTrongNgay] = SCOPE_IDENTITY())
	COMMIT

GO
/****** Object:  StoredProcedure [dbo].[BanhTrongNgayInsert]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BanhTrongNgayInsert]
	(
		@SoLuong [int],
		@NgaySanXuat [datetime],
		@NgayHetHan [datetime],
		@MaSizeBanh [int]
	)
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION

	INSERT INTO [dbo].[BanhTrongNgay]
	(
		[SoLuong], [NgaySanXuat], [NgayHetHan], [MaSizeBanh]
	)
	VALUES
	(
		@SoLuong,
		@NgaySanXuat,
		@NgayHetHan,
		@MaSizeBanh

	)
	SELECT [MaBanhTrongNgay], [SoLuong], [NgaySanXuat], [NgayHetHan], [MaSizeBanh]
	FROM [dbo].[BanhTrongNgay]
	WHERE ([MaBanhTrongNgay] = SCOPE_IDENTITY())

	COMMIT

GO
/****** Object:  StoredProcedure [dbo].[BanhTrongNgaySelect]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BanhTrongNgaySelect]
		@MaBanhTrongNgay [int]
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION

	SELECT [MaBanhTrongNgay], [SoLuong], [NgaySanXuat], [NgayHetHan], [MaSizeBanh]
	FROM [dbo].[BanhTrongNgay]
	WHERE ([MaBanhTrongNgay] = SCOPE_IDENTITY())

	COMMIT

GO
/****** Object:  StoredProcedure [dbo].[BanhTrongNgayUpdate]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BanhTrongNgayUpdate]
	(
		@MaBanhTrongNgay [int],
		@SoLuong [int],
		@NgaySanXuat [datetime],
		@NgayHetHan [datetime],
		@MaSizeBanh [int]
	)
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION
		UPDATE [dbo].[BanhTrongNgay]
		SET [SoLuong] = @SoLuong, [NgaySanXuat] = @NgaySanXuat, [NgayHetHan] = @NgayHetHan, [MaSizeBanh] = @MaSizeBanh
		WHERE ([MaBanhTrongNgay] = SCOPE_IDENTITY())
	COMMIT

GO
/****** Object:  StoredProcedure [dbo].[ChiTietHoaDonDelete]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ChiTietHoaDonDelete]
		@MaCTHD [int]
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION
		DELETE FROM [dbo].[ChiTietHoaDon]
		WHERE ([MaCTHD] = SCOPE_IDENTITY())
	COMMIT

GO
/****** Object:  StoredProcedure [dbo].[ChiTietHoaDonInsert]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ChiTietHoaDonInsert]
	(
		@MaHoaDon [int],
		@MaBanhTrongNgay [int],
		@SoLuong [int],
		@ThanhTien [int]
	)
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION

	INSERT INTO [dbo].[ChiTietHoaDon]
	(
		[MaHoaDon], [MaBanhTrongNgay], [SoLuong], [ThanhTien]
	)
	VALUES
	(
		@MaHoaDon,
		@MaBanhTrongNgay,
		@SoLuong,
		@ThanhTien

	)
	SELECT [MaCTHD], [MaHoaDon], [MaBanhTrongNgay], [SoLuong], [ThanhTien]
	FROM [dbo].[ChiTietHoaDon]
	WHERE ([MaCTHD] = SCOPE_IDENTITY())

	COMMIT

GO
/****** Object:  StoredProcedure [dbo].[ChiTietHoaDonSelect]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ChiTietHoaDonSelect]
		@MaCTHD [int]
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION

	SELECT [MaCTHD], [MaHoaDon], [MaBanhTrongNgay], [SoLuong], [ThanhTien]
	FROM [dbo].[ChiTietHoaDon]
	WHERE ([MaCTHD] = SCOPE_IDENTITY())

	COMMIT

GO
/****** Object:  StoredProcedure [dbo].[ChiTietHoaDonUpdate]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ChiTietHoaDonUpdate]
	(
		@MaCTHD [int],
		@MaHoaDon [int],
		@MaBanhTrongNgay [int],
		@SoLuong [int],
		@ThanhTien [int]
	)
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION
		UPDATE [dbo].[ChiTietHoaDon]
		SET [MaHoaDon] = @MaHoaDon, [MaBanhTrongNgay] = @MaBanhTrongNgay, [SoLuong] = @SoLuong, [ThanhTien] = @ThanhTien
		WHERE ([MaCTHD] = SCOPE_IDENTITY())
	COMMIT

GO
/****** Object:  StoredProcedure [dbo].[ChiTietPhieuDatDelete]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ChiTietPhieuDatDelete]
		@MaCTPD [int]
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION
		DELETE FROM [dbo].[ChiTietPhieuDat]
		WHERE ([MaCTPD] = SCOPE_IDENTITY())
	COMMIT

GO
/****** Object:  StoredProcedure [dbo].[ChiTietPhieuDatInsert]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ChiTietPhieuDatInsert]
	(
		@MaPD [int],
		@SoLuong [int],
		@ThanhTien [int],
		@MaSizeBanh [int]
	)
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION

	INSERT INTO [dbo].[ChiTietPhieuDat]
	(
		[MaPD], [SoLuong], [ThanhTien], [MaSizeBanh]
	)
	VALUES
	(
		@MaPD,
		@SoLuong,
		@ThanhTien,
		@MaSizeBanh

	)
	SELECT [MaCTPD], [MaPD], [SoLuong], [ThanhTien], [MaSizeBanh]
	FROM [dbo].[ChiTietPhieuDat]
	WHERE ([MaCTPD] = SCOPE_IDENTITY())

	COMMIT

GO
/****** Object:  StoredProcedure [dbo].[ChiTietPhieuDatSelect]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ChiTietPhieuDatSelect]
		@MaCTPD [int]
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION

	SELECT [MaCTPD], [MaPD], [SoLuong], [ThanhTien], [MaSizeBanh]
	FROM [dbo].[ChiTietPhieuDat]
	WHERE ([MaCTPD] = SCOPE_IDENTITY())

	COMMIT

GO
/****** Object:  StoredProcedure [dbo].[ChiTietPhieuDatUpdate]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ChiTietPhieuDatUpdate]
	(
		@MaCTPD [int],
		@MaPD [int],
		@SoLuong [int],
		@ThanhTien [int],
		@MaSizeBanh [int]
	)
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION
		UPDATE [dbo].[ChiTietPhieuDat]
		SET [MaPD] = @MaPD, [SoLuong] = @SoLuong, [ThanhTien] = @ThanhTien, [MaSizeBanh] = @MaSizeBanh
		WHERE ([MaCTPD] = SCOPE_IDENTITY())
	COMMIT

GO
/****** Object:  StoredProcedure [dbo].[DoanhThuDelete]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DoanhThuDelete]
		@MaDoanhThu [int]
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION
		DELETE FROM [dbo].[DoanhThu]
		WHERE ([MaDoanhThu] = SCOPE_IDENTITY())
	COMMIT

GO
/****** Object:  StoredProcedure [dbo].[DoanhThuInsert]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DoanhThuInsert]
	(
		@MaHD [int],
		@MaPD [int],
		@TongTien [int]
	)
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION

	INSERT INTO [dbo].[DoanhThu]
	(
		[MaHD], [MaPD], [TongTien]
	)
	VALUES
	(
		@MaHD,
		@MaPD,
		@TongTien

	)
	SELECT [MaDoanhThu], [MaHD], [MaPD], [TongTien]
	FROM [dbo].[DoanhThu]
	WHERE ([MaDoanhThu] = SCOPE_IDENTITY())

	COMMIT

GO
/****** Object:  StoredProcedure [dbo].[DoanhThuSelect]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DoanhThuSelect]
		@MaDoanhThu [int]
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION

	SELECT [MaDoanhThu], [MaHD], [MaPD], [TongTien]
	FROM [dbo].[DoanhThu]
	WHERE ([MaDoanhThu] = SCOPE_IDENTITY())

	COMMIT

GO
/****** Object:  StoredProcedure [dbo].[DoanhThuUpdate]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DoanhThuUpdate]
	(
		@MaDoanhThu [int],
		@MaHD [int],
		@MaPD [int],
		@TongTien [int]
	)
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION
		UPDATE [dbo].[DoanhThu]
		SET [MaHD] = @MaHD, [MaPD] = @MaPD, [TongTien] = @TongTien
		WHERE ([MaDoanhThu] = SCOPE_IDENTITY())
	COMMIT

GO
/****** Object:  StoredProcedure [dbo].[GiamGiaDelete]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GiamGiaDelete]
		@MaGiamGia [int]
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION
		DELETE FROM [dbo].[GiamGia]
		WHERE ([MaGiamGia] = SCOPE_IDENTITY())
	COMMIT

GO
/****** Object:  StoredProcedure [dbo].[GiamGiaInsert]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GiamGiaInsert]
	(
		@TenGiamGia [nvarchar](30)
	)
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION

	INSERT INTO [dbo].[GiamGia]
	(
		[TenGiamGia]
	)
	VALUES
	(
		@TenGiamGia

	)
	SELECT [MaGiamGia], [TenGiamGia]
	FROM [dbo].[GiamGia]
	WHERE ([MaGiamGia] = SCOPE_IDENTITY())

	COMMIT

GO
/****** Object:  StoredProcedure [dbo].[GiamGiaSelect]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GiamGiaSelect]
		@MaGiamGia [int]
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION

	SELECT [MaGiamGia], [TenGiamGia]
	FROM [dbo].[GiamGia]
	WHERE ([MaGiamGia] = SCOPE_IDENTITY())

	COMMIT

GO
/****** Object:  StoredProcedure [dbo].[GiamGiaUpdate]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GiamGiaUpdate]
	(
		@MaGiamGia [int],
		@TenGiamGia [nvarchar](30)
	)
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION
		UPDATE [dbo].[GiamGia]
		SET [TenGiamGia] = @TenGiamGia
		WHERE ([MaGiamGia] = SCOPE_IDENTITY())
	COMMIT

GO
/****** Object:  StoredProcedure [dbo].[HoaDonDelete]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[HoaDonDelete]
		@MaHoaDon [int]
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION
		DELETE FROM [dbo].[HoaDon]
		WHERE ([MaHoaDon] = SCOPE_IDENTITY())
	COMMIT

GO
/****** Object:  StoredProcedure [dbo].[HoaDonInsert]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[HoaDonInsert]
	(
		@NgayLap [datetime],
		@MaNhanVien [int],
		@TongTien [int],
		@TrangThai [bit],
		@MaKhachHang [int]
	)
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION

	INSERT INTO [dbo].[HoaDon]
	(
		[NgayLap], [MaNhanVien], [TongTien], [TrangThai], [MaKhachHang]
	)
	VALUES
	(
		@NgayLap,
		@MaNhanVien,
		@TongTien,
		@TrangThai,
		@MaKhachHang

	)
	SELECT [MaHoaDon], [NgayLap], [MaNhanVien], [TongTien], [TrangThai], [MaKhachHang]
	FROM [dbo].[HoaDon]
	WHERE ([MaHoaDon] = SCOPE_IDENTITY())

	COMMIT

GO
/****** Object:  StoredProcedure [dbo].[HoaDonSelect]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[HoaDonSelect]
		@MaHoaDon [int]
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION

	SELECT [MaHoaDon], [NgayLap], [MaNhanVien], [TongTien], [TrangThai], [MaKhachHang]
	FROM [dbo].[HoaDon]
	WHERE ([MaHoaDon] = SCOPE_IDENTITY())

	COMMIT

GO
/****** Object:  StoredProcedure [dbo].[HoaDonUpdate]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[HoaDonUpdate]
	(
		@MaHoaDon [int],
		@NgayLap [datetime],
		@MaNhanVien [int],
		@TongTien [int],
		@TrangThai [bit],
		@MaKhachHang [int]
	)
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION
		UPDATE [dbo].[HoaDon]
		SET [NgayLap] = @NgayLap, [MaNhanVien] = @MaNhanVien, [TongTien] = @TongTien, [TrangThai] = @TrangThai, [MaKhachHang] = @MaKhachHang
		WHERE ([MaHoaDon] = SCOPE_IDENTITY())
	COMMIT

GO
/****** Object:  StoredProcedure [dbo].[HoatDongDelete]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[HoatDongDelete]
		@MaHoatDong [int]
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION
		DELETE FROM [dbo].[HoatDong]
		WHERE ([MaHoatDong] = SCOPE_IDENTITY())
	COMMIT

GO
/****** Object:  StoredProcedure [dbo].[HoatDongInsert]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[HoatDongInsert]
	(
		@TenHoatDong [nvarchar](100)
	)
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION

	INSERT INTO [dbo].[HoatDong]
	(
		[TenHoatDong]
	)
	VALUES
	(
		@TenHoatDong

	)
	SELECT [MaHoatDong], [TenHoatDong]
	FROM [dbo].[HoatDong]
	WHERE ([MaHoatDong] = SCOPE_IDENTITY())

	COMMIT

GO
/****** Object:  StoredProcedure [dbo].[HoatDongSelect]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[HoatDongSelect]
		@MaHoatDong [int]
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION

	SELECT [MaHoatDong], [TenHoatDong]
	FROM [dbo].[HoatDong]
	WHERE ([MaHoatDong] = SCOPE_IDENTITY())

	COMMIT

GO
/****** Object:  StoredProcedure [dbo].[HoatDongUpdate]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[HoatDongUpdate]
	(
		@MaHoatDong [int],
		@TenHoatDong [nvarchar](100)
	)
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION
		UPDATE [dbo].[HoatDong]
		SET [TenHoatDong] = @TenHoatDong
		WHERE ([MaHoatDong] = SCOPE_IDENTITY())
	COMMIT

GO
/****** Object:  StoredProcedure [dbo].[KhachHangDelete]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[KhachHangDelete]
		@MaKhachHang [int]
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION
		DELETE FROM [dbo].[KhachHang]
		WHERE ([MaKhachHang] = SCOPE_IDENTITY())
	COMMIT

GO
/****** Object:  StoredProcedure [dbo].[KhachHangInsert]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[KhachHangInsert]
	(
		@TenKhachHang [nvarchar](100),
		@SDT_KhachHang [char](10),
		@DiaChi_KhachHang [nvarchar](200),
		@Username [nvarchar](50),
		@Password [nvarchar](50),
		@TrangThai [bit]
	)
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION

	INSERT INTO [dbo].[KhachHang]
	(
		[TenKhachHang], [SDT_KhachHang], [DiaChi_KhachHang], [Username], [Password], [TrangThai]
	)
	VALUES
	(
		@TenKhachHang,
		@SDT_KhachHang,
		@DiaChi_KhachHang,
		@Username,
		@Password,
		@TrangThai

	)
	SELECT [MaKhachHang], [TenKhachHang], [SDT_KhachHang], [DiaChi_KhachHang], [Username], [Password], [TrangThai]
	FROM [dbo].[KhachHang]
	WHERE ([MaKhachHang] = SCOPE_IDENTITY())

	COMMIT

GO
/****** Object:  StoredProcedure [dbo].[KhachHangSelect]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[KhachHangSelect]
		@MaKhachHang [int]
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION

	SELECT [MaKhachHang], [TenKhachHang], [SDT_KhachHang], [DiaChi_KhachHang], [Username], [Password], [TrangThai]
	FROM [dbo].[KhachHang]
	WHERE ([MaKhachHang] = SCOPE_IDENTITY())

	COMMIT

GO
/****** Object:  StoredProcedure [dbo].[KhachHangUpdate]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[KhachHangUpdate]
	(
		@MaKhachHang [int],
		@TenKhachHang [nvarchar](100),
		@SDT_KhachHang [char](10),
		@DiaChi_KhachHang [nvarchar](200),
		@Username [nvarchar](50),
		@Password [nvarchar](50),
		@TrangThai [bit]
	)
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION
		UPDATE [dbo].[KhachHang]
		SET [TenKhachHang] = @TenKhachHang, [SDT_KhachHang] = @SDT_KhachHang, [DiaChi_KhachHang] = @DiaChi_KhachHang, [Username] = @Username, [Password] = @Password, [TrangThai] = @TrangThai
		WHERE ([MaKhachHang] = SCOPE_IDENTITY())
	COMMIT

GO
/****** Object:  StoredProcedure [dbo].[NhanVien_QuyenDelete]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NhanVien_QuyenDelete]
		@ID_NV_Q [int]
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION
		DELETE FROM [dbo].[NhanVien_Quyen]
		WHERE ([ID_NV_Q] = SCOPE_IDENTITY())
	COMMIT

GO
/****** Object:  StoredProcedure [dbo].[NhanVien_QuyenInsert]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NhanVien_QuyenInsert]
	(
		@MaNhanVien [int],
		@MaQuyen [int],
		@TrangThai [bit]
	)
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION

	INSERT INTO [dbo].[NhanVien_Quyen]
	(
		[MaNhanVien], [MaQuyen], [TrangThai]
	)
	VALUES
	(
		@MaNhanVien,
		@MaQuyen,
		@TrangThai

	)
	SELECT [ID_NV_Q], [MaNhanVien], [MaQuyen], [TrangThai]
	FROM [dbo].[NhanVien_Quyen]
	WHERE ([ID_NV_Q] = SCOPE_IDENTITY())

	COMMIT

GO
/****** Object:  StoredProcedure [dbo].[NhanVien_QuyenSelect]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NhanVien_QuyenSelect]
		@ID_NV_Q [int]
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION

	SELECT [ID_NV_Q], [MaNhanVien], [MaQuyen], [TrangThai]
	FROM [dbo].[NhanVien_Quyen]
	WHERE ([ID_NV_Q] = SCOPE_IDENTITY())

	COMMIT

GO
/****** Object:  StoredProcedure [dbo].[NhanVien_QuyenUpdate]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NhanVien_QuyenUpdate]
	(
		@ID_NV_Q [int],
		@MaNhanVien [int],
		@MaQuyen [int],
		@TrangThai [bit]
	)
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION
		UPDATE [dbo].[NhanVien_Quyen]
		SET [MaNhanVien] = @MaNhanVien, [MaQuyen] = @MaQuyen, [TrangThai] = @TrangThai
		WHERE ([ID_NV_Q] = SCOPE_IDENTITY())
	COMMIT

GO
/****** Object:  StoredProcedure [dbo].[NhanVienDelete]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NhanVienDelete]
		@MaNV [int]
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION
		DELETE FROM [dbo].[NhanVien]
		WHERE ([MaNV] = SCOPE_IDENTITY())
	COMMIT

GO
/****** Object:  StoredProcedure [dbo].[NhanVienInsert]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NhanVienInsert]
	(
		@TenNV [nvarchar](30),
		@GioiTinh [nvarchar](10),
		@SDT [char](10),
		@DiaChi [nvarchar](100),
		@HinhAnh [nvarchar](50),
		@Username [nvarchar](30),
		@Password [nvarchar](30)
	)
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION

	INSERT INTO [dbo].[NhanVien]
	(
		[TenNV], [GioiTinh], [SDT], [DiaChi], [HinhAnh], [Username], [Password]
	)
	VALUES
	(
		@TenNV,
		@GioiTinh,
		@SDT,
		@DiaChi,
		@HinhAnh,
		@Username,
		@Password

	)
	SELECT [MaNV], [TenNV], [GioiTinh], [SDT], [DiaChi], [HinhAnh], [Username], [Password]
	FROM [dbo].[NhanVien]
	WHERE ([MaNV] = SCOPE_IDENTITY())

	COMMIT

GO
/****** Object:  StoredProcedure [dbo].[NhanVienSelect]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NhanVienSelect]
		@MaNV [int]
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION

	SELECT [MaNV], [TenNV], [GioiTinh], [SDT], [DiaChi], [HinhAnh], [Username], [Password]
	FROM [dbo].[NhanVien]
	WHERE ([MaNV] = SCOPE_IDENTITY())

	COMMIT

GO
/****** Object:  StoredProcedure [dbo].[NhanVienUpdate]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NhanVienUpdate]
	(
		@MaNV [int],
		@TenNV [nvarchar](30),
		@GioiTinh [nvarchar](10),
		@SDT [char](10),
		@DiaChi [nvarchar](100),
		@HinhAnh [nvarchar](50),
		@Username [nvarchar](30),
		@Password [nvarchar](30)
	)
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION
		UPDATE [dbo].[NhanVien]
		SET [TenNV] = @TenNV, [GioiTinh] = @GioiTinh, [SDT] = @SDT, [DiaChi] = @DiaChi, [HinhAnh] = @HinhAnh, [Username] = @Username, [Password] = @Password
		WHERE ([MaNV] = SCOPE_IDENTITY())
	COMMIT

GO
/****** Object:  StoredProcedure [dbo].[PhieuDatDelete]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PhieuDatDelete]
		@MaPhieuDat [int]
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION
		DELETE FROM [dbo].[PhieuDat]
		WHERE ([MaPhieuDat] = SCOPE_IDENTITY())
	COMMIT

GO
/****** Object:  StoredProcedure [dbo].[PhieuDatInsert]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PhieuDatInsert]
	(
		@MaNV [int],
		@NgayLap [datetime],
		@NgayNhan [datetime],
		@TongTien [int],
		@TrangThai_Online [bit],
		@TrangThai_ThanhToan [bit],
		@TrangThai_GiaoHang [int],
		@MaKhachHang [int],
		@GhiChu [text]
	)
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION

	INSERT INTO [dbo].[PhieuDat]
	(
		[MaNV], [NgayLap], [NgayNhan], [TongTien], [TrangThai_Online], [TrangThai_ThanhToan], [TrangThai_GiaoHang], [MaKhachHang], [GhiChu]
	)
	VALUES
	(
		@MaNV,
		@NgayLap,
		@NgayNhan,
		@TongTien,
		@TrangThai_Online,
		@TrangThai_ThanhToan,
		@TrangThai_GiaoHang,
		@MaKhachHang,
		@GhiChu

	)
	SELECT [MaPhieuDat], [MaNV], [NgayLap], [NgayNhan], [TongTien], [TrangThai_Online], [TrangThai_ThanhToan], [TrangThai_GiaoHang], [MaKhachHang], [GhiChu]
	FROM [dbo].[PhieuDat]
	WHERE ([MaPhieuDat] = SCOPE_IDENTITY())

	COMMIT

GO
/****** Object:  StoredProcedure [dbo].[PhieuDatSelect]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PhieuDatSelect]
		@MaPhieuDat [int]
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION

	SELECT [MaPhieuDat], [MaNV], [NgayLap], [NgayNhan], [TongTien], [TrangThai_Online], [TrangThai_ThanhToan], [TrangThai_GiaoHang], [MaKhachHang], [GhiChu]
	FROM [dbo].[PhieuDat]
	WHERE ([MaPhieuDat] = SCOPE_IDENTITY())

	COMMIT

GO
/****** Object:  StoredProcedure [dbo].[PhieuDatUpdate]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PhieuDatUpdate]
	(
		@MaPhieuDat [int],
		@MaNV [int],
		@NgayLap [datetime],
		@NgayNhan [datetime],
		@TongTien [int],
		@TrangThai_Online [bit],
		@TrangThai_ThanhToan [bit],
		@TrangThai_GiaoHang [int],
		@MaKhachHang [int],
		@GhiChu [text]
	)
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION
		UPDATE [dbo].[PhieuDat]
		SET [MaNV] = @MaNV, [NgayLap] = @NgayLap, [NgayNhan] = @NgayNhan, [TongTien] = @TongTien, [TrangThai_Online] = @TrangThai_Online, [TrangThai_ThanhToan] = @TrangThai_ThanhToan, [TrangThai_GiaoHang] = @TrangThai_GiaoHang, [MaKhachHang] = @MaKhachHang, [GhiChu] = @GhiChu
		WHERE ([MaPhieuDat] = SCOPE_IDENTITY())
	COMMIT

GO
/****** Object:  StoredProcedure [dbo].[Quyen_HoatDongDelete]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Quyen_HoatDongDelete]
		@ID_Q_HD [int]
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION
		DELETE FROM [dbo].[Quyen_HoatDong]
		WHERE ([ID_Q_HD] = SCOPE_IDENTITY())
	COMMIT

GO
/****** Object:  StoredProcedure [dbo].[Quyen_HoatDongInsert]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Quyen_HoatDongInsert]
	(
		@MaQuyen [int],
		@MaHoatDong [int],
		@TrangThai [bit]
	)
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION

	INSERT INTO [dbo].[Quyen_HoatDong]
	(
		[MaQuyen], [MaHoatDong], [TrangThai]
	)
	VALUES
	(
		@MaQuyen,
		@MaHoatDong,
		@TrangThai

	)
	SELECT [ID_Q_HD], [MaQuyen], [MaHoatDong], [TrangThai]
	FROM [dbo].[Quyen_HoatDong]
	WHERE ([ID_Q_HD] = SCOPE_IDENTITY())

	COMMIT

GO
/****** Object:  StoredProcedure [dbo].[Quyen_HoatDongSelect]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Quyen_HoatDongSelect]
		@ID_Q_HD [int]
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION

	SELECT [ID_Q_HD], [MaQuyen], [MaHoatDong], [TrangThai]
	FROM [dbo].[Quyen_HoatDong]
	WHERE ([ID_Q_HD] = SCOPE_IDENTITY())

	COMMIT

GO
/****** Object:  StoredProcedure [dbo].[Quyen_HoatDongUpdate]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Quyen_HoatDongUpdate]
	(
		@ID_Q_HD [int],
		@MaQuyen [int],
		@MaHoatDong [int],
		@TrangThai [bit]
	)
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION
		UPDATE [dbo].[Quyen_HoatDong]
		SET [MaQuyen] = @MaQuyen, [MaHoatDong] = @MaHoatDong, [TrangThai] = @TrangThai
		WHERE ([ID_Q_HD] = SCOPE_IDENTITY())
	COMMIT

GO
/****** Object:  StoredProcedure [dbo].[QuyenDelete]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[QuyenDelete]
		@MaQuyen [int]
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION
		DELETE FROM [dbo].[Quyen]
		WHERE ([MaQuyen] = SCOPE_IDENTITY())
	COMMIT

GO
/****** Object:  StoredProcedure [dbo].[QuyenInsert]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[QuyenInsert]
	(
		@TenQuyen [nvarchar](100)
	)
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION

	INSERT INTO [dbo].[Quyen]
	(
		[TenQuyen]
	)
	VALUES
	(
		@TenQuyen

	)
	SELECT [MaQuyen], [TenQuyen]
	FROM [dbo].[Quyen]
	WHERE ([MaQuyen] = SCOPE_IDENTITY())

	COMMIT

GO
/****** Object:  StoredProcedure [dbo].[QuyenSelect]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[QuyenSelect]
		@MaQuyen [int]
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION

	SELECT [MaQuyen], [TenQuyen]
	FROM [dbo].[Quyen]
	WHERE ([MaQuyen] = SCOPE_IDENTITY())

	COMMIT

GO
/****** Object:  StoredProcedure [dbo].[QuyenUpdate]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[QuyenUpdate]
	(
		@MaQuyen [int],
		@TenQuyen [nvarchar](100)
	)
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION
		UPDATE [dbo].[Quyen]
		SET [TenQuyen] = @TenQuyen
		WHERE ([MaQuyen] = SCOPE_IDENTITY())
	COMMIT

GO
/****** Object:  StoredProcedure [dbo].[SizeBanhDelete]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SizeBanhDelete]
		@MaSizeBanh [int]
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION
		DELETE FROM [dbo].[SizeBanh]
		WHERE ([MaSizeBanh] = SCOPE_IDENTITY())
	COMMIT

GO
/****** Object:  StoredProcedure [dbo].[SizeBanhInsert]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SizeBanhInsert]
	(
		@MaBanhKem [int],
		@MaSize [int],
		@Gia [int]
	)
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION

	INSERT INTO [dbo].[SizeBanh]
	(
		[MaBanhKem], [MaSize], [Gia]
	)
	VALUES
	(
		@MaBanhKem,
		@MaSize,
		@Gia

	)
	SELECT [MaSizeBanh], [MaBanhKem], [MaSize], [Gia]
	FROM [dbo].[SizeBanh]
	WHERE ([MaSizeBanh] = SCOPE_IDENTITY())

	COMMIT

GO
/****** Object:  StoredProcedure [dbo].[SizeBanhSelect]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SizeBanhSelect]
		@MaSizeBanh [int]
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION

	SELECT [MaSizeBanh], [MaBanhKem], [MaSize], [Gia]
	FROM [dbo].[SizeBanh]
	WHERE ([MaSizeBanh] = SCOPE_IDENTITY())

	COMMIT

GO
/****** Object:  StoredProcedure [dbo].[SizeBanhUpdate]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SizeBanhUpdate]
	(
		@MaSizeBanh [int],
		@MaBanhKem [int],
		@MaSize [int],
		@Gia [int]
	)
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION
		UPDATE [dbo].[SizeBanh]
		SET [MaBanhKem] = @MaBanhKem, [MaSize] = @MaSize, [Gia] = @Gia
		WHERE ([MaSizeBanh] = SCOPE_IDENTITY())
	COMMIT

GO
/****** Object:  StoredProcedure [dbo].[SizeDelete]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SizeDelete]
		@MaSize [int]
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION
		DELETE FROM [dbo].[Size]
		WHERE ([MaSize] = SCOPE_IDENTITY())
	COMMIT

GO
/****** Object:  StoredProcedure [dbo].[SizeInsert]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SizeInsert]
	(
		@TenSize [varchar](20)
	)
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION

	INSERT INTO [dbo].[Size]
	(
		[TenSize]
	)
	VALUES
	(
		@TenSize

	)
	SELECT [MaSize], [TenSize]
	FROM [dbo].[Size]
	WHERE ([MaSize] = SCOPE_IDENTITY())

	COMMIT

GO
/****** Object:  StoredProcedure [dbo].[SizeSelect]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SizeSelect]
		@MaSize [int]
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION

	SELECT [MaSize], [TenSize]
	FROM [dbo].[Size]
	WHERE ([MaSize] = SCOPE_IDENTITY())

	COMMIT

GO
/****** Object:  StoredProcedure [dbo].[SizeUpdate]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SizeUpdate]
	(
		@MaSize [int],
		@TenSize [varchar](20)
	)
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION
		UPDATE [dbo].[Size]
		SET [TenSize] = @TenSize
		WHERE ([MaSize] = SCOPE_IDENTITY())
	COMMIT

GO
/****** Object:  StoredProcedure [dbo].[sp_DemSoBanhCoMaSizeBanhTrongNgay]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_DemSoBanhCoMaSizeBanhTrongNgay] @maSB int
as
	declare @count int = (select COUNT(*)
							from BanhTrongNgay btn
							where CONVERT(date, btn.NgaySanXuat) = CONVERT(date, getdate()) and btn.MaSizeBanh = @maSB)
	if @count != 0
		return -1
	else
		return 0

GO
/****** Object:  StoredProcedure [dbo].[sp_SumSoBanhHetHan]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_SumSoBanhHetHan]
as
	declare @sum int = (select sum(btn.soluong)
						from BanhTrongNgay btn
						where CONVERT(date, btn.NgayHetHan) = CONVERT(date, getdate()) and btn.TrangThaiBanhHetHan = 1)
	if @sum = null
		return 0
	else
		return @sum

GO
/****** Object:  StoredProcedure [dbo].[sp_ThongKeSoBanhDaBan_Null]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_ThongKeSoBanhDaBan_Null]
as
	declare @soLuong int = (select sum(ct.SoLuong) from ChiTietHoaDon ct, HoaDon hd 
							where hd.MaHoaDon = ct.MaHoaDon and CONVERT(date, hd.ngaylap) = convert(date,GETDATE())
							)
	if( @soLuong = null)
		return 0
	else
		begin
			return @soLuong
		end


GO
/****** Object:  StoredProcedure [dbo].[sp_ThongKeSoBanhHetHan_Null]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_ThongKeSoBanhHetHan_Null]
as
	declare @soLuong int = (select sum(soLuong) from BanhTrongNgay where convert(date,NgayHetHan) = convert(date,GETDATE()))
	if( @soLuong = null)
		return @soLuong
	else
		begin
			return @soLuong
		end

GO
/****** Object:  StoredProcedure [dbo].[sp_ThongKeTongTien_HDBan_Null]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_ThongKeTongTien_HDBan_Null] @ngay1 Datetime, @ngay2 Datetime
as
	declare @soLuong int = (select sum(hd.TongTien) from HoaDon hd 
							where hd.NgayLap >= convert(date,@ngay1) and hd.NgayLap <= convert(date,@ngay2) and hd.TrangThai = 1)
	if( @soLuong = null)
		return @soLuong
	else
		begin
			return @soLuong
		end
GO
/****** Object:  StoredProcedure [dbo].[sp_ThongKeTongTien_PhieuDat_Null]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_ThongKeTongTien_PhieuDat_Null] @ngay1 Datetime, @ngay2 Datetime
as
	declare @soLuong int = (select sum(pd.TongTien) from PhieuDat pd 
							where pd.NgayLap >= convert(date,@ngay1) and pd.NgayNhan <= convert(date,@ngay2) and pd.TrangThai_GiaoHang = 1)
	if( @soLuong = null)
		return @soLuong
	else
		begin
			return @soLuong
		end

GO
/****** Object:  StoredProcedure [dbo].[sp_TongTienHoaDon_Null]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_TongTienHoaDon_Null] @tungay datetime, @denngay datetime
as
	declare @Money int = 0
	
	if((select sum(tongtien) from HoaDon where TrangThai = 1 and  NgayLap >= @tungay and NgayLap <= @denngay) = null)
			return @Money
	else
			return (select sum(tongtien) from HoaDon where TrangThai = 1 and  NgayLap >= @tungay and NgayLap <= @denngay)


GO
/****** Object:  StoredProcedure [dbo].[sp_TongTienPhieuDat_Null]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_TongTienPhieuDat_Null] @tungay datetime, @denngay datetime
as
	declare @Money int = 0
	
	if((select sum(tongtien) from PhieuDat where trangthai_giaohang = 1 and  NgayLap >= @tungay and NgayNhan <= @denngay) = null)
		return @Money
	else
		return (select sum(tongtien) from PhieuDat where trangthai_giaohang = 1 and  NgayLap >= @tungay and NgayNhan <= @denngay)

GO
/****** Object:  StoredProcedure [dbo].[TheLoaiBanhDelete]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TheLoaiBanhDelete]
		@MaLoai [int]
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION
		DELETE FROM [dbo].[TheLoaiBanh]
		WHERE ([MaLoai] = SCOPE_IDENTITY())
	COMMIT

GO
/****** Object:  StoredProcedure [dbo].[TheLoaiBanhInsert]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TheLoaiBanhInsert]
	(
		@TenLoai [nvarchar](50),
		@HinhAnhLoai [nvarchar](100)
	)
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION

	INSERT INTO [dbo].[TheLoaiBanh]
	(
		[TenLoai], [HinhAnhLoai]
	)
	VALUES
	(
		@TenLoai,
		@HinhAnhLoai

	)
	SELECT [MaLoai], [TenLoai], [HinhAnhLoai]
	FROM [dbo].[TheLoaiBanh]
	WHERE ([MaLoai] = SCOPE_IDENTITY())

	COMMIT

GO
/****** Object:  StoredProcedure [dbo].[TheLoaiBanhSelect]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TheLoaiBanhSelect]
		@MaLoai [int]
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION

	SELECT [MaLoai], [TenLoai], [HinhAnhLoai]
	FROM [dbo].[TheLoaiBanh]
	WHERE ([MaLoai] = SCOPE_IDENTITY())

	COMMIT

GO
/****** Object:  StoredProcedure [dbo].[TheLoaiBanhUpdate]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TheLoaiBanhUpdate]
	(
		@MaLoai [int],
		@TenLoai [nvarchar](50),
		@HinhAnhLoai [nvarchar](100)
	)
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON
	
	BEGIN TRANSACTION
		UPDATE [dbo].[TheLoaiBanh]
		SET [TenLoai] = @TenLoai, [HinhAnhLoai] = @HinhAnhLoai
		WHERE ([MaLoai] = SCOPE_IDENTITY())
	COMMIT

GO
/****** Object:  Table [dbo].[BanhKem]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BanhKem](
	[MaBanhKem] [int] IDENTITY(1,1) NOT NULL,
	[TenBanhKem] [nvarchar](50) NOT NULL,
	[HinhAnh] [nvarchar](50) NULL,
	[MoTa] [nvarchar](255) NULL,
	[MaLoaiBanh] [int] NOT NULL,
	[MaGiamGia] [int] NULL,
 CONSTRAINT [PK_BanhKem] PRIMARY KEY CLUSTERED 
(
	[MaBanhKem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BanhTrongNgay]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BanhTrongNgay](
	[MaBanhTrongNgay] [int] IDENTITY(1,1) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[NgaySanXuat] [datetime] NOT NULL,
	[NgayHetHan] [datetime] NOT NULL,
	[MaSizeBanh] [int] NOT NULL,
	[TrangThaiBanhHetHan] [bit] NOT NULL,
 CONSTRAINT [PK_BanhTrongNgay] PRIMARY KEY CLUSTERED 
(
	[MaBanhTrongNgay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[MaCTHD] [int] IDENTITY(1,1) NOT NULL,
	[MaHoaDon] [int] NOT NULL,
	[MaBanhTrongNgay] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[ThanhTien] [int] NOT NULL,
 CONSTRAINT [PK_ChiTietHoaDon] PRIMARY KEY CLUSTERED 
(
	[MaCTHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietPhieuDat]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPhieuDat](
	[MaCTPD] [int] IDENTITY(1,1) NOT NULL,
	[MaPD] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[ThanhTien] [int] NOT NULL,
	[MaSizeBanh] [int] NOT NULL,
 CONSTRAINT [PK_ChiTietPhieuDat] PRIMARY KEY CLUSTERED 
(
	[MaCTPD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DoanhThu]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoanhThu](
	[MaDoanhThu] [int] IDENTITY(1,1) NOT NULL,
	[MaHD] [int] NOT NULL,
	[MaPD] [int] NOT NULL,
	[TongTien] [int] NOT NULL,
 CONSTRAINT [PK_DoanhThu] PRIMARY KEY CLUSTERED 
(
	[MaDoanhThu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GiamGia]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiamGia](
	[MaGiamGia] [int] IDENTITY(1,1) NOT NULL,
	[TenGiamGia] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_GiamGia] PRIMARY KEY CLUSTERED 
(
	[MaGiamGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHoaDon] [int] IDENTITY(1,1) NOT NULL,
	[NgayLap] [datetime] NOT NULL,
	[MaNhanVien] [int] NOT NULL,
	[TongTien] [int] NOT NULL,
	[TrangThai] [bit] NOT NULL,
	[MaKhachHang] [int] NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HoatDong]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoatDong](
	[MaHoatDong] [int] IDENTITY(1,1) NOT NULL,
	[TenHoatDong] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_HoatDong] PRIMARY KEY CLUSTERED 
(
	[MaHoatDong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKhachHang] [int] IDENTITY(1,1) NOT NULL,
	[TenKhachHang] [nvarchar](100) NOT NULL,
	[SDT_KhachHang] [char](10) NOT NULL,
	[DiaChi_KhachHang] [nvarchar](200) NOT NULL,
	[Username] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[TrangThai] [bit] NOT NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [int] IDENTITY(1,1) NOT NULL,
	[TenNV] [nvarchar](30) NOT NULL,
	[GioiTinh] [nvarchar](10) NOT NULL,
	[SDT] [char](10) NOT NULL,
	[DiaChi] [nvarchar](100) NOT NULL,
	[HinhAnh] [nvarchar](50) NULL,
	[Username] [nvarchar](30) NOT NULL,
	[Password] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhanVien_Quyen]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien_Quyen](
	[ID_NV_Q] [int] IDENTITY(1,1) NOT NULL,
	[MaNhanVien] [int] NOT NULL,
	[MaQuyen] [int] NOT NULL,
	[TrangThai] [bit] NOT NULL,
 CONSTRAINT [PK_NhanVien_Quyen] PRIMARY KEY CLUSTERED 
(
	[ID_NV_Q] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhieuDat]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuDat](
	[MaPhieuDat] [int] IDENTITY(1,1) NOT NULL,
	[MaNV] [int] NULL,
	[NgayLap] [datetime] NOT NULL,
	[NgayNhan] [datetime] NOT NULL,
	[TongTien] [int] NOT NULL,
	[TrangThai_Online] [bit] NOT NULL,
	[TrangThai_ThanhToan] [bit] NOT NULL,
	[TrangThai_GiaoHang] [int] NOT NULL,
	[MaKhachHang] [int] NOT NULL,
	[GhiChu] [text] NULL,
 CONSTRAINT [PK_PhieuDat] PRIMARY KEY CLUSTERED 
(
	[MaPhieuDat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Quyen]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quyen](
	[MaQuyen] [int] IDENTITY(1,1) NOT NULL,
	[TenQuyen] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Quyen] PRIMARY KEY CLUSTERED 
(
	[MaQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Quyen_HoatDong]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quyen_HoatDong](
	[ID_Q_HD] [int] IDENTITY(1,1) NOT NULL,
	[MaQuyen] [int] NOT NULL,
	[MaHoatDong] [int] NOT NULL,
	[TrangThai] [bit] NOT NULL,
 CONSTRAINT [PK_Quyen_HoatDong] PRIMARY KEY CLUSTERED 
(
	[ID_Q_HD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Size]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Size](
	[MaSize] [int] IDENTITY(1,1) NOT NULL,
	[TenSize] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Size] PRIMARY KEY CLUSTERED 
(
	[MaSize] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SizeBanh]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SizeBanh](
	[MaSizeBanh] [int] IDENTITY(1,1) NOT NULL,
	[MaBanhKem] [int] NOT NULL,
	[MaSize] [int] NOT NULL,
	[Gia] [int] NOT NULL,
 CONSTRAINT [PK_SizeBanh] PRIMARY KEY CLUSTERED 
(
	[MaSizeBanh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TheLoaiBanh]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheLoaiBanh](
	[MaLoai] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](50) NOT NULL,
	[HinhAnhLoai] [nvarchar](100) NULL,
 CONSTRAINT [PK_TheLoaiBanh] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[DanhSachBanhHetHan_View]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[DanhSachBanhHetHan_View]
as
	SELECT btn.MaBanhTrongNgay, btn.TrangThaiBanhHetHan, bk.MaBanhKem, bk.TenBanhKem, s.TenSize, sb.Gia, g.TenGiamGia, btn.SoLuong, bk.HinhAnh, btn.NgaySanXuat, btn.NgayHetHan
	FROM     dbo.BanhTrongNgay AS btn INNER JOIN
					  dbo.SizeBanh AS sb ON btn.MaSizeBanh = sb.MaSizeBanh INNER JOIN
					  dbo.Size AS s ON sb.MaSize = s.MaSize INNER JOIN
					  dbo.BanhKem AS bk ON sb.MaBanhKem = bk.MaBanhKem INNER JOIN
					  dbo.GiamGia AS g ON bk.MaGiamGia = g.MaGiamGia
	WHERE  convert(date,btn.NgayHetHan) = CONVERT(date, getdate())

GO
/****** Object:  View [dbo].[KH_TiemNang_View]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[KH_TiemNang_View] as 
select COUNT(hd.MaKhachHang) as solan, kh.TenKhachHang, kh.MaKhachHang, kh.DiaChi_KhachHang, kh.SDT_KhachHang
from HoaDon hd, KhachHang kh
where hd.MaKhachHang = kh.MaKhachHang
group by hd.MaKhachHang, kh.TenKhachHang, kh.MaKhachHang, kh.DiaChi_KhachHang, kh.SDT_KhachHang

GO
/****** Object:  View [dbo].[KH_TiemNangPhieuDat_View]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[KH_TiemNangPhieuDat_View] as
select count(pd.MaKhachHang) as soLan, kh.DiaChi_KhachHang, kh.SDT_KhachHang, kh.TenKhachHang, kh.MaKhachHang
from phieudat pd, KhachHang kh
where pd.MaKhachHang = kh.MaKhachHang
group by kh.MaKhachHang, kh.TenKhachHang, kh.DiaChi_KhachHang, kh.SDT_KhachHang

GO
/****** Object:  View [dbo].[ListMaBanhNhapTrongNgay_View]    Script Date: 12/16/19 9:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[ListMaBanhNhapTrongNgay_View]
as
	select btn.MaBanhTrongNgay
	from BanhTrongNgay btn
	where CONVERT(date,btn.NgaySanXuat) = CONVERT(date, getdate())

GO
SET IDENTITY_INSERT [dbo].[BanhKem] ON 

INSERT [dbo].[BanhKem] ([MaBanhKem], [TenBanhKem], [HinhAnh], [MoTa], [MaLoaiBanh], [MaGiamGia]) VALUES (1, N'BLACK FOREST CAKE', N'2.png', N'Bánh này làm từ socoka nên vô cùng ngon, ngọt, lạ , rất ngon, nhinfn hấp dẫn', 1, 1)
INSERT [dbo].[BanhKem] ([MaBanhKem], [TenBanhKem], [HinhAnh], [MoTa], [MaLoaiBanh], [MaGiamGia]) VALUES (2, N'CHOCOLATE & STRAWBERRY CHARLOTTE', N'1.png', N'Bánh cam là loại bánh tròn tròn, nhân đậu xanh giã nhuyễn, bên ngoài có lớp mè phủ. Có loại có phủ đường và mè, có loại chỉ phủ mè, nói chung bánh này rất ngon và nhìn hấp dẫ, hahahha', 3, 2)
INSERT [dbo].[BanhKem] ([MaBanhKem], [TenBanhKem], [HinhAnh], [MoTa], [MaLoaiBanh], [MaGiamGia]) VALUES (7, N'COCO LOVE CAKE', N'3.png', N'Bánh trà xánh là loại bánh gì tui cũng chả biết nữa, chưa ăn thử lần nào. Nhưng mà tui nghĩ nó ngon nên ghi vô đây thôi ,kkk', 1, 2)
INSERT [dbo].[BanhKem] ([MaBanhKem], [TenBanhKem], [HinhAnh], [MoTa], [MaLoaiBanh], [MaGiamGia]) VALUES (8, N'COCONUT & STRAWBERRY CHARLOTTE', N'5.png', N'Lấy cảm hứng từ Trà sữa trân chân đường đen, Bánh Sữa tươi trân chân đường phèn là dạng biến thể của nó. Tuy chưa ăn nhưng nghe tên có vẽ hấp dẫn, nên ăn thử, hehee', 2, 3)
INSERT [dbo].[BanhKem] ([MaBanhKem], [TenBanhKem], [HinhAnh], [MoTa], [MaLoaiBanh], [MaGiamGia]) VALUES (16, N'COLD CHEESE CAKE', N'6.png', N'bánh tesst thử coi ngon ko', 3, 3)
INSERT [dbo].[BanhKem] ([MaBanhKem], [TenBanhKem], [HinhAnh], [MoTa], [MaLoaiBanh], [MaGiamGia]) VALUES (17, N'DARK CHOCOLATE CAKE', N'7.png', N'Bánh them vào để test table sizebasnh', 4, 2)
INSERT [dbo].[BanhKem] ([MaBanhKem], [TenBanhKem], [HinhAnh], [MoTa], [MaLoaiBanh], [MaGiamGia]) VALUES (18, N'DOUBLE CHEESE CAKE', N'8.png', N'Paragraphs are the building blocks of papers. Many students define paragraphs in terms of length: a paragraph is a group of at least five sentences,', 2, 1)
INSERT [dbo].[BanhKem] ([MaBanhKem], [TenBanhKem], [HinhAnh], [MoTa], [MaLoaiBanh], [MaGiamGia]) VALUES (19, N'DRYNUT CHOCOLATE CAKE', N'9.png', N'Paragraphs are the building blocks of papers. Many students define paragraphs in terms of length: a paragraph is a group of at least five sentences,', 4, 2)
INSERT [dbo].[BanhKem] ([MaBanhKem], [TenBanhKem], [HinhAnh], [MoTa], [MaLoaiBanh], [MaGiamGia]) VALUES (20, N'FANCY NUTS CHOCOLATE CAKE', N'10.png', N'Paragraphs are the building blocks of papers. Many students define paragraphs in terms of length: a paragraph is a group of at least five sentences,', 3, 1)
INSERT [dbo].[BanhKem] ([MaBanhKem], [TenBanhKem], [HinhAnh], [MoTa], [MaLoaiBanh], [MaGiamGia]) VALUES (21, N'FRUIT DELICACY CAKE', N'11.png', N'Paragraphs are the building blocks of papers. Many students define paragraphs in terms of length: a paragraph is a group of at least five sentences,', 1, 2)
INSERT [dbo].[BanhKem] ([MaBanhKem], [TenBanhKem], [HinhAnh], [MoTa], [MaLoaiBanh], [MaGiamGia]) VALUES (23, N'GREEN TEA CAKE', N'12.png', N'Paragraphs are the building blocks of papers. Many students define paragraphs in terms of length: a paragraph is a group of at least five sentences,', 1, 1)
INSERT [dbo].[BanhKem] ([MaBanhKem], [TenBanhKem], [HinhAnh], [MoTa], [MaLoaiBanh], [MaGiamGia]) VALUES (24, N'HAPPY ANGEL CAKE', N'13.png', N'Paragraphs are the building blocks of papers. Many students define paragraphs in terms of length: a paragraph is a group of at least five sentences,s', 1, 1)
INSERT [dbo].[BanhKem] ([MaBanhKem], [TenBanhKem], [HinhAnh], [MoTa], [MaLoaiBanh], [MaGiamGia]) VALUES (25, N'CUPCAKE SOCOLA NEW', N'14.png', N'Cupcake Socola là loại bánh mới với hương vị Socola thơm ngất ngây tạo cảm giác ngon miệng và bắt mắt cho người thưởng thức', 1, 4)
SET IDENTITY_INSERT [dbo].[BanhKem] OFF
SET IDENTITY_INSERT [dbo].[BanhTrongNgay] ON 

INSERT [dbo].[BanhTrongNgay] ([MaBanhTrongNgay], [SoLuong], [NgaySanXuat], [NgayHetHan], [MaSizeBanh], [TrangThaiBanhHetHan]) VALUES (1, 15, CAST(N'2019-10-23 00:00:00.000' AS DateTime), CAST(N'2019-10-26 00:00:00.000' AS DateTime), 8, 0)
INSERT [dbo].[BanhTrongNgay] ([MaBanhTrongNgay], [SoLuong], [NgaySanXuat], [NgayHetHan], [MaSizeBanh], [TrangThaiBanhHetHan]) VALUES (2, 20, CAST(N'2019-10-25 00:00:00.000' AS DateTime), CAST(N'2019-10-27 00:00:00.000' AS DateTime), 9, 0)
INSERT [dbo].[BanhTrongNgay] ([MaBanhTrongNgay], [SoLuong], [NgaySanXuat], [NgayHetHan], [MaSizeBanh], [TrangThaiBanhHetHan]) VALUES (3, 25, CAST(N'2019-10-25 00:00:00.000' AS DateTime), CAST(N'2019-10-28 00:00:00.000' AS DateTime), 10, 0)
INSERT [dbo].[BanhTrongNgay] ([MaBanhTrongNgay], [SoLuong], [NgaySanXuat], [NgayHetHan], [MaSizeBanh], [TrangThaiBanhHetHan]) VALUES (4, -1, CAST(N'2019-10-24 00:00:00.000' AS DateTime), CAST(N'2019-10-26 00:00:00.000' AS DateTime), 2, 0)
INSERT [dbo].[BanhTrongNgay] ([MaBanhTrongNgay], [SoLuong], [NgaySanXuat], [NgayHetHan], [MaSizeBanh], [TrangThaiBanhHetHan]) VALUES (5, 5, CAST(N'2019-10-24 00:00:00.000' AS DateTime), CAST(N'2019-10-26 00:00:00.000' AS DateTime), 5, 0)
INSERT [dbo].[BanhTrongNgay] ([MaBanhTrongNgay], [SoLuong], [NgaySanXuat], [NgayHetHan], [MaSizeBanh], [TrangThaiBanhHetHan]) VALUES (7, 26, CAST(N'2019-10-23 00:00:00.000' AS DateTime), CAST(N'2019-10-26 00:00:00.000' AS DateTime), 1, 0)
INSERT [dbo].[BanhTrongNgay] ([MaBanhTrongNgay], [SoLuong], [NgaySanXuat], [NgayHetHan], [MaSizeBanh], [TrangThaiBanhHetHan]) VALUES (8, 15, CAST(N'2019-10-26 00:00:00.000' AS DateTime), CAST(N'2019-10-30 00:00:00.000' AS DateTime), 1, 0)
INSERT [dbo].[BanhTrongNgay] ([MaBanhTrongNgay], [SoLuong], [NgaySanXuat], [NgayHetHan], [MaSizeBanh], [TrangThaiBanhHetHan]) VALUES (9, 20, CAST(N'2019-10-25 00:00:00.000' AS DateTime), CAST(N'2019-10-31 00:00:00.000' AS DateTime), 8, 0)
INSERT [dbo].[BanhTrongNgay] ([MaBanhTrongNgay], [SoLuong], [NgaySanXuat], [NgayHetHan], [MaSizeBanh], [TrangThaiBanhHetHan]) VALUES (10, 29, CAST(N'2019-10-26 00:00:00.000' AS DateTime), CAST(N'2019-10-31 00:00:00.000' AS DateTime), 5, 0)
INSERT [dbo].[BanhTrongNgay] ([MaBanhTrongNgay], [SoLuong], [NgaySanXuat], [NgayHetHan], [MaSizeBanh], [TrangThaiBanhHetHan]) VALUES (11, 10, CAST(N'2019-10-26 00:00:00.000' AS DateTime), CAST(N'2019-10-31 00:00:00.000' AS DateTime), 10, 0)
INSERT [dbo].[BanhTrongNgay] ([MaBanhTrongNgay], [SoLuong], [NgaySanXuat], [NgayHetHan], [MaSizeBanh], [TrangThaiBanhHetHan]) VALUES (12, 15, CAST(N'2019-10-30 00:06:25.450' AS DateTime), CAST(N'2019-11-01 19:17:30.000' AS DateTime), 9, 0)
INSERT [dbo].[BanhTrongNgay] ([MaBanhTrongNgay], [SoLuong], [NgaySanXuat], [NgayHetHan], [MaSizeBanh], [TrangThaiBanhHetHan]) VALUES (13, 14, CAST(N'2019-10-30 00:07:56.613' AS DateTime), CAST(N'2019-11-02 19:17:30.000' AS DateTime), 2, 0)
INSERT [dbo].[BanhTrongNgay] ([MaBanhTrongNgay], [SoLuong], [NgaySanXuat], [NgayHetHan], [MaSizeBanh], [TrangThaiBanhHetHan]) VALUES (14, 20, CAST(N'2019-10-30 01:16:58.747' AS DateTime), CAST(N'2019-11-18 19:17:30.000' AS DateTime), 1, 0)
INSERT [dbo].[BanhTrongNgay] ([MaBanhTrongNgay], [SoLuong], [NgaySanXuat], [NgayHetHan], [MaSizeBanh], [TrangThaiBanhHetHan]) VALUES (15, 100, CAST(N'2019-10-30 12:49:53.470' AS DateTime), CAST(N'2019-11-08 19:17:30.000' AS DateTime), 9, 0)
INSERT [dbo].[BanhTrongNgay] ([MaBanhTrongNgay], [SoLuong], [NgaySanXuat], [NgayHetHan], [MaSizeBanh], [TrangThaiBanhHetHan]) VALUES (16, 23, CAST(N'2019-10-30 13:16:52.253' AS DateTime), CAST(N'2019-11-04 19:17:30.000' AS DateTime), 10, 0)
INSERT [dbo].[BanhTrongNgay] ([MaBanhTrongNgay], [SoLuong], [NgaySanXuat], [NgayHetHan], [MaSizeBanh], [TrangThaiBanhHetHan]) VALUES (17, 9999, CAST(N'2019-10-30 15:15:25.970' AS DateTime), CAST(N'2019-11-19 00:00:00.000' AS DateTime), 5, 0)
INSERT [dbo].[BanhTrongNgay] ([MaBanhTrongNgay], [SoLuong], [NgaySanXuat], [NgayHetHan], [MaSizeBanh], [TrangThaiBanhHetHan]) VALUES (18, 555, CAST(N'2019-10-30 15:17:58.737' AS DateTime), CAST(N'2019-11-20 19:17:30.000' AS DateTime), 10, 0)
INSERT [dbo].[BanhTrongNgay] ([MaBanhTrongNgay], [SoLuong], [NgaySanXuat], [NgayHetHan], [MaSizeBanh], [TrangThaiBanhHetHan]) VALUES (19, 222, CAST(N'2019-10-30 15:20:19.033' AS DateTime), CAST(N'2019-11-19 00:00:00.000' AS DateTime), 2, 0)
INSERT [dbo].[BanhTrongNgay] ([MaBanhTrongNgay], [SoLuong], [NgaySanXuat], [NgayHetHan], [MaSizeBanh], [TrangThaiBanhHetHan]) VALUES (20, 998, CAST(N'2019-11-10 03:36:42.063' AS DateTime), CAST(N'2019-11-23 19:17:30.000' AS DateTime), 8, 0)
INSERT [dbo].[BanhTrongNgay] ([MaBanhTrongNgay], [SoLuong], [NgaySanXuat], [NgayHetHan], [MaSizeBanh], [TrangThaiBanhHetHan]) VALUES (21, 5000, CAST(N'2019-11-10 03:55:23.497' AS DateTime), CAST(N'2019-11-22 19:17:30.000' AS DateTime), 9, 0)
INSERT [dbo].[BanhTrongNgay] ([MaBanhTrongNgay], [SoLuong], [NgaySanXuat], [NgayHetHan], [MaSizeBanh], [TrangThaiBanhHetHan]) VALUES (22, 19995, CAST(N'2019-11-10 03:57:17.243' AS DateTime), CAST(N'2019-11-21 19:17:30.000' AS DateTime), 3, 0)
INSERT [dbo].[BanhTrongNgay] ([MaBanhTrongNgay], [SoLuong], [NgaySanXuat], [NgayHetHan], [MaSizeBanh], [TrangThaiBanhHetHan]) VALUES (23, 89, CAST(N'2019-11-10 22:26:16.813' AS DateTime), CAST(N'2019-11-21 19:17:30.000' AS DateTime), 5, 0)
INSERT [dbo].[BanhTrongNgay] ([MaBanhTrongNgay], [SoLuong], [NgaySanXuat], [NgayHetHan], [MaSizeBanh], [TrangThaiBanhHetHan]) VALUES (24, 200, CAST(N'2019-11-11 00:06:19.280' AS DateTime), CAST(N'2019-11-25 19:17:30.000' AS DateTime), 10, 0)
INSERT [dbo].[BanhTrongNgay] ([MaBanhTrongNgay], [SoLuong], [NgaySanXuat], [NgayHetHan], [MaSizeBanh], [TrangThaiBanhHetHan]) VALUES (26, 2016, CAST(N'2019-11-11 01:33:10.630' AS DateTime), CAST(N'2019-11-20 19:17:30.000' AS DateTime), 9, 0)
INSERT [dbo].[BanhTrongNgay] ([MaBanhTrongNgay], [SoLuong], [NgaySanXuat], [NgayHetHan], [MaSizeBanh], [TrangThaiBanhHetHan]) VALUES (27, 0, CAST(N'2019-11-11 02:12:59.180' AS DateTime), CAST(N'2019-11-21 19:17:30.000' AS DateTime), 8, 0)
INSERT [dbo].[BanhTrongNgay] ([MaBanhTrongNgay], [SoLuong], [NgaySanXuat], [NgayHetHan], [MaSizeBanh], [TrangThaiBanhHetHan]) VALUES (28, 456, CAST(N'2019-11-13 17:14:07.117' AS DateTime), CAST(N'2019-11-29 19:17:30.000' AS DateTime), 10, 0)
INSERT [dbo].[BanhTrongNgay] ([MaBanhTrongNgay], [SoLuong], [NgaySanXuat], [NgayHetHan], [MaSizeBanh], [TrangThaiBanhHetHan]) VALUES (29, 0, CAST(N'2019-11-14 13:54:58.483' AS DateTime), CAST(N'2019-11-28 19:17:30.000' AS DateTime), 1, 0)
INSERT [dbo].[BanhTrongNgay] ([MaBanhTrongNgay], [SoLuong], [NgaySanXuat], [NgayHetHan], [MaSizeBanh], [TrangThaiBanhHetHan]) VALUES (30, 888888, CAST(N'2019-11-14 13:58:17.403' AS DateTime), CAST(N'2019-11-27 19:17:30.000' AS DateTime), 9, 0)
INSERT [dbo].[BanhTrongNgay] ([MaBanhTrongNgay], [SoLuong], [NgaySanXuat], [NgayHetHan], [MaSizeBanh], [TrangThaiBanhHetHan]) VALUES (31, 0, CAST(N'2019-11-14 14:20:20.913' AS DateTime), CAST(N'2019-12-17 19:17:30.000' AS DateTime), 3, 0)
INSERT [dbo].[BanhTrongNgay] ([MaBanhTrongNgay], [SoLuong], [NgaySanXuat], [NgayHetHan], [MaSizeBanh], [TrangThaiBanhHetHan]) VALUES (32, 1, CAST(N'2019-11-15 14:27:10.657' AS DateTime), CAST(N'2019-11-19 19:17:30.000' AS DateTime), 10, 0)
INSERT [dbo].[BanhTrongNgay] ([MaBanhTrongNgay], [SoLuong], [NgaySanXuat], [NgayHetHan], [MaSizeBanh], [TrangThaiBanhHetHan]) VALUES (33, 2, CAST(N'2019-11-22 14:19:05.647' AS DateTime), CAST(N'2019-11-02 19:17:30.000' AS DateTime), 9, 0)
INSERT [dbo].[BanhTrongNgay] ([MaBanhTrongNgay], [SoLuong], [NgaySanXuat], [NgayHetHan], [MaSizeBanh], [TrangThaiBanhHetHan]) VALUES (34, 2, CAST(N'2019-11-22 14:19:35.547' AS DateTime), CAST(N'2019-12-11 00:00:00.000' AS DateTime), 1, 0)
INSERT [dbo].[BanhTrongNgay] ([MaBanhTrongNgay], [SoLuong], [NgaySanXuat], [NgayHetHan], [MaSizeBanh], [TrangThaiBanhHetHan]) VALUES (35, 1000, CAST(N'2019-11-29 07:09:24.307' AS DateTime), CAST(N'2019-12-11 00:00:00.000' AS DateTime), 10, 0)
INSERT [dbo].[BanhTrongNgay] ([MaBanhTrongNgay], [SoLuong], [NgaySanXuat], [NgayHetHan], [MaSizeBanh], [TrangThaiBanhHetHan]) VALUES (36, 48, CAST(N'2019-12-10 08:01:11.027' AS DateTime), CAST(N'2019-12-14 19:17:30.000' AS DateTime), 10, 0)
INSERT [dbo].[BanhTrongNgay] ([MaBanhTrongNgay], [SoLuong], [NgaySanXuat], [NgayHetHan], [MaSizeBanh], [TrangThaiBanhHetHan]) VALUES (37, 77, CAST(N'2019-12-11 08:02:28.750' AS DateTime), CAST(N'2019-12-16 19:17:30.000' AS DateTime), 9, 1)
INSERT [dbo].[BanhTrongNgay] ([MaBanhTrongNgay], [SoLuong], [NgaySanXuat], [NgayHetHan], [MaSizeBanh], [TrangThaiBanhHetHan]) VALUES (38, 112990, CAST(N'2019-12-11 11:43:36.153' AS DateTime), CAST(N'2019-12-13 19:17:30.000' AS DateTime), 15, 0)
INSERT [dbo].[BanhTrongNgay] ([MaBanhTrongNgay], [SoLuong], [NgaySanXuat], [NgayHetHan], [MaSizeBanh], [TrangThaiBanhHetHan]) VALUES (39, 50, CAST(N'2019-12-11 12:16:55.113' AS DateTime), CAST(N'2019-12-14 19:17:30.000' AS DateTime), 1, 0)
INSERT [dbo].[BanhTrongNgay] ([MaBanhTrongNgay], [SoLuong], [NgaySanXuat], [NgayHetHan], [MaSizeBanh], [TrangThaiBanhHetHan]) VALUES (40, 49, CAST(N'2019-12-11 12:21:17.400' AS DateTime), CAST(N'2019-12-30 19:17:30.000' AS DateTime), 8, 0)
INSERT [dbo].[BanhTrongNgay] ([MaBanhTrongNgay], [SoLuong], [NgaySanXuat], [NgayHetHan], [MaSizeBanh], [TrangThaiBanhHetHan]) VALUES (41, 501, CAST(N'2019-12-11 12:24:48.813' AS DateTime), CAST(N'2019-12-30 19:17:30.000' AS DateTime), 10, 0)
INSERT [dbo].[BanhTrongNgay] ([MaBanhTrongNgay], [SoLuong], [NgaySanXuat], [NgayHetHan], [MaSizeBanh], [TrangThaiBanhHetHan]) VALUES (42, 50, CAST(N'2019-12-16 14:36:53.653' AS DateTime), CAST(N'2019-12-18 19:17:30.000' AS DateTime), 19, 1)
SET IDENTITY_INSERT [dbo].[BanhTrongNgay] OFF
SET IDENTITY_INSERT [dbo].[ChiTietHoaDon] ON 

INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHoaDon], [MaBanhTrongNgay], [SoLuong], [ThanhTien]) VALUES (10, 6, 4, 2, 180000)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHoaDon], [MaBanhTrongNgay], [SoLuong], [ThanhTien]) VALUES (11, 6, 5, 1, 500000)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHoaDon], [MaBanhTrongNgay], [SoLuong], [ThanhTien]) VALUES (12, 7, 13, 1, 90000)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHoaDon], [MaBanhTrongNgay], [SoLuong], [ThanhTien]) VALUES (13, 7, 4, 1, 90000)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHoaDon], [MaBanhTrongNgay], [SoLuong], [ThanhTien]) VALUES (14, 7, 10, 1, 500000)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHoaDon], [MaBanhTrongNgay], [SoLuong], [ThanhTien]) VALUES (15, 8, 31, 1, 30000)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHoaDon], [MaBanhTrongNgay], [SoLuong], [ThanhTien]) VALUES (16, 9, 29, 1, 45000)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHoaDon], [MaBanhTrongNgay], [SoLuong], [ThanhTien]) VALUES (17, 10, 4, 5, 450000)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHoaDon], [MaBanhTrongNgay], [SoLuong], [ThanhTien]) VALUES (18, 11, 4, 5, 450000)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHoaDon], [MaBanhTrongNgay], [SoLuong], [ThanhTien]) VALUES (19, 12, 22, 1, 30000)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHoaDon], [MaBanhTrongNgay], [SoLuong], [ThanhTien]) VALUES (20, 12, 23, 1, 500000)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHoaDon], [MaBanhTrongNgay], [SoLuong], [ThanhTien]) VALUES (21, 13, 22, 1, 30000)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHoaDon], [MaBanhTrongNgay], [SoLuong], [ThanhTien]) VALUES (22, 13, 23, 1, 500000)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHoaDon], [MaBanhTrongNgay], [SoLuong], [ThanhTien]) VALUES (23, 14, 22, 1, 30000)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHoaDon], [MaBanhTrongNgay], [SoLuong], [ThanhTien]) VALUES (24, 14, 23, 6, 3000000)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHoaDon], [MaBanhTrongNgay], [SoLuong], [ThanhTien]) VALUES (25, 15, 27, 1, 7600)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHoaDon], [MaBanhTrongNgay], [SoLuong], [ThanhTien]) VALUES (26, 15, 20, 2, 15200)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHoaDon], [MaBanhTrongNgay], [SoLuong], [ThanhTien]) VALUES (27, 16, 22, 2, 60000)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHoaDon], [MaBanhTrongNgay], [SoLuong], [ThanhTien]) VALUES (28, 16, 23, 2, 1000000)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHoaDon], [MaBanhTrongNgay], [SoLuong], [ThanhTien]) VALUES (29, 17, 40, 1, 7600)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHoaDon], [MaBanhTrongNgay], [SoLuong], [ThanhTien]) VALUES (30, 18, 36, 2, 150000)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHoaDon], [MaBanhTrongNgay], [SoLuong], [ThanhTien]) VALUES (31, 18, 37, 1, 72000)
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHoaDon], [MaBanhTrongNgay], [SoLuong], [ThanhTien]) VALUES (32, 18, 38, 1, 450000)
SET IDENTITY_INSERT [dbo].[ChiTietHoaDon] OFF
SET IDENTITY_INSERT [dbo].[ChiTietPhieuDat] ON 

INSERT [dbo].[ChiTietPhieuDat] ([MaCTPD], [MaPD], [SoLuong], [ThanhTien], [MaSizeBanh]) VALUES (1, 1, 1, 45000, 1)
INSERT [dbo].[ChiTietPhieuDat] ([MaCTPD], [MaPD], [SoLuong], [ThanhTien], [MaSizeBanh]) VALUES (2, 1, 1, 90000, 2)
INSERT [dbo].[ChiTietPhieuDat] ([MaCTPD], [MaPD], [SoLuong], [ThanhTien], [MaSizeBanh]) VALUES (3, 2, 1, 45000, 1)
INSERT [dbo].[ChiTietPhieuDat] ([MaCTPD], [MaPD], [SoLuong], [ThanhTien], [MaSizeBanh]) VALUES (4, 2, 1, 90000, 2)
INSERT [dbo].[ChiTietPhieuDat] ([MaCTPD], [MaPD], [SoLuong], [ThanhTien], [MaSizeBanh]) VALUES (5, 3, 1, 90000, 2)
INSERT [dbo].[ChiTietPhieuDat] ([MaCTPD], [MaPD], [SoLuong], [ThanhTien], [MaSizeBanh]) VALUES (6, 3, 1, 45000, 1)
INSERT [dbo].[ChiTietPhieuDat] ([MaCTPD], [MaPD], [SoLuong], [ThanhTien], [MaSizeBanh]) VALUES (8, 3, 2, 1000000, 5)
INSERT [dbo].[ChiTietPhieuDat] ([MaCTPD], [MaPD], [SoLuong], [ThanhTien], [MaSizeBanh]) VALUES (9, 4, 1, 45000, 1)
INSERT [dbo].[ChiTietPhieuDat] ([MaCTPD], [MaPD], [SoLuong], [ThanhTien], [MaSizeBanh]) VALUES (10, 4, 1, 30000, 3)
INSERT [dbo].[ChiTietPhieuDat] ([MaCTPD], [MaPD], [SoLuong], [ThanhTien], [MaSizeBanh]) VALUES (11, 5, 4, 72000, 18)
INSERT [dbo].[ChiTietPhieuDat] ([MaCTPD], [MaPD], [SoLuong], [ThanhTien], [MaSizeBanh]) VALUES (12, 5, 1, 13500, 17)
INSERT [dbo].[ChiTietPhieuDat] ([MaCTPD], [MaPD], [SoLuong], [ThanhTien], [MaSizeBanh]) VALUES (13, 5, 1, 30000, 3)
INSERT [dbo].[ChiTietPhieuDat] ([MaCTPD], [MaPD], [SoLuong], [ThanhTien], [MaSizeBanh]) VALUES (14, 6, 1, 495000, 12)
INSERT [dbo].[ChiTietPhieuDat] ([MaCTPD], [MaPD], [SoLuong], [ThanhTien], [MaSizeBanh]) VALUES (15, 7, 1, 360000, 11)
SET IDENTITY_INSERT [dbo].[ChiTietPhieuDat] OFF
SET IDENTITY_INSERT [dbo].[GiamGia] ON 

INSERT [dbo].[GiamGia] ([MaGiamGia], [TenGiamGia]) VALUES (1, N'10')
INSERT [dbo].[GiamGia] ([MaGiamGia], [TenGiamGia]) VALUES (2, N'50')
INSERT [dbo].[GiamGia] ([MaGiamGia], [TenGiamGia]) VALUES (3, N'40')
INSERT [dbo].[GiamGia] ([MaGiamGia], [TenGiamGia]) VALUES (4, N'0')
SET IDENTITY_INSERT [dbo].[GiamGia] OFF
SET IDENTITY_INSERT [dbo].[HoaDon] ON 

INSERT [dbo].[HoaDon] ([MaHoaDon], [NgayLap], [MaNhanVien], [TongTien], [TrangThai], [MaKhachHang]) VALUES (1, CAST(N'2019-10-25 19:29:04.000' AS DateTime), 2, 75000, 1, 2)
INSERT [dbo].[HoaDon] ([MaHoaDon], [NgayLap], [MaNhanVien], [TongTien], [TrangThai], [MaKhachHang]) VALUES (2, CAST(N'2019-10-25 20:48:04.000' AS DateTime), 2, 75000, 1, 4)
INSERT [dbo].[HoaDon] ([MaHoaDon], [NgayLap], [MaNhanVien], [TongTien], [TrangThai], [MaKhachHang]) VALUES (3, CAST(N'2019-10-26 11:21:23.000' AS DateTime), 2, 112600, 1, 3)
INSERT [dbo].[HoaDon] ([MaHoaDon], [NgayLap], [MaNhanVien], [TongTien], [TrangThai], [MaKhachHang]) VALUES (4, CAST(N'2019-10-26 11:21:39.000' AS DateTime), 2, 375000, 1, 2)
INSERT [dbo].[HoaDon] ([MaHoaDon], [NgayLap], [MaNhanVien], [TongTien], [TrangThai], [MaKhachHang]) VALUES (6, CAST(N'2019-10-26 13:37:26.000' AS DateTime), 5, 680000, 1, NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [NgayLap], [MaNhanVien], [TongTien], [TrangThai], [MaKhachHang]) VALUES (7, CAST(N'2019-11-14 13:45:30.000' AS DateTime), 2, 680000, 1, NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [NgayLap], [MaNhanVien], [TongTien], [TrangThai], [MaKhachHang]) VALUES (8, CAST(N'2019-11-14 14:22:17.000' AS DateTime), 2, 30000, 1, NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [NgayLap], [MaNhanVien], [TongTien], [TrangThai], [MaKhachHang]) VALUES (9, CAST(N'2019-11-15 13:49:44.000' AS DateTime), 2, 45000, 1, NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [NgayLap], [MaNhanVien], [TongTien], [TrangThai], [MaKhachHang]) VALUES (10, CAST(N'2019-11-15 13:50:26.000' AS DateTime), 2, 450000, 0, NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [NgayLap], [MaNhanVien], [TongTien], [TrangThai], [MaKhachHang]) VALUES (11, CAST(N'2019-11-15 13:51:06.000' AS DateTime), 2, 0, 1, NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [NgayLap], [MaNhanVien], [TongTien], [TrangThai], [MaKhachHang]) VALUES (12, CAST(N'2019-11-20 17:37:37.000' AS DateTime), 5, 530000, 0, NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [NgayLap], [MaNhanVien], [TongTien], [TrangThai], [MaKhachHang]) VALUES (13, CAST(N'2019-11-20 17:37:56.000' AS DateTime), 5, 0, 1, NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [NgayLap], [MaNhanVien], [TongTien], [TrangThai], [MaKhachHang]) VALUES (14, CAST(N'2019-11-22 14:12:03.000' AS DateTime), 5, 3030000, 1, NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [NgayLap], [MaNhanVien], [TongTien], [TrangThai], [MaKhachHang]) VALUES (15, CAST(N'2019-11-22 14:13:05.000' AS DateTime), 5, 22800, 1, NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [NgayLap], [MaNhanVien], [TongTien], [TrangThai], [MaKhachHang]) VALUES (16, CAST(N'2019-12-11 08:20:00.000' AS DateTime), 2, 1060000, 1, NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [NgayLap], [MaNhanVien], [TongTien], [TrangThai], [MaKhachHang]) VALUES (17, CAST(N'2019-12-11 12:22:51.000' AS DateTime), 2, 7600, 1, NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [NgayLap], [MaNhanVien], [TongTien], [TrangThai], [MaKhachHang]) VALUES (18, CAST(N'2019-12-16 14:49:55.000' AS DateTime), 5, 672000, 1, NULL)
SET IDENTITY_INSERT [dbo].[HoaDon] OFF
SET IDENTITY_INSERT [dbo].[HoatDong] ON 

INSERT [dbo].[HoatDong] ([MaHoatDong], [TenHoatDong]) VALUES (8, N'Bán hàng')
INSERT [dbo].[HoatDong] ([MaHoatDong], [TenHoatDong]) VALUES (9, N'Thống kê doanh thu')
INSERT [dbo].[HoatDong] ([MaHoatDong], [TenHoatDong]) VALUES (10, N'Quản lý danh mục')
SET IDENTITY_INSERT [dbo].[HoatDong] OFF
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [SDT_KhachHang], [DiaChi_KhachHang], [Username], [Password], [TrangThai]) VALUES (1, N'Trần văn A', N'0966856211', N'Tân phú', N'AAA', N'123', 1)
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [SDT_KhachHang], [DiaChi_KhachHang], [Username], [Password], [TrangThai]) VALUES (2, N'Nguyễn Như Thương', N'0123456789', N'Tân Bình', N'123aaa', N'456', 0)
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [SDT_KhachHang], [DiaChi_KhachHang], [Username], [Password], [TrangThai]) VALUES (3, N'Nguyễn Văn Sang', N'0969068625', N'Tân Phú', N'sangnguyen07dhth@gmail.com', N'123456', 1)
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [SDT_KhachHang], [DiaChi_KhachHang], [Username], [Password], [TrangThai]) VALUES (4, N'Huỳnh Minh ', N'0123456789', N'Gò Vấp', N'456', N'102', 1)
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [SDT_KhachHang], [DiaChi_KhachHang], [Username], [Password], [TrangThai]) VALUES (5, N'thương mèo', N'0966857211', N'tây ninh', NULL, NULL, 1)
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [SDT_KhachHang], [DiaChi_KhachHang], [Username], [Password], [TrangThai]) VALUES (6, N'Văn Sang', N'0969068625', N'Quảng Nam', NULL, NULL, 1)
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [SDT_KhachHang], [DiaChi_KhachHang], [Username], [Password], [TrangThai]) VALUES (7, N'Thương', N'1234567890', N'Tân phú', NULL, NULL, 1)
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [SDT_KhachHang], [DiaChi_KhachHang], [Username], [Password], [TrangThai]) VALUES (8, N'Thuong', N'0966856211', N'Tân phú', NULL, NULL, 1)
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [SDT_KhachHang], [DiaChi_KhachHang], [Username], [Password], [TrangThai]) VALUES (9, N'Như Thương', N'0966856200', N'Tân Phú', NULL, NULL, 1)
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [SDT_KhachHang], [DiaChi_KhachHang], [Username], [Password], [TrangThai]) VALUES (10, N'Sang', N'0966856211', N'24 Nguyễn Sáng, Tây Thạnh, Tân Phú', NULL, NULL, 1)
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [SDT_KhachHang], [DiaChi_KhachHang], [Username], [Password], [TrangThai]) VALUES (11, N'Sang', N'0966856211', N'Tân Phú', NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
SET IDENTITY_INSERT [dbo].[NhanVien] ON 

INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [SDT], [DiaChi], [HinhAnh], [Username], [Password]) VALUES (2, N'Sang', N'Nam', N'0969068625', N'Quảng Nam', NULL, N'Sang', N'123456')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [SDT], [DiaChi], [HinhAnh], [Username], [Password]) VALUES (3, N'Thương', N'Nữ', N'0966856211', N'Tây Ninh', NULL, N'Thuong', N'123456')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [SDT], [DiaChi], [HinhAnh], [Username], [Password]) VALUES (5, N'No Name', N'Nam', N'111111111 ', N'asc', NULL, N'Admin', N'Admin')
SET IDENTITY_INSERT [dbo].[NhanVien] OFF
SET IDENTITY_INSERT [dbo].[NhanVien_Quyen] ON 

INSERT [dbo].[NhanVien_Quyen] ([ID_NV_Q], [MaNhanVien], [MaQuyen], [TrangThai]) VALUES (4, 2, 1, 1)
INSERT [dbo].[NhanVien_Quyen] ([ID_NV_Q], [MaNhanVien], [MaQuyen], [TrangThai]) VALUES (5, 3, 2, 1)
INSERT [dbo].[NhanVien_Quyen] ([ID_NV_Q], [MaNhanVien], [MaQuyen], [TrangThai]) VALUES (6, 5, 3, 1)
SET IDENTITY_INSERT [dbo].[NhanVien_Quyen] OFF
SET IDENTITY_INSERT [dbo].[PhieuDat] ON 

INSERT [dbo].[PhieuDat] ([MaPhieuDat], [MaNV], [NgayLap], [NgayNhan], [TongTien], [TrangThai_Online], [TrangThai_ThanhToan], [TrangThai_GiaoHang], [MaKhachHang], [GhiChu]) VALUES (1, 2, CAST(N'2019-10-25 19:30:22.000' AS DateTime), CAST(N'2019-10-25 00:00:00.000' AS DateTime), 135000, 0, 1, 0, 5, N'hehehe')
INSERT [dbo].[PhieuDat] ([MaPhieuDat], [MaNV], [NgayLap], [NgayNhan], [TongTien], [TrangThai_Online], [TrangThai_ThanhToan], [TrangThai_GiaoHang], [MaKhachHang], [GhiChu]) VALUES (2, 2, CAST(N'2019-10-25 20:49:36.000' AS DateTime), CAST(N'2019-10-26 00:00:00.000' AS DateTime), 135000, 0, 1, 1, 6, N'hihihi')
INSERT [dbo].[PhieuDat] ([MaPhieuDat], [MaNV], [NgayLap], [NgayNhan], [TongTien], [TrangThai_Online], [TrangThai_ThanhToan], [TrangThai_GiaoHang], [MaKhachHang], [GhiChu]) VALUES (3, 2, CAST(N'2019-10-26 11:22:36.000' AS DateTime), CAST(N'2019-10-28 00:00:00.000' AS DateTime), 1225000, 0, 1, 1, 7, N'okokok')
INSERT [dbo].[PhieuDat] ([MaPhieuDat], [MaNV], [NgayLap], [NgayNhan], [TongTien], [TrangThai_Online], [TrangThai_ThanhToan], [TrangThai_GiaoHang], [MaKhachHang], [GhiChu]) VALUES (4, 2, CAST(N'2019-11-14 13:47:12.000' AS DateTime), CAST(N'2019-11-22 00:00:00.000' AS DateTime), 75000, 0, 1, 1, 8, N'Bánh kem d?t okok')
INSERT [dbo].[PhieuDat] ([MaPhieuDat], [MaNV], [NgayLap], [NgayNhan], [TongTien], [TrangThai_Online], [TrangThai_ThanhToan], [TrangThai_GiaoHang], [MaKhachHang], [GhiChu]) VALUES (5, 2, CAST(N'2019-12-11 08:22:56.000' AS DateTime), CAST(N'2019-12-16 00:00:00.000' AS DateTime), 115500, 0, 1, -1, 9, N'phi?u d?t hàng')
INSERT [dbo].[PhieuDat] ([MaPhieuDat], [MaNV], [NgayLap], [NgayNhan], [TongTien], [TrangThai_Online], [TrangThai_ThanhToan], [TrangThai_GiaoHang], [MaKhachHang], [GhiChu]) VALUES (6, 5, CAST(N'2019-12-16 14:52:30.000' AS DateTime), CAST(N'2019-12-18 00:00:00.000' AS DateTime), 495000, 0, 1, 0, 10, N'Ghi  chú don d?t hàng')
INSERT [dbo].[PhieuDat] ([MaPhieuDat], [MaNV], [NgayLap], [NgayNhan], [TongTien], [TrangThai_Online], [TrangThai_ThanhToan], [TrangThai_GiaoHang], [MaKhachHang], [GhiChu]) VALUES (7, 5, CAST(N'2019-12-16 15:47:21.000' AS DateTime), CAST(N'2019-12-16 00:00:00.000' AS DateTime), 360000, 0, 1, -1, 11, NULL)
SET IDENTITY_INSERT [dbo].[PhieuDat] OFF
SET IDENTITY_INSERT [dbo].[Quyen] ON 

INSERT [dbo].[Quyen] ([MaQuyen], [TenQuyen]) VALUES (1, N'Nhân Viên Bán Hàng')
INSERT [dbo].[Quyen] ([MaQuyen], [TenQuyen]) VALUES (2, N'Nhân Viên Quản Lý')
INSERT [dbo].[Quyen] ([MaQuyen], [TenQuyen]) VALUES (3, N'Admin')
SET IDENTITY_INSERT [dbo].[Quyen] OFF
SET IDENTITY_INSERT [dbo].[Quyen_HoatDong] ON 

INSERT [dbo].[Quyen_HoatDong] ([ID_Q_HD], [MaQuyen], [MaHoatDong], [TrangThai]) VALUES (10, 1, 8, 1)
INSERT [dbo].[Quyen_HoatDong] ([ID_Q_HD], [MaQuyen], [MaHoatDong], [TrangThai]) VALUES (11, 1, 9, 1)
INSERT [dbo].[Quyen_HoatDong] ([ID_Q_HD], [MaQuyen], [MaHoatDong], [TrangThai]) VALUES (12, 2, 10, 1)
INSERT [dbo].[Quyen_HoatDong] ([ID_Q_HD], [MaQuyen], [MaHoatDong], [TrangThai]) VALUES (13, 3, 8, 1)
INSERT [dbo].[Quyen_HoatDong] ([ID_Q_HD], [MaQuyen], [MaHoatDong], [TrangThai]) VALUES (14, 3, 9, 1)
INSERT [dbo].[Quyen_HoatDong] ([ID_Q_HD], [MaQuyen], [MaHoatDong], [TrangThai]) VALUES (15, 3, 10, 1)
SET IDENTITY_INSERT [dbo].[Quyen_HoatDong] OFF
SET IDENTITY_INSERT [dbo].[Size] ON 

INSERT [dbo].[Size] ([MaSize], [TenSize]) VALUES (1, N'10cm')
INSERT [dbo].[Size] ([MaSize], [TenSize]) VALUES (2, N'15cm')
SET IDENTITY_INSERT [dbo].[Size] OFF
SET IDENTITY_INSERT [dbo].[SizeBanh] ON 

INSERT [dbo].[SizeBanh] ([MaSizeBanh], [MaBanhKem], [MaSize], [Gia]) VALUES (1, 1, 1, 50000)
INSERT [dbo].[SizeBanh] ([MaSizeBanh], [MaBanhKem], [MaSize], [Gia]) VALUES (2, 1, 2, 100000)
INSERT [dbo].[SizeBanh] ([MaSizeBanh], [MaBanhKem], [MaSize], [Gia]) VALUES (3, 2, 1, 60000)
INSERT [dbo].[SizeBanh] ([MaSizeBanh], [MaBanhKem], [MaSize], [Gia]) VALUES (5, 2, 2, 500000)
INSERT [dbo].[SizeBanh] ([MaSizeBanh], [MaBanhKem], [MaSize], [Gia]) VALUES (8, 7, 1, 250000)
INSERT [dbo].[SizeBanh] ([MaSizeBanh], [MaBanhKem], [MaSize], [Gia]) VALUES (9, 8, 2, 120000)
INSERT [dbo].[SizeBanh] ([MaSizeBanh], [MaBanhKem], [MaSize], [Gia]) VALUES (10, 7, 2, 150000)
INSERT [dbo].[SizeBanh] ([MaSizeBanh], [MaBanhKem], [MaSize], [Gia]) VALUES (11, 16, 2, 600000)
INSERT [dbo].[SizeBanh] ([MaSizeBanh], [MaBanhKem], [MaSize], [Gia]) VALUES (12, 17, 2, 990000)
INSERT [dbo].[SizeBanh] ([MaSizeBanh], [MaBanhKem], [MaSize], [Gia]) VALUES (13, 18, 1, 130000)
INSERT [dbo].[SizeBanh] ([MaSizeBanh], [MaBanhKem], [MaSize], [Gia]) VALUES (14, 19, 2, 900000)
INSERT [dbo].[SizeBanh] ([MaSizeBanh], [MaBanhKem], [MaSize], [Gia]) VALUES (15, 20, 1, 500000)
INSERT [dbo].[SizeBanh] ([MaSizeBanh], [MaBanhKem], [MaSize], [Gia]) VALUES (16, 21, 1, 999000)
INSERT [dbo].[SizeBanh] ([MaSizeBanh], [MaBanhKem], [MaSize], [Gia]) VALUES (17, 23, 1, 150000)
INSERT [dbo].[SizeBanh] ([MaSizeBanh], [MaBanhKem], [MaSize], [Gia]) VALUES (18, 24, 2, 200000)
INSERT [dbo].[SizeBanh] ([MaSizeBanh], [MaBanhKem], [MaSize], [Gia]) VALUES (19, 25, 2, 200000)
SET IDENTITY_INSERT [dbo].[SizeBanh] OFF
SET IDENTITY_INSERT [dbo].[TheLoaiBanh] ON 

INSERT [dbo].[TheLoaiBanh] ([MaLoai], [TenLoai], [HinhAnhLoai]) VALUES (1, N'Bánh socola', N'product.png')
INSERT [dbo].[TheLoaiBanh] ([MaLoai], [TenLoai], [HinhAnhLoai]) VALUES (2, N'Bánh cam', N'cake.png')
INSERT [dbo].[TheLoaiBanh] ([MaLoai], [TenLoai], [HinhAnhLoai]) VALUES (3, N'Bánh lan', N'cake.png')
INSERT [dbo].[TheLoaiBanh] ([MaLoai], [TenLoai], [HinhAnhLoai]) VALUES (4, N'Bánh kem', NULL)
SET IDENTITY_INSERT [dbo].[TheLoaiBanh] OFF
ALTER TABLE [dbo].[BanhKem]  WITH CHECK ADD  CONSTRAINT [FK_BanhKem_GiamGia] FOREIGN KEY([MaGiamGia])
REFERENCES [dbo].[GiamGia] ([MaGiamGia])
GO
ALTER TABLE [dbo].[BanhKem] CHECK CONSTRAINT [FK_BanhKem_GiamGia]
GO
ALTER TABLE [dbo].[BanhKem]  WITH CHECK ADD  CONSTRAINT [FK_BanhKem_TheLoaiBanh] FOREIGN KEY([MaLoaiBanh])
REFERENCES [dbo].[TheLoaiBanh] ([MaLoai])
GO
ALTER TABLE [dbo].[BanhKem] CHECK CONSTRAINT [FK_BanhKem_TheLoaiBanh]
GO
ALTER TABLE [dbo].[BanhTrongNgay]  WITH CHECK ADD  CONSTRAINT [FK_BanhTrongNgay_SizeBanh] FOREIGN KEY([MaSizeBanh])
REFERENCES [dbo].[SizeBanh] ([MaSizeBanh])
GO
ALTER TABLE [dbo].[BanhTrongNgay] CHECK CONSTRAINT [FK_BanhTrongNgay_SizeBanh]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_BanhTrongNgay] FOREIGN KEY([MaBanhTrongNgay])
REFERENCES [dbo].[BanhTrongNgay] ([MaBanhTrongNgay])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_BanhTrongNgay]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_HoaDon] FOREIGN KEY([MaHoaDon])
REFERENCES [dbo].[HoaDon] ([MaHoaDon])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_HoaDon]
GO
ALTER TABLE [dbo].[ChiTietPhieuDat]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuDat_PhieuDat] FOREIGN KEY([MaPD])
REFERENCES [dbo].[PhieuDat] ([MaPhieuDat])
GO
ALTER TABLE [dbo].[ChiTietPhieuDat] CHECK CONSTRAINT [FK_ChiTietPhieuDat_PhieuDat]
GO
ALTER TABLE [dbo].[ChiTietPhieuDat]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuDat_SizeBanh] FOREIGN KEY([MaSizeBanh])
REFERENCES [dbo].[SizeBanh] ([MaSizeBanh])
GO
ALTER TABLE [dbo].[ChiTietPhieuDat] CHECK CONSTRAINT [FK_ChiTietPhieuDat_SizeBanh]
GO
ALTER TABLE [dbo].[DoanhThu]  WITH CHECK ADD  CONSTRAINT [FK_DoanhThu_HoaDon] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaHoaDon])
GO
ALTER TABLE [dbo].[DoanhThu] CHECK CONSTRAINT [FK_DoanhThu_HoaDon]
GO
ALTER TABLE [dbo].[DoanhThu]  WITH CHECK ADD  CONSTRAINT [FK_DoanhThu_PhieuDat] FOREIGN KEY([MaPD])
REFERENCES [dbo].[PhieuDat] ([MaPhieuDat])
GO
ALTER TABLE [dbo].[DoanhThu] CHECK CONSTRAINT [FK_DoanhThu_PhieuDat]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhachHang] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[KhachHang] ([MaKhachHang])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_KhachHang]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_NhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_NhanVien]
GO
ALTER TABLE [dbo].[NhanVien_Quyen]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_Quyen_NhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[NhanVien_Quyen] CHECK CONSTRAINT [FK_NhanVien_Quyen_NhanVien]
GO
ALTER TABLE [dbo].[NhanVien_Quyen]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_Quyen_Quyen] FOREIGN KEY([MaQuyen])
REFERENCES [dbo].[Quyen] ([MaQuyen])
GO
ALTER TABLE [dbo].[NhanVien_Quyen] CHECK CONSTRAINT [FK_NhanVien_Quyen_Quyen]
GO
ALTER TABLE [dbo].[PhieuDat]  WITH CHECK ADD  CONSTRAINT [FK_PhieuDat_KhachHang] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[KhachHang] ([MaKhachHang])
GO
ALTER TABLE [dbo].[PhieuDat] CHECK CONSTRAINT [FK_PhieuDat_KhachHang]
GO
ALTER TABLE [dbo].[PhieuDat]  WITH CHECK ADD  CONSTRAINT [FK_PhieuDat_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[PhieuDat] CHECK CONSTRAINT [FK_PhieuDat_NhanVien]
GO
ALTER TABLE [dbo].[Quyen_HoatDong]  WITH CHECK ADD  CONSTRAINT [FK_Quyen_HoatDong_HoatDong] FOREIGN KEY([MaHoatDong])
REFERENCES [dbo].[HoatDong] ([MaHoatDong])
GO
ALTER TABLE [dbo].[Quyen_HoatDong] CHECK CONSTRAINT [FK_Quyen_HoatDong_HoatDong]
GO
ALTER TABLE [dbo].[Quyen_HoatDong]  WITH CHECK ADD  CONSTRAINT [FK_Quyen_HoatDong_Quyen] FOREIGN KEY([MaQuyen])
REFERENCES [dbo].[Quyen] ([MaQuyen])
GO
ALTER TABLE [dbo].[Quyen_HoatDong] CHECK CONSTRAINT [FK_Quyen_HoatDong_Quyen]
GO
ALTER TABLE [dbo].[SizeBanh]  WITH CHECK ADD  CONSTRAINT [FK_SizeBanh_BanhKem] FOREIGN KEY([MaBanhKem])
REFERENCES [dbo].[BanhKem] ([MaBanhKem])
GO
ALTER TABLE [dbo].[SizeBanh] CHECK CONSTRAINT [FK_SizeBanh_BanhKem]
GO
ALTER TABLE [dbo].[SizeBanh]  WITH CHECK ADD  CONSTRAINT [FK_SizeBanh_Size] FOREIGN KEY([MaSize])
REFERENCES [dbo].[Size] ([MaSize])
GO
ALTER TABLE [dbo].[SizeBanh] CHECK CONSTRAINT [FK_SizeBanh_Size]
GO
USE [master]
GO
ALTER DATABASE [QLTiemBanhKem] SET  READ_WRITE 
GO
