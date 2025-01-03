USE [master]
GO

CREATE LOGIN [admin] WITH PASSWORD='123456'
ALTER SERVER ROLE sysadmin ADD MEMBER [admin]
GO

CREATE DATABASE[QLMoToStore]
GO

CREATE LOGIN NV00001 WITH PASSWORD='8B4B0C', DEFAULT_DATABASE=[QLMoToStore], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO

CREATE LOGIN NV00002 WITH PASSWORD='EDBB48', DEFAULT_DATABASE=[QLMoToStore], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO

CREATE LOGIN NV00003 WITH PASSWORD='06E588', DEFAULT_DATABASE=[QLMoToStore], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO

CREATE LOGIN NV00004 WITH PASSWORD='691283', DEFAULT_DATABASE=[QLMoToStore], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO

CREATE LOGIN NV00005 WITH PASSWORD='22FF1F', DEFAULT_DATABASE=[QLMoToStore], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO

CREATE LOGIN NV00006 WITH PASSWORD='DB9D21', DEFAULT_DATABASE=[QLMoToStore], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO

CREATE LOGIN NV00007 WITH PASSWORD='480E5B', DEFAULT_DATABASE=[QLMoToStore], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO

CREATE LOGIN NV00008 WITH PASSWORD='6D9F86', DEFAULT_DATABASE=[QLMoToStore], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO

CREATE LOGIN NV00009 WITH PASSWORD='9ACF5E', DEFAULT_DATABASE=[QLMoToStore], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO

CREATE LOGIN NV00010 WITH PASSWORD='E8941B', DEFAULT_DATABASE=[QLMoToStore], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO

CREATE LOGIN NV00011 WITH PASSWORD='FFC47B', DEFAULT_DATABASE=[QLMoToStore], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO

CREATE LOGIN NV00012 WITH PASSWORD='15B6B6', DEFAULT_DATABASE=[QLMoToStore], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO

CREATE LOGIN NV00013 WITH PASSWORD='3D65C0', DEFAULT_DATABASE=[QLMoToStore], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO

CREATE LOGIN NV00014 WITH PASSWORD='767D0F', DEFAULT_DATABASE=[QLMoToStore], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO

CREATE LOGIN NV00015 WITH PASSWORD='6993F8', DEFAULT_DATABASE=[QLMoToStore], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO

CREATE LOGIN NV00016 WITH PASSWORD='6993F8', DEFAULT_DATABASE=[QLMoToStore], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO

CREATE LOGIN NV00017 WITH PASSWORD='699CFD', DEFAULT_DATABASE=[QLMoToStore], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO

USE [QLMoToStore]
GO
-- Role nhân viên kho
CREATE ROLE role_NhanVien_KhoHang
GO
-- Role nhân viên bảo dưỡng
CREATE ROLE role_NhanVien_BaoDuong
GO

-- Role nhân viên thu ngân
CREATE ROLE role_NhanVien_ThuNgan
GO

-- Role nhân viên tư vấn
CREATE ROLE role_NhanVien_TuVan
GO

/****** Object:  User [NV00001]    Script Date: 5/8/2023 1:55:54 AM ******/
CREATE USER [NV00001] FOR LOGIN [NV00001] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [NV00002]    Script Date: 5/8/2023 1:55:54 AM ******/
CREATE USER [NV00002] FOR LOGIN [NV00002] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [NV00003]    Script Date: 5/8/2023 1:55:54 AM ******/
CREATE USER [NV00003] FOR LOGIN [NV00003] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [NV00004]    Script Date: 5/8/2023 1:55:54 AM ******/
CREATE USER [NV00004] FOR LOGIN [NV00004] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [NV00005]    Script Date: 5/8/2023 1:55:54 AM ******/
CREATE USER [NV00005] FOR LOGIN [NV00005] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [NV00006]    Script Date: 5/8/2023 1:55:54 AM ******/
CREATE USER [NV00006] FOR LOGIN [NV00006] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [NV00007]    Script Date: 5/8/2023 1:55:54 AM ******/
CREATE USER [NV00007] FOR LOGIN [NV00007] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [NV00008]    Script Date: 5/8/2023 1:55:54 AM ******/
CREATE USER [NV00008] FOR LOGIN [NV00008] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [NV00009]    Script Date: 5/8/2023 1:55:54 AM ******/
CREATE USER [NV00009] FOR LOGIN [NV00009] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [NV00010]    Script Date: 5/8/2023 1:55:54 AM ******/
CREATE USER [NV00010] FOR LOGIN [NV00010] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [NV00011]    Script Date: 5/8/2023 1:55:54 AM ******/
CREATE USER [NV00011] FOR LOGIN [NV00011] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [NV00012]    Script Date: 5/8/2023 1:55:54 AM ******/
CREATE USER [NV00012] FOR LOGIN [NV00012] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [NV00013]    Script Date: 5/8/2023 1:55:54 AM ******/
CREATE USER [NV00013] FOR LOGIN [NV00013] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [NV00014]    Script Date: 5/8/2023 1:55:54 AM ******/
CREATE USER [NV00014] FOR LOGIN [NV00014] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [NV00015]    Script Date: 5/8/2023 1:55:54 AM ******/
CREATE USER [NV00015] FOR LOGIN [NV00015] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [NV00016]    Script Date: 5/8/2023 1:55:54 AM ******/
CREATE USER [NV00016] FOR LOGIN [NV00016] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [NV00017]    Script Date: 5/8/2023 1:55:54 AM ******/
CREATE USER [NV00017] FOR LOGIN [NV00017] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [role_NhanVien_ThuNgan] ADD MEMBER [NV00006]
GO
ALTER ROLE [role_NhanVien_BaoDuong] ADD MEMBER [NV00007]
GO
ALTER ROLE [role_NhanVien_KhoHang] ADD MEMBER [NV00008]
GO
ALTER ROLE [role_NhanVien_TuVan] ADD MEMBER [NV00009]
GO
ALTER ROLE [role_NhanVien_ThuNgan] ADD MEMBER [NV00010]
GO
ALTER ROLE [role_NhanVien_BaoDuong] ADD MEMBER [NV00011]
GO
ALTER ROLE [role_NhanVien_KhoHang] ADD MEMBER [NV00012]
GO
ALTER ROLE [role_NhanVien_TuVan] ADD MEMBER [NV00013]
GO
ALTER ROLE [role_NhanVien_ThuNgan] ADD MEMBER [NV00014]
GO
ALTER ROLE [role_NhanVien_BaoDuong] ADD MEMBER [NV00015]
GO
ALTER ROLE [role_NhanVien_KhoHang] ADD MEMBER [NV00016]
GO
ALTER ROLE [role_NhanVien_TuVan] ADD MEMBER [NV00017]
GO
/****** Object:  UserDefinedFunction [dbo].[fn_CheckChucVu]    Script Date: 5/8/2023 1:55:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fn_CheckChucVu]( 
@ChucVu NVARCHAR(50),
@MaNV  NVARCHAR(11)
)
RETURNS	INT
AS
BEGIN
    RETURN IIF (EXISTS((SELECT 1 FROM Nhan_Vien WHERE ChucVu = @ChucVu AND MaNV = @MaNV AND Nhan_Vien.TinhTrangLamViec=1)),1,0)
END
GO
/****** Object:  UserDefinedFunction [dbo].[fn_CheckSoLuongQuanLyChiNhanh]    Script Date: 5/8/2023 1:55:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fn_CheckSoLuongQuanLyChiNhanh]()
RETURNS INT
AS
BEGIN 
	IF (EXISTS(SELECT 1 FROM Nhan_Vien JOIN Chi_Nhanh on Nhan_Vien.MaCN=Chi_Nhanh.MaCN WHERE Nhan_Vien.ChucVu=N'Nhân viên quản lý' AND Nhan_Vien.TinhTrangLamViec=1 GROUP BY Chi_Nhanh.MaCN HAVING COUNT(*)>1))
		RETURN 0
	RETURN 1
END;
GO
/****** Object:  UserDefinedFunction [dbo].[fn_MaHoaDonTuDong]    Script Date: 5/8/2023 1:55:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fn_MaHoaDonTuDong]()-- hàm sinh mã hoá đơn tự động
RETURNS NVARCHAR(11)
AS
BEGIN
    DECLARE @NextID NVARCHAR(11), @LastID INT
    SELECT @LastID =  ISNULL(MAX(CAST(SUBSTRING(MaHD, 3,LEN(MaHD)-2) AS INT)),0) FROM Hoa_Don -- lấy số của hoá đơn mới nhất
    IF @LastID <= 999999
        SET @NextID = 'HD' + RIGHT('00000' + CAST(ISNULL(@LastID, 0) + 1 AS NVARCHAR), 6)
    ELSE
        SET @NextID = 'HD' + CAST(ISNULL(@LastID, 0) + 1 AS NVARCHAR)
	RETURN @NextID
END
GO
/****** Object:  UserDefinedFunction [dbo].[fn_MaKhachHangTuDong]    Script Date: 5/8/2023 1:55:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fn_MaKhachHangTuDong]()-- hàm sinh mã khách hàng tự động
RETURNS NVARCHAR(11)
AS
BEGIN
    DECLARE @NextID NVARCHAR(11), @LastID INT
    SELECT @LastID =  ISNULL(MAX(CAST(SUBSTRING(MaKH, 3,LEN(MaKH)-2) AS INT)),0) FROM Khach_Hang -- lấy số của khách hàng mới nhất
    IF @LastID <= 999999
        SET @NextID = 'KH' + RIGHT('00000' + CAST(ISNULL(@LastID, 0) + 1 AS NVARCHAR), 6)
    ELSE
        SET @NextID = 'KH' + CAST(ISNULL(@LastID, 0) + 1 AS NVARCHAR)
	RETURN @NextID
END
GO
/****** Object:  UserDefinedFunction [dbo].[fn_MaNhanVienTuDong]    Script Date: 5/8/2023 1:55:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fn_MaNhanVienTuDong]()-- hàm sinh mã hoá đơn tự động
RETURNS NVARCHAR(11)
AS
BEGIN
	DECLARE @NextID NVARCHAR(11), @LastID INT
	SELECT	@LastID = ISNULL(MAX(CAST(SUBSTRING(MaNV, 3,LEN(MaNV)-2) AS INT)),0 )FROM Nhan_Vien -- lấy số nhân viên có mã số cao nhất
	IF @LastID <= 99999
        SET @NextID = 'NV' + RIGHT('0000' + CAST(ISNULL(@LastID, 0) + 1 AS NVARCHAR), 5)
    ELSE
        SET @NextID = 'NV' + CAST(ISNULL(@LastID, 0) + 1 AS NVARCHAR)
	RETURN @NextID
END
GO
/****** Object:  UserDefinedFunction [dbo].[fn_MaPhieuNhapTuDong]    Script Date: 5/8/2023 1:55:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fn_MaPhieuNhapTuDong]()-- hàm sinh mã hoá đơn tự động
RETURNS NVARCHAR(11)
AS
BEGIN
	DECLARE @NextID NVARCHAR(11), @LastID INT
    SELECT @LastID =  ISNULL(MAX(CAST(SUBSTRING(MaPN, 3,LEN(MaPN)-2) AS INT)),0) FROM Phieu_Nhap -- lấy số của phiếu nhập gần đây nhất
     IF @LastID <= 999999
        SET @NextID = 'PN' + RIGHT('00000' + CAST(ISNULL(@LastID, 0) + 1 AS NVARCHAR), 6)
    ELSE
        SET @NextID = 'PN' + CAST(ISNULL(@LastID, 0) + 1 AS NVARCHAR)
    RETURN @NextID
END

GO
/****** Object:  Table [dbo].[Khach_Hang]    Script Date: 5/8/2023 1:55:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Khach_Hang](
	[MaKH] [nvarchar](11) NOT NULL,
	[TenKH] [nvarchar](40) NOT NULL,
	[SDT] [nvarchar](11) NULL,
	[GioiTinh] [nvarchar](5) NULL,
	[CCCD] [nvarchar](13) NULL,
	[DiaChi] [nvarchar](75) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_DSKhachHang]    Script Date: 5/8/2023 1:55:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_DSKhachHang]
AS
	SELECT * 
	FROM Khach_Hang
GO
/****** Object:  UserDefinedFunction [dbo].[fn_TimKhachHangTheoCCCD]    Script Date: 5/8/2023 1:55:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fn_TimKhachHangTheoCCCD]
(
    @CCCD nvarchar(13)
)
RETURNS TABLE
AS
RETURN
(
    SELECT * FROM vw_DSKhachHang
    WHERE CCCD = @CCCD
)
GO
/****** Object:  Table [dbo].[Chi_Nhanh]    Script Date: 5/8/2023 1:55:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chi_Nhanh](
	[MaCN] [nvarchar](11) NOT NULL,
	[DiaChi] [nvarchar](75) NOT NULL,
	[TenCN] [nvarchar](40) NOT NULL,
	[MaNQL] [nvarchar](11) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_DSChiNhanh]    Script Date: 5/8/2023 1:55:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_DSChiNhanh]
AS 
SELECT Chi_Nhanh.MaCN,Chi_Nhanh.TenCN,Chi_Nhanh.DiaChi FROM Chi_Nhanh
GO
/****** Object:  Table [dbo].[Mat_Hang]    Script Date: 5/8/2023 1:55:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mat_Hang](
	[MaMH] [nvarchar](11) NOT NULL,
	[HSX] [nvarchar](max) NULL,
	[TenMH] [nvarchar](max) NULL,
	[DonGia] [money] NULL,
	[GiaNhap] [money] NULL,
	[HinhAnh] [image] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[XE]    Script Date: 5/8/2023 1:55:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XE](
	[MaXe] [nvarchar](11) NOT NULL,
	[LoaiXe] [nvarchar](max) NULL,
	[MauSac] [nvarchar](max) NULL,
	[KhoiLuongBanThan] [nvarchar](max) NULL,
	[DxRxC] [nvarchar](max) NULL,
	[KhoangCachTrucBanhXe] [nvarchar](max) NULL,
	[DoCaoYen] [nvarchar](max) NULL,
	[KhoangSangGamXe] [nvarchar](max) NULL,
	[DungTichBinhXang] [nvarchar](max) NULL,
	[KichCoLopTruoc] [nvarchar](max) NULL,
	[KichCoLopSau] [nvarchar](max) NULL,
	[PhuocTruoc] [nvarchar](max) NULL,
	[PhuocSau] [nvarchar](max) NULL,
	[LoaiDongCo] [nvarchar](max) NULL,
	[CongSuatToiDa] [nvarchar](max) NULL,
	[DungTichNhotMay] [nvarchar](max) NULL,
	[LoaiTruyenDong] [nvarchar](max) NULL,
	[HeThongKhoiDong] [nvarchar](max) NULL,
	[MomentCucDai] [nvarchar](max) NULL,
	[DungTichXiLanh] [nvarchar](max) NULL,
	[DuongKinhXHanhTrinhPitTong] [nvarchar](max) NULL,
	[TySoNen] [nvarchar](max) NULL,
	[DongCoCongNghe] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaXe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_DSXe]    Script Date: 5/8/2023 1:55:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_DSXe]
AS 
	SELECT Mat_Hang.MaMH,Mat_Hang.HinhAnh,Mat_Hang.TenMH, Mat_Hang.HSX, Mat_Hang.DonGia, Mat_Hang.GiaNhap, XE.LoaiXe, XE.MauSac, XE.KhoiLuongBanThan, XE.DxRxC, XE.KhoangCachTrucBanhXe, XE.DoCaoYen, XE.KhoangSangGamXe, XE.DungTichBinhXang, XE.KichCoLopTruoc, XE.KichCoLopSau, XE.PhuocTruoc, XE.PhuocSau, XE.LoaiDongCo, XE.CongSuatToiDa, XE.DungTichNhotMay, XE.LoaiTruyenDong, XE.HeThongKhoiDong, XE.MomentCucDai, XE.DungTichXiLanh, XE.DuongKinhXHanhTrinhPitTong, XE.TySoNen, XE.DongCoCongNghe
	FROM XE JOIN Mat_Hang ON MaXe = Mat_Hang.MaMH
GO
/****** Object:  Table [dbo].[Phu_Tung]    Script Date: 5/8/2023 1:55:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phu_Tung](
	[MaPT] [nvarchar](11) NOT NULL,
	[ChatLuong] [nvarchar](max) NULL,
	[LoaiPT] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_DSPhuTung]    Script Date: 5/8/2023 1:55:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_DSPhuTung]
AS 
	SELECT MaMH,Mat_Hang.HinhAnh,Mat_Hang.TenMH, Mat_Hang.HSX, Mat_Hang.DonGia,Mat_Hang.GiaNhap,Phu_Tung.LoaiPT,Phu_Tung.ChatLuong FROM Phu_Tung JOIN Mat_Hang ON MaPT = MaMH
GO
/****** Object:  UserDefinedFunction [dbo].[fn_DSPhuTung]    Script Date: 5/8/2023 1:55:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fn_DSPhuTung]
(
    @TenPT nvarchar(40),
    @HSX nvarchar(30),
    @ChatLuong nvarchar(30),
    @LoaiPT nvarchar(100)
)
RETURNS TABLE
AS RETURN
(

    
    SELECT * FROM vw_DSPhuTung
    WHERE (@TenPT = N'' OR TenMH = @TenPT)
        AND (@HSX = N'' OR HSX = @HSX)
        AND (@ChatLuong = N'' OR ChatLuong = @ChatLuong)
        AND (@LoaiPT = N'' OR LoaiPT = @LoaiPT)
)
GO
/****** Object:  Table [dbo].[Bao_Duong]    Script Date: 5/8/2023 1:55:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bao_Duong](
	[MaBD] [nvarchar](11) NOT NULL,
	[TenBD] [nvarchar](30) NULL,
	[PhiBD] [money] NULL,
	[ThongTinBaoDuong] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_DSBaoDuong]    Script Date: 5/8/2023 1:55:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_DSBaoDuong]
AS
	SELECT * 
	FROM Bao_Duong
GO
/****** Object:  UserDefinedFunction [dbo].[fn_DSBaoDuong]    Script Date: 5/8/2023 1:55:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fn_DSBaoDuong]
(
	@TenBD nvarchar(30)
)
RETURNS TABLE
AS RETURN
(
	SELECT * 
	FROM vw_DSBaoDuong
	WHERE TenBD LIKE '%' + @TenBD + '%'
)
GO
/****** Object:  UserDefinedFunction [dbo].[fn_DSXe]    Script Date: 5/8/2023 1:55:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fn_DSXe]
(
	@LoaiXe NVARCHAR(MAX)
)
RETURNS TABLE
RETURN 
(
	SELECT*
	FROM vw_DSXe
	WHERE LoaiXe=@LoaiXe
)
GO
/****** Object:  UserDefinedFunction [dbo].[fn_TimKhachHangTheoSĐT]    Script Date: 5/8/2023 1:55:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create FUNCTION [dbo].[fn_TimKhachHangTheoSĐT]
(
    @SDT nvarchar(11)
)
RETURNS TABLE
AS
RETURN
(
    SELECT * FROM vw_DSKhachHang
    WHERE SDT = @SDT
)
GO
/****** Object:  Table [dbo].[Nhan_Vien]    Script Date: 5/8/2023 1:55:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nhan_Vien](
	[MaNV] [nvarchar](11) NOT NULL,
	[TenNV] [nvarchar](40) NULL,
	[NgaySinh] [date] NULL,
	[DiaChi] [nvarchar](75) NULL,
	[SDT] [nvarchar](11) NULL,
	[GioiTinh] [nvarchar](4) NULL,
	[CCCD] [nvarchar](13) NULL,
	[ChucVu] [nvarchar](50) NULL,
	[MaCN] [nvarchar](11) NULL,
	[TinhTrangLamViec] [bit] NULL,
	[Luong] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[fn_LayThongTinNhanVien]    Script Date: 5/8/2023 1:55:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION  [dbo].[fn_LayThongTinNhanVien]
(
	@MaNV NVARCHAR(11)
)
-- WITH ENCRYPTION, SCHEMABINDING, EXECUTE AS CALLER|SELF|OWNER|USER
RETURNS TABLE
AS RETURN
	(
	SELECT MaNV, TenNV, NgaySinh, Nhan_Vien.DiaChi, SDT, GioiTinh, CCCD, ChucVu,Chi_Nhanh.TenCN, Luong
	FROM Nhan_Vien, Chi_Nhanh
	WHERE Chi_Nhanh.MaCN=Nhan_Vien.MaCN AND Nhan_Vien.TinhTrangLamViec=1 AND Nhan_Vien.MaNV = @MaNV
	)
GO
/****** Object:  Table [dbo].[Nha_Cung_Cap]    Script Date: 5/8/2023 1:55:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nha_Cung_Cap](
	[MaNCC] [nvarchar](11) NOT NULL,
	[DiaChi] [nvarchar](100) NOT NULL,
	[TenNCC] [nvarchar](100) NOT NULL,
	[SDT] [nvarchar](11) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_DSNhaCungCap]    Script Date: 5/8/2023 1:55:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_DSNhaCungCap]
AS 
SELECT Nha_Cung_Cap.MaNCC
	  ,Nha_Cung_Cap.TenNCC, Nha_Cung_Cap.DiaChi, Nha_Cung_Cap.SDT FROM Nha_Cung_Cap
GO
/****** Object:  UserDefinedFunction [dbo].[fn_ThongTinNCC]    Script Date: 5/8/2023 1:55:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fn_ThongTinNCC](
@MaNCC NVARCHAR(11)
)
RETURNS TABLE
AS 
 RETURN (SELECT * FROM vw_DSNhaCungCap WHERE vw_DSNhaCungCap.MaNCC=@MaNCC)
GO
/****** Object:  Table [dbo].[Phieu_Nhap]    Script Date: 5/8/2023 1:55:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phieu_Nhap](
	[MaPN] [nvarchar](11) NOT NULL,
	[NgayNhap] [date] NULL,
	[ThanhTien] [money] NULL,
	[MaNVKho] [nvarchar](11) NULL,
	[MaNCC] [nvarchar](11) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_DSPhieuNhap]    Script Date: 5/8/2023 1:55:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE VIEW [dbo].[vw_DSPhieuNhap]
AS
	SELECT Phieu_Nhap.MaPN, Nha_Cung_Cap.MaNCC,  Nha_Cung_Cap.TenNCC, Nha_Cung_Cap.SDT,Nha_Cung_Cap.DiaChi, Nhan_Vien.TenNV, Nhan_Vien.MaNV,Phieu_Nhap.NgayNhap, Phieu_Nhap.ThanhTien , Chi_Nhanh.TenCN
    
	FROM Phieu_Nhap
	INNER JOIN Nha_Cung_Cap ON Phieu_Nhap.MaNCC = Nha_Cung_Cap.MaNCC
	INNER JOIN Nhan_Vien ON Phieu_Nhap.MaNVKho = Nhan_Vien.MaNV
	INNER JOIN Chi_Nhanh ON Nhan_Vien.MaCN=Chi_Nhanh.MaCN
GO
/****** Object:  UserDefinedFunction [dbo].[fn_DSPhieuNhap]    Script Date: 5/8/2023 1:55:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fn_DSPhieuNhap]
(
    @MaNV NVARCHAR(11),
	@TenNV NVARCHAR(40),
	@TenNCC NVARCHAR(40),
	@SDT NVARCHAR(11),
	@TuNgay DATE,
	@DenNgay DATE
)
RETURNS TABLE
AS RETURN
(
	SELECT * FROM vw_DSPhieuNhap
	WHERE (MaNV = CASE WHEN @MaNV = N'' THEN MaNV ELSE @MaNV END)
    AND (TenNV = CASE WHEN @TenNV = N'' THEN TenNV ELSE @TenNV END)
    AND (TenNCC = CASE WHEN @TenNCC= N'' THEN TenNCC ELSE @TenNCC END)
    AND (SDT = CASE WHEN @SDT = N'' THEN SDT ELSE @SDT END)
    AND (NgayNhap >= CASE WHEN @TuNgay IS NULL THEN NgayNhap ELSE @TuNgay END)
    AND (NgayNhap <= CASE WHEN @DenNgay IS NULL THEN NgayNhap ELSE @DenNgay END)
)
GO
/****** Object:  Table [dbo].[Hoa_Don]    Script Date: 5/8/2023 1:55:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hoa_Don](
	[MaHD] [nvarchar](11) NOT NULL,
	[NgayLap] [date] NOT NULL,
	[ThanhTien] [money] NULL,
	[MaNVThuNgan] [nvarchar](11) NULL,
	[MaKH] [nvarchar](11) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_DSHoaDon]    Script Date: 5/8/2023 1:55:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_DSHoaDon]
AS
	SELECT Hoa_Don.MaHD,Khach_Hang.MaKH,Khach_Hang.TenKH, Khach_Hang.SDT,Khach_Hang.CCCD,Khach_Hang.DiaChi, Nhan_Vien.TenNV, Nhan_Vien.MaNV, Hoa_Don.NgayLap, Hoa_Don.ThanhTien,Chi_Nhanh.TenCN
	FROM Hoa_Don
	INNER JOIN Khach_Hang ON Hoa_Don.MaKH = Khach_Hang.MaKH
	INNER JOIN Nhan_Vien ON Hoa_Don.MaNVThuNgan = Nhan_Vien.MaNV
	INNER JOIN Chi_Nhanh ON Nhan_Vien.MaCN=Chi_Nhanh.MaCN
GO
/****** Object:  Table [dbo].[Chi_Tiet_Phieu_Nhap]    Script Date: 5/8/2023 1:55:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chi_Tiet_Phieu_Nhap](
	[MaPN] [nvarchar](11) NOT NULL,
	[MaMH] [nvarchar](11) NOT NULL,
	[SoLuong] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC,
	[MaMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[fn_XemChiTietPhieuNhapXe]    Script Date: 5/8/2023 1:55:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fn_XemChiTietPhieuNhapXe](
	@MaPN NVARCHAR(11)
)
RETURNS TABLE
AS RETURN
(
	SELECT ctpn.MaMH,mh.TenMH,XE.MauSac,mh.GiaNhap,ctpn.SoLuong
	FROM Chi_Tiet_Phieu_Nhap ctpn
	JOIN Mat_Hang mh ON ctpn.MaMH = mh.MaMH
	JOIN XE ON mh.MaMH = XE.MaXe
	WHERE ctpn.MaPN=@MaPN
)
GO
/****** Object:  UserDefinedFunction [dbo].[fn_DSHoaDon]    Script Date: 5/8/2023 1:55:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fn_DSHoaDon]
(
    @MaNV NVARCHAR(11),
	@TenNV NVARCHAR(40),
	@TenKH NVARCHAR(40),
	@SDT NVARCHAR(11),
	@TuNgay DATE,
	@DenNgay DATE
)
RETURNS TABLE
AS RETURN
(
	SELECT * FROM vw_DSHoaDon 
	WHERE (MaNV = CASE WHEN @MaNV = N'' THEN MaNV ELSE @MaNV END)
    AND (TenNV = CASE WHEN @TenNV = N'' THEN TenNV ELSE @TenNV END)
    AND (TenKH = CASE WHEN @TenKH = N'' THEN TenKH ELSE @TenKH END)
    AND (SDT = CASE WHEN @SDT = N'' THEN SDT ELSE @SDT END)
    AND (NgayLap >= CASE WHEN @TuNgay IS NULL THEN NgayLap ELSE @TuNgay END)
    AND (NgayLap <= CASE WHEN @DenNgay IS NULL THEN NgayLap ELSE @DenNgay END)
)
GO
/****** Object:  UserDefinedFunction [dbo].[fn_XemChiTietPhieuNhapPhuTung]    Script Date: 5/8/2023 1:55:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fn_XemChiTietPhieuNhapPhuTung](
	@MaPN NVARCHAR(11)
)
RETURNS TABLE
AS RETURN
(
	SELECT ctpn.MaMH,mh.TenMH,Phu_Tung.LoaiPT,Phu_Tung.ChatLuong,mh.GiaNhap,ctpn.SoLuong
	FROM Chi_Tiet_Phieu_Nhap ctpn
	JOIN Mat_Hang mh ON ctpn.MaMH = mh.MaMH
	JOIN Phu_Tung ON mh.MaMH = Phu_Tung.MaPT
	WHERE ctpn.MapN=@MaPN
)
GO
/****** Object:  UserDefinedFunction [dbo].[fn_ThongTinPhieuNhap]    Script Date: 5/8/2023 1:55:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fn_ThongTinPhieuNhap]
(
    @MaPN NVARCHAR(11)
	
)
RETURNS TABLE
AS RETURN
(
	SELECT vw_DSPhieuNhap.MaPN,vw_DSPhieuNhap.TenCN, vw_DSPhieuNhap.TenNCC,vw_DSPhieuNhap.ThanhTien FROM vw_DSPhieuNhap
	WHERE vw_DSPhieuNhap.MaPN=@MaPN
)
GO
/****** Object:  UserDefinedFunction [dbo].[fn_ThongTinHoaDon]    Script Date: 5/8/2023 1:55:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fn_ThongTinHoaDon]
(
    @MaHD NVARCHAR(11)
	
)
RETURNS TABLE
AS RETURN
(
	SELECT  vw_DSHoaDon.MaHD, vw_DSHoaDon.TenCN, vw_DSHoaDon.TenKH, vw_DSHoaDon.ThanhTien FROM vw_DSHoaDon
	WHERE vw_DSHoaDon.MaHD=@MaHD
)
GO
/****** Object:  View [dbo].[vw_DSNhanVien]    Script Date: 5/8/2023 1:55:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_DSNhanVien]
AS 
	SELECT MaNV, TenNV, NgaySinh, Nhan_Vien.DiaChi, SDT, GioiTinh, CCCD, ChucVu,Chi_Nhanh.TenCN, Luong
	FROM Nhan_Vien, Chi_Nhanh
	WHERE Chi_Nhanh.MaCN=Nhan_Vien.MaCN AND Nhan_Vien.TinhTrangLamViec=1;
GO
/****** Object:  UserDefinedFunction [dbo].[fn_DSNhanVien]    Script Date: 5/8/2023 1:55:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fn_DSNhanVien]
(
	@TenCN  NVARCHAR(40),
	@ChucVu NVARCHAR(50),
    @TenNV NVARCHAR(40),
    @MaNV NVARCHAR(11)
)
RETURNS TABLE
AS RETURN
(
	SELECT *
	FROM vw_DSNhanVien
	WHERE TenCN = CASE WHEN @TenCN = N'' THEN TenCN ELSE @TenCN END
	AND ChucVu = CASE WHEN @ChucVu = N'' THEN ChucVu ELSE @ChucVu END
	AND TenNV = CASE WHEN @TenNV = N'' THEN TenNV ELSE @TenNV END
	AND MaNV = CASE WHEN @MaNV = N'' THEN MaNV ELSE @MaNV END
)
GO
/****** Object:  Table [dbo].[Chi_Tiet_Hoa_Don]    Script Date: 5/8/2023 1:55:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chi_Tiet_Hoa_Don](
	[MaHD] [nvarchar](11) NOT NULL,
	[MaMH] [nvarchar](11) NULL,
	[MaBD] [nvarchar](11) NULL,
	[SoLuong] [int] NULL,
	[MaNVBaoDuong] [nvarchar](11) NULL
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[fn_XemChiTietHoaDonXe]    Script Date: 5/8/2023 1:55:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fn_XemChiTietHoaDonXe](
	@MaHD NVARCHAR(11)
)
RETURNS TABLE
AS RETURN
(
	SELECT cthd.MaMH,mh.TenMH,XE.MauSac,mh.DonGia,cthd.SoLuong
	FROM Chi_Tiet_Hoa_Don cthd
	JOIN Mat_Hang mh ON cthd.MaMH = mh.MaMH
	JOIN XE ON mh.MaMH = XE.MaXe
	WHERE cthd.MaHD=@MaHD
)
GO
/****** Object:  UserDefinedFunction [dbo].[fn_XemChiTietHoaDonPhuTung]    Script Date: 5/8/2023 1:55:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fn_XemChiTietHoaDonPhuTung](
	@MaHD NVARCHAR(11)
)
RETURNS TABLE
AS RETURN
(
	SELECT cthd.MaMH,mh.TenMH,Phu_Tung.LoaiPT,Phu_Tung.ChatLuong,mh.DonGia,cthd.SoLuong
	FROM Chi_Tiet_Hoa_Don cthd
	JOIN Mat_Hang mh ON cthd.MaMH = mh.MaMH
	JOIN Phu_Tung ON mh.MaMH = Phu_Tung.MaPT
	WHERE cthd.MaHD=@MaHD
)
GO
/****** Object:  UserDefinedFunction [dbo].[fn_XemChiTietHoaDonBaoDuong]    Script Date: 5/8/2023 1:55:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fn_XemChiTietHoaDonBaoDuong](
	@MaHD NVARCHAR(11)
)
RETURNS TABLE
AS RETURN
(
	SELECT cthd.MaBD,Bao_Duong.TenBD,Bao_Duong.PhiBD,cthd.SoLuong,cthd.MaNVBaoDuong
	FROM Chi_Tiet_Hoa_Don cthd
	JOIN Bao_Duong ON cthd.MaBD = Bao_Duong.MaBD
	WHERE cthd.MaHD=@MaHD
)
GO
/****** Object:  Table [dbo].[Kho]    Script Date: 5/8/2023 1:55:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kho](
	[MaCN] [nvarchar](11) NOT NULL,
	[MaMH] [nvarchar](11) NOT NULL,
	[SoLuong] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCN] ASC,
	[MaMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tai_Khoan]    Script Date: 5/8/2023 1:55:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tai_Khoan](
	[MaNV] [nvarchar](11) NOT NULL,
	[TenDangNhap] [nvarchar](11) NULL,
	[MatKhau] [nvarchar](11) NULL,
	[ChucVu] [nvarchar](50) NULL,
 CONSTRAINT [PK__Tai_Khoa__2725D70A838A24EC] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Bao_Duong] ([MaBD], [TenBD], [PhiBD], [ThongTinBaoDuong]) VALUES (N'BD00001', N'Bảo trì xe', 250000.0000, N'Bảo trì xe')
INSERT [dbo].[Bao_Duong] ([MaBD], [TenBD], [PhiBD], [ThongTinBaoDuong]) VALUES (N'BD00002', N'Thay nhớt', 189000.0000, N'Thay nhớt')
INSERT [dbo].[Bao_Duong] ([MaBD], [TenBD], [PhiBD], [ThongTinBaoDuong]) VALUES (N'BD00003', N'Rửa xe', 30000.0000, N'Rửa xe')
INSERT [dbo].[Bao_Duong] ([MaBD], [TenBD], [PhiBD], [ThongTinBaoDuong]) VALUES (N'BD00004', N'Thay vỏ xe', 90000.0000, N'Thay vỏ xe')
INSERT [dbo].[Bao_Duong] ([MaBD], [TenBD], [PhiBD], [ThongTinBaoDuong]) VALUES (N'BD00005', N'Thay dàn áo', 5000000.0000, N'Thay dàn áo')
GO
INSERT [dbo].[Chi_Nhanh] ([MaCN], [DiaChi], [TenCN], [MaNQL]) VALUES (N'CN00001', N'Đà Nẵng', N'Chi nhánh Đà Nẵng', N'NV00001')
INSERT [dbo].[Chi_Nhanh] ([MaCN], [DiaChi], [TenCN], [MaNQL]) VALUES (N'CN00002', N'Hồ Chí Minh', N'Chi nhánh Hồ Chí Minh', N'NV00002')
INSERT [dbo].[Chi_Nhanh] ([MaCN], [DiaChi], [TenCN], [MaNQL]) VALUES (N'CN00003', N'Bến Tre', N'Chi nhánh Bến Tre', N'NV00003')
INSERT [dbo].[Chi_Nhanh] ([MaCN], [DiaChi], [TenCN], [MaNQL]) VALUES (N'CN00004', N'Long An', N'Chi nhánh Long An', N'NV00004')
INSERT [dbo].[Chi_Nhanh] ([MaCN], [DiaChi], [TenCN], [MaNQL]) VALUES (N'CN00005', N'Hà Nội', N'Chi nhánh Hà Nội', N'NV00005')
GO
INSERT [dbo].[Chi_Tiet_Hoa_Don] ([MaHD], [MaMH], [MaBD], [SoLuong], [MaNVBaoDuong]) VALUES (N'HD000001', N'PT00001', NULL, 4, NULL)
INSERT [dbo].[Chi_Tiet_Hoa_Don] ([MaHD], [MaMH], [MaBD], [SoLuong], [MaNVBaoDuong]) VALUES (N'HD000002', N'XE00001', NULL, 1, NULL)
INSERT [dbo].[Chi_Tiet_Hoa_Don] ([MaHD], [MaMH], [MaBD], [SoLuong], [MaNVBaoDuong]) VALUES (N'HD000002', N'PT00003', NULL, 1, NULL)
INSERT [dbo].[Chi_Tiet_Hoa_Don] ([MaHD], [MaMH], [MaBD], [SoLuong], [MaNVBaoDuong]) VALUES (N'HD000003', N'PT00001', NULL, 1, NULL)
INSERT [dbo].[Chi_Tiet_Hoa_Don] ([MaHD], [MaMH], [MaBD], [SoLuong], [MaNVBaoDuong]) VALUES (N'HD000003', N'XE00001', NULL, 1, NULL)
INSERT [dbo].[Chi_Tiet_Hoa_Don] ([MaHD], [MaMH], [MaBD], [SoLuong], [MaNVBaoDuong]) VALUES (N'HD000004', N'XE00001', NULL, 1, NULL)
INSERT [dbo].[Chi_Tiet_Hoa_Don] ([MaHD], [MaMH], [MaBD], [SoLuong], [MaNVBaoDuong]) VALUES (N'HD000004', N'XE00002', NULL, 1, NULL)
INSERT [dbo].[Chi_Tiet_Hoa_Don] ([MaHD], [MaMH], [MaBD], [SoLuong], [MaNVBaoDuong]) VALUES (N'HD000004', N'PT00003', NULL, 1, NULL)
INSERT [dbo].[Chi_Tiet_Hoa_Don] ([MaHD], [MaMH], [MaBD], [SoLuong], [MaNVBaoDuong]) VALUES (N'HD000004', N'PT00004', NULL, 1, NULL)
INSERT [dbo].[Chi_Tiet_Hoa_Don] ([MaHD], [MaMH], [MaBD], [SoLuong], [MaNVBaoDuong]) VALUES (N'HD000004', NULL, N'BD00001', 1, N'NV00007')
INSERT [dbo].[Chi_Tiet_Hoa_Don] ([MaHD], [MaMH], [MaBD], [SoLuong], [MaNVBaoDuong]) VALUES (N'HD000004', NULL, N'BD00003', 1, N'NV00007')
INSERT [dbo].[Chi_Tiet_Hoa_Don] ([MaHD], [MaMH], [MaBD], [SoLuong], [MaNVBaoDuong]) VALUES (N'HD000003', NULL, N'BD00001', 1, N'NV00007')
GO
INSERT [dbo].[Chi_Tiet_Phieu_Nhap] ([MaPN], [MaMH], [SoLuong]) VALUES (N'PN000001', N'PT00001', 10)
INSERT [dbo].[Chi_Tiet_Phieu_Nhap] ([MaPN], [MaMH], [SoLuong]) VALUES (N'PN000001', N'PT00002', 25)
INSERT [dbo].[Chi_Tiet_Phieu_Nhap] ([MaPN], [MaMH], [SoLuong]) VALUES (N'PN000001', N'PT00003', 15)
INSERT [dbo].[Chi_Tiet_Phieu_Nhap] ([MaPN], [MaMH], [SoLuong]) VALUES (N'PN000002', N'PT00001', 10)
INSERT [dbo].[Chi_Tiet_Phieu_Nhap] ([MaPN], [MaMH], [SoLuong]) VALUES (N'PN000002', N'PT00002', 10)
INSERT [dbo].[Chi_Tiet_Phieu_Nhap] ([MaPN], [MaMH], [SoLuong]) VALUES (N'PN000002', N'PT00003', 25)
INSERT [dbo].[Chi_Tiet_Phieu_Nhap] ([MaPN], [MaMH], [SoLuong]) VALUES (N'PN000003', N'XE00001', 20)
INSERT [dbo].[Chi_Tiet_Phieu_Nhap] ([MaPN], [MaMH], [SoLuong]) VALUES (N'PN000003', N'XE00002', 20)
INSERT [dbo].[Chi_Tiet_Phieu_Nhap] ([MaPN], [MaMH], [SoLuong]) VALUES (N'PN000003', N'XE00003', 20)
INSERT [dbo].[Chi_Tiet_Phieu_Nhap] ([MaPN], [MaMH], [SoLuong]) VALUES (N'PN000004', N'XE00003', 15)
INSERT [dbo].[Chi_Tiet_Phieu_Nhap] ([MaPN], [MaMH], [SoLuong]) VALUES (N'PN000004', N'XE00005', 15)
INSERT [dbo].[Chi_Tiet_Phieu_Nhap] ([MaPN], [MaMH], [SoLuong]) VALUES (N'PN000005', N'PT00002', 20)
INSERT [dbo].[Chi_Tiet_Phieu_Nhap] ([MaPN], [MaMH], [SoLuong]) VALUES (N'PN000005', N'XE00001', 10)
INSERT [dbo].[Chi_Tiet_Phieu_Nhap] ([MaPN], [MaMH], [SoLuong]) VALUES (N'PN000006', N'XE00001', 10)
INSERT [dbo].[Chi_Tiet_Phieu_Nhap] ([MaPN], [MaMH], [SoLuong]) VALUES (N'PN000006', N'XE00002', 10)
INSERT [dbo].[Chi_Tiet_Phieu_Nhap] ([MaPN], [MaMH], [SoLuong]) VALUES (N'PN000006', N'XE00003', 10)
INSERT [dbo].[Chi_Tiet_Phieu_Nhap] ([MaPN], [MaMH], [SoLuong]) VALUES (N'PN000006', N'XE00004', 10)
INSERT [dbo].[Chi_Tiet_Phieu_Nhap] ([MaPN], [MaMH], [SoLuong]) VALUES (N'PN000006', N'XE00005', 10)
INSERT [dbo].[Chi_Tiet_Phieu_Nhap] ([MaPN], [MaMH], [SoLuong]) VALUES (N'PN000006', N'XE00006', 10)
INSERT [dbo].[Chi_Tiet_Phieu_Nhap] ([MaPN], [MaMH], [SoLuong]) VALUES (N'PN000007', N'XE00001', 10)
INSERT [dbo].[Chi_Tiet_Phieu_Nhap] ([MaPN], [MaMH], [SoLuong]) VALUES (N'PN000007', N'XE00002', 10)
INSERT [dbo].[Chi_Tiet_Phieu_Nhap] ([MaPN], [MaMH], [SoLuong]) VALUES (N'PN000007', N'XE00003', 10)
INSERT [dbo].[Chi_Tiet_Phieu_Nhap] ([MaPN], [MaMH], [SoLuong]) VALUES (N'PN000007', N'XE00005', 10)
INSERT [dbo].[Chi_Tiet_Phieu_Nhap] ([MaPN], [MaMH], [SoLuong]) VALUES (N'PN000007', N'XE00006', 10)
INSERT [dbo].[Chi_Tiet_Phieu_Nhap] ([MaPN], [MaMH], [SoLuong]) VALUES (N'PN000008', N'PT00001', 10)
INSERT [dbo].[Chi_Tiet_Phieu_Nhap] ([MaPN], [MaMH], [SoLuong]) VALUES (N'PN000008', N'PT00002', 10)
INSERT [dbo].[Chi_Tiet_Phieu_Nhap] ([MaPN], [MaMH], [SoLuong]) VALUES (N'PN000008', N'PT00003', 10)
INSERT [dbo].[Chi_Tiet_Phieu_Nhap] ([MaPN], [MaMH], [SoLuong]) VALUES (N'PN000008', N'PT00004', 10)
GO
INSERT [dbo].[Hoa_Don] ([MaHD], [NgayLap], [ThanhTien], [MaNVThuNgan], [MaKH]) VALUES (N'HD000001', CAST(N'2023-05-08' AS Date), 3000000.0000, N'NV00014', N'KH000001')
INSERT [dbo].[Hoa_Don] ([MaHD], [NgayLap], [ThanhTien], [MaNVThuNgan], [MaKH]) VALUES (N'HD000002', CAST(N'2023-05-08' AS Date), 33820000.0000, N'NV00010', N'KH000007')
INSERT [dbo].[Hoa_Don] ([MaHD], [NgayLap], [ThanhTien], [MaNVThuNgan], [MaKH]) VALUES (N'HD000003', CAST(N'2023-05-08' AS Date), 34500000.0000, N'NV00014', N'KH000008')
INSERT [dbo].[Hoa_Don] ([MaHD], [NgayLap], [ThanhTien], [MaNVThuNgan], [MaKH]) VALUES (N'HD000004', CAST(N'2023-05-08' AS Date), 67830000.0000, N'NV00014', N'KH000006')
GO
INSERT [dbo].[Khach_Hang] ([MaKH], [TenKH], [SDT], [GioiTinh], [CCCD], [DiaChi]) VALUES (N'KH000001', N'Trần Trọng Nguyên', N'0985365870', N'Nam', N'847891257100', N'Hồ Chí Minh')
INSERT [dbo].[Khach_Hang] ([MaKH], [TenKH], [SDT], [GioiTinh], [CCCD], [DiaChi]) VALUES (N'KH000002', N'Nguyễn Minh Nhật', N'0985365871', N'Nam', N'847891257101', N'Hồ Chí Minh')
INSERT [dbo].[Khach_Hang] ([MaKH], [TenKH], [SDT], [GioiTinh], [CCCD], [DiaChi]) VALUES (N'KH000003', N'Nguyễn Hoàng Tuyết Nhi', N'0985365872', N'Nữ', N'847891257102', N'Hồ Chí Minh')
INSERT [dbo].[Khach_Hang] ([MaKH], [TenKH], [SDT], [GioiTinh], [CCCD], [DiaChi]) VALUES (N'KH000004', N'Nguyễn Thị Vân Anh', N'0985365874', N'Nữ', N'847891257104', N'Hồ Chí Minh')
INSERT [dbo].[Khach_Hang] ([MaKH], [TenKH], [SDT], [GioiTinh], [CCCD], [DiaChi]) VALUES (N'KH000005', N'Huỳnh Công Tú', N'0985365875', N'Nam', N'847891257105', N'Hồ Chí Minh')
INSERT [dbo].[Khach_Hang] ([MaKH], [TenKH], [SDT], [GioiTinh], [CCCD], [DiaChi]) VALUES (N'KH000006', N'Trần Cường', N'0985365876', N'Nam', N'847891257106', N'Hồ Chí Minh')
INSERT [dbo].[Khach_Hang] ([MaKH], [TenKH], [SDT], [GioiTinh], [CCCD], [DiaChi]) VALUES (N'KH000007', N'Từ Mỹ Linh', N'0985365877', N'Nữ', N'847891257107', N'Hồ Chí Minh')
INSERT [dbo].[Khach_Hang] ([MaKH], [TenKH], [SDT], [GioiTinh], [CCCD], [DiaChi]) VALUES (N'KH000008', N'Nguyễn Thanh Long', N'0985365878', N'Nam', N'847891257108', N'Hồ Chí Minh')
GO
INSERT [dbo].[Kho] ([MaCN], [MaMH], [SoLuong]) VALUES (N'CN00001', N'XE00001', 20)
INSERT [dbo].[Kho] ([MaCN], [MaMH], [SoLuong]) VALUES (N'CN00001', N'XE00002', 20)
INSERT [dbo].[Kho] ([MaCN], [MaMH], [SoLuong]) VALUES (N'CN00001', N'XE00003', 20)
INSERT [dbo].[Kho] ([MaCN], [MaMH], [SoLuong]) VALUES (N'CN00001', N'XE00004', 0)
INSERT [dbo].[Kho] ([MaCN], [MaMH], [SoLuong]) VALUES (N'CN00001', N'XE00005', 0)
INSERT [dbo].[Kho] ([MaCN], [MaMH], [SoLuong]) VALUES (N'CN00001', N'XE00006', 0)
INSERT [dbo].[Kho] ([MaCN], [MaMH], [SoLuong]) VALUES (N'CN00002', N'XE00001', 19)
INSERT [dbo].[Kho] ([MaCN], [MaMH], [SoLuong]) VALUES (N'CN00002', N'XE00002', 10)
INSERT [dbo].[Kho] ([MaCN], [MaMH], [SoLuong]) VALUES (N'CN00002', N'XE00003', 25)
INSERT [dbo].[Kho] ([MaCN], [MaMH], [SoLuong]) VALUES (N'CN00002', N'XE00004', 10)
INSERT [dbo].[Kho] ([MaCN], [MaMH], [SoLuong]) VALUES (N'CN00002', N'XE00005', 25)
INSERT [dbo].[Kho] ([MaCN], [MaMH], [SoLuong]) VALUES (N'CN00002', N'XE00006', 10)
INSERT [dbo].[Kho] ([MaCN], [MaMH], [SoLuong]) VALUES (N'CN00003', N'XE00001', 8)
INSERT [dbo].[Kho] ([MaCN], [MaMH], [SoLuong]) VALUES (N'CN00003', N'XE00002', 9)
INSERT [dbo].[Kho] ([MaCN], [MaMH], [SoLuong]) VALUES (N'CN00003', N'XE00003', 10)
INSERT [dbo].[Kho] ([MaCN], [MaMH], [SoLuong]) VALUES (N'CN00003', N'XE00004', 0)
INSERT [dbo].[Kho] ([MaCN], [MaMH], [SoLuong]) VALUES (N'CN00003', N'XE00005', 10)
INSERT [dbo].[Kho] ([MaCN], [MaMH], [SoLuong]) VALUES (N'CN00003', N'XE00006', 10)
INSERT [dbo].[Kho] ([MaCN], [MaMH], [SoLuong]) VALUES (N'CN00004', N'XE00001', 0)
INSERT [dbo].[Kho] ([MaCN], [MaMH], [SoLuong]) VALUES (N'CN00004', N'XE00002', 0)
INSERT [dbo].[Kho] ([MaCN], [MaMH], [SoLuong]) VALUES (N'CN00004', N'XE00003', 0)
INSERT [dbo].[Kho] ([MaCN], [MaMH], [SoLuong]) VALUES (N'CN00004', N'XE00004', 0)
INSERT [dbo].[Kho] ([MaCN], [MaMH], [SoLuong]) VALUES (N'CN00004', N'XE00005', 0)
INSERT [dbo].[Kho] ([MaCN], [MaMH], [SoLuong]) VALUES (N'CN00004', N'XE00006', 0)
INSERT [dbo].[Kho] ([MaCN], [MaMH], [SoLuong]) VALUES (N'CN00005', N'XE00001', 0)
INSERT [dbo].[Kho] ([MaCN], [MaMH], [SoLuong]) VALUES (N'CN00005', N'XE00002', 0)
INSERT [dbo].[Kho] ([MaCN], [MaMH], [SoLuong]) VALUES (N'CN00005', N'XE00003', 0)
INSERT [dbo].[Kho] ([MaCN], [MaMH], [SoLuong]) VALUES (N'CN00005', N'XE00004', 0)
INSERT [dbo].[Kho] ([MaCN], [MaMH], [SoLuong]) VALUES (N'CN00005', N'XE00005', 0)
INSERT [dbo].[Kho] ([MaCN], [MaMH], [SoLuong]) VALUES (N'CN00005', N'XE00006', 0)
GO
INSERT [dbo].[Mat_Hang] ([MaMH], [HSX], [TenMH], [DonGia], [GiaNhap], [HinhAnh]) VALUES (N'PT00001', N'Honda', N'Bugi NGK Iridium', 750000.0000, 625000.0000, 0xFFD8FFE000104A46494600010101006000600000FFDB004300080606070605080707070909080A0C140D0C0B0B0C1912130F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F27393D38323C2E333432FFDB0043010909090C0B0C180D0D1832211C213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232FFC00011080064006403012200021101031101FFC4001F0000010501010101010100000000000000000102030405060708090A0BFFC400B5100002010303020403050504040000017D01020300041105122131410613516107227114328191A1082342B1C11552D1F02433627282090A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101010101010000000000000102030405060708090A0BFFC400B51100020102040403040705040400010277000102031104052131061241510761711322328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728292A35363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00EA82D3C2D4A129C1290C882D2E2A6D951CF22DBC2D23F6E83D682A1173928C7761B48EBC51C7A8AE6DA77794E1CF5CB1CD38393DCD63ED4F6D659DE5F81D1657FBC3F3A5CAFF00797F3AC048E493A718EE6A68EC2E264DF182EB903283354A6DEC8C6A6028C7494CDA047A8FCE8C66A82684CC4E2F61D9D4303D7D7F1A91EC74EB46C49AA6FC75F2CD1CEFAA32FA9D37F049BF44CB9B6936D665C4B6880C96B7174E8A46EC741CFA9A82E6E2FECC46EEC424A3747920923FC9A1D448A597CE5F0CBEFD0D9C5150699A84B3598770BBB711453E730FA94CBE1297654C169DB6ACE22B90141248007526B9DD42ED6EAEB6EF2B0A742075F7ADDD63F77A4DC3E09DA99C038AF3B96FA139263BB2DED76C3F90AC2B4EDA1EE65587E6BD54AEF635DC448D88B715EE4F7AB8BA8410A810D90DDDCBB135C5BC91B1E5253F5B873FD6A33F663FF2EE7FEFEB7F8D73AAA96C7B93C339C5464AFF003676CDAB5D30C2EC41E8A829926A77CC9B4CD26DC60804E2B8BC5AE3FE3D9BF094D2892151855997FDD9C8A3DB79931C1456D1474E66728132768E829849AE6FED017EECB763FEDE0D2FDB18749EEF3FF5D41FE62A5CD3378D394745148EBE09524B68ED0655E4986F63D31D0568789AE15EFA28A264648A2C75C8C9FEB8C57091EA7346EAC279BE539E550FF4AB69AFA74BA469433658840AD8FAE71FA552A8AD639A541A9A9B5B5FF13D0B43871A5C7EE49A2A6D2421D3622A1B69191F4A2BA2C79DCECD20B4EDB4FC52D6E7CE199AD26745BCFF00AE4D5E5528E4D7AE6ACBBB47BC1FF4C5FF00957934A3E6AE5C46E8FA4C91FEEE5EA52706A224D5B2A32370C8A85D06E38E99E2B91A3E81488734D39A9B65218EA6C57322BF39A514FD86976D160721B51C9F7AA602A3907CD4D18D67A1EC5A3EC5D22D816E7CB1FCA8AE72CEF645B48941E0228FD0515E89E1599DF1214658803D49AB16F6AD3C6640C02F63EB55A687CE8F67992273F7A362A7F3AAE249EC2268D5E6914B160CEC58FDDAD59F3A937B1A175A44F73673408537491B28C9EE462B8197C0D7D1EE9A49ADA4B688B79AD139CAED0491823AF15D926B4EAFC92393FCDAB9F7D52FE4D06E208861E495CC819704A11CF1EA7FAD66E0A4F53AE8D7AD422E30D2E50B2F071D788BA81FCBB200807001245657883C27268D2B2890C8AB187CE3BB3600FD09FC2AD58DFF00886C55A0B656FB0E3E5E9D7BFF003A7378A756596349F4D172C93066461C9E0E3FCFBD13A5168D286618883493D17438F689D4F28DF9546457A29F17E9F329171E1A70F8ECBC571BAADB48FA8CD3476AD1C5337991A81C053D0572D4A1CAAE8F7309992AD2719AB5BCCB16316862C634BC726E19B7BB00DF2AE47CBF523353797E1F671E6188284C9F2D9F9218E073EA31FAD61AE229419622CA3AAF4A91A7B1665CDAB28EF873529E9B1BC9A6EEA6FE4D1B3F62D01A4C0950479FBDE71CE77E3183DB6F39AC9D6ED74FB7484D94A24DCCE1FE707001E38FA77A8CCBA7956C43286C1C7CD9E6A8B0DC303934A4D5B632E64B5E67F33AB806608CFF00B23F95156F4D83FD063F310EEEF45759E6F31D46BD7B3075B4B6728C3E6760D8FA0CD73935F6B100CA4CE7D3F7C3FC6A978B94A7892E7DF691FF007C8AB569E1A6B8B28678F5092332206C6DE991F5A89394A4D23A284A861E8C5CFAF95CA92F8835E8D4970CCBEF86AAD0F8A3508EF6169A2458C37CEDB00C0FC2B5A5F0EDF42A08D558E48032ADFE26A91D2EFDDB625FDAC849C6190FF55A56A88B55F09356BAFB8CD6F88B3DBEA77398D25B363FBBC0C1190327F9D65DF78BA5D4F503716AD25A9DDB8ED19CFCAABFD0FE75B0FE1FBA66CFFC4BDCE7B151FD052AF873500A1D34DB5901E8C8C39FC9A8729F6305430CDDD4D1930F89B53475CDD0700F5688FF008D779A3F8C52636965F62333C985694BF727D0AD725756377611096E74B48E3CE3764E33F99AD2F0C5E25C6B30462DD5581C8607A528D49735B63A2A6168FB1734F9ADFD743D31E0B727E6854FFC04533EC16720C9B68BF141527566FAD4C9F76BB0F01CD94CE91607ADA427FE0029BFD8BA6E73F6283FEFD8AD0A4A2C4FB691025B451A858E04551D0628A9A8A0CF9CF35F1A8C7885CFAC6A7F4AE83456CE8D687FE9981595E2FD32FAE75733C36CF2466351B9467A557B3D5EFF004EB38ED9F4B95846301B919E7E95CF1F766DB3D5AC955A318C1ABAF3F236EE352B266685E765D8D86F94F519F6F6AA933E9C98963963760DCEE6DBFE7FFAF5833EA36F24B23CB69731B3B163820F5CFA81EB55A4BBB092231996E13241C9881E98FF006BDAB5E789C1EC6A76FC8E9618AD6E21F2E49228821C04DDFF00D7FAFE55AB68238A158925470BC0C1E6B89FB5D83484FDACA82C0FCD19ED9F4CFAD4F61716306A314E6FA12AAC58F0C0F23DC51CF1EE274EA2E8FEE367C61FF2026FFAEAB5CCF849B6F88ADF3EF5B9E25D4ACAEF4568E0BA8A47DEA4286E6B97D22736FAA43229C11D2B9EA5BDA267B584725869464ADB9EC6AF9924FF007AAC21F96B02CAE9E44DCDD5B935A8B3944048EB5D678322ED1504736EA981A080A28A2810151E94DF2D0F55145140C89ADE13D6353F5150C9A6D93FDEB688FD545145075955BC3FA549F7AC613FF0115593C2BA34879B241F4E28A2A19BC0AB378374523FE3DD87D1CD320F09E956F70B2A4726E53C65F228A2B1EA6EBE13A1B6B1816DF68538FAD4FE44781C5145749E3C872A28E82A4A28A04145145023FFD9)
INSERT [dbo].[Mat_Hang] ([MaMH], [HSX], [TenMH], [DonGia], [GiaNhap], [HinhAnh]) VALUES (N'PT00002', N'HeatProof', N'Bugi Bạch Kim 3 Chấu', 60000.0000, 50000.0000, 0xFFD8FFE000104A46494600010101006000600000FFDB004300080606070605080707070909080A0C140D0C0B0B0C1912130F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F27393D38323C2E333432FFDB0043010909090C0B0C180D0D1832211C213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232FFC00011080064006403012200021101031101FFC4001F0000010501010101010100000000000000000102030405060708090A0BFFC400B5100002010303020403050504040000017D01020300041105122131410613516107227114328191A1082342B1C11552D1F02433627282090A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101010101010000000000000102030405060708090A0BFFC400B51100020102040403040705040400010277000102031104052131061241510761711322328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728292A35363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00B505AC5044B14481234185551C0AB0B19F4A9D61A9D63F6A4595846075A9E287A311C7A54C91679238A79F6140861000A6E327814FC1352A2628018917AD4CB10A72A548050171A23A76D14EA5E08A02E47B4669A56A6A08E3A500552BCF4A2A62A33452B0CACB0D5BB6B292E0911AE768E680A075ADDD2620B66CE780CDD7D85293B2175324E9773FF3CF3F88A89F4BBBCF1093F422AE6B47CD7082552857E5C3A90ADCE72A4F39E31F43D2A93EB8BA4F85A4BB48656943B086D98832639C0C0CF604FE3E95319394B9512E4931069B740F30353FEC5723FE583FE55CA47E2BBF4782E659655BAB98D646B4DC498FE6394504819C0EA46339AEFF004BD62DB59D223D46C49923913704E8C0E33B4FA1AB9A711AD6DE665FD9AE475824FF00BE4D27953FFCF193FEF83585ACEADE336D61FF00B36CE7B7B3062555FB3093395919DB38FF006547FC0BD6B357C53E398E458E4D36667F25646FF406C122DCBB0C81D7CCDAB8FC2A945B5707A3B1D7F972FF00CF193FEF8340497FE79B8FF809AE2DFC4BE336891E78E68B62CC7CD8ECD9727ECA1D723907F78703DC53A3F19F8AD04B65776CE8E2C32928B36DE65FB379849E7030DC7423B629F2311DA61B1CA91F85183E95CBC1A9F8CAD356F0F5C5F5E0934FD4A682328B1A70AD165838D9B836EC9CEEC7B57A45D0FF0044948FEE1A895D0D1CEEDA28CD14C648EA3D2B0F5CBEBB97561A6D823BFD96DD0C9F2A85DCDF37DE6EF835D14F1E4118E08E6B81D6D354D36F5A6370D2C6E78999149FA31C751C573E222E51B19D47A165A5D560896498AC6AC70144A18FE5B31556CD27D77C40902DF496C6C879D24B0C63CC3C0DA0051C83939E8706B28EA77920C79AAC17A02A302A5B2D6B51D3A59E4B46891E7C799F2F0D8E9C74A9C2F2D19395B5E8733776743A1EB375ABF89AF346B7312DBD9C64FDA5A03E63738C609E0F24FE154349B19BC21AF4F6DA7DCF5E375D8243AB73C80460E41C563E9DA95D6937F3DEDB41079D3E0C8CEBBB3C93C64F1D7B53EF35CBABD9E4967B4B67794A97C0383B41C719F7AECAB894D49456E87D11DE9F124D19DDA9686B28EF2DB307CFE0D8FE748B7BE10D5AEC493958AE1860ACFBA2CF4FA03C0038F4AE0AD7C43756B288EDEDC7271E5EF6607E99CD5E7F13F9BB7ED5A045291D092C0F6FFEB7E75E64255E2FDED51AAA8D1D7349E15855AD8C4FE547216004A4A862BB320EEF41C7D734B149E17B6B9867DF70A50ABC62491D9411BB079279E0FF0093CF0CFAC69F275D0DD73CFCB3718FC54D41FDA1A793816D771B0E989578FF00C7456FED1F661ED9F63D69757D2D6553E7C8AB8DDBDE6213D79C9FE62A8D878CB4DD7B58BDD2B4D6332C16CD235C0E149C8185F5EBD6BCAE696DA58DD37CF860461C67AFE3573C15716BE1ED7EE2EE6766866B668155179DC4A91FCA9A9A6F50559B95AC7A18071454E8A368A2BA4D8D2740D59F77606E1190AAB29EA08C835A34C66239A04CE65BC2B6A7FE5D231F4E2ABC9E16B61FF2EDF93B7F8D75465C77A81E6EB52E289E5472127866DC1FF5320FA486AA49E1B8874F387FC0ABB07B9E6A17B94C64E3F1A5CA83951C63786E3DD9124C0F6391FE151FF61CB19CA5DCEB8E9C7F9F41F95743378974B8A531B4F1923A9520803D73E959F378DB4249C47BDDF2402C89C0F7A2D1172A4657F64DC8C0178D8031831FF9F414EFECBBDE00BB53C939D9CF39CFF335D5C579633C11CE8C86291432B138C834BFDA9A2427F7D796C9FEF4828E541CA8E4A4D16FE58D636B85655E467357B44F0DCDFDA51CB7250C517CE0039DCDDBF2EB5D3D8DFE85A8C9E5DADE412C98CED46E6B522B6891B2B42821A8ABDC9121F9451568050314559771ACD8A8A77DA84FA0E69F28239C5796BE8D76B397D56D6EAE9DCC867967B9621FE6F9426C906171D88FFEB0D81DDADE2DC4AF1C056474196556048FAD732DE28BAB8BC5B6B6D39CE751361BCB64640CB3703A0E94BE0909A36A17C3ECF14114D1A6D3167A827D7BE08EE6B12F1E78354B86F2EE2416FADADEC659FEF46C30D8EB903D295C2C755E208756B1D1E4B9B38D64B80CA150AE739600F7F4359D159EAB77E1BBE7BD729718754046DC8C76E2B6E7F12C0B165119FD9473FD2B1EEFC4AD3A4908B7942B0C678E7F5A9D476475DE19D36D62F86D26866E52E5563B8B69660BB773167CF1ED9FD2BC8AF5FC2DA64AA8BA5DE5DAB8DC1E6B8D8076236A8F6CF5EF57A6826B991E4BA932D236E2212D1A927A92A0E371C64D644FE1D5BB74325E4C4A8000D83FCF6A94985910FD97471214B89AEC9DA19516700631D3EE9353469A22B8DBA64B29F57790FF002C0ADAB0F0CDC18D56352C070093CE2BA0B3F07CC4069368F6269B8DC57473D6B15BDDC02DB4FD39AC9D9C66E621B5D00F424E79E41AF49D28482D628E476919140323725B1DCD57B1D023B5E4B2FD00ADA4448D70A315518D807D1494550890AE7B7150BDA40E72F1AB7D6ACD348A0A29369B66DD2155FA0AA92E8766CFB8A93F8D6A9E29879A04667F645920FF0055FAD46DA459373E428F7AD42299B680319F4185DBE5618FA53A2F0FD94677329620E79AD80303A521EB40114304500C2201528CD2E28C50028CD480D4629D9A007D14DCD14AE05934DA28A1142605474514C9634D276A28A006521A28A005A776A28A004EF4868A29301474A28A2A40FFD9)
INSERT [dbo].[Mat_Hang] ([MaMH], [HSX], [TenMH], [DonGia], [GiaNhap], [HinhAnh]) VALUES (N'PT00003', N'Brisk', N'Bugi Brisk USA Chân Ngắn', 320000.0000, 280000.0000, 0xFFD8FFE000104A46494600010101006000600000FFDB004300080606070605080707070909080A0C140D0C0B0B0C1912130F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F27393D38323C2E333432FFDB0043010909090C0B0C180D0D1832211C213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232FFC00011080064006403012200021101031101FFC4001F0000010501010101010100000000000000000102030405060708090A0BFFC400B5100002010303020403050504040000017D01020300041105122131410613516107227114328191A1082342B1C11552D1F02433627282090A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101010101010000000000000102030405060708090A0BFFC400B51100020102040403040705040400010277000102031104052131061241510761711322328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728292A35363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00B505AC5044B14481234185551C0AB0B19F4A9D61A9D63F6A4595846075A9E287A311C7A54C91679238A79F6140861000A6E327814FC1352A2628018917AD4CB10A72A548050171A23A76D14EA5E08A02E47B4669A56A6A08E3A500552307A51531519A2958656586ADDB594970488D73B47340503AD6EE93105B3673C066EBEC2949D90BA99274BB9FF9E79FC4544FA5DDE78849FA115735A3E6B8412A942BF2E1D4856E7395279CF18FA1E9549F5C5D27C2D25DA432B4A1D8436CC41931CE06067B027F1F4A98C9CA5CA8972498834DBA07981A9FF62B91FF002C1FF2AE523F15DFA3C1732CB2ADD5CC6B235A6E24C7F31CA28240CE0752319CD77FA5EB16DACE911EA3624C91C89B827460719DA7D0D5CD388D6B6F332FECD723AC127FDF2693CA9FFE78C9FF007C1AC2D6756F19B6B0FF00D9B673DBD98312AAFD98499CAC8CED9C7FB2A3FE05EB59ABE29F1CC722C7269B333F92B237FA0360916E5D8640EBE66D5C7E154A2DAB83D1D8EBFCB97FE78C9FF7C1A024BFF3CDC7FC04D716FE25F19B448F3C7345B1663E6C766CB93F650EB91C83FBC381EE29D1F8CFC56825B2BBB6747161949459B6F32FD9BCC24F38186E3A11DB14F9188ED30D8E548FC28C1F4AE5E0D4FC6569AB787AE2FAF049A7EA534119458D38568B2C1C6CDC1B764E7763DABD22E87FA24A47F70D44AE868E776D14668A6324751E9587AE5F5DCBAB0D36C11DFECB6E864F9542EE6F9BEF377C1AE8A78F208C704735C0EB69AA69B7AD31B8696373C4CC8A4FD18E3A8E2B9F111728D8CEA3D0B2D2EAB044B24C56356380A250C7F2D98AAB6693EBBE204816FA4B63643CE9258631E61E06D0028E41C9CF4383594753BC9063CD560BD01518152D96B5A8E9D2CF25A3448F3E3CCF9786C74E3A54E17968C9CADAF4399BBB3A1D0F59BAD5FC4D79A35B9896DECE327ED2D01F31B9C6304F07927F0AA1A4D8CDE10D7A7B6D3EE7AF1BAEC121D5B9E40230720E2B1F4ED4AEB49BF9EF6DA083CE9F064675DD9E49E3278EBDA9F79AE5D5ECF24B3DA5B3BCA54BE01C1DA0E38CFBD7655C4A6A4A2B743E88EF4F89268CEED4B435947796D983E7F06C7F3A45BDF086AD76249CAC570C30567DD167A7D01E001C7A57056BE21BAB594476F6E3938F2F7B303F4CE6AF3F89FCDDBF6AD022948E849607B7FF005BF3AF3212AF17EF6A8D55468EB9A4F0AC2AD6C627F2A390B0025254315D990777A0E3EB9A58A4F0BDB5CC33EFB852855E31248ECA08DD83C93CF07FC9E7867D634F93AE86EB9E7E59B8C7E2A6A0FED0D3C9C0B6BB8D874C4ABC7FE3A2B7F68FB30F6CFB1EB4BABE96B2A9F3E455C6EDEF3109EBCE4FF31546C3C65A6EBDAC5EE95A6B19960B6691AE070A4E40C2FAF5EB5E5734B6D2C6E9BE7C30230E33D7F1AB9E0AB8B5F0F6BF717733B34335B340AA8BCEE2548FE54D4D37A82ACDCAD63D0C038A2A6551B4515D26C69BA06ACFBBB03708C855594F504641AD1A63311CD026732DE15B53FF002E918FA7155E4F0B5B0FF976FC9DBFC6BAA32E3BD40F375A97144F2A39093C336E0FFA9907D2435524F0DC43A79C3FE055D83DCF350BDCA63271F8D2E541CA8E31BC371EEC892607B1C8FF000A8FFB0E58CE52EE75C74E3FCFA0FCABA19BC4BA5C5298DA78C91D4A90401EB9F4ACF9BC6DA124E23DEEF9201644E07BD1688B95232BFB26E4600BC6C018C18FFCFA0A77F65DEF005DA9E49CECE79CE7F99AEAE2BCB19E08E74643148A19589C641A5FED4D1213FBEBCB64FF007A41472A0E54725268B7F2C6B1B5C2B2AF2339ABDA2786E6FED28E5B928628BE7001CEE6EDF975AE9EC6FF0042D464F2ED6F20964C676A3735A915B448D95A1410D455EE4890E14515694003028AB2EE359B1514EFB509F41CD3E504738AF2D7D1AED672FAADADD5D3B990CF2CF72C43FCDF284D920C2E3B11FF00D61B03BB5BC5B895E380AC8E832CAAC091F5AE65BC51757178B6D6DA739CEA26C3796C8C81966E0741D297C121346D42F87D9E28229A34DA62CF504FAF7C11DCD625E3CF06A970DE5DC482DF5B5BD8CB3FDE8D861B1D7207A52B858EABC410EAD63A3C973671AC9701942A15CE72C01EFE86B3A2B3D56EFC377CF7AE52E30EA808DB918EDC56DCFE258162CA233FB28E7FA563DDF895A7492116F285618CF1CFEB53A8EC8EBBC33A6DAC5F0DA4D0CDCA5CAAC7716D2CC176EE62CF9E3DB3FA57915EBF85B4C955174BBCBB571B83CD71B00EC46D51ED9EBDEAF4D04D7323C975265A46DC4425A3524F52541C6E38C9AC89FC3AB76E864BC98950001B07F9ED52930B221FB2E8E24297135D93B432A2CE00C63A7DD26A68D344571B74C9653EAEF21FE5815B561E19B831AAC6A580E01279C574167E0F9880D26D1EC4D371B8AE8E7AD62B7BB805B69FA73593B38CDCC436BA01E849CF3C835E93A50905AC51C8ED232280646E4B63B9AAF63A0476BC965FA015B48891AE1462AA31B00FA2928AA11215CF6E2A17B481CE5E356FAD59A691414526D36CDBA42ABF415525D0ECD9F71527F1AD53C530F3408CCFEC8B241FEABF5A8DB48B26E7C851EF5A845336D00633E830BB7CAC31F4A745E1FB28CEE652C41CF35B006074A43D680228608A0184402A519A5C518A00519A901A8C53B3400FA29B9A295C0B269B45142284C0A8CF14514C9634D21E05145003290D145002D3BB514500277A4268A29301474A28A2A40FFFD9)
INSERT [dbo].[Mat_Hang] ([MaMH], [HSX], [TenMH], [DonGia], [GiaNhap], [HinhAnh]) VALUES (N'PT00004', N'Jiuwan', N'Bộ Má Phanh Trước Sau Cho Xe Suzuki', 230000.0000, 200000.0000, 0xFFD8FFE000104A46494600010101006000600000FFDB004300080606070605080707070909080A0C140D0C0B0B0C1912130F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F27393D38323C2E333432FFDB0043010909090C0B0C180D0D1832211C213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232FFC00011080064006403012200021101031101FFC4001F0000010501010101010100000000000000000102030405060708090A0BFFC400B5100002010303020403050504040000017D01020300041105122131410613516107227114328191A1082342B1C11552D1F02433627282090A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101010101010000000000000102030405060708090A0BFFC400B51100020102040403040705040400010277000102031104052131061241510761711322328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728292A35363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F7FAE7FC5FAF5E681A4C3269D606FAFEE6E16DADE0DD805C82724FA614D74159DADE8963E20D2A5D3B5088C904983C1C3291D083D88A00C7D07C6B677DE188B54D5A4B7D3E612490CD134A0859118A90BEBD33C67AD50BCF8A9E1DB7DC203737247431C58527FE0447F2AF13D4B48FEC1D52E74A597CC5B599E30F8EA33C1FAE31508279EE3A544A7AE86D1A69ABB3D8B42F8B1632D8C4BAE46F0DEE5BCC6823CC5D4E31CE7A63B576BA5F88349D653769F7D0CD8192A1B0C3EAA79AF9A71800FE3D298D712C08F2C523248884AB2B10471ED494DDC6E92E87D3F0EAF6171A3FF6B45728D61E5197CFE71B06727F434971ACE9B6B671DDDC5F41141228747770030232319EB5C568BC7C0627FEA0F39FFC75EBC520BA9AE6D2D9E595E46F25402EE490303039ED5727CA8CE11E667BBEAFF13F42B4B2B83A7CFF006BBB542628FCB60ACDD81623A55BD2FE22F87B50B784CD7A96B70E80BC52820236391BB18383DEBC0B9209073C505B8C0F5A8E7669EC91F4BEA5AED8E99A15CEB324A25B482332168486DDE8076249C0FC6A8F84FC5B67E2DB29E7B6B7B8B696DE4F2E6B7B85DAE87191F8115F3C466FEEE1934AB4B8940BC2B1F92242AAEC586DCFE38AFA23C2BE1D9340B093ED77F2EA1A85C156B9BA94F2E4285007B002AE2D346538F2B37E8A28A64851451401E23F127C17AD5A6B579E20B288DFE9F3B07963897F7B0700138FE25E33C722BCE3FB56C9541370B83CF4AFAD6B9AB8F87DE11BBBF96F6E3C3F6325C4A72ECD17DE3EB8E99A1A4F72E3368F9BFF00B5AC76337DA54851CD58B2F0CF897C5FA65D5EE9D6E6D74BB789E47B99CEC120504955E327A76E3D4D7D0727C36F0648E8E7C3760190861B63DBD3E9D6BA6582248040B122C217608C28DB8F4C7A509456C0EA36709A5C653E05ECC73FD8D2FF00E80D5E193787FC45E18D1ECB53BFB6371A45DC4B2C57117CC220C3215BB8FE5EF5F568B6805AFD984318B7D9B3CA0836EDE98C74C7B521B4B7369F6430446DB6797E4EC1B36E318C74C63B53D3A929B5B1F2AA5FDABC61D6E13691C734EFB540FF007668CE39EB5EEADF07BC0AF3492B688A4BB16204D20519F401B8150AFC18F03A5DC5709A5C8A2339317DA1CA3FFBC09E454F244D3DAB3CD3C03A26A7AFF88EC6F2CACC9D36D6E1249EEE5F96360A41DA9FDE3C76E077AFA2AA382086DA0482089228A31B511142AA8F4005494F4E866DB6F50A28A2810556BDD46CF4D87CDBDBA8A04EC646033F4F5AB0CCA8A598855032493C015E11E38D4C6A5E33BEF26E05C5BC65238591F7281B14B63B7527A77A0715767A35EFC4CD0ADD6416C66BB75191B136A93F53CFE95CBE93F152E6D6CA44D5A0373772CEFE5BC442AC60F2171E83D7AD7001973B467EBEB50CAC864B4CA83FBDE87FDD63FD2834E447ACF863E23226950DBEBED23DEA7CAD711265641D891C60FAF15DB69FADE9BAA8FF0042BC8A56C64A038603E879AF048768033939C647E8689AE24B1B8B3B9499A1DB750FCDBF1B46F049F6E334F725C51F45D54BDD52C34E5CDE5DC30F1901D8027F0EB520BCB5369F6A17309B7C67CDDE3663EBD2BE7DFB54BA85F5F5D493B4D9BB9807DDBB2A1CE39F4C6291295D9E9FE23F88B676DA5DC268AE27D408DB1174223527F88E4738F4EF59FA8FC5584694A74C81A4D4239231324CBB508E0B8041EE0F07DEBCFA6C119438001C67AFB56645B0497780401280067247C8B417CA8FA034EF19683A92C7E5DFC51C8E01F2E63B083E9CF04FD2B75583282A4107A115F34121B0B9E47233DABAFF0087BAE5F5BF8AACF4C170E6D6E4BABC4E72061198103B1C81D28138591ED345145041CF78DF46D43C41E14BAD334DB88E19E72A0B48480541048C8CF5AF008F4C9F479EE34FB864335BCCF1C8C872A483838FCABEA0AF27BEF8393EADE25D42F6F3C41345A7DCDC3CCB0DBAE243B8EE20B1E9C9F7A7D2C545D99E6935DDB40ADE6DCC49823EF381548EB1A7BCF6C05DC1F248496DE07F0B0FEB5EF3A67C23F05698A31A3477327792E98C84FE7C7E95B8BE0EF0CAA6C1E1ED2C2FA7D913FC28D07CE784437B6B700082E219303F81C3557D52392F23B7B48828926B848D03138DC4E07E15ED7A87C2FF00066A2BFBCD0ADA17ED25B66261F4DB8AE6FF00E14E2DAEBDA7DED96BB74F676D70B31B6BBF9C8C1CF0C39F6C1F5A15839B4233F0EFC4C3C15FD8A2FAC4BFDAFCED9E63ECD9B718CEDCE73CF4AF3CD2524B4826B6942EF8A77470A7B83835F4D57932FC1CBAB8D66FEE6EFC432C1677170F2AC3688039049EAC47CBF419A77B931766716F220077B0E99C96158B1DCC3F69BB532212D28C7CC3FB8B5ED56DF073C1708FDFE9F35E3F77BAB87627F22054F2FC23F02CAB83E1F817DD64707FF42A5A15CE78C0F99463049C8A8A75BF79A11A6F9C2F8CAA22F218872C78E08E73CD7A76A3F02B43705F46D4B50D3251CA8127991E7FDD3CFEB589A3FC3BF18E8FE30D2CDC1B4BCD3E1B9495EEE23B48553920A9EFC761421F3DD1E9BE07975997C2567FDBD1C89A82EE47F3461D8027693EF8C515D15148CC28ACED77555D1342BCD4DE3328B78CB88C1C6E3D867B735E2FAA78FF005FD55994DD9B4898F11DB65303DDBA9FCE82A316CF56F1878C2CBC1FA5ADCCEA679E47090DBAB619FD4FB003A9FA7AD57F12F8EF4CD034E86EA1960BD679D11A18660CE109F998019E82BC3259A4959A4964676EECCD93F9D40A41BE623B44093F89FF000A132BD99F4F5A5EDADFDBA4F693C7344EA19591B208353D7CCF0CF2C0E248659119470C8C411F8D76FE0BF1B6B4FE29D2B46B9BAFB55B5E79AAC65E594AA1604375EDDF34EC4B8D8F61A28AF1CF1478FB5B3E21D574CB59D6D60B39FC943101BDB804924FBFA629092B9EBD71710DA5BC9717122C70C6A5DDD8E0281D49AC9F0F789ECBC47A11D5ED834706F9176BE3700A48C91DB20038F7AF07BAD42F2F09375793CC0F5F3242DFCEB3D58A5ECA03119894F0783CB505721F47F87BC4161E26D1A1D534E90B412E410DC3230EAAC3B1AD4AF9BB49D6751D0DD8E997525B07396118F95BDCAF427F0AEE348F8AF7503247AC5AACF1FF0014D00DAE3EA3A1FC31403833D668A86D2EA1BEB382EEDDF7C13C6B246D8EAA4641FCA8A083C9BE27FC44812F2E3C1D6D6A6491FCA13DC97C08CEE56DA0639E31DC75AF3A6C85E307B9C57A8FC52F0BE876BA736B91D8AAEA73DDC6AD3EF6E739CF19C741E95E4CF75189FECD0EF9E63C08A143239FC050F6D0D69E84D196E14F4C9CD36327EDD2E723F7499FCDAB5ECBC21E30D4143DBF86EE914F46B99121FD18E6AF8F86FE358E479468F6C77205DAB7CB9E09F518EF49229C9180995CB641E462AB5CEB779A0EABA7EA960EAB756E5FCB2CA180CAE0F1F46AD9D43C3BE21D31775EF87EFE341CB34718993F38CB7EB4CF0098751F895A2C4EB14D1A198B211BB1FBB6C647D47E9551264D347A35E7C49BF87E13DB788D2D506A73C9F662A54EC5704E5B1E985271EA6BC92CB55B8D62EAFF0052BB286E2E673249B5703381D057D44D656AF0081ADA16841C88CA02BF974AF993C4525BE9FE36D7A0558A0896F9F6A0C2E013D87A714FA111DC56C920E7BD405BFD3D81E7F74BCE3DCD5FB3D3756BF8B75968BA95CAFF000B4768C13F066007EB5249E16F142CFE7B7863550BB36FC8884FE41AA6C69746733900003953C7A53D0EE5071F85437AD3E9EC06A5617964C78FF4AB7641F9918A7432ADC28313AB291C153914ACD32AE9AD0F55F0C7C57F09E9DE19D3AC2FEFE486EAD60582443039E54638201E38A2B98F0EFC1AD3FC4BA15BEAEFAB5C42F72D2131AC4A42E1D97AE7DA8ABF74E73D93C41E1ED3FC4DA59D3B5247780BABFC8DB4823DFF003FCE9746F0E68FE1EB710695A7C16A98E4A27CCDF56EA7F1A28A406A514514802A98D2B4F1A8FF00688B2B717B8DBE788C6FC7D7AD145005CACE4D03498F5393525D3ADBEDB21CB4E6305FF3EDF851450068D1451400C9628E68DA39635911860AB0C83F8579A78F7E1E78762D1EF359B1B56B0BD850BE6D1B62BFB32E3691F8514535B81D17C33409F0EF47C127746EE49F52EC4FF3A28A287B81FFD9)
INSERT [dbo].[Mat_Hang] ([MaMH], [HSX], [TenMH], [DonGia], [GiaNhap], [HinhAnh]) VALUES (N'XE00001', N'Honda', N'Vision', 33500000.0000, 32000000.0000, 0xFFD8FFE000104A46494600010101006000600000FFDB004300080606070605080707070909080A0C140D0C0B0B0C1912130F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F27393D38323C2E333432FFDB0043010909090C0B0C180D0D1832211C213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232FFC00011080064006403012200021101031101FFC4001F0000010501010101010100000000000000000102030405060708090A0BFFC400B5100002010303020403050504040000017D01020300041105122131410613516107227114328191A1082342B1C11552D1F02433627282090A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101010101010000000000000102030405060708090A0BFFC400B51100020102040403040705040400010277000102031104052131061241510761711322328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728292A35363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F7FA28A2800A28A2800A28A2800AA3757D6B672DAC77132C6D732F93086FE37C16C7D70A6AF570DF12B43D535CF0F5AB68C337B6376B76803609DAADD3DF2471401DCD155A19166823911832BA860CBD0823A8AB340051451400514514005145140051451400514514005701F10BC7D0F842DA3B7B72925F4C0B15C64C69CFCD8C8E73D07B1AEFEBC0BE39682EDAF5AEA233B2E6DB603DB7A1E47E2187E469A13373E1878A26661A6DCEA0668D547EEE50432703A64E40E41C723AF4AF61AF96FC116D6575E2A5D4F5AD65ECE433164582DD8A37B96E817271DFA1CE2BE9D47596357460CAC32ACA7208F514E4089E8A28A918514514014AE99D6DA46495212ABBB7BAEE0A07272323F9D70B71F12E2B3BD86DE3363A9ACCC5164B694C241009F9849C01C75DC6BBEB89E1B581A79E548A1419779182AA8F524D7CFBF11751D06CAEBED1A15C5A5E4323E668EDA71FBB6E73C67BF182BD3041EC69AB033B23F1AAD226DD2E945A1271BE39C1C7D78EB5B1A7FC5FF0DDE32A4E2E6D49EEE9B947E5CFE95F3E6DB6B84FB55924372A7978655F987D48C1FD6A6B6B6D2AF53F713CDA74C3828E77C79FE63F234EC2B9F535AF89345BC40F06AB68C0FACA14FE479AB275AD2836D3A9D9E7D3CF5FF1AF946EADF52D3C033A09E13F76780EE0455633EE4DC1B20F439A560B9F618218020820F208EF5C67C4ED106B3E0ABD2A9BAE2CC7DA623DC6DFBC3F15DD5CE7C12F124BA86917DA2DC485DEC1C3C258E4F96F9E3F0607FEFA15E91A969F1EA9A65D69F39710DCC4D1394386008C641F5A36633E5DD36286C34B8AFACAE1669ADDF3776CED9CA96E197E9C67EB5EDDE08F10DA2DBD9DB4536EB0BC38803364DBCBD4C47D8F247BE4578D5CE9FA6787752BDB2F29E7BC826961339930A40247403B8EBD6A0B3D55EDF5145815A3F3300A4392770395603D41E7F3AB6AE8CD3D4FAC68ACED36796EF4BB3B89E3F2E69604774231B58A8247E06B46B3340A28A28031B5E4D324D0AF86B0AADA68859AE7CC076EC0324F1CF6EDCFA57CCFA3785AD7C5DF10A6D2745DCBA47DA1E412AEEFDDDB03C1F9B9C918033DC8AF68F8C77D716BE069E18636314EE04EF83B4203C2E7D59CA0FA6EF4AE6FC38DA7FC21F87D1EA5AA43E66B7AAE1D2DB386C01F2A93FC2003963EAD8E78A00D6BEF81BE1BFB33369775796174BCACCD2798BF42A7191F422BC8CF8775993C376FE2492CBFD0A62CA2E2239036B15F9C76048E0F4FA55CD6FE3078A3588E5845FF00D8E093831DA421703D371CB7D79ACCD0BC7BE20D02C96CEDAFFCFD336946B3B84124650F55C1E80E4E70475A69D84D264FA74B35945E7B032DB16DB3459E3DBE87D0D64EB71DB433F9D633110CA7251860AD69E8F7C6C9E1BA9E256B0BC0CAD196DC0A062083EE383EBC8F5AE7B5B89E0D5AE202C4C7BFE4E78DA7EE9FCB15727A1315A9EE7F00F4658F4AD4F5C67264B89BECC831C0540093F896FD2BD8FA0E6BCA7E00DD19BC0B756E7AC17CE07D0AA9FE79AEEFC5B7DFD95E10D5EF81DAD0DA4850FF00B5B485FD48ACCB3E62BBBE5BED4B50BE27227B996507FDE727FAD68787AC0182DF525BC9A433B1CDBC259194671C107E638EC78E78AE5ECF7CD6DE4C6ACEEEFB155464927B0FCEB5EE753B88A48743D15EE92F142DBCAF111BE594B10C8A47200CAA641F9829EC715A5EC8CED767A6411F897C2B74AFA335ECF091BDA030B30C7FB498E3F43EF5E93E16F1345E22B47630B5BDDC0C16E2DDFAA13D08F63CFE46BE76B4F86FE2D36B3EA36DA63F9B6B2B248892813A3AE09C0CE4F50463939AF43F853F11EEAF3515F0D78865692EDB22D6EA5FBEC4758DCF73C1C13CF183CE2A1BB96958F6BA28A290CE4BC43A3C9E20D734AB2B8898E9966FF6DB8247CB2C8388D3DF92C48F403D6BC07E29EB6FAFF8FF00520CC5A0B27FB242A0F409C37E6DB8FE55F55D7CB1A3F87D7C47F15755D0AE9A38FCFB9B90F23825936B96250023E6F948E78E4F068033EC7C4D6967E15D47449346B609781192E628D5E588EE50E7E7C939552473C13C601E39A8D600BBB9119C6433838E0679C7AE78C71EF5A3E26D2FFE11DF13EA5A5067922B5B8648D9F1BCAFF0938EF8C5634ABB80FE19075DDDFEBF85006BC7A908F4FF00B138578CB232BA8DBB18705BF15E0FD01AB17B632DFC11AC6A5EE621B500EAEBE83DC76FFF005562C51379263DC982064935D369BA2789EF3C3D36A76BA6CD2D9DB296FB4800AB0538231D4E3D47A1F43549F425A7BA3B6F839E2DD3BC2D67A869DAC196DE49A75910F964E38C1C8EA3F2AE93E2BF8DB48BEF004F67A5DEACF35DCD1C65555948507713C81FDD03F1AF1F9EFE69C4725EC2D20C02AF82723E87FC6924BCD31A3C924FFB03B7E74F905CC2F82AFDF4A9B52D497896CEC679626FEEC8CA2356FC19C55FF0E786ED8783EFFC4B2DF882F2D016B55DDC87578F69F72D9900F719A834A87EDFA0F8B25B687090E9A84B007FE7E61639FC10FE55BDA2782E6F157C3AD3EE343B7824D460BD78EECBB0048E0AF5ED86191FA54BD0B8AE66775E16F89915F789A66B9B4482DAFE38A47759411148BFBB666F6384F4C000F35C4FC5389A0F12DB78BF4784436934C0C37038F3A68C826403FBA7800F7DA4F7C9E73C3761F6DD76CECEEA2104534E017DC5576B1C0527A01FCFA77AF4FF008F52C10F86747B140A8C67668D14600555C703D3E61480F5CD36EE2D4B4BB4BE50365CC0932FD19411FCE8AA3E1281E0F06E870312AF169F0230F42235CD1401B75F387C4DB0BEF05FC4F87C47A78D8B7520BA81F1F2F9838910FD7A9F66AFA3EB9CF14E871788F479B4CBBD3E3BA81F95CCDB19187465383822803CC749F1FF0081AFF50D5F51D734F891AEC4337973D989C99026C755201E3E553CE33BBEB5E75AAAC3F107E20DBD9787347834DB69D9618A282154DA8092D2385E338C93EC00E6BA2BBF821E2E5B875B26B736D9F93CD994B81EE7033FA57A0F803C1B7DE0D89C0F0FDBC97D30C4D7925F86623FBAA027CABEDF993C500759A67807C2BA4C682D343B3DCA30249231237D72D9AE8D11634088A154740A300567FDAB59C7FC8320FF00C09FFEC6945CEAFDF4E87FF023FF00AD40168D95AB1CB5B424FA98C534E99607AD8DB1FF00B64BFE1507DAB55FFA06C5FF008103FC28FB56ABFF0040C8FF00F0207F850025EE91677BA55E69CF0A25BDDC2D0C81140C86041FE75F39F86FC43AA7C2DD7B5AD0EF616757568CA838C3807CB9573D8E47E07DABE8B377ABF6D2A33FF6F23FC2B85F1D7836EBC5B046C742862D4221886F23BE0ACA3FBAC3661973D8FE045005D87C5DE09B7F075BDADC6A3673DA2DAA42F6E5773B00A06D29D73F5AF21B3B7BAF88BE3EB4D3A392EE5D2EDDFE517126F682D55B382DEBDB272724726AF27C19F1ABC804A74F44CF2CB2738FF1AF5DF04784E1F0A699F66B6D3D2396420CF70D71BDE53EE768E076038A00EC40551B57000E31453E8A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A00FFD9)
INSERT [dbo].[Mat_Hang] ([MaMH], [HSX], [TenMH], [DonGia], [GiaNhap], [HinhAnh]) VALUES (N'XE00002', N'Honda', N'Vision', 33500000.0000, 32000000.0000, 0xFFD8FFE000104A46494600010101006000600000FFDB004300080606070605080707070909080A0C140D0C0B0B0C1912130F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F27393D38323C2E333432FFDB0043010909090C0B0C180D0D1832211C213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232FFC00011080064006403012200021101031101FFC4001F0000010501010101010100000000000000000102030405060708090A0BFFC400B5100002010303020403050504040000017D01020300041105122131410613516107227114328191A1082342B1C11552D1F02433627282090A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101010101010000000000000102030405060708090A0BFFC400B51100020102040403040705040400010277000102031104052131061241510761711322328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728292A35363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F7FA28A2800A28A2800A28A2800A865BA821B882096644967244484F2E40C9C7E1CD4D5C3FC46D2F55BA1A26A7A48CC9A5DE7DA25F980C263E63EE303040EC6803B8A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800AF3AF8A3F107FE115B35B0B1F2DEFEE10EF279F250F00E3B93D87B7D2BD16BE75F8F1A34B6DE2DB6D4D49315E5B0C64F01E33823F22BFAD00745F083C5D7725C49A2DFDFBCA88BFBB8E6E5A3E40C024E475E87F4C73ED15F2C7C3BFEC997C609ABEB7ADBD9DD34ECE891C0DE5E4FF79FA0073D39F735F532B0650CA415232083C1A005A28A2800A28A28019287685C46FB1C8F95B6E707E9DEBCBF52F8AC748BF5B68EEB4CD554CBE53796B25B3A1F53B8152BEE0FE15EA12CB1C10BCD348B1C51A96777380A07524F615F3E7C56BFF0B5D3BDEE8377677574CD9B8485F0739FBDD30FDFA1C8383D334AC546563A087E3E5BF9EF15CE8E11918AB04B90C323D0E306BA1D3FE32F87AED956786EADB77F1150CA3F2E7F4AF9B91ADA7F9D1119FBABAF3FE352AADAE700C96AFEAA772FE479FE7529D9D99B4E9A947DA436EBE5FF0003EF3EB8B5F16787EF103C3ABDA107FBF2043F91C54E7C43A2AB6D3ABD8027B7DA13FC6BE47371796EA0C9B6787B4B11E7F2A7FDA03C7BD5B20D59CE7D8CAEAE81D1832B0C820E4115C27C5ED0575AF00DE4AB186B8B0FF498CF7007DFFF00C773F95617C0EF11C97FA4DFE893B966B16592124FFCB37CE57F0607FEFAAF4DD574D8358D26EB4DBADFE45CC4D13EC6C1C118E0D007C7B68F058C70DDDA3A4C6161E7C12721867A81E9DABE85F877E29B492DACEC2398B595C822D77BE5A0900CB42C7D3A9527B647A57CFF00796B69A36A57962B16F9A099E2698B1E70C4741567C3FA8DFDB6A9FE8104D2370FB2DE3662AEBCA3E07A1FD09A02DA1F6051515B4E2E6D629948F9D41F94E40F6A96800A28A28020BDFB37D82E3EDA10DA88D8CC1C6576639CFB62BE598F41D3FC6BF12E5D3BC331F93A4CF287564560228401BDB0DC8E7381D3240AF7CF8A1777367E01D41EDD321942CAC48C2C7D483CF3BB013FE075E7DE12363F093E1E0D7F5387CCD675603C8B7270DB3AA8F61CEE63EE075C5007557DF03FC1B7164D15ADBDCD94F8F96E239D9981FA3120D789C9E06D71FC3536BF6F12DDE9B1CF2C45E3E5C2A315DE57FBB90791D31CFAD4FACFC57F166B7E703A94D6F6EDD63B4558D507B1FBDF89358FA1F8C35DD0157FB3355B88A004EE809DC8727272A720E79ED40D49AD8A36A64810CCBF3A038913B63DFF00C6A3B968D58CB6ECE91B1CB291D2AD46F2DB98F540917D96E647531460E139E5083EC411D78FC6B3AFD025DB2A9FDD31CAE3A60F4A047BFF00C03D1A38742D435B258CD753F90B9E811003FA963F90AF5D91D628DA4738550589F402BCA7F67FBA32F81AEEDDBFE585F381F42AA7F9E6BB6F1E6A3FD95E04D6AEF3865B57453E8CFF0028FD585007C9D7B77F6ABCBABC6EB34AF21FC49356B4CB0B8BB3043025C4F24A370B75073C8CE401EDDCF6ACEB3B4B8D4EE62B2B489A59E670888A3AE7FA7BD6D79B2EB77D6FA0E88926E90476F9F3429BA2063E639C6DCF419C600CF3401D3E847C5FE19BF074197CE39CBD9C5711CC1FD9A35627F4CD7BE7853C44DE23D245C4F653D8DEC4765C5ACC85591BDB20654F63FE15F3E45F08BC4EDA43EA36D15B4934123A496B1C9FBE464620E38C13C6460F208C577BF08BE225DDFDDFFC22DAF4AF25E229FB2CF31F9DF6FDE8DB3C9603904F3C1CD007B1D1451401CFF89B4593C43269DA74A99D304E2E2F09230E13948F1DC16209F65AF00F8C9ACBEADF102EAD0906DF4F45B78D49C0070198FD7271FF000115F4FD7CCB7FA5477FF1E6FB49BE956286F6F248DD9D037CAE848C03C0639001EC48340187A3F8D6F344D0351D1A2B5B76B3D420F2E44550AE0FDDDD9E8491C1E3D0D7340DB239745D8B9198DCE71F8F1FCABA2F1F78793C35E35D4B4CB08A436709468C365B0AC81BAFE27F2AE565C3280C4061C820E7AF3401A1FDA0574D92D47EFA175420B71B48390C3DF692BF4FA542D119E358C11B87DC24F51E951DADBBC8BE546DB8B01C2A939FC0575DA7FC31F186A1E1F9B53B6B12B144ACD1C6E4ACD26D3C8542327BE3D71C76A00E8FE13F8E2CBC176B7F61ABC138FB44CB2232638E30720915BFF15BE20697AE7823FB3F4A92579AE2E13CC568C8C22E5BAF4FBC16BC8DF44F10A0532E8B7EDC71FE8CE08FD298D67A820E349BF0DE9F6771FD28026F0BDE4BA5DB7882F132B2C7A63C687B832C91C5F9E1DAB6B46B1D174DF0249AE1D4234D75268E5B58C382EBB640000BD7A07249FF0062A2D3340D564F05F8B2FAE74FB98238ADEDF634B094DDFBE52D8C8E70066BA8D1BC1BFF000987C31D1EF34A9EDADAEF4B79D6ECB8C6F20971C8EF8207D08F4140D2BB3A4F07FC50126B77F36A3F668AC6F1D67731EE0617DA10F07A8F90671DCE7BD721F1112F341F1C69BE314B6FB1A5ECE2EA0871871E59504B8EC581048FF6B9E7355FC19A05EDAF8874DB9D6F4F92D74D49524FB549015894BE0A866C74E8067804D74DFB40DC2DE6A3A0E970FCD701647DA3AFCE5557FF00403408F75560EA194E4119068A6411F956F1C59CEC40BF90A28024AF05F8E1E1BBAD3F5CB4F175887547D893CA9D62953EE3E7B640033EAA3D6BDEAA86A7652EA16735A32DA4904CA51E3B888BAB03D88CD0078AF877E335AC1A85D5FEB3A6CC67B8B386290DB6D2249632FF00360918C871EBF76B8DD52F752F8BBF106D6DEDAD52DA37C4688833E4420E59D8F73C93F90AEDF50FD9FE69EEE492CB5882D21739102A3955F61924FEB5D8F837C03A9F832D9A1B19F480D27FAD9CDB48D2C9F562FD3D8002803B3D3343D2F46B78E0D3EC2DEDD5142831C4149FA903935A1597E56B98E6EECB3FF5C5BFF8AA5116B5DEEACCFF00DB26FF001A00D3A2B37CBD67FE7E2CFF00EFDB7F8D1E5EB3DA7B2FFBF6DFE34016751B08354D32EB4FBA5DD05CC4D1483FD96183FCEBE61B6D435CF867AAEB9E1A9D0BC3771342C0E40756042CA9EF83FD0F4E3E9331EB9DA7B1FF00BF6DFE35CB78C3C0DA878C6D160BE974ADF1FF00AA9C5BC8258FFDD60FFA1E280285F7C60F080D15A38A19EECB45B3EC6F0E0118C6D6278C7E75E79F0D740B9F1978E9758B88D869BA6C825F99999430E63894924E178FC07B8ADC83E015EF9EAD75E22496207253C92377B120E6BD6F41D18E85A6C3A7DB47670DB4430B1C11151F5E4924FB9A00D8A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2803FFD9)
INSERT [dbo].[Mat_Hang] ([MaMH], [HSX], [TenMH], [DonGia], [GiaNhap], [HinhAnh]) VALUES (N'XE00003', N'Honda', N'Vision', 33500000.0000, 32000000.0000, 0xFFD8FFE000104A46494600010101006000600000FFDB004300080606070605080707070909080A0C140D0C0B0B0C1912130F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F27393D38323C2E333432FFDB0043010909090C0B0C180D0D1832211C213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232FFC00011080064006403012200021101031101FFC4001F0000010501010101010100000000000000000102030405060708090A0BFFC400B5100002010303020403050504040000017D01020300041105122131410613516107227114328191A1082342B1C11552D1F02433627282090A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101010101010000000000000102030405060708090A0BFFC400B51100020102040403040705040400010277000102031104052131061241510761711322328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728292A35363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F7FA28A2800A28A2800A28A2800A8A5B8860689669511A67F2E30C71B9B04E07BE01FCAA5AE1BE2A69FAB5F7866D66D1A3964BCB2BD4BA0221961B55B903BE091C50077345456D299ED6198E33222B70723919A96800A28A2800A28A2800A28A2800A28A2800A28A2800AC5F11F8A74AF0C5B24DA9DDC702B9C0DD927EB8009C56D57997C52F0143E2451796E4C77E50287DC70C173F29F4EBD4500747E12D61AEF41B29967B3B881504523DB4859548E98C80718C704023DEBAAAF2FD22D2E3448561710D9C172DE65CCB36F601880300AAED000006491D075AF4F520A2904104751DE80168A28A0028A28A0064CC161662C5428DC4819E07B56743AB2DC2C325B017104BC8950E00157AEEF2DAC2D64BABC9E2B7B78C65E59582AA8F726BC6BC59F11F4FF0F5E0B9F0C5E596A16CD206B9B649318249DD8E39CE460AE718E462803ADF10F8DB57F0E29BC92C6D2F74DCF32C2EC8F167A07539DBE955B4FF008C9A1DC955BBB6B9B6CFF1002451F973FA53740F15E85E2DB469EDBC890B80B3DBDCC2ACC9ECC3B8F7E9525F7C36F0AEA8ACC96474E98FF1D8C9B47FDF27E5FD2803AAB3F187876FD035BEB36641ECF2043F9360D5DFEDAD2B38FED3B3CFFD775FF1AF0CF11FC23D62C236B9D3264D4A15E4845D9301FEEE70DF81CFB579CB2BA160C0820E0823A1A00FB19583286520A919041EB54F56B7FB4E9F22824328DC08EA3D7F4AF36F825E2292FB49BCD12790B3591124193CF96D9C8FA023FF001EAF4EBFB417DA7DC5A191E2134653CC43F32E4751EE280394F0EBDFAD8DC1BADC145C4888A7EF08C1C2B73DCF27F115D0E989159AFD9E360226398933C2FB0F41EDDBB7159D636CB670049A432CC83648C380CC38271EE6AB6A7B9E1536CE52789BCD8B9FE21DBE87A1FAD0075945456B37DA2D629B695DE818A9EA323A54B4005145140197E23FECA1E1CBF7D6E14974D8E1692E11D720AA8CF4F5E38F7AF993C23E13B5F1C78F26B3D3E1920D1527799C82731DB86F957272771E0753DCF6AF6DF8CD71730F802E12055F2A591526C9FBC33F2A819C925B6FE00D700BAC9F843E12B6D174F8524F156A6A2E2E999777D994FDC523BB019C0E99C9E840201DCDD7C27F0E68B6D26A3A34F73A5DDDBA1713F9A645200E55958F20FB6297C1BABEA5A8F8574FD5F50B558A1BA524346DB82FCC40CFA6719FC6BC5356BDF1A6A9A7492EA779A9CB6B71C324972446FDF1B385EDD056268DE26D6BC3536ED3B50B882307125B939461E8CA783F95007D66AEF1FCC395EF5E35F19F40B5B3317882C648A19AE1F65C404806438E1D47AF638F63EB5E81E04F132788BC376976DB448C989101E841C1FD47E58AF09F89D2EA4BE3DD4E1BF99DD524FDC293F2AC4794007D08FC73401E9DF00B473F60D475F91FE695FECA898E8170C4FE647E55ECF5E55F00EEFCEF045DDB9EB05F363E8CAA7F9E6BD0BC45A88D23C35A9EA24E3ECD6B24A3EA14E3F5C50070FE0FD6CEA7A46A5725B728D4EE821FF64BEE1FFA156BE9B69757B78D78F7588470B0051F993D7F2C57987C32BB71F0FB525463E62DD49B4FB98D31FAD58B8F883ACE9FA64165E1FB2B6BD9D025B3DCE5A429204CB0D831920639271906803DC20BA1C23E3D38AB75F3CC3F103C7BA2482EB5AB086F2CFAC8BE52A151ECC87E53FEF035EDBE17F1069FE26D0A0D4B4E959E17E195FEFC6C3AAB0F51401B34514500737ADE8EFAEF893494B88CFF0066E9CC6F5F70F9659FEEC63FE03F331FF80D7CC1E27D46EB59D6352F113BB325C5FBA2673F2803E519ED85C01F4AFB0986E461D32315F3EFC24B7D33CAD6B4DD6ED22B94844BBE1950364AEDC8C1EFC1C7D280390BAF891ACEA5E166D0350912F2D768DA4A859531823E6C738C63A6793D6B98BA96090AB641C285763FC471D79AE9FC4BE03B8D2EEAE5ED4A2A47294316F25777F755BB9F635C75C43343FBB950C6F8FE207E61EBEE3DFA500763E09F174FA0EA76D6AB305B79A6883311851C8562DEDB73F8807D6BD17E29F8424F11D8C5AC69D0996FAD5364B120F9A58FA8C0EE54E78EE09F4AF08F298215CA11EBB857B7782FC49E21BBF0D1C6977524B6502C82EA543E5DCA06208078F9B1D3AE48E6802BFC16F16693E1AD2F52B2D5E76B6924B8564263623A60E7038AE9BE2C78DF47BAF875796BA5EA505C4F76F1C5B11BE60BBB71383CE30B8FC6AE5E8D2F530B26ADA3DB5C1700F9AF082D8FAE3358B75E0CF06DD0C8B4922EFF00BAB97FE449A00E13C09AD9D0BC03E21BBDA0C96EDBA20C33891D4221C7B360FE15B5E04D2AD348D0E1D42F01966B896391E26CE250433119FEF018EFFC46AB78ABC39A7691E0BD69348FB4347FB99A6F35C37FCB5551D00F5AD1D4749D5351F0D787B56D122DF67643375F3F11B707784EFF002ED19ED8E83AD007A169FA959F8AEEE1D36FEC5E064864086460C581C639EE700FE4735C7FC3D67F097C56D43C34AE7EC3A8C6EF127659109E9F807FC36D6D7872E56E754B43B9963870FBF8FDCAEDC609F7CF71DEB2EECC173F1F741361B4C6AB2392BD36889813F983401ECF451450015F3EF8DACA6F87FF001165D5446FFD91AB49E7091572239739607F1C9C770C7D2BE816DDB4EC20376C8AE7BC45A15F6BFA6CDA7CFF00D9935ACA3E68EE6DDD87B1043020FB8E6803917F88DA0DC69D7CF7A967716D72AB218FED0BCBED00F07E61F7548E339CD796F8774AB9F899F11615733CFA5D9B079E499D9B6C40F0993CF3F740EB8C9F5AE9E4FD9E6EDA62C9AF42911391188D8803D3939AF4AF0BF85352F0B696BA7D8CBA4C308396F2AD5C33B7AB12E493F5A00D0B2F02F8574F005B787F4F5DA0005E00E78F76C9ADF58D12311AA2AA0180A07007A62B33C9D73FE7F2CFFEFCB7F8D3845AD77BAB3FFBF4DFE340168E9D62C306CEDC8FFAE4BFE1509D134A3D74EB5FFBF4B4CF2F59FF009F9B3FFBF4DFE34863D6BB5C597FDFB6FF001A00AFABF8634ED4FC3DA8E9296D0C097B0344CE918041C7CA7DF0706BC87E1FF89A7F0F2DF783B5B020BBB77F2F648701B046307BE471EE36E2BD90C7AEF6B9B11F589BFC6B8AF1AFC34BDF1A3C735CDD69B05D4636ADCC56EE24DBFDD277608FA8A00D9BFF001468DE19B4B99E210430B8F301DBB30DDC63196F5E3D715C9FC2CB1B9F10789B53F1B5DC6CB03A9B6B10E39619F99BFCF766F4ACBB4F805751DD4525EEBD0DD448726168582B7B1C3038FA1AF5FD36CAEEC6D21B5DD6690C4A112382028AA07400678A00D2A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2803FFD9)
INSERT [dbo].[Mat_Hang] ([MaMH], [HSX], [TenMH], [DonGia], [GiaNhap], [HinhAnh]) VALUES (N'XE00004', N'Honda', N'Vision', 33500000.0000, 32000000.0000, 0xFFD8FFE000104A46494600010101006000600000FFDB004300080606070605080707070909080A0C140D0C0B0B0C1912130F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F27393D38323C2E333432FFDB0043010909090C0B0C180D0D1832211C213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232FFC00011080064006403012200021101031101FFC4001F0000010501010101010100000000000000000102030405060708090A0BFFC400B5100002010303020403050504040000017D01020300041105122131410613516107227114328191A1082342B1C11552D1F02433627282090A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101010101010000000000000102030405060708090A0BFFC400B51100020102040403040705040400010277000102031104052131061241510761711322328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728292A35363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F7FA28A2800A28A2800A28A2800A866B982DDE149A548DA77F2E20C71BDB04E07BE013F854D5C2FC54D3756BEF0F595CE8B14925DD85EA5D058FEF00AADC81DF071C5007754532193CD8239060EF50DC1C8E453E800A28A2800A28A2800A28A2800A28A2800A28A2800AE5BC71E37B3F0569B15C4F134F34CDB522538E07563EC38F735D4D781FC7CD2AE0EB3637E1D8C32DB79606780CAC491F930A695D81D2FC2DF1CDDEAD73FD937B7504EAA9FB92AA558003A7B8C74C81C77ED5EAF5F2F7C3FB43A878D2CB559B58B5D24413461629243BE5DAAA0A8E3182063923AF19AFA8474A72120A28A2A46145145004770E2281E4322C6A83733B0C80075CD7227E24E842FA3B45BB8A62E48DE8E102E3AEEDFB71FAD75975756D676B25C5DCF1416E832F24AC1540F7278AF9E7E25DFF0087209565D0E7B7BA8DE4CC86DA6076139CE4673E9861C72475E69A03D5356F8847448A3BBB8D37ED1A6CD8F2AF2D660C873D01E3834BA7FC54F0DDF32AC92CD6C4F7913207E59AF9DE2D4AD1ADC45708F736EEBB43A4A55C739C30E871DBA0E054120B24940D3AFE68F8C85B84C0CFA64743F863DE8709741A6BA9F5CDAEB1A6DEA06B5BFB6941FEE4A0D5AF3E2CE3CD4C9FF6857C78DA95C5BC812ED4C64F49233F29F7E3F98A9CDC4A577798C41E8435436D6E8A514F667D7F5C5FC52D106B3E06BD751FE9164A6E62207A0391F913F90AC8F837E279B59D06E74CBB95A5B8D3DC0466392626CEDE7BE0823E98AF41D4AC86A3A65D59191A213C4D1EF51CAE4633549F521AE87CA30593E97A725DAC8B7288D8BCB7CE4A0278FC0D7BD7C3EF11452D85A589B969ED67426C6590E59703E685CFF794720F75F4C62BC1B58B3B1F0CEAD7766EF3CD7711785C290233C904F73C8CF1DA93C29AF9D2F56114733C1672B075DE72219579471EC0F07D89ADA4B4251F5C5155B4FBB17FA6DADE05DA2E214942FA6E00E3F5AB35894145145006578962D1A5F0F5E0D7D626D2D537CFE6E7000E73C739CFA735F31783FC1D1F8D7C753D8D96F8F478A679249549CAC018ED00B73B8F0067DCF6AF64F8E17F71078356C6189992EE5D8E76921BFBA9C7F112770FFAE66B935D653E10F852DF44B18639BC51A820B8BB661B85BE7EEA903A903803A6727BE0806B788BE056816FA3DC5DE97A85E5A4F6F1B4A5A761223051920F031D3AE6BC7AF3C37ADD9F876C75CBBB075D3EED374570BC80092006FEEE7A8CF5CD6BEB5ACF8D359B1946A37BA84904C32D179C15587B20C0FCAB1749F16EB7A25B359477B24DA6CA8639AC6E3E78997BAED3D3EA307DEA949A15834F8524B5DCF36537106261D4FB1EC7F9FF0028239026E48252232D8DAC391563493F63F25AF60DDA7DEA91F78720311BB23A1041F7FD2AA5CA18E778739507683F4A736AC38EE7B8FC08D1DA3B0D535B77FF008F8905B2281D93927F12C07E15EC24E064D799FC0BBA13F801E2FE282F6443F8856FFD9ABB3F166A1FD95E11D5EFB76D686D242A7FDADA42FEA4540DEE7C9BAFDDFF00696BD7776CD91713C92E7D8BB1AD3F0D19009A6B2B8B449A31BBCA960476C0EEA581C7E1835CC4ED98908EA015FD7FFAF5D5E8D67269767F6CD3F4A8357BC322401A5632A40E630CC3CB5FBC792324E060F07AD68A4ADA92D6A7ABF847E32DBDC4F1D87880470B13B56E90617FE043B0F71D3D3BD7AE2B0650CA41523208EF5F2D4B3DFD89171E22F0869F73647FD6182DC5B3283E8F11C03FEF0AFA1BC1379A4DEF84AC5F449E596C51362099F7491E3F81BDD7A7D3152EDD011D051451523396D57477D73C63A7CD79191A5E8E86E5778F966B86E14FB84519CFAB0F7AF9975BD56F354D62EBC48EEC3EDB79279679CA85C6D19F65207E15F5EDE46D3595C449F79E3651F522BC1BE12699A4EB9A35F697AD40935B44AD2344FC61863273D4101A80392D5BE216A9AE78723D1EFC46E230BB6680089C81C856C0C100853C01D2B97BF9A096791F0A55B3961C67D0F3DFA67E95D27893C0F2E92F2DC584A1AD94F30CAE37A671C67BF5AE32E37B26D61B641D41EF401AF1EAD1AE9674F9D378575685D571B58801F3E80800FD40F53514CAC70DCB01DEB30AB08D93E5209EB915B7159EAFFD90DAA47A5DD8B480297B968CF96727190D8F5AA5AAB30DB53D67E0B78A746D1742BFB1D46F92DA692ECCA81C1C152AA3AE303A56FF00C60F1369F27C3C96DEC2FEDEE1EF278E22229431DA0EF2703B7CBFAD781C9756F348B29692290FDFC1CAB7E38C8FCAAC5D185A24DB765E323203E0E3F2C51C8C3995C8344B886CA7BBBD9A1498DADAC8F1248B90256C22363BE19837E15EA3F0EF49B5D0B49B5BCBBCCB25F48BE644DD1F2A5860FF00780C7079F9B35E656D67F68D0F5CBB8B052DA38039038C34CA3F9815E93ADE97ACDCE99E1ED5F47819F4D8155A670FBBCA7217E609EEA14679E87A527A6807A358DED978B1934DBBB292092389C0F34024A9C6067B9C751D0E0D723F0DDA4F0AFC49D53C31B8FD8AF6369A04CF0AE84E71F8071EE156BA2D0EFE0BAD4ACA7122C6A8A5CC991B63057183F89EFEB584E2197E3FE8FF006220C6904AE594E411E5B8CE7DCE7F3A407B15145140057CF1AEC527C38F8877E92068F48D5B74B04C0121776772F1D816208EB82A7DABE857DFB7E4DBBBFDAE95CAF8B3C397BE28D29F4EB9B4D2AE206395F3CC8191BB3295E41A00C73E3BD0C5B5C5C4B1DB496973186910CD194320183DF90405ED9E3A735E4BA0E90BF11FE24C715BDA84D16D5FCDB8DA08511839DBEA3380A075C64FAD6C9FD9F75C32F1AC5988B3F7773E71E99DB5EA5E14F0BEA5E14D2574FB1B7D1E18F39768C485A46FEF313C9340176C3E1E78434D0BF67F0FD8E54001A48FCC3C7BB66BA0FB25B7D8FEC9F678BECDB3CBF2760D9B718DBB7A631DAA8635EFEF69FF0093D387F6E77361F93D005493C13E16947CFE1DD2CE3A7FA2A7F85563F0EFC1CC727C37A77E10015ABFF13BFF00A70FFC7E909D73B0B0FCDE9DD8197A878134397C2FAAE8BA7E9D6B62B7F094668620BF30E518FAE0E0D79A7C3CF1636996D378435C5105E5A4EA86397B8560481EBC0C63B8C11DEBD749D7BB0D3BF12F5C178E3E1AEA7E339D2E9C6936B7A8368BA88C81D97D1BA861F519A407457DE23D17C3161752C4B6F0C47E7465408093D88C6491D80EC40AE57E1569F3EB5AF6A7E34BA89A38655FB2D8AB0EAA0FCCDFA01F52D58761F02B564BD8A5D4F54B3BD8233930132286F6240CE3E8457B2E9D6D77676B0DB18ACA286250891DBA955503A002803468A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A00FFD9)
INSERT [dbo].[Mat_Hang] ([MaMH], [HSX], [TenMH], [DonGia], [GiaNhap], [HinhAnh]) VALUES (N'XE00005', N'Honda', N'Vision', 33500000.0000, 32000000.0000, 0xFFD8FFE000104A46494600010101006000600000FFDB004300080606070605080707070909080A0C140D0C0B0B0C1912130F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F27393D38323C2E333432FFDB0043010909090C0B0C180D0D1832211C213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232FFC00011080064006403012200021101031101FFC4001F0000010501010101010100000000000000000102030405060708090A0BFFC400B5100002010303020403050504040000017D01020300041105122131410613516107227114328191A1082342B1C11552D1F02433627282090A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101010101010000000000000102030405060708090A0BFFC400B51100020102040403040705040400010277000102031104052131061241510761711322328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728292A35363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F7FA28A2800A28A2800A28A2800AAF737B6D66F6E97132C6D732F9316EFE2720903EB853562B88F8A3A26ABACF86AD8E8C8CF7B67789748A8C037CAADC8CF7048E2803B7A2A2B697CFB5866CA9F3115B2BD0E476A96800A28A2800A28A2800A28A2800A28A2800A28A2800AE73C55E33D23C276E8FA8DD2A3BF48D7E67C73F36D1CE38EB5D1D79E7C4BF035A78A201305115F1408B38EE14E769F6E4D005FF0009788A2BCF0E5BDD5BDF5B5DDBDBA08A631C6CA7200E70DC8E08E08FC6BB30430041C83C835E63A569573A3C114727EE2D66F9AEDE281EE0B36003F303F2A8031920F00702BD26D3CBFB141E4CA258846A1240410C31C1C8A009A8A28A0028A28A008AE5C456D24AD218D506E66033803AF15909AD4EEF0B41147736D28DC2656D981F439FE7F9569DFDFD9E996725DDFDCC56D6D1FDF96560AA33C7535E33E26F89961E1FBD59BC357369A969ED283716EADB4A139DDB7201E78208CE30723A50075DADF8FEFB4488DE7D8ED2FB4F046E92190A3C39E82453CA9ED50E9FF19344B9655BAB5B9B7CFF0012E1C0FE47F4A341F13683E2FB56B8B3304BB8627B7B88559D0FA303DBDC1C53EF3E1D78575356274E5B098F492C5CA0FAEDFBBFA1A566526BA9D459F8CBC397C81A0D66D39ECF2043F9362ADFF6FE8C3AEAF61FF8129FE35E27E21F847AB59C4D71A5DCA6A5128CECDBB2603F937E87DABCE5E39226657460CA4AB2918208EA08EC6A799A1A8A7B1F6123AC881D1832B0C820E41AABA9DB8B8B0910E781B860E2BCC7E08F8864BBD3EFB439DCB1B42268327A237DE1F4079FF8157A9DDDB25E59CD6D216092A14254E08C8EA3DEAD12D599C778622D46DECAEBEDD2297FB4C81111B03C9CE171CE73819FC6BA4B0305A3796842C7331655CF01BA9FC4F53F9F73542C6DA2B180445CCD2443CA690FF195E093EF55753C4D0F971BF952821E320F471C83408EB28A86D2579ECE19645DAEE80B2FA1C7353500145145006378AA6D26DBC2FA85C6BB024FA6C51179A26507701D0007B93803DEBE6BF03783A0F1CF8DA686085A1D16195A697693F2C5B8EC404F393D3939C027B57B07C6F9AF078362B6B740D15CCE2375EA6463C2201D49E4BFD631EB5C85CEBC3E11F85AD7C37A5471C9E25BC413DECBB77080B0F9571DC81C01D3A9EF401D95EFC2AF0FE836936ABA1DC5CE95796B1B4826F34C8AC00C95656EAA71DB153F84758D4B53F0B69DAB6A566B0C7769B8346DB95792067D338CFE239CD787EAD73E32D5F4F927D4AE7539ED252372C970DE5B739036FDDEBD856468DE2AD6FC31303A6EA3710C59C3DB39CA37B329E0FA74CD007D62ACF1FCC395EF5E47F18741B38963D76CE68E0BA95BCB9E1C8066E38703B91D0FB63D2BB6F01F8AA1F13787ADEEB28260BB668C1FBAC3823E9E9ED8AF19F892FA845E39D462BC95DD43830027811919503F03F9E6932A3B9DFF00C05D14ADA6A5AEC8F9691FECA8B8E806189FCC8FCABD9ABCB7E04DCF9BE0EBD83FE795EB11F428BFE06BD0F5BBE1A6685A85FB1C0B6B7925FF00BE549A684F7383F07EAE752B0D66E036E55D5AE427FBA4861FFA1568E9B66F7B7ED7D2DDBE0711C4A70B8F5C8E4E7F2AF3CF86578E9E0CD5C2B7CEB70581F7283FC2AABF8D75DB1D1A3D3FC3AB6B71716DB2D6698C65E489F0C7014FCBC00064F1906807B9EEF6D7B8212439F7ABE082323A1AF9C13C55F12B422B7D7EDF6CB7C6F78A68A26565EE7E4C301EE2BDABC0FE2ED3FC63A0ADF590314A8765C5BB365A27F4CF707A83DFF3A0474D4514500735A9690DAC78BEC6EAF23234ED1E333C418712DC3743F44519CFAB7B57CB9AFEA175AC6A577E2195C93797B21427AA8182A33DB0A401F4AFB0AEA33359CF12F0CF1B28FC457CFF00F09A2D36F343D5B4CD534F86F18FC91DBCCBD5F700003D41CB0E47231401CB5CFC49D6EFFC2BFF0008FDE491DC5B05015B6ED9140180323838FA67EB5CB5E496EEE1C32B7CB8723383C71D79C8E9F85747AFF81AE74EBCB94B6963916195A300B63710718527AF4EFF009D723731491E124F92403BE7E6F7F43401D6F827C5171A06B56D1C73848269624959B8503700C5BAF1B73F9035EAFF0013BC212F8874F8B52D3E2325FDA29568D47CD2C7D703D48392077C9F6AF9F962711B2031B2F1CEF18AF72F007893C4DA97861E37D26E1DECA10F0DECAA7CAB9556C14DDC7CD8E01C9E993402762BFC1DF13E9BE1CB2D4EC35799ADA4927564DD1B11D3041C0E0D753F13BC65A44BF0F6FE0D3B518279EE8A42A88FF360B02DC75E80FE75A7750D96A50A4BA969705C2BA860F242198023DC645625D7847C2538DC6C157FEB9CCEBFA6714877573CEBC07AC9D17C1DE27BCC02F6CA8F1EE191BD95D50FFDF5B6AEF80B4DB5D2B444D52EC799737334455645DCB3124B6D2718CE369E7D5BAF6D0F14F8774DD37C0FE218B478A51BE18A7977C9BF84993A7A70C6ABBE85A9F883C01A0DFE86A8469A9FE9797E7A6EDCAB8C640E3F11E990C1EE7A2E99ACC5E20BCB3D3350D35618033B42C65DE0AED601738E08EDD0F03BD713E184FF00842BE36B69903E2C3541240CBD0075C9538F5C8FC37915B5E1BB996FF51B40524D90B2C8FB016F276F538E4F52474C567789248350F8D5E158EC01223B82EDF29070A149273CFF000B75F4A047B6D145140057CF3E208A6F869F13A5BA28CBA56A337DAADE50A4AA3672571DF049047A107B57D0ADBB69DA403DB22B99F14F866E7C51A549A75D1D3A5B77E409A07251BB3290C083EE2803979FC6FA05E68339BA68862569EDA582E5018DCFCDB8367218313DBA718EA2BCBB48B2BEF8A9F12ADC5CC8F73636BB5AEA628157CA5ED8030377403DC9F5AE8DBF678BFDC42F88E211E7EEF92DFE35E91E13F07EA3E12D2C69F633E971C59DCEC96AFBA46F5662E493401A963E03F0A69B8FB2F87F4F52318668439E3DDB26B79228E289628E3548D460228C003D3159BE46B9FF003FB67FF7E0FF008D3843AD77BBB4FF00BF27FC6802E7D8ED48C7D9A1C7FB82A33A569E7AD8DB1FFB64BFE150795ACFFCFCD9FF00DFA6FF001A4F2F5AED7367FF007E9BFC6801D7BA1E9F7BA55E69CD6D14705DC2D0CBE5A05255811FD6BC37C21AE5D7816FF54F05EB6CB0B7CC914921C23A9CED607DF39FC71D457B718B5DED73623FED937F8D725E32F87F7FE34B748EFAE34B1245FEAAE16D9C4B1FB060FD3D8E45005CD43C6FA2E876F3DDC724291CCBE61DDF2E1FA7FC0B3E83D0FAD723F0C2C2EBC53E31BEF1C5E44EB6B1AB5BD8EF1CB13F79BF227F163E9546CBF67F9A1BA8E5BBD6A0BA8D0E4C2F0B056F638607F5AF5FD32C6F2C2D21B5DF6490C4A1123B780A2A81D80CF1401A74514500145145001451450014514500145145001451450014514500145145007FFFD9)
INSERT [dbo].[Mat_Hang] ([MaMH], [HSX], [TenMH], [DonGia], [GiaNhap], [HinhAnh]) VALUES (N'XE00006', N'Honda', N'Vision', 33500000.0000, 32000000.0000, 0xFFD8FFE000104A46494600010101006000600000FFDB004300080606070605080707070909080A0C140D0C0B0B0C1912130F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F27393D38323C2E333432FFDB0043010909090C0B0C180D0D1832211C213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232FFC00011080064006403012200021101031101FFC4001F0000010501010101010100000000000000000102030405060708090A0BFFC400B5100002010303020403050504040000017D01020300041105122131410613516107227114328191A1082342B1C11552D1F02433627282090A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101010101010000000000000102030405060708090A0BFFC400B51100020102040403040705040400010277000102031104052131061241510761711322328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728292A35363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F7FA28A2800A28A2800A28A2800A8A5B88619218E59511E66D91AB1C176C1381EF804FE152D705F156CB579F45D3AFF468A492E74EBD5BA2B1F240556E71DC7B7BD0077B45351B7A2B71C8CF069D4005145140051451400514514005145140051451400572FE37F1A5A78334B4B99E3F3A694958E2071DB963EC38FCEBA8AF0DF8F1A23B5F69DA9C64E2689A06E78DCA723F304FE54D2BB132DFC34F1EDEDD6A916977B791490C8BF223672B8193B4FD3B11F88EFECF5F2CF85611AAF8DE2BE9F55B4D1E38E749228E4C9638C61410A06368C64E3F1E6BEA38BFD5261837CA3E61D0D39021F4514548C28A28A0064C1CC4C237D8D8E18AE71F8570373F12A2B2D462B346B4D44BC9E5E61668194E339224F971EE18F5AEF67B886D6DDE7B895228631B9E49182AA8F524F4AF0DF89BAEF865A3373A2DD5A5CDCB480CC6DE51F4248EFC63919C629AB5F50E875337C60B4B725DEC04900382D14C0953E86B4F4EF8AFE1DBE2AB234D6EC7FBEB91FA57805BCFA55C1DF35AA4DBCFCC7710E3EA475A95B4ED3C9CD95DCD6CC79C483727E9CFF3ABF66FA13CCBA9F525B6BBA55E206B7D46D9C1FF00A6801FC8D59FB6DA671F6A87FEFE0AF94259B50B1502E144B1769A06CFE6293ED6D247BD642CA47041A8716B71A699F5B8208C8E45729F11F441AE7822FE258F7CF6E86E61C75DCA0F4FA8C8FC6B92F82DE2696FADEFB43B995A46B5C4D6E58E484270CBF4071FF7D57A9DCC02E6D6580B320910A6E5EA323A8A49D867C8361E658DBFDA63944DB18B4D0EECE138C11FD6BDDBE1DF8AED9ADADED16666B19D8470876C9B594FFCB23FECB7F09F5E2BC5B57D0ADBC35ADDDD9CF2CD34F6D33C6A57015947009073D476A9746D486977225E62B49B11CC01E40CF0C3DD4F23F1F5AE871BC4CEFA9F58D159BE1FBF7D57C3BA75FC98F32E2DD246C74248E48F6CD695739A0514514014B585B06D1AF3FB51237B010B35C090657601939FC2BE5FD27C316DE35F8893E9FA22343A434ED26E00FEEADC1EBCF393C019EE6BDD3E2DDE5CDA7806F3C8406390AA4CCC780B9E07504EE6DABC7624F6AF3AB0D523F843E0C86258124F146AC8277590645B45FC1B87AF5E3D49CF02803ACD43E05F865ECDFF00B3EE6F2CAE072B2B49E628FAA9C647E22BC823F0F6B89E178BC40F6664D324675F3A33BB66D62B961D8120F3D2A3D4FC65E25D76DAE0DDEA7A8CB0903CD092958C73919551B4723F4ACBD1BC59ADF87C6CD3F51952DCE55ED9FE68DC1EA0A1E083F4AA8C9C76134997ADDE48D4BE73193874278FFEB7D6A85EE2DDCC96CF88DCE4A9EC6AD584B3430C3792C0A2CEE59D00072A403CAF5C82B91D79E9EB593AA6E8B50961DC4C44FCBCF1B7B56F39270338AF78F6AF80DA3B3C9AA6BEEF9E3EC71A81F4663FFA0D7B657917ECFB725FC27A9DA9FF009637DBBFEFA45FFE26BD4357BF5D2F46BEBF7C6DB681E639FF006549FE95CC6A7CB1E2CBB1A978D7579C3651AF650A7D83103F4A9F4BFB424FE7C53471AA8C2A98559BEA188383F4C573914ACCF34ACD97C9624F735B56BAB26830C50C56D6D7DA8089439B80C52D9B9F94A71BDB18CE78078C1EDBC6514BDE3369B7A1EC1E17F89AD134765AD10D18C2ADC28F997EA0751FAFD6BD5239126892589D5E37019594E4107A115F282788AF56E164D4AC74FBA8DB9309B516F91ECD1ED23EBCD7D11F0FB50D2AFF00C2901D2249BC98C90D04F26F7818F2533DC73C1F4A89B8BD63A1514D6E753451456651CE6BDA449AFEB5A5DACF19FECCB37FB64F91C4B20E234F700EE63F41EB5F3578C754935FF186ADA83B6E57B8648F3D0229DAA3F203F3AFAE2BE65F87FA69BEF1B6A1E1EB95804772B2C3706540CCA15813B33C07F9719EDC9ED4018F278CF521A34DA64F1C325ADCDBC704A22511B3223865C9030481919C670DCE702B97586103CC791707EF0F418E9CF7EBF956EEBFA44DA6EAB7502C0D1DB93E64419B388DB94E7E840FAE45615D5B4898590049938F66E4F3E9F971C5006AC5AD2C5A54DA6CCBE6C2446F1BAAE0A4AB81B8FB14CA9F5C29ED505EDB34F1AEC52D220C003F887A7E15402EC89A20C8C0FBD6FD9683E22BAD0A5D4ADB49B87B4B64DC6E4AFCAC01C1C77E3DB38C1AD20D5ACC9927BA3BBF827E29D2BC3F0EAF6DAB5D7D99AE258DE22C8C41C0607A0E3A8AEDFE27F8BF4A7F8777F1D86A36F3CD72521558E405B05816E3AF407F3AF05791AE55249812C4021F1CE3F9D4A6259A201E562BD705F229BA5D98B9883C2B771D96A92DECD0A4AB6B04B304914329708DB320F51BF6D5CD2AC6D56C5F5DBDBA86692DEEE2325948F892E558E5C8E73F88F7A5B3D3125D3B5E6B7059A1D3C4AC73D84F167F426BA2B7D1AE7C43F0DEDFFB1E2DCDA6BC8FA8AE48CE4B15603F8884C83FF01ACE5A685A3D0AC757D0FC7BAAD9E95AA592B05B59D2279183332B79654E40F958007F107D715CA7C34BC93C31F146EF4033335B4D2CB6849E03142C51BF423FE0559BF0EACAED3C416AFF0061BB5108C4F22C65D976BF3B40191C6077E6B5AE6E61D53E3CD81B1B79A148A68A3292C651BE4519CA9E4703BD203DF28A28A002BE76F899A2DF7843C7DFDBB60CF0C37D219E19D3F8253F7D4FD793EE188AFA21B76D3B71BBB66B9FF10E897BAF69B2E9F3269935B4A394B889CF3D88218107DC5007971F8AB62B63A4DD0D3247BFB58BECD7511DBE55C42546EE7A83B9558647A8EF5C468FA5CFF123E240F2ACA2B5B47904B711DBA6D8E0857008E3B9031EE4E6BB097E01EAAF23797AF5B2444F09B1CE07A66BD0BC25E0FD47C23A6FD8AC9B494563992458642F21F5662DCFF2A00DDB1F0878734D005A689611E3A1F2149FCCF35AE91451C7E5C71A2C7CFCAAA00E7AF159BE5EBBFF003F363FF7E9BFC69C23D6FBCF65FF007EDBFC68011BC35A0B8C3689A711EF6A9FE1503783BC32FF007BC3DA59FF00B744FF000AB3B35AFF009ED65FF7C37F8D26CD6FB4B63FF7C37F8D170217F0AE89FD977DA7DBE99696B0DEC2D0CDF678550B2904761EF5E03A26B5A9FC39D4F5DF0EDF5B9713C4D138E993B484954FA107F2F715F4194D77B4B61F8A3FF8D723E31F01EA5E318A31752E9293C5C457290C82541E99DDC8F6208A00C6BDF8A5A3E916C973A1DAC53CF75186B884A795E54807DE271F37A11ED9CF26B3FE1168B77AC7896FBC61A86E600BAC5230FF00592B7DE61EC0123F1F6A8ED7E05EA4B731BDEEB96F730A9C988C6C037B12083F9115EB7A5D8DDE9D650DA01631C1128548EDE228AA3D00CD006A5145140051451400514514005145140051451400514514005145140051451401FFD9)
GO
INSERT [dbo].[Nha_Cung_Cap] ([MaNCC], [DiaChi], [TenNCC], [SDT]) VALUES (N'NCC00001', N'Địa Chỉ 1', N'Nhà Cung Cấp 1', N'0000000001')
INSERT [dbo].[Nha_Cung_Cap] ([MaNCC], [DiaChi], [TenNCC], [SDT]) VALUES (N'NCC00002', N'Địa Chỉ 2', N'Nhà Cung Cấp 2', N'0000000002')
INSERT [dbo].[Nha_Cung_Cap] ([MaNCC], [DiaChi], [TenNCC], [SDT]) VALUES (N'NCC00003', N'Địa Chỉ 3', N'Nhà Cung Cấp 3', N'0000000003')
INSERT [dbo].[Nha_Cung_Cap] ([MaNCC], [DiaChi], [TenNCC], [SDT]) VALUES (N'NCC00004', N'Địa Chỉ 4', N'Nhà Cung Cấp 4', N'0000000004')
INSERT [dbo].[Nha_Cung_Cap] ([MaNCC], [DiaChi], [TenNCC], [SDT]) VALUES (N'NCC00005', N'Địa Chỉ 5', N'Nhà Cung Cấp 5', N'0000000005')
GO
INSERT [dbo].[Nhan_Vien] ([MaNV], [TenNV], [NgaySinh], [DiaChi], [SDT], [GioiTinh], [CCCD], [ChucVu], [MaCN], [TinhTrangLamViec], [Luong]) VALUES (N'NV00001', N'Nguyễn Minh Trí', CAST(N'1980-05-07' AS Date), N'Đà Nẵng', N'0987412100', N'Nam', N'785412365100', N'Nhân viên quản lý', N'CN00001', 1, 15000000.0000)
INSERT [dbo].[Nhan_Vien] ([MaNV], [TenNV], [NgaySinh], [DiaChi], [SDT], [GioiTinh], [CCCD], [ChucVu], [MaCN], [TinhTrangLamViec], [Luong]) VALUES (N'NV00002', N'Nguyễn Minh Anh', CAST(N'1980-05-07' AS Date), N'Hồ Chí Minh', N'0987412101', N'Nam', N'785412365101', N'Nhân viên quản lý', N'CN00002', 1, 15000000.0000)
INSERT [dbo].[Nhan_Vien] ([MaNV], [TenNV], [NgaySinh], [DiaChi], [SDT], [GioiTinh], [CCCD], [ChucVu], [MaCN], [TinhTrangLamViec], [Luong]) VALUES (N'NV00003', N'Nguyễn Minh Cao', CAST(N'1980-05-08' AS Date), N'Bến Tre', N'0987412102', N'Nam', N'785412365102', N'Nhân viên quản lý', N'CN00003', 1, 15000000.0000)
INSERT [dbo].[Nhan_Vien] ([MaNV], [TenNV], [NgaySinh], [DiaChi], [SDT], [GioiTinh], [CCCD], [ChucVu], [MaCN], [TinhTrangLamViec], [Luong]) VALUES (N'NV00004', N'Nguyễn Văn Chí', CAST(N'1980-05-09' AS Date), N'Long An', N'0987412103', N'Nam', N'785412365103', N'Nhân viên quản lý', N'CN00004', 1, 15000000.0000)
INSERT [dbo].[Nhan_Vien] ([MaNV], [TenNV], [NgaySinh], [DiaChi], [SDT], [GioiTinh], [CCCD], [ChucVu], [MaCN], [TinhTrangLamViec], [Luong]) VALUES (N'NV00005', N'Nguyễn Duy Sơn', CAST(N'1980-05-02' AS Date), N'Hà Nội', N'0987412104', N'Nam', N'785412365104', N'Nhân viên quản lý', N'CN00005', 1, 15000000.0000)
INSERT [dbo].[Nhan_Vien] ([MaNV], [TenNV], [NgaySinh], [DiaChi], [SDT], [GioiTinh], [CCCD], [ChucVu], [MaCN], [TinhTrangLamViec], [Luong]) VALUES (N'NV00006', N'Nguyễn Thị Trà', CAST(N'1980-05-07' AS Date), N'Đà Nẵng', N'0987412105', N'Nữ', N'785412365105', N'Nhân viên thu ngân', N'CN00001', 1, 10000000.0000)
INSERT [dbo].[Nhan_Vien] ([MaNV], [TenNV], [NgaySinh], [DiaChi], [SDT], [GioiTinh], [CCCD], [ChucVu], [MaCN], [TinhTrangLamViec], [Luong]) VALUES (N'NV00007', N'Nguyễn Anh Tuấn', CAST(N'1980-05-07' AS Date), N'Đà Nẵng', N'0987412106', N'Nam', N'785412365106', N'Nhân viên bảo dưỡng', N'CN00001', 1, 10000000.0000)
INSERT [dbo].[Nhan_Vien] ([MaNV], [TenNV], [NgaySinh], [DiaChi], [SDT], [GioiTinh], [CCCD], [ChucVu], [MaCN], [TinhTrangLamViec], [Luong]) VALUES (N'NV00008', N'Nguyễn Anh Minh', CAST(N'1980-05-12' AS Date), N'Đà Nẵng', N'0987412107', N'Nam', N'785412365107', N'Nhân viên kho hàng', N'CN00001', 1, 10000000.0000)
INSERT [dbo].[Nhan_Vien] ([MaNV], [TenNV], [NgaySinh], [DiaChi], [SDT], [GioiTinh], [CCCD], [ChucVu], [MaCN], [TinhTrangLamViec], [Luong]) VALUES (N'NV00009', N'Nguyễn Thị Xuân', CAST(N'1980-05-19' AS Date), N'Đà Nẵng', N'0987412108', N'Nữ', N'785412365108', N'Nhân viên tư vấn', N'CN00001', 1, 10000000.0000)
INSERT [dbo].[Nhan_Vien] ([MaNV], [TenNV], [NgaySinh], [DiaChi], [SDT], [GioiTinh], [CCCD], [ChucVu], [MaCN], [TinhTrangLamViec], [Luong]) VALUES (N'NV00010', N'Trần Thị Tuyết', CAST(N'1980-05-29' AS Date), N'Hồ Chí Minh', N'0987412109', N'Nữ', N'785412365109', N'Nhân viên thu ngân', N'CN00002', 1, 10000000.0000)
INSERT [dbo].[Nhan_Vien] ([MaNV], [TenNV], [NgaySinh], [DiaChi], [SDT], [GioiTinh], [CCCD], [ChucVu], [MaCN], [TinhTrangLamViec], [Luong]) VALUES (N'NV00011', N'Trần Văn Cảnh', CAST(N'1970-05-29' AS Date), N'Hồ Chí Minh', N'0987412110', N'Nam', N'785412365110', N'Nhân viên bảo dưỡng', N'CN00002', 1, 10000000.0000)
INSERT [dbo].[Nhan_Vien] ([MaNV], [TenNV], [NgaySinh], [DiaChi], [SDT], [GioiTinh], [CCCD], [ChucVu], [MaCN], [TinhTrangLamViec], [Luong]) VALUES (N'NV00012', N'Trần Văn Nam', CAST(N'1970-05-15' AS Date), N'Hồ Chí Minh', N'0987412111', N'Nam', N'785412365111', N'Nhân viên kho hàng', N'CN00002', 1, 10000000.0000)
INSERT [dbo].[Nhan_Vien] ([MaNV], [TenNV], [NgaySinh], [DiaChi], [SDT], [GioiTinh], [CCCD], [ChucVu], [MaCN], [TinhTrangLamViec], [Luong]) VALUES (N'NV00013', N'Trần Mai Thi', CAST(N'1970-05-15' AS Date), N'Hồ Chí Minh', N'0987412112', N'Nữ', N'785412365112', N'Nhân viên tư vấn', N'CN00002', 1, 10000000.0000)
INSERT [dbo].[Nhan_Vien] ([MaNV], [TenNV], [NgaySinh], [DiaChi], [SDT], [GioiTinh], [CCCD], [ChucVu], [MaCN], [TinhTrangLamViec], [Luong]) VALUES (N'NV00014', N'Phan Thị Tú Trinh', CAST(N'1982-05-08' AS Date), N'Bến Tre', N'0987412113', N'Nữ', N'785412365113', N'Nhân viên thu ngân', N'CN00003', 1, 10000000.0000)
INSERT [dbo].[Nhan_Vien] ([MaNV], [TenNV], [NgaySinh], [DiaChi], [SDT], [GioiTinh], [CCCD], [ChucVu], [MaCN], [TinhTrangLamViec], [Luong]) VALUES (N'NV00015', N'Phan Thanh Thiện', CAST(N'1982-05-10' AS Date), N'Bến Tre', N'0987412114', N'Nam', N'785412365114', N'Nhân viên bảo dưỡng', N'CN00003', 1, 10000000.0000)
INSERT [dbo].[Nhan_Vien] ([MaNV], [TenNV], [NgaySinh], [DiaChi], [SDT], [GioiTinh], [CCCD], [ChucVu], [MaCN], [TinhTrangLamViec], [Luong]) VALUES (N'NV00016', N'Phan Văn Quyết', CAST(N'1982-05-11' AS Date), N'Bến Tre', N'0987412116', N'Nam', N'785412365116', N'Nhân viên kho hàng', N'CN00003', 1, 10000000.0000)
INSERT [dbo].[Nhan_Vien] ([MaNV], [TenNV], [NgaySinh], [DiaChi], [SDT], [GioiTinh], [CCCD], [ChucVu], [MaCN], [TinhTrangLamViec], [Luong]) VALUES (N'NV00017', N'Phan Thị Mai Yến', CAST(N'1983-05-11' AS Date), N'Bến Tre', N'0987412117', N'Nữ', N'785412365117', N'Nhân viên tư vấn', N'CN00003', 1, 10000000.0000)
GO
INSERT [dbo].[Phieu_Nhap] ([MaPN], [NgayNhap], [ThanhTien], [MaNVKho], [MaNCC]) VALUES (N'PN000001', CAST(N'2023-05-08' AS Date), 11700000.0000, N'NV00008', N'NCC00001')
INSERT [dbo].[Phieu_Nhap] ([MaPN], [NgayNhap], [ThanhTien], [MaNVKho], [MaNCC]) VALUES (N'PN000002', CAST(N'2023-05-08' AS Date), 13750000.0000, N'NV00008', N'NCC00003')
INSERT [dbo].[Phieu_Nhap] ([MaPN], [NgayNhap], [ThanhTien], [MaNVKho], [MaNCC]) VALUES (N'PN000003', CAST(N'2023-05-08' AS Date), 1920000000.0000, N'NV00008', N'NCC00001')
INSERT [dbo].[Phieu_Nhap] ([MaPN], [NgayNhap], [ThanhTien], [MaNVKho], [MaNCC]) VALUES (N'PN000004', CAST(N'2023-05-08' AS Date), 960000000.0000, N'NV00012', N'NCC00003')
INSERT [dbo].[Phieu_Nhap] ([MaPN], [NgayNhap], [ThanhTien], [MaNVKho], [MaNCC]) VALUES (N'PN000005', CAST(N'2023-05-08' AS Date), 321000000.0000, N'NV00012', N'NCC00004')
INSERT [dbo].[Phieu_Nhap] ([MaPN], [NgayNhap], [ThanhTien], [MaNVKho], [MaNCC]) VALUES (N'PN000006', CAST(N'2023-05-08' AS Date), 1920000000.0000, N'NV00012', N'NCC00004')
INSERT [dbo].[Phieu_Nhap] ([MaPN], [NgayNhap], [ThanhTien], [MaNVKho], [MaNCC]) VALUES (N'PN000007', CAST(N'2023-05-08' AS Date), 1600000000.0000, N'NV00016', N'NCC00001')
INSERT [dbo].[Phieu_Nhap] ([MaPN], [NgayNhap], [ThanhTien], [MaNVKho], [MaNCC]) VALUES (N'PN000008', CAST(N'2023-05-08' AS Date), 11550000.0000, N'NV00016', N'NCC00001')
GO
INSERT [dbo].[Phu_Tung] ([MaPT], [ChatLuong], [LoaiPT]) VALUES (N'PT00001', N'Tốt', N'Iridium')
INSERT [dbo].[Phu_Tung] ([MaPT], [ChatLuong], [LoaiPT]) VALUES (N'PT00002', N'Tốt', N'Platinum')
INSERT [dbo].[Phu_Tung] ([MaPT], [ChatLuong], [LoaiPT]) VALUES (N'PT00003', N'Đặc biệt', N'HeatProof')
INSERT [dbo].[Phu_Tung] ([MaPT], [ChatLuong], [LoaiPT]) VALUES (N'PT00004', N'Tốt', N'Bán hữu cơ Metalic')
GO
INSERT [dbo].[Tai_Khoan] ([MaNV], [TenDangNhap], [MatKhau], [ChucVu]) VALUES (N'NV00001', N'NV00001', N'8B4B0C', N'Nhân viên quản lý')
INSERT [dbo].[Tai_Khoan] ([MaNV], [TenDangNhap], [MatKhau], [ChucVu]) VALUES (N'NV00002', N'NV00002', N'EDBB48', N'Nhân viên quản lý')
INSERT [dbo].[Tai_Khoan] ([MaNV], [TenDangNhap], [MatKhau], [ChucVu]) VALUES (N'NV00003', N'NV00003', N'06E588', N'Nhân viên quản lý')
INSERT [dbo].[Tai_Khoan] ([MaNV], [TenDangNhap], [MatKhau], [ChucVu]) VALUES (N'NV00004', N'NV00004', N'691283', N'Nhân viên quản lý')
INSERT [dbo].[Tai_Khoan] ([MaNV], [TenDangNhap], [MatKhau], [ChucVu]) VALUES (N'NV00005', N'NV00005', N'22FF1F', N'Nhân viên quản lý')
INSERT [dbo].[Tai_Khoan] ([MaNV], [TenDangNhap], [MatKhau], [ChucVu]) VALUES (N'NV00006', N'NV00006', N'DB9D21', N'Nhân viên thu ngân')
INSERT [dbo].[Tai_Khoan] ([MaNV], [TenDangNhap], [MatKhau], [ChucVu]) VALUES (N'NV00007', N'NV00007', N'480E5B', N'Nhân viên bảo dưỡng')
INSERT [dbo].[Tai_Khoan] ([MaNV], [TenDangNhap], [MatKhau], [ChucVu]) VALUES (N'NV00008', N'NV00008', N'6D9F86', N'Nhân viên kho hàng')
INSERT [dbo].[Tai_Khoan] ([MaNV], [TenDangNhap], [MatKhau], [ChucVu]) VALUES (N'NV00009', N'NV00009', N'9ACF5E', N'Nhân viên tư vấn')
INSERT [dbo].[Tai_Khoan] ([MaNV], [TenDangNhap], [MatKhau], [ChucVu]) VALUES (N'NV00010', N'NV00010', N'E8941B', N'Nhân viên thu ngân')
INSERT [dbo].[Tai_Khoan] ([MaNV], [TenDangNhap], [MatKhau], [ChucVu]) VALUES (N'NV00011', N'NV00011', N'FFC47B', N'Nhân viên bảo dưỡng')
INSERT [dbo].[Tai_Khoan] ([MaNV], [TenDangNhap], [MatKhau], [ChucVu]) VALUES (N'NV00012', N'NV00012', N'15B6B6', N'Nhân viên kho hàng')
INSERT [dbo].[Tai_Khoan] ([MaNV], [TenDangNhap], [MatKhau], [ChucVu]) VALUES (N'NV00013', N'NV00013', N'3D65C0', N'Nhân viên tư vấn')
INSERT [dbo].[Tai_Khoan] ([MaNV], [TenDangNhap], [MatKhau], [ChucVu]) VALUES (N'NV00014', N'NV00014', N'767D0F', N'Nhân viên thu ngân')
INSERT [dbo].[Tai_Khoan] ([MaNV], [TenDangNhap], [MatKhau], [ChucVu]) VALUES (N'NV00015', N'NV00015', N'6993F8', N'Nhân viên bảo dưỡng')
INSERT [dbo].[Tai_Khoan] ([MaNV], [TenDangNhap], [MatKhau], [ChucVu]) VALUES (N'NV00016', N'NV00016', N'F2F212', N'Nhân viên kho hàng')
INSERT [dbo].[Tai_Khoan] ([MaNV], [TenDangNhap], [MatKhau], [ChucVu]) VALUES (N'NV00017', N'NV00017', N'699CFD', N'Nhân viên tư vấn')
GO
INSERT [dbo].[XE] ([MaXe], [LoaiXe], [MauSac], [KhoiLuongBanThan], [DxRxC], [KhoangCachTrucBanhXe], [DoCaoYen], [KhoangSangGamXe], [DungTichBinhXang], [KichCoLopTruoc], [KichCoLopSau], [PhuocTruoc], [PhuocSau], [LoaiDongCo], [CongSuatToiDa], [DungTichNhotMay], [LoaiTruyenDong], [HeThongKhoiDong], [MomentCucDai], [DungTichXiLanh], [DuongKinhXHanhTrinhPitTong], [TySoNen], [DongCoCongNghe]) VALUES (N'XE00001', N'Xe tay ga', N'Cá tính - Xanh Đen Đỏ', N'96 kg', N'1.863 mm x 686 mm x 1.088 mm', N'1.256 mm', N'750 mm', N'117 mm', N'5,2 lít', N'80/90-14M/C 40P - Không săm ', N'90/90-14M/C 46P - Không săm', N'Ống lồng, giảm chấn thủy lực', N'Lò xo trụ đơn, giảm chấn thủy lực', N'Cháy cưỡng bức, làm mát bằng không khí, 4 kỳ, 1 xy lanh', N'6,59 kW/7.500 vòng/phút', N'0,7 lít khi thay dầu 0,8 lít khi rã máy', N'Tự động, vô cấp', N'Điện', N'9,23Nm/5.500 vòng/phút', N'108,2 cm3', N'50 mm x 55,1 mm', N'9,5:1', N'Bộ đề tích hợp ACG Động cơ eSP thông minh thế hệ mới Hệ thống phun xăng điện tử (PGM-FI) Hệ thống ngắt động cơ tạm thời (Idling stop)')
INSERT [dbo].[XE] ([MaXe], [LoaiXe], [MauSac], [KhoiLuongBanThan], [DxRxC], [KhoangCachTrucBanhXe], [DoCaoYen], [KhoangSangGamXe], [DungTichBinhXang], [KichCoLopTruoc], [KichCoLopSau], [PhuocTruoc], [PhuocSau], [LoaiDongCo], [CongSuatToiDa], [DungTichNhotMay], [LoaiTruyenDong], [HeThongKhoiDong], [MomentCucDai], [DungTichXiLanh], [DuongKinhXHanhTrinhPitTong], [TySoNen], [DongCoCongNghe]) VALUES (N'XE00002', N'Xe tay ga', N'Cá tính - Đen Đỏ', N'96 kg', N'1.863 mm x 686 mm x 1.088 mm', N'1.256 mm', N'750 mm', N'117 mm', N'5,2 lít', N'80/90-14M/C 40P - Không săm ', N'90/90-14M/C 46P - Không săm', N'Ống lồng, giảm chấn thủy lực', N'Lò xo trụ đơn, giảm chấn thủy lực', N'Cháy cưỡng bức, làm mát bằng không khí, 4 kỳ, 1 xy lanh', N'6,59 kW/7.500 vòng/phút', N'0,7 lít khi thay dầu 0,8 lít khi rã máy', N'Tự động, vô cấp', N'Điện', N'9,23Nm/5.500 vòng/phút', N'108,2 cm3', N'50 mm x 55,1 mm', N'9,5:1', N'Bộ đề tích hợp ACG Động cơ eSP thông minh thế hệ mới Hệ thống phun xăng điện tử (PGM-FI) Hệ thống ngắt động cơ tạm thời (Idling stop)')
INSERT [dbo].[XE] ([MaXe], [LoaiXe], [MauSac], [KhoiLuongBanThan], [DxRxC], [KhoangCachTrucBanhXe], [DoCaoYen], [KhoangSangGamXe], [DungTichBinhXang], [KichCoLopTruoc], [KichCoLopSau], [PhuocTruoc], [PhuocSau], [LoaiDongCo], [CongSuatToiDa], [DungTichNhotMay], [LoaiTruyenDong], [HeThongKhoiDong], [MomentCucDai], [DungTichXiLanh], [DuongKinhXHanhTrinhPitTong], [TySoNen], [DongCoCongNghe]) VALUES (N'XE00003', N'Xe tay ga', N'Tiêu chuẩn - Trắng Đen Bạc', N'96 kg', N'1.863 mm x 686 mm x 1.088 mm', N'1.256 mm', N'750 mm', N'117 mm', N'5,2 lít', N'80/90-14M/C 40P - Không săm ', N'90/90-14M/C 46P - Không săm', N'Ống lồng, giảm chấn thủy lực', N'Lò xo trụ đơn, giảm chấn thủy lực', N'Cháy cưỡng bức, làm mát bằng không khí, 4 kỳ, 1 xy lanh', N'6,59 kW/7.500 vòng/phút', N'0,7 lít khi thay dầu 0,8 lít khi rã máy', N'Tự động, vô cấp', N'Điện', N'9,23Nm/5.500 vòng/phút', N'108,2 cm3', N'50 mm x 55,1 mm', N'9,5:1', N'Bộ đề tích hợp ACG Động cơ eSP thông minh thế hệ mới Hệ thống phun xăng điện tử (PGM-FI) Hệ thống ngắt động cơ tạm thời (Idling stop)')
INSERT [dbo].[XE] ([MaXe], [LoaiXe], [MauSac], [KhoiLuongBanThan], [DxRxC], [KhoangCachTrucBanhXe], [DoCaoYen], [KhoangSangGamXe], [DungTichBinhXang], [KichCoLopTruoc], [KichCoLopSau], [PhuocTruoc], [PhuocSau], [LoaiDongCo], [CongSuatToiDa], [DungTichNhotMay], [LoaiTruyenDong], [HeThongKhoiDong], [MomentCucDai], [DungTichXiLanh], [DuongKinhXHanhTrinhPitTong], [TySoNen], [DongCoCongNghe]) VALUES (N'XE00004', N'Xe tay ga', N'Cao Cấp - Xanh Nâu Đen', N'96 kg', N'1.863 mm x 686 mm x 1.088 mm', N'1.256 mm', N'750 mm', N'117 mm', N'5,2 lít', N'80/90-14M/C 40P - Không săm ', N'90/90-14M/C 46P - Không săm', N'Ống lồng, giảm chấn thủy lực', N'Lò xo trụ đơn, giảm chấn thủy lực', N'Cháy cưỡng bức, làm mát bằng không khí, 4 kỳ, 1 xy lanh', N'6,59 kW/7.500 vòng/phút', N'0,7 lít khi thay dầu 0,8 lít khi rã máy', N'Tự động, vô cấp', N'Điện', N'9,23Nm/5.500 vòng/phút', N'108,2 cm3', N'50 mm x 55,1 mm', N'9,5:1', N'Bộ đề tích hợp ACG Động cơ eSP thông minh thế hệ mới Hệ thống phun xăng điện tử (PGM-FI) Hệ thống ngắt động cơ tạm thời (Idling stop)')
INSERT [dbo].[XE] ([MaXe], [LoaiXe], [MauSac], [KhoiLuongBanThan], [DxRxC], [KhoangCachTrucBanhXe], [DoCaoYen], [KhoangSangGamXe], [DungTichBinhXang], [KichCoLopTruoc], [KichCoLopSau], [PhuocTruoc], [PhuocSau], [LoaiDongCo], [CongSuatToiDa], [DungTichNhotMay], [LoaiTruyenDong], [HeThongKhoiDong], [MomentCucDai], [DungTichXiLanh], [DuongKinhXHanhTrinhPitTong], [TySoNen], [DongCoCongNghe]) VALUES (N'XE00005', N'Xe tay ga', N'Cao Cấp - Trắng Nâu Đen', N'96 kg', N'1.863 mm x 686 mm x 1.088 mm', N'1.256 mm', N'750 mm', N'117 mm', N'5,2 lít', N'80/90-14M/C 40P - Không săm ', N'90/90-14M/C 46P - Không săm', N'Ống lồng, giảm chấn thủy lực', N'Lò xo trụ đơn, giảm chấn thủy lực', N'Cháy cưỡng bức, làm mát bằng không khí, 4 kỳ, 1 xy lanh', N'6,59 kW/7.500 vòng/phút', N'0,7 lít khi thay dầu 0,8 lít khi rã máy', N'Tự động, vô cấp', N'Điện', N'9,23Nm/5.500 vòng/phút', N'108,2 cm3', N'50 mm x 55,1 mm', N'9,5:1', N'Bộ đề tích hợp ACG Động cơ eSP thông minh thế hệ mới Hệ thống phun xăng điện tử (PGM-FI) Hệ thống ngắt động cơ tạm thời (Idling stop)')
INSERT [dbo].[XE] ([MaXe], [LoaiXe], [MauSac], [KhoiLuongBanThan], [DxRxC], [KhoangCachTrucBanhXe], [DoCaoYen], [KhoangSangGamXe], [DungTichBinhXang], [KichCoLopTruoc], [KichCoLopSau], [PhuocTruoc], [PhuocSau], [LoaiDongCo], [CongSuatToiDa], [DungTichNhotMay], [LoaiTruyenDong], [HeThongKhoiDong], [MomentCucDai], [DungTichXiLanh], [DuongKinhXHanhTrinhPitTong], [TySoNen], [DongCoCongNghe]) VALUES (N'XE00006', N'Xe tay ga', N'Đặc biệt - Xanh Đen', N'96 kg', N'1.863 mm x 686 mm x 1.088 mm', N'1.256 mm', N'750 mm', N'117 mm', N'5,2 lít', N'80/90-14M/C 40P - Không săm ', N'90/90-14M/C 46P - Không săm', N'Ống lồng, giảm chấn thủy lực', N'Lò xo trụ đơn, giảm chấn thủy lực', N'Cháy cưỡng bức, làm mát bằng không khí, 4 kỳ, 1 xy lanh', N'6,59 kW/7.500 vòng/phút', N'0,7 lít khi thay dầu 0,8 lít khi rã máy', N'Tự động, vô cấp', N'Điện', N'9,23Nm/5.500 vòng/phút', N'108,2 cm3', N'50 mm x 55,1 mm', N'9,5:1', N'Bộ đề tích hợp ACG Động cơ eSP thông minh thế hệ mới Hệ thống phun xăng điện tử (PGM-FI) Hệ thống ngắt động cơ tạm thời (Idling stop)')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Chi_Tiet__9849212B4A59A390]    Script Date: 5/8/2023 1:55:54 AM ******/
ALTER TABLE [dbo].[Chi_Tiet_Hoa_Don] ADD UNIQUE NONCLUSTERED 
(
	[MaHD] ASC,
	[MaMH] ASC,
	[MaBD] ASC,
	[MaNVBaoDuong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Khach_Ha__A955A0AA02176AF9]    Script Date: 5/8/2023 1:55:54 AM ******/
ALTER TABLE [dbo].[Khach_Hang] ADD UNIQUE NONCLUSTERED 
(
	[CCCD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Khach_Ha__CA1930A544B40185]    Script Date: 5/8/2023 1:55:54 AM ******/
ALTER TABLE [dbo].[Khach_Hang] ADD UNIQUE NONCLUSTERED 
(
	[SDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Nhan_Vie__A955A0AA39A2FF63]    Script Date: 5/8/2023 1:55:54 AM ******/
ALTER TABLE [dbo].[Nhan_Vien] ADD UNIQUE NONCLUSTERED 
(
	[CCCD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Nhan_Vie__CA1930A5EBE4C0D1]    Script Date: 5/8/2023 1:55:54 AM ******/
ALTER TABLE [dbo].[Nhan_Vien] ADD UNIQUE NONCLUSTERED 
(
	[SDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Chi_Tiet_Hoa_Don] ADD  DEFAULT ((1)) FOR [SoLuong]
GO
ALTER TABLE [dbo].[Chi_Tiet_Phieu_Nhap] ADD  DEFAULT ((0)) FOR [SoLuong]
GO
ALTER TABLE [dbo].[Hoa_Don] ADD  CONSTRAINT [constr_MaHD]  DEFAULT ([dbo].[fn_MaHoaDonTuDong]()) FOR [MaHD]
GO
ALTER TABLE [dbo].[Hoa_Don] ADD  DEFAULT ((0)) FOR [ThanhTien]
GO
ALTER TABLE [dbo].[Khach_Hang] ADD  CONSTRAINT [constr_MaKH]  DEFAULT ([dbo].[fn_MaKhachHangTuDong]()) FOR [MaKH]
GO
ALTER TABLE [dbo].[Kho] ADD  DEFAULT ((0)) FOR [SoLuong]
GO
ALTER TABLE [dbo].[Nhan_Vien] ADD  CONSTRAINT [constr_MaNV]  DEFAULT ([dbo].[fn_MaNhanVienTuDong]()) FOR [MaNV]
GO
ALTER TABLE [dbo].[Nhan_Vien] ADD  DEFAULT ((1)) FOR [TinhTrangLamViec]
GO
ALTER TABLE [dbo].[Phieu_Nhap] ADD  CONSTRAINT [constr_MaPN]  DEFAULT ([dbo].[fn_MaPhieuNhapTuDong]()) FOR [MaPN]
GO
ALTER TABLE [dbo].[Phieu_Nhap] ADD  DEFAULT ((0)) FOR [ThanhTien]
GO
ALTER TABLE [dbo].[Chi_Nhanh]  WITH CHECK ADD FOREIGN KEY([MaNQL])
REFERENCES [dbo].[Nhan_Vien] ([MaNV])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Chi_Tiet_Hoa_Don]  WITH CHECK ADD FOREIGN KEY([MaNVBaoDuong])
REFERENCES [dbo].[Nhan_Vien] ([MaNV])
GO
ALTER TABLE [dbo].[Chi_Tiet_Hoa_Don]  WITH CHECK ADD FOREIGN KEY([MaBD])
REFERENCES [dbo].[Bao_Duong] ([MaBD])
GO
ALTER TABLE [dbo].[Chi_Tiet_Hoa_Don]  WITH CHECK ADD FOREIGN KEY([MaHD])
REFERENCES [dbo].[Hoa_Don] ([MaHD])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Chi_Tiet_Hoa_Don]  WITH CHECK ADD FOREIGN KEY([MaMH])
REFERENCES [dbo].[Mat_Hang] ([MaMH])
GO
ALTER TABLE [dbo].[Chi_Tiet_Phieu_Nhap]  WITH CHECK ADD FOREIGN KEY([MaMH])
REFERENCES [dbo].[Mat_Hang] ([MaMH])
GO
ALTER TABLE [dbo].[Chi_Tiet_Phieu_Nhap]  WITH CHECK ADD FOREIGN KEY([MaPN])
REFERENCES [dbo].[Phieu_Nhap] ([MaPN])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Hoa_Don]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[Khach_Hang] ([MaKH])
GO
ALTER TABLE [dbo].[Hoa_Don]  WITH CHECK ADD FOREIGN KEY([MaNVThuNgan])
REFERENCES [dbo].[Nhan_Vien] ([MaNV])
GO
ALTER TABLE [dbo].[Kho]  WITH CHECK ADD FOREIGN KEY([MaCN])
REFERENCES [dbo].[Chi_Nhanh] ([MaCN])
GO
ALTER TABLE [dbo].[Kho]  WITH CHECK ADD FOREIGN KEY([MaMH])
REFERENCES [dbo].[Mat_Hang] ([MaMH])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Nhan_Vien]  WITH CHECK ADD FOREIGN KEY([MaCN])
REFERENCES [dbo].[Chi_Nhanh] ([MaCN])
GO
ALTER TABLE [dbo].[Phieu_Nhap]  WITH CHECK ADD FOREIGN KEY([MaNCC])
REFERENCES [dbo].[Nha_Cung_Cap] ([MaNCC])
GO
ALTER TABLE [dbo].[Phieu_Nhap]  WITH CHECK ADD FOREIGN KEY([MaNVKho])
REFERENCES [dbo].[Nhan_Vien] ([MaNV])
GO
ALTER TABLE [dbo].[Phu_Tung]  WITH CHECK ADD FOREIGN KEY([MaPT])
REFERENCES [dbo].[Mat_Hang] ([MaMH])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[XE]  WITH CHECK ADD FOREIGN KEY([MaXe])
REFERENCES [dbo].[Mat_Hang] ([MaMH])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Chi_Tiet_Hoa_Don]  WITH CHECK ADD CHECK  (([SoLuong]>=(0)))
GO
ALTER TABLE [dbo].[Chi_Tiet_Phieu_Nhap]  WITH CHECK ADD CHECK  (([SoLuong]>=(0)))
GO
ALTER TABLE [dbo].[Hoa_Don]  WITH CHECK ADD CHECK  ((datediff(day,[NgayLap],getdate())>=(0)))
GO
ALTER TABLE [dbo].[Hoa_Don]  WITH CHECK ADD  CONSTRAINT [constr_chk_NhanVienThuNgan] CHECK  (([dbo].[fn_CheckChucVu](N'Nhân viên thu ngân',[MaNVThuNgan])=(1)))
GO
ALTER TABLE [dbo].[Hoa_Don] CHECK CONSTRAINT [constr_chk_NhanVienThuNgan]
GO
ALTER TABLE [dbo].[Khach_Hang]  WITH CHECK ADD CHECK  ((len([CCCD])=(12)))
GO
ALTER TABLE [dbo].[Khach_Hang]  WITH CHECK ADD CHECK  ((isnumeric([CCCD])=(1)))
GO
ALTER TABLE [dbo].[Khach_Hang]  WITH CHECK ADD CHECK  ((len([SDT])=(10)))
GO
ALTER TABLE [dbo].[Khach_Hang]  WITH CHECK ADD CHECK  ((isnumeric([SDT])=(1)))
GO
ALTER TABLE [dbo].[Kho]  WITH CHECK ADD CHECK  (([SoLuong]>=(0)))
GO
ALTER TABLE [dbo].[Mat_Hang]  WITH CHECK ADD CHECK  (([DonGia]>(0)))
GO
ALTER TABLE [dbo].[Mat_Hang]  WITH CHECK ADD CHECK  (([GiaNhap]>(0)))
GO
ALTER TABLE [dbo].[Nhan_Vien]  WITH CHECK ADD CHECK  ((isnumeric([CCCD])=(1)))
GO
ALTER TABLE [dbo].[Nhan_Vien]  WITH CHECK ADD CHECK  ((len([CCCD])=(12)))
GO
ALTER TABLE [dbo].[Nhan_Vien]  WITH CHECK ADD CHECK  (([GioiTinh]=N'Nam' OR [GioiTinh]=N'Nữ'))
GO
ALTER TABLE [dbo].[Nhan_Vien]  WITH CHECK ADD CHECK  ((len([SDT])=(10)))
GO
ALTER TABLE [dbo].[Nhan_Vien]  WITH CHECK ADD CHECK  ((isnumeric([SDT])=(1)))
GO
ALTER TABLE [dbo].[Nhan_Vien]  WITH CHECK ADD  CONSTRAINT [constr_chk_QuanLyChiNhanh] CHECK  (([dbo].[fn_CheckSoLuongQuanLyChiNhanh]()=(1)))
GO
ALTER TABLE [dbo].[Nhan_Vien] CHECK CONSTRAINT [constr_chk_QuanLyChiNhanh]
GO
ALTER TABLE [dbo].[Phieu_Nhap]  WITH CHECK ADD CHECK  ((datediff(day,[NgayNhap],getdate())>=(0)))
GO
ALTER TABLE [dbo].[Phieu_Nhap]  WITH CHECK ADD  CONSTRAINT [constr_chk_NhanVienKhoHang] CHECK  (([dbo].[fn_CheckChucVu](N'Nhân viên kho hàng',[MaNVKho])=(1)))
GO
ALTER TABLE [dbo].[Phieu_Nhap] CHECK CONSTRAINT [constr_chk_NhanVienKhoHang]
GO
/****** Object:  StoredProcedure [dbo].[sp_SuaBaoDuong]    Script Date: 5/8/2023 1:55:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SuaBaoDuong](
	@MaBD NVARCHAR(11),
    @TenBD nvarchar(30),
    @PhiBD money,
    @ThongTinBaoDuong nvarchar(max)
)
AS 
BEGIN
    IF EXISTS (SELECT 1 FROM Bao_Duong WHERE TenBD = @TenBD AND PhiBD = @PhiBD AND ThongTinBaoDuong = @ThongTinBaoDuong)
    BEGIN
        RAISERROR (N'Thông tin bảo dưỡng đã tồn tại trong hệ thống!', 16, 1)
        RETURN;
    END
    UPDATE Bao_Duong SET TenBD=@TenBD,PhiBD=@PhiBD,ThongTinBaoDuong=@ThongTinBaoDuong WHERE Bao_Duong.MaBD=@MaBD
END
GO
/****** Object:  StoredProcedure [dbo].[sp_SuaCTHDBaoDuong]    Script Date: 5/8/2023 1:55:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SuaCTHDBaoDuong](
	@MaHD NVARCHAR(11),
	@MaBD NVARCHAR(11),
	@MaNVBD NVARCHAR(11),
	@SoLuong int
)
AS BEGIN
	update Chi_Tiet_Hoa_Don
	set SoLuong=@SoLuong
	where MaHD=@MaHD and MaBD=@MaBD AND Chi_Tiet_Hoa_Don.MaNVBaoDuong=@MaNVBD
END
GO
/****** Object:  StoredProcedure [dbo].[sp_SuaCTHDMatHang]    Script Date: 5/8/2023 1:55:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SuaCTHDMatHang](
	@MaHD NVARCHAR(11),
	@MaMH NVARCHAR(11),
	@SoLuong int
)
AS BEGIN
	update Chi_Tiet_Hoa_Don
	set SoLuong=@SoLuong
	where MaHD=@MaHD and MaMH=@MaMH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_SuaKhachHang]    Script Date: 5/8/2023 1:55:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SuaKhachHang]
(
    @MaKH nvarchar(11),
    @TenKH nvarchar(40),
    @SDT nvarchar(11),
	@GioiTinh NVARCHAR(5),
    @CCCD nvarchar(13),
    @DiaChi nvarchar(75)
)
AS
BEGIN
   BEGIN TRY
		UPDATE Khach_Hang SET TenKH = @TenKH,SDT = @SDT,GioiTinh=@GioiTinh,CCCD = @CCCD, DiaChi = @DiaChi WHERE MaKH = @MaKH
	END TRY
	BEGIN CATCH
		DECLARE @errorMessage NVARCHAR(4000)
		SET @errorMessage = ERROR_MESSAGE()
		IF @errorMessage LIKE '%UQ__tmp_ms_x__A955A0AA8907BFB4%'
			RAISERROR(N'Trùng CCCD với 1 khách hàng khác', 16, 1)
		ELSE IF @errorMessage LIKE '%UQ__tmp_ms_x__CA1930A590397736%'
			RAISERROR(N'Trùng số điện thoại với 1 khách hàng khác', 16, 1)
        ELSE IF @errorMessage LIKE '%CK__Khach_Hang__SDT__0C50D423%'
			RAISERROR(N'SĐT phải có 10 chữ số', 16, 1)
		ELSE IF @errorMessage LIKE '%CK__Khach_Hang__CCCD__0D44F85C%'
			RAISERROR(N'CCCD phải có 12 chữ số', 16, 1)
		ELSE IF @errorMessage LIKE '%CK__Khach_Hang__CCCD__0F2D40CE%'
			RAISERROR(N'CCCD chỉ được phép có số', 16, 1)
		ELSE IF @errorMessage LIKE '%CK__Khach_Hang__SDT__0E391C95%'
			RAISERROR(N'SĐT chỉ được phép có số', 16, 1)
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_SuaNhanVien]    Script Date: 5/8/2023 1:55:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SuaNhanVien](
    @MaNV nvarchar(11),
    @TenNV nvarchar(40),
    @NgaySinh date,
    @DiaChi nvarchar(75),
    @SDT nvarchar(11),
    @GioiTinh nvarchar(4),
    @CCCD nvarchar(13),
    @ChucVu nvarchar(50),
    @TenCN nvarchar(50),
    @Luong MONEY
)
AS
BEGIN
	BEGIN TRY
		DECLARE @MaCN nvarchar(11);
		SELECT @MaCN = MaCN FROM Chi_Nhanh WHERE TenCN = @TenCN;
		UPDATE Nhan_Vien
		SET TenNV = @TenNV, NgaySinh = @NgaySinh,DiaChi = @DiaChi,SDT = @SDT, GioiTinh = @GioiTinh,CCCD = @CCCD, ChucVu = @ChucVu,MaCN=@MaCN,  Luong = @Luong
		WHERE MaNV = @MaNV
	END TRY
	BEGIN CATCH
		DECLARE @errorMessage NVARCHAR(4000)
		SET @errorMessage = ERROR_MESSAGE()
		IF @errorMessage LIKE '%CK__Nhan_Vien__SDT__2A164134%'
			RAISERROR(N'SĐT phải có 10 chữ số', 16, 1)
		ELSE IF @errorMessage LIKE '%CK__Nhan_Vien__CCCD__75A278F5%'
			RAISERROR(N'CCCD phải có 12 chữ số', 16, 1)
		ELSE IF @errorMessage LIKE '%UQ__Nhan_Vie__A955A0AAB43DACE3%'
			RAISERROR(N'CCCD bị trùng với nhân viên khác', 16, 1)
		ELSE IF @errorMessage LIKE '%UQ__Nhan_Vie__CA1930A59E569782%'
			RAISERROR(N'SĐT bị trùng với nhân viên khác', 16, 1)
		ELSE IF @errorMessage LIKE '%CK__Nhan_Vien__SDT__2EDAF651%'
			RAISERROR(N'SĐT chỉ được phép chứa các chữ số', 16, 1)
		ELSE IF @errorMessage LIKE '%CK__Nhan_Vien__CCCD__2FCF1A8A%'
			RAISERROR(N'CCCD chỉ được phép chứa các chữ số', 16, 1)
		ELSE IF @errorMessage LIKE '%constr_chk_QuanLyChiNhanh%'
			RAISERROR(N'Một chi nhánh không thể có tận 2 quản lý', 16, 1)
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_SuaPhuTung]    Script Date: 5/8/2023 1:55:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SuaPhuTung]
	@MaMH nvarchar(11),
	@HSX nvarchar(30),
	@TenMH nvarchar(40),
	@DonGia money,
	@GiaNhap money,
	@HinhAnh Image,
	@ChatLuong nvarchar(30),
	@LoaiPT nvarchar(100)
AS
BEGIN
	IF EXISTS(
    SELECT 1 
    FROM Mat_Hang 
    JOIN Phu_Tung ON MaMH=MaPT 
    WHERE HSX=@HSX AND TenMH=@TenMH AND ChatLuong=@ChatLuong AND LoaiPT=@LoaiPT
    AND HashBytes('SHA1', CONVERT(VARBINARY(MAX), HinhAnh)) = HashBytes('SHA1', CONVERT(VARBINARY(MAX), @HinhAnh))
)	BEGIN
		RAISERROR (N'Thông tin phụ tùng đã tồn tại trong hệ thống!', 16, 1)
		RETURN;
	END
	UPDATE Mat_Hang SET HSX = @HSX, TenMH = @TenMH, DonGia = @DonGia, GiaNhap = @GiaNhap, HinhAnh = @HinhAnh WHERE MaMH = @MaMH
	UPDATE Phu_Tung SET ChatLuong = @ChatLuong, LoaiPT = @LoaiPT WHERE MaPT = @MaMH 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_SuaXe]    Script Date: 5/8/2023 1:55:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SuaXe](
	@MaMH nvarchar(30),
	@HSX nvarchar(30),
    @TenMH nvarchar(40),
    @DonGia money,
    @GiaNhap money,
	@HinhAnh IMAGE,
	@LoaiXe nvarchar(MAX),
	@MauSac nvarchar(MAX),
	@KhoiLuongBanThan nvarchar(max),
	@DxRxC nvarchar(max),
	@KhoangCachTrucBanhXe nvarchar(max),
	@DoCaoYen nvarchar(max),
	@KhoangSangGamXe nvarchar(max),
	@DungTichBinhXang nvarchar(max),
	@KichCoLopTruoc nvarchar(max),
	@KichCoLopSau nvarchar(max),
	@PhuocTruoc nvarchar(max),
	@PhuocSau nvarchar(max),
	@LoaiDongCo nvarchar(max),
	@CongSuatToiDa nvarchar(max),
	@DungTichNhotMay nvarchar(max),
	@LoaiTruyenDong nvarchar(max),
	@HeThongKhoiDong nvarchar(max),
	@MomentCucDai nvarchar(max),
	@DungTichXiLanh nvarchar(max),
	@DuongKinhXHanhTrinhPitTong nvarchar(max),
	@TySoNen nvarchar(max),
	@DongCoCongNghe nvarchar(max)
)
AS
BEGIN
	--check nếu xe nào giống thông số xe được sửa không
	IF EXISTS (SELECT 1 FROM XE JOIN Mat_Hang ON MaMH = MaXe WHERE HSX = @HSX AND TenMH = @TenMH AND LoaiXe = @LoaiXe AND MauSac = @MauSac AND KhoiLuongBanThan = @KhoiLuongBanThan AND DxRxC = @DxRxC
        AND KhoangCachTrucBanhXe = @KhoangCachTrucBanhXe AND DoCaoYen = @DoCaoYen AND KhoangSangGamXe = @KhoangSangGamXe AND DungTichBinhXang = @DungTichBinhXang AND KichCoLopTruoc = @KichCoLopTruoc
        AND KichCoLopSau = @KichCoLopSau AND PhuocTruoc = @PhuocTruoc AND PhuocSau = @PhuocSau AND LoaiDongCo = @LoaiDongCo AND CongSuatToiDa = @CongSuatToiDa AND DungTichNhotMay = @DungTichNhotMay
        AND LoaiTruyenDong = @LoaiTruyenDong AND HeThongKhoiDong = @HeThongKhoiDong AND MomentCucDai = @MomentCucDai AND DungTichXiLanh = @DungTichXiLanh AND DuongKinhXHanhTrinhPitTong = @DuongKinhXHanhTrinhPitTong
        AND TySoNen = @TySoNen AND DongCoCongNghe = @DongCoCongNghe
)	BEGIN
		RAISERROR (N'Thông tin xe đã tồn tại trong hệ thống!', 16, 1)
		RETURN;
	END

	UPDATE Mat_Hang SET HSX = @HSX,TenMH = @TenMH,DonGia = @DonGia,GiaNhap = @GiaNhap,HinhAnh = @HinhAnh
	WHERE MaMH = @MaMH

	UPDATE XE
	SET LoaiXe = @LoaiXe,MauSac = @MauSac,KhoiLuongBanThan = @KhoiLuongBanThan,DxRxC = @DxRxC,KhoangCachTrucBanhXe = @KhoangCachTrucBanhXe,DoCaoYen = @DoCaoYen,
		KhoangSangGamXe = @KhoangSangGamXe,DungTichBinhXang = @DungTichBinhXang,KichCoLopTruoc = @KichCoLopTruoc,KichCoLopSau = @KichCoLopSau,PhuocTruoc = @PhuocTruoc,
		PhuocSau = @PhuocSau,LoaiDongCo = @LoaiDongCo,CongSuatToiDa = @CongSuatToiDa,DungTichNhotMay = @DungTichNhotMay,LoaiTruyenDong = @LoaiTruyenDong,HeThongKhoiDong = @HeThongKhoiDong,
		MomentCucDai = @MomentCucDai,DungTichXiLanh = @DungTichXiLanh,DuongKinhXHanhTrinhPitTong = @DuongKinhXHanhTrinhPitTong,TySoNen = @TySoNen,DongCoCongNghe = @DongCoCongNghe
	WHERE MaXE = @MaMH
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_ThemBaoDuong]    Script Date: 5/8/2023 1:55:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ThemBaoDuong](
    @TenBD nvarchar(30),
    @PhiBD money,
    @ThongTinBaoDuong nvarchar(max)
)
AS 
BEGIN
    IF EXISTS (SELECT 1 FROM Bao_Duong WHERE TenBD = @TenBD AND PhiBD = @PhiBD AND ThongTinBaoDuong = @ThongTinBaoDuong)
    BEGIN
        RAISERROR (N'Thông tin bảo dưỡng đã tồn tại trong hệ thống!', 16, 1)
        RETURN;
    END
    ELSE
    BEGIN
		DECLARE @NextID NVARCHAR(11),@LastID INT
		SELECT @LastID = ISNULL(MAX(CAST(SUBSTRING(MaBD, 3, LEN(MaBD) - 2) AS INT)), 0)
		FROM Bao_Duong -- lấy số bảo dưỡng có mã số cao nhất
		IF @LastID <= 99999
			SET @NextID = 'BD' + RIGHT('0000' + CAST(ISNULL(@LastID, 0) + 1 AS NVARCHAR), 5)
		ELSE
			SET @NextID = 'BD' + CAST(ISNULL(@LastID, 0) + 1 AS NVARCHAR)
        INSERT INTO Bao_Duong VALUES (@NextID, @TenBD,@PhiBD, @ThongTinBaoDuong)  
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ThemCTHDBaoDuong]    Script Date: 5/8/2023 1:55:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ThemCTHDBaoDuong](
	@MaHD NVARCHAR(11),
	@MaBD NVARCHAR(11),
	@MaNVBD NVARCHAR(11)
)
AS BEGIN
	INSERT INTO Chi_Tiet_Hoa_Don (MaHD, MaBD,SoLuong,MaNVBaoDuong)
	VALUES (@MaHD, @MaBD, 1,@MaNVBD);
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ThemCTHDMatHang]    Script Date: 5/8/2023 1:55:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ThemCTHDMatHang](
	@MaHD NVARCHAR(11),
	@MaMH NVARCHAR(11)
)
AS BEGIN
	INSERT INTO Chi_Tiet_Hoa_Don (MaHD, MaMH,SoLuong)
	VALUES (@MaHD, @MaMH,1);
END

GO
/****** Object:  StoredProcedure [dbo].[sp_ThemCTPN]    Script Date: 5/8/2023 1:55:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ThemCTPN](
	@MaPN NVARCHAR(11),
	@MaMH NVARCHAR(11),
	@SoLuong MONEY
)
AS BEGIN
	INSERT INTO Chi_Tiet_Phieu_Nhap (MaPN, MaMH,SoLuong)
	VALUES (@MaPN, @MaMH,@SoLuong);
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ThemHoaDon]    Script Date: 5/8/2023 1:55:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ThemHoaDon](

	@NgayLap date ,
	@MaNVThuNgan nvarchar(11) ,
	@MaKH nvarchar(11)
)
AS BEGIN
	BEGIN try
		INSERT INTO Hoa_Don (NgayLap,MaKH,MaNVThuNgan)
		values (@NgayLap,@MaKH,@MaNVThuNgan)
	END TRY
	BEGIN CATCH
		DECLARE @errorMessage NVARCHAR(4000)
		SET @errorMessage = ERROR_MESSAGE()
		IF @errorMessage LIKE '%constr_chk_NhanVienThuNgan%'
			RAISERROR(N'Người lập hóa đơn phải là nhân viên thu ngân còn đang làm việc', 16, 1)
		ELSE IF @errorMessage LIKE '%CK__Hoa_Don__NgayLap__7C4F7684%'
			RAISERROR(N'Ngày lập không được là 1 ngày trong tương lai', 16, 1)
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ThemKhachHang]    Script Date: 5/8/2023 1:55:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_ThemKhachHang](
	@TenKH nvarchar(40),
	@SDT nvarchar(11),
	@GioiTinh NVARCHAR(5),
	@CCCD nvarchar(13),
	@DiaChi nvarchar(75)
)
AS
BEGIN
	BEGIN TRY
		INSERT INTO Khach_Hang (TenKH, SDT,GioiTinh, CCCD, DiaChi)
		VALUES (@TenKH, @SDT,@GioiTinh, @CCCD, @DiaChi)
	END TRY
	BEGIN CATCH
		DECLARE @errorMessage NVARCHAR(4000)
		SET @errorMessage = ERROR_MESSAGE()
		IF @errorMessage LIKE '%UQ__tmp_ms_x__A955A0AA8907BFB4%'
			RAISERROR(N'Trùng CCCD với 1 khách hàng khác', 16, 1)
		ELSE IF @errorMessage LIKE '%UQ__tmp_ms_x__CA1930A590397736%'
			RAISERROR(N'Trùng số điện thoại với 1 khách hàng khác', 16, 1)
        ELSE IF @errorMessage LIKE '%CK__Khach_Hang__SDT__0C50D423%'
			RAISERROR(N'SĐT phải có 10 chữ số', 16, 1)
		ELSE IF @errorMessage LIKE '%CK__Khach_Hang__CCCD__0D44F85C%'
			RAISERROR(N'CCCD phải có 12 chữ số', 16, 1)
		ELSE IF @errorMessage LIKE '%CK__Khach_Hang__CCCD__0F2D40CE%'
			RAISERROR(N'CCCD chỉ được phép có số', 16, 1)
		ELSE IF @errorMessage LIKE '%CK__Khach_Hang__SDT__0E391C95%'
			RAISERROR(N'SĐT chỉ được phép có số', 16, 1)
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ThemNhanVien]    Script Date: 5/8/2023 1:55:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ThemNhanVien](
    @TenNV nvarchar(40),
    @NgaySinh date,
    @DiaChi nvarchar(75),
    @SDT nvarchar(11),
    @GioiTinh nvarchar(4),
    @CCCD nvarchar(13),
    @ChucVu nvarchar(50),
    @TenCN nvarchar(50),
    @Luong MONEY)
AS
BEGIN
   BEGIN TRY
		 -- Lấy mã chi nhánh tương ứng với tên chi nhánh được truyền vào
		DECLARE @MaCN NVARCHAR(11)
		SELECT @MaCN = MaCN FROM Chi_Nhanh WHERE TenCN = @TenCN;
		-- Thêm nhân viên mới vào bảng Nhan_Vien
		INSERT INTO Nhan_Vien (TenNV, NgaySinh, DiaChi, SDT, GioiTinh, CCCD, ChucVu, MaCN, Luong)
		VALUES (@TenNV, @NgaySinh, @DiaChi, @SDT, @GioiTinh, @CCCD, @ChucVu, @MaCN, @Luong);
   END TRY
   BEGIN CATCH
		DECLARE @errorMessage NVARCHAR(4000)
		SET @errorMessage = ERROR_MESSAGE()
		IF @errorMessage LIKE '%CK__Nhan_Vien__SDT__2A164134%'
			RAISERROR(N'SĐT phải có 10 chữ số', 16, 1)
		ELSE IF @errorMessage LIKE '%CK__Nhan_Vien__CCCD__75A278F5%'
			RAISERROR(N'CCCD phải có 12 chữ số', 16, 1)
		ELSE IF @errorMessage LIKE '%UQ__Nhan_Vie__A955A0AAB43DACE3%'
			RAISERROR(N'CCCD bị trùng với nhân viên khác', 16, 1)
		ELSE IF @errorMessage LIKE '%UQ__Nhan_Vie__CA1930A59E569782%'
			RAISERROR(N'SĐT bị trùng với nhân viên khác', 16, 1)
		ELSE IF @errorMessage LIKE '%CK__Nhan_Vien__SDT__2EDAF651%'
			RAISERROR(N'SĐT chỉ được phép chứa các chữ số', 16, 1)
		ELSE IF @errorMessage LIKE '%CK__Nhan_Vien__CCCD__2FCF1A8A%'
			RAISERROR(N'CCCD chỉ được phép chứa các chữ số', 16, 1)
		ELSE IF @errorMessage LIKE '%constr_chk_QuanLyChiNhanh%'
			RAISERROR(N'Một chi nhánh không thể có tận 2 quản lý', 16, 1)
	END CATCH
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_ThemPhieuNhap]    Script Date: 5/8/2023 1:55:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ThemPhieuNhap](
	@NgayNhap date,
	@MaNVKho nvarchar(11),
	@MaNCC nvarchar(11)
)
AS BEGIN
	BEGIN TRY
		INSERT INTO [dbo].[Phieu_Nhap] (NgayNhap,MaNVKho,MaNCC) VALUES (@NgayNhap,@MaNVKho,@MaNCC)
	END TRY
	BEGIN CATCH
		DECLARE @errorMessage NVARCHAR(4000)
		SET @errorMessage = ERROR_MESSAGE()
		IF @errorMessage LIKE '%constr_chk_NhanVienKhoHang%'
			RAISERROR(N'Người lập hóa đơn phải là nhân viên quản lý kho còn đang làm việc', 16, 1)
		ELSE IF @errorMessage LIKE '%CK__Phieu_Nha__NgayN__0E6E26BF%'
			RAISERROR(N'Ngày nhập không được là 1 ngày trong tương lai', 16, 1)
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ThemPhuTung]    Script Date: 5/8/2023 1:55:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ThemPhuTung](
	@HSX nvarchar(30),
    @TenMH nvarchar(40),
    @DonGia money,
    @GiaNhap money,
    @HinhAnh Image,
	@ChatLuong nvarchar(30),
	@LoaiPT nvarchar(100)
)
AS
BEGIN -- tạo biến để lưu mã mặt hàng
	DECLARE @MaMH NVARCHAR(11), @LastID INT ;
		IF EXISTS(	SELECT 1 FROM Mat_Hang JOIN Phu_Tung on MaMH=MaPT WHERE HSX=@HSX and TenMH=@TenMH and ChatLuong=@ChatLuong and LoaiPT=@LoaiPT)-- check xem có phụ tùng nào giống mọi thông số không
		BEGIN
			RAISERROR (N'Thông tin phụ tùng đã tồn tại trong hệ thống!', 16, 1)
			RETURN;
		END
		ELSE	
		BEGIN
			SET @LastID = (SELECT ISNULL(MAX(CAST(SUBSTRING(MaPT, 3,LEN(MaPT)-2) AS INT)),0) FROM Phu_Tung)-- tạo mã phụ tùng tự động
			IF @LastID <= 99999
				SET @MaMH = 'PT' + RIGHT('0000' + CAST(ISNULL(@LastID, 0) + 1 AS NVARCHAR), 5)
			ELSE
				SET @MaMH = 'PT' + CAST(ISNULL(@LastID, 0) + 1 AS NVARCHAR)
			INSERT INTO Mat_Hang VALUES (@MaMH, @HSX, @TenMH, @DonGia, @GiaNhap, @HinhAnh)
			INSERT INTO Phu_Tung VALUES (@MaMH, @ChatLuong, @LoaiPT)
		END
END;

GO
/****** Object:  StoredProcedure [dbo].[sp_ThemXe]    Script Date: 5/8/2023 1:55:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ThemXe](
	@HSX nvarchar(30),
    @TenMH nvarchar(40),
    @DonGia money,
    @GiaNhap money,
	@HinhAnh IMAGE,
	@LoaiXe nvarchar(MAX),
	@MauSac nvarchar(MAX),
	@KhoiLuongBanThan nvarchar(max),
	@DxRxC nvarchar(max),
	@KhoangCachTrucBanhXe nvarchar(max),
	@DoCaoYen nvarchar(max),
	@KhoangSangGamXe nvarchar(max),
	@DungTichBinhXang nvarchar(max),
	@KichCoLopTruoc nvarchar(max),
	@KichCoLopSau nvarchar(max),
	@PhuocTruoc nvarchar(max),
	@PhuocSau nvarchar(max),
	@LoaiDongCo nvarchar(max),
	@CongSuatToiDa nvarchar(max),
	@DungTichNhotMay nvarchar(max),
	@LoaiTruyenDong nvarchar(max),
	@HeThongKhoiDong nvarchar(max),
	@MomentCucDai nvarchar(max),
	@DungTichXiLanh nvarchar(max),
	@DuongKinhXHanhTrinhPitTong nvarchar(max),
	@TySoNen nvarchar(max),
	@DongCoCongNghe nvarchar(max)
)
AS
BEGIN -- tạo biến để lưu mã mặt hàng
	DECLARE @MaMH NVARCHAR(11), @LastID INT ;
	IF EXISTS (SELECT 1 FROM XE JOIN Mat_Hang ON MaMH = MaXe WHERE HSX = @HSX AND TenMH = @TenMH AND LoaiXe = @LoaiXe AND MauSac = @MauSac AND KhoiLuongBanThan = @KhoiLuongBanThan AND DxRxC = @DxRxC
        AND KhoangCachTrucBanhXe = @KhoangCachTrucBanhXe AND DoCaoYen = @DoCaoYen AND KhoangSangGamXe = @KhoangSangGamXe AND DungTichBinhXang = @DungTichBinhXang AND KichCoLopTruoc = @KichCoLopTruoc
        AND KichCoLopSau = @KichCoLopSau AND PhuocTruoc = @PhuocTruoc AND PhuocSau = @PhuocSau AND LoaiDongCo = @LoaiDongCo AND CongSuatToiDa = @CongSuatToiDa AND DungTichNhotMay = @DungTichNhotMay
        AND LoaiTruyenDong = @LoaiTruyenDong AND HeThongKhoiDong = @HeThongKhoiDong AND MomentCucDai = @MomentCucDai AND DungTichXiLanh = @DungTichXiLanh AND DuongKinhXHanhTrinhPitTong = @DuongKinhXHanhTrinhPitTong
        AND TySoNen = @TySoNen AND DongCoCongNghe = @DongCoCongNghe
)--check nếu xe chưa tồn tại thì cho thêm
	BEGIN
		RAISERROR (N'Thông tin xe đã tồn tại trong hệ thống!', 16, 1)
		RETURN;
	END
	ELSE	
	BEGIN
		SET @LastID = (SELECT ISNULL(MAX(CAST(SUBSTRING(MaXe, 3,LEN(MaXe)-1) AS INT)),0) FROM Xe)
		IF @LastID <= 99999
			SET @MaMH = 'XE' + RIGHT('0000' + CAST(ISNULL(@LastID, 0) + 1 AS NVARCHAR), 5)
		ELSE
			SET @MaMH = 'XE' + CAST(ISNULL(@LastID, 0) + 1 AS NVARCHAR)
		INSERT INTO Mat_Hang VALUES (@MaMH, @HSX, @TenMH, @DonGia, @GiaNhap, @HinhAnh)
		INSERT INTO Xe VALUES (@MaMH,@LoaiXe, @MauSac, @KhoiLuongBanThan, @DxRxC, @KhoangCachTrucBanhXe, @DoCaoYen, @KhoangSangGamXe, @DungTichBinhXang, @KichCoLopTruoc, @KichCoLopSau, @PhuocTruoc, @PhuocSau, @LoaiDongCo, @CongSuatToiDa, @DungTichNhotMay, @LoaiTruyenDong, @HeThongKhoiDong, @MomentCucDai, @DungTichXiLanh, @DuongKinhXHanhTrinhPitTong, @TySoNen, @DongCoCongNghe)
		
		INSERT INTO Kho (MaCN, MaMH, SoLuong)
		SELECT Chi_Nhanh.MaCN, @MaMH, 0
		FROM Chi_Nhanh ;
	END
END;
GO
/****** Object:  Trigger [dbo].[trg_CapNhatThanhTienHoaDon]    Script Date: 5/8/2023 1:55:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[trg_CapNhatThanhTienHoaDon] ON [dbo].[Chi_Tiet_Hoa_Don] 
AFTER INSERT, DELETE, UPDATE AS
BEGIN
	 --tạo biến để lấy giá trị của hoá đơn vừa được sửa, và 2 biến để biết số tiền tăng hay giảm
	DECLARE @MaHDUpdate NVARCHAR(11), @MaCN NVARCHAR(11),@TienTang MONEY, @TienGiam MONEY , @MaMHBiXoa NVARCHAR(11), @MaMHDuocThem NVARCHAR(11), @SoluongBiXoa INT, @SoluongDuocThem INT;

	 --nếu bảng deleted tồn tại thì tính tiền giảm
	IF EXISTS(SELECT 1 FROM deleted) 
	BEGIN
		IF ((SELECT MaMH FROM DELETED)IS NOT NULL)    -- nếu trong chi tiết hoá đơn tồn tại mã mặt hàng
		BEGIN  -- tính tổng tiền mặt hàng trong bảng deleted và tại đây lấy luôn mã hoá đơn có sự chỉnh sửa 
			SELECT @TienGiam = deleted.SoLuong * Mat_Hang.DonGia, @MaHDUpdate = deleted.MaHD, @MaMHBiXoa=Mat_Hang.MaMH, @SoluongBiXoa=SoLuong
			FROM deleted JOIN Mat_Hang on deleted.MaMH = Mat_Hang.MaMH
		END
		ELSE -- nếu trong chi tiết hoá đơn tồn tại mã bảo dưỡng
		BEGIN -- tính tổng tiền bảo dưỡng trong bảng deleted
			SELECT @TienGiam = deleted.SoLuong * Bao_Duong.PhiBD, @MaHDUpdate = deleted.MaHD -- tính tổng tiền của bảo dưỡng đó
			FROM deleted JOIN Bao_Duong on deleted.MaBD = Bao_Duong.MaBD
			
		END 
	END
	ELSE -- nếu không tồn tại bảng deleted
	BEGIN
		SET @TienGiam = 0 -- set cho tiền giảm bằng 0
		SET @SoluongBiXoa=0--xet so luong bị xoá là 0
		SELECT @MaHDUpdate = inserted.MaHD FROM inserted -- do bảng deleted không tồn tại nên chắc ăn đây là trường hợp insert
	END

	 --nếu bảng inserted tồn tại thì tính tiền tăng
	IF EXISTS(SELECT 1 FROM inserted) 
	BEGIN
		IF ((SELECT MaMH FROM inserted)IS NOT NULL)  -- nếu trong chi tiết hoá đơn tồn tại mã mặt hàng
		BEGIN -- tính tổng tiền mặt hàng trong bảng inserted
			SELECT @TienTang = inserted.SoLuong * Mat_Hang.DonGia, @MaMHDuocThem=Mat_Hang.MaMH,@SoluongDuocThem=SoLuong  -- tính tổng tiền mặt hàng trong đó
			FROM inserted JOIN Mat_Hang on inserted.MaMH = Mat_Hang.MaMH
		END
		ELSE -- nếu trong chi tiết hoá đơn tồn tại mã bảo dưỡng
		BEGIN -- tính tổng tiền bảo dưỡng trong bảng inserted
			SELECT @TienTang = inserted.SoLuong * Bao_Duong.PhiBD -- tính tổng tiền của bảo dưỡng đó
			FROM inserted JOIN Bao_Duong on inserted.MaBD = Bao_Duong.MaBD
		END 
	END
	ELSE -- nếu không tồn tại bảng inserted
	BEGIN
		SET @TienTang = 0 -- set cho tiền giảm bằng 0
		SET @SoluongDuocThem=0-- set so luong tăng là 0
	END
	SELECT @MaCN=MaCN -- lấy mã chi nhánh của hoá đơn bị tác động để cập nhật kho
	FROM Hoa_Don JOIN Nhan_Vien on MaNVThuNgan=MaNV 
	WHERE MaHD=@MaHDUpdate
	BEGIN TRY-- dùng try catch bắt lại vì có thể có trường hợp sau khi thêm hay sửa chi tiết hóa đơn làm cho kho bị âm
		
		UPDATE Kho
		SET SoLuong = SoLuong + @SoluongBiXoa 
		WHERE MaMH = @MaMHBiXoa and @MaMHBiXoa is not null AND Kho.MaCN=@MaCN
		
		
		UPDATE Kho
		SET SoLuong = SoLuong - @SoluongDuocThem
		WHERE MaMH = @MaMHDuocThem and @MaMHDuocThem is not null AND Kho.MaCN=@MaCN
		
		UPDATE Hoa_Don-- cập nhật lại tiền trong hóa đơn
		SET ThanhTien = ThanhTien + @TienTang - @TienGiam  WHERE MaHD=@MaHDUpdate
		
		
	END TRY
	BEGIN CATCH
		RAISERROR(N'Kho Không Đủ Số Lượng', 16, 1)
	END CATCH;
END;
GO
ALTER TABLE [dbo].[Chi_Tiet_Hoa_Don] ENABLE TRIGGER [trg_CapNhatThanhTienHoaDon]
GO
/****** Object:  Trigger [dbo].[trg_CapNhatThanhTienPhieuNhap]    Script Date: 5/8/2023 1:55:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[trg_CapNhatThanhTienPhieuNhap] ON [dbo].[Chi_Tiet_Phieu_Nhap]
AFTER INSERT AS
BEGIN
	 --tạo biến để lấy giá trị của phiếu nhập vừa được sửa, và 2 biến để biết số tiền tăng hay giảm , 2 biến chứa số lượng tăng giảm và mã chi nhánh để chỉnh sửa trong kho
	DECLARE @MaPNUpdate NVARCHAR(11), @TienTang MONEY, @MaCN NVARCHAR(11), @MaMHDuocThem NVARCHAR(11), @Soluong INT;
	
	SELECT @MaPNUpdate=MaPN-- lấy mã phiếu nhập được thêm
	FROM inserted 

	SELECT @TienTang = inserted.SoLuong * Mat_Hang.GiaNhap, @MaMHDuocThem=Mat_Hang.MaMH,@Soluong=SoLuong --lấy số tiền tăng lên và mặt hàng được thêm vào số lượng lun 
	FROM inserted JOIN Mat_Hang on inserted.MaMH = Mat_Hang.MaMH
	
	UPDATE Phieu_Nhap -- tính lại tiền của phiếu nhập đó
	SET ThanhTien = ThanhTien + @TienTang WHERE MaPN=@MaPNUpdate
	
	SELECT @MaCN=MaCN -- lấy mã chi nhánh của phiếu nhập bị tác động để cập nhật kho
	FROM Phieu_Nhap JOIN Nhan_Vien on MaNVKho=MaNV 
	WHERE MaPN=@MaPNUpdate
	
	UPDATE Kho-- cập nhật số lượng trong kho
	SET SoLuong+=@Soluong
	Where MaCN=@MaCN and @MaMHDuocThem is not null and MaMH=@MaMHDuocThem 
END;
GO
ALTER TABLE [dbo].[Chi_Tiet_Phieu_Nhap] ENABLE TRIGGER [trg_CapNhatThanhTienPhieuNhap]
GO
/****** Object:  Trigger [dbo].[trg_SuaNhanVien]    Script Date: 5/8/2023 1:55:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[trg_SuaNhanVien] ON [dbo].[Nhan_Vien]--Mỗi khi thêm hay sửa nhân viên kiểm tra xem phải quản lý hay không
AFTER UPDATE AS
BEGIN
	DECLARE @MaNV NVARCHAR(11) SELECT @MaNV=INSERTED.MaNV FROM INSERTED
	DECLARE @ChucVu NVARCHAR(50) SELECT @ChucVu=INSERTED.ChucVu FROM INSERTED
	UPDATE Tai_Khoan SET ChucVu = (@ChucVu) WHERE MaNV = (@MaNV)

	IF (SELECT DELETED.ChucVu FROM DELETED) =  N'Nhân viên quản lý' -- nếu quản lý bị xóa thì sẽ cập nhật quản lý ở cửa hàng này là null
	BEGIN 
		DECLARE @MaCN NVARCHAR(11)
		SELECT  @MaCN=MaCN FROM DELETED
		UPDATE Chi_Nhanh SET MaNQL = null WHERE MaCN=@MaCN
	END 
	IF (SELECT INSERTED.ChucVu FROM INSERTED) = N'Nhân viên quản lý'-- nếu nhân viên được thêm là quản lý thì qua bảng chi nhánh cập nhật
	BEGIN
		SELECT  @MaCN=MaCN FROM INSERTED
		UPDATE Chi_Nhanh SET MaNQL=@MaNV WHERE MaCN=@MaCN
	END   
END;
GO
ALTER TABLE [dbo].[Nhan_Vien] ENABLE TRIGGER [trg_SuaNhanVien]
GO
/****** Object:  Trigger [dbo].[trg_ThemNhanVien]    Script Date: 5/8/2023 1:55:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[trg_ThemNhanVien] ON [dbo].[Nhan_Vien]--Mỗi khi thêm hay sửa nhân viên kiểm tra xem phải quản lý hay không
AFTER INSERT AS
BEGIN
	DECLARE @MaNV NVARCHAR(11) SELECT @MaNV = INSERTED.MaNV FROM INSERTED

	DECLARE @Mk NVARCHAR(11)
	SET @Mk = LEFT(CONVERT(VARCHAR(255), NEWID()), 6)

	DECLARE @ChucVu NVARCHAR(50) SELECT @ChucVu = INSERTED.ChucVu FROM INSERTED

	--Mỗi khi thêm hay sửa nhân viên kiểm tra xem phải quản lý hay không
	IF (@ChucVu) = N'Nhân viên quản lý'
	BEGIN
		--Nếu nhân viên được thêm là quản lý thì qua bảng chi nhánh cập nhật
		DECLARE @MaCN NVARCHAR(11)
		SELECT  @MaCN=MaCN FROM INSERTED
		UPDATE Chi_Nhanh SET MaNQL=@MaNV WHERE MaCN=@MaCN
	END

	INSERT INTO Tai_Khoan VALUES (@MaNV,@MaNV,@Mk,@ChucVu)
END;
GO
ALTER TABLE [dbo].[Nhan_Vien] ENABLE TRIGGER [trg_ThemNhanVien]
GO
/****** Object:  Trigger [dbo].[trg_XoaNhanVien]    Script Date: 5/8/2023 1:55:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[trg_XoaNhanVien] ON [dbo].[Nhan_Vien]
INSTEAD OF DELETE AS
-- sài instead of để kh cho xóa bảng ghi nhân viên đó mà chỉ set thuộc tính đi làm bằng 0
BEGIN
	DECLARE @MaNV NVARCHAR(11) SELECT @MaNV = DELETED.MaNV FROM DELETED

	UPDATE Nhan_Vien
	SET Nhan_Vien.TinhTrangLamViec = 0
	WHERE Nhan_Vien.MaNV = (@MaNV)

	IF (SELECT DELETED.ChucVu FROM DELETED) =  N'Nhân viên quản lý' -- nếu quản lý bị xóa thì sẽ cập nhật quản lý ở cửa hàng này là null
	BEGIN 
		DECLARE @MaCN NVARCHAR(11)
		SELECT  @MaCN=MaCN FROM DELETED
		UPDATE Chi_Nhanh SET MaNQL = null WHERE MaCN=@MaCN
	END 

	DELETE FROM Tai_Khoan WHERE Tai_Khoan.MaNV = (@MaNV)
END;
GO
ALTER TABLE [dbo].[Nhan_Vien] ENABLE TRIGGER [trg_XoaNhanVien]
GO
/****** Object:  Trigger [dbo].[trg_SuaTaiKhoan]    Script Date: 5/8/2023 1:55:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[trg_SuaTaiKhoan] ON [dbo].[Tai_Khoan]
AFTER UPDATE AS
BEGIN
	DECLARE @userNameD NVARCHAR(11), @roleD NVARCHAR(50)
	SELECT @userNameD=DELETED.TenDangNhap, @roleD=DELETED.ChucVu FROM DELETED

	DECLARE @sqlString NVARCHAR(200)

	IF (@roleD) = N'Nhân viên quản lý' 
	BEGIN
		SET @sqlString = 'ALTER SERVER ROLE sysadmin DROP MEMBER ' + @userNameD;
		EXEC (@sqlString)
	END

	IF (@roleD) = N'Nhân viên kho hàng' --Sửa trong form
	BEGIN
		SET @sqlString = 'ALTER ROLE role_NhanVien_KhoHang DROP MEMBER ' + @userNameD;
		EXEC (@sqlString)
	END

	IF (@roleD) = N'Nhân viên bảo dưỡng' 
	BEGIN
		SET @sqlString = 'ALTER ROLE role_NhanVien_BaoDuong DROP MEMBER ' + @userNameD;
		EXEC (@sqlString)
	END

	IF (@roleD) = N'Nhân viên thu ngân' 
	BEGIN
		SET @sqlString = 'ALTER ROLE role_NhanVien_ThuNgan DROP MEMBER ' + @userNameD;
		EXEC (@sqlString)
	END

	IF (@roleD) = N'Nhân viên tư vấn' --Sửa trong form
	BEGIN
		SET @sqlString = 'ALTER ROLE role_NhanVien_TuVan DROP MEMBER ' + @userNameD;
		EXEC (@sqlString)
	END

	DECLARE @userNameI NVARCHAR(11), @roleI NVARCHAR(50)
	SELECT @userNameI=INSERTED.TenDangNhap, @roleI=INSERTED.ChucVu FROM INSERTED

	IF (@roleI) = N'Nhân viên quản lý' 
	BEGIN
		SET @sqlString = 'ALTER SERVER ROLE sysadmin ADD MEMBER ' + @userNameI;
		EXEC (@sqlString)
	END

	IF (@roleI) = N'Nhân viên kho hàng' --Sửa trong form
	BEGIN
		SET @sqlString = 'ALTER ROLE role_NhanVien_KhoHang ADD MEMBER ' + @userNameI;
		EXEC (@sqlString)
	END

	IF (@roleI) = N'Nhân viên bảo dưỡng' 
	BEGIN
		SET @sqlString = 'ALTER ROLE role_NhanVien_BaoDuong ADD MEMBER ' + @userNameI;
		EXEC (@sqlString)
	END

	IF (@roleI) = N'Nhân viên thu ngân' 
	BEGIN
		SET @sqlString = 'ALTER ROLE role_NhanVien_ThuNgan ADD MEMBER ' + @userNameI;
		EXEC (@sqlString)
	END

	IF (@roleI) = N'Nhân viên tư vấn' --Sửa trong form
	BEGIN
		SET @sqlString = 'ALTER ROLE role_NhanVien_TuVan ADD MEMBER ' + @userNameI;
		EXEC (@sqlString)
	END
END
GO
ALTER TABLE [dbo].[Tai_Khoan] ENABLE TRIGGER [trg_SuaTaiKhoan]
GO
/****** Object:  Trigger [dbo].[trg_ThemTaiKhoan]    Script Date: 5/8/2023 1:55:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[trg_ThemTaiKhoan] ON [dbo].[Tai_Khoan]
AFTER INSERT AS
DECLARE @userName NVARCHAR(11), @passWord NVARCHAR(11), @role NVARCHAR(50)
SELECT @userName=INSERTED.TenDangNhap, @passWord=INSERTED.MatKhau, @role=INSERTED.ChucVu FROM INSERTED 
BEGIN
	DECLARE @sqlString NVARCHAR(200)

	-- Tạo tài khoản login cho nhân viên, tên người dùng và mật khẩu là tài khoản được tạo trên bảng Tai_Khoan
	SET @sqlString = 'CREATE LOGIN ' + @userName + ' WITH PASSWORD=''' + @passWord + ''', DEFAULT_DATABASE=[QLMoToStore], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF'
	EXEC (@sqlString)

	-- Tạo tài khoản người dùng đối với nhân viên đó trên database (tên người dùng trùng với tên login)
	SET @sqlString= 'CREATE USER ' + @userName +' FOR LOGIN '+ @userName
	EXEC (@sqlString)

	IF (@role) = N'Nhân viên quản lý' 
	BEGIN
		SET @sqlString = 'ALTER SERVER ROLE sysadmin ADD MEMBER ' + @userName;
		EXEC (@sqlString)
	END
	
	IF (@role) = N'Nhân viên kho hàng' --Sửa trong form
	BEGIN
		SET @sqlString = 'ALTER ROLE role_NhanVien_KhoHang ADD MEMBER ' + @userName;
		EXEC (@sqlString)
	END

	IF (@role) = N'Nhân viên bảo dưỡng' 
	BEGIN
		SET @sqlString = 'ALTER ROLE role_NhanVien_BaoDuong ADD MEMBER ' + @userName;
		EXEC (@sqlString)
	END

	IF (@role) = N'Nhân viên thu ngân' 
	BEGIN
		SET @sqlString = 'ALTER ROLE role_NhanVien_ThuNgan ADD MEMBER ' + @userName;
		EXEC (@sqlString)
	END

	IF (@role) = N'Nhân viên tư vấn' --Sửa trong form
	BEGIN
		SET @sqlString = 'ALTER ROLE role_NhanVien_TuVan ADD MEMBER ' + @userName;
		EXEC (@sqlString)
	END
END
GO
ALTER TABLE [dbo].[Tai_Khoan] ENABLE TRIGGER [trg_ThemTaiKhoan]
GO
/****** Object:  Trigger [dbo].[trg_XoaTaiKhoan]    Script Date: 5/8/2023 1:55:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[trg_XoaTaiKhoan] ON [dbo].[Tai_Khoan]
AFTER DELETE AS 
BEGIN
	DECLARE @userName NVARCHAR(11), @role NVARCHAR(50)
	SELECT @userName=DELETED.TenDangNhap, @role=DELETED.ChucVu FROM DELETED

	DECLARE @sqlString NVARCHAR(200)
	IF (@role) = N'Nhân viên quản lý' 
	BEGIN
		SET @sqlString = 'ALTER SERVER ROLE sysadmin DROP MEMBER ' + @userName;
		EXEC (@sqlString)
	END
	
	IF (@role) = N'Nhân viên kho hàng' --Sửa trong form
	BEGIN
		SET @sqlString = 'ALTER ROLE role_NhanVien_KhoHang DROP MEMBER ' + @userName;
		EXEC (@sqlString)
	END

	IF (@role) = N'Nhân viên bảo dưỡng' 
	BEGIN
		SET @sqlString = 'ALTER ROLE role_NhanVien_BaoDuong DROP MEMBER ' + @userName;
		EXEC (@sqlString)
	END

	IF (@role) = N'Nhân viên thu ngân' 
	BEGIN
		SET @sqlString = 'ALTER ROLE role_NhanVien_ThuNgan DROP MEMBER ' + @userName;
		EXEC (@sqlString)
	END

	IF (@role) = N'Nhân viên tư vấn' --Sửa trong form
	BEGIN
		SET @sqlString = 'ALTER ROLE role_NhanVien_TuVan DROP MEMBER ' + @userName;
		EXEC (@sqlString)
	END

	SET @sqlString= 'DROP USER ' + @userName
	EXEC (@sqlString)

	SET @sqlString= 'DROP LOGIN '+ @userName
	EXEC (@sqlString)
END
GO
ALTER TABLE [dbo].[Tai_Khoan] ENABLE TRIGGER [trg_XoaTaiKhoan]
GO

USE [QLMoToStore]
GO
-- Thay role nhân viên quản lý bằng Role của Server Roles sysadmin: ALTER SERVER ROLE sysadmin ADD MEMBER [____]

GRANT SELECT ON [dbo].[fn_XemChiTietPhieuNhapPhuTung] TO role_NhanVien_KhoHang
GO

GRANT SELECT ON [dbo].[fn_XemChiTietPhieuNhapXe] TO role_NhanVien_KhoHang
GO

GRANT EXECUTE ON [dbo].[sp_ThemXe] TO role_NhanVien_KhoHang
GO

GRANT EXECUTE ON [dbo].[sp_ThemCTPN] TO role_NhanVien_KhoHang
GO

GRANT SELECT ON [dbo].[Nhan_Vien] TO role_NhanVien_KhoHang
GO

GRANT SELECT ON [dbo].[fn_DSPhuTung] TO role_NhanVien_KhoHang
GO

GRANT SELECT ON [dbo].[fn_DSPhieuNhap] TO role_NhanVien_KhoHang
GO

GRANT SELECT ON [dbo].[fn_DSXe] TO role_NhanVien_KhoHang
GO

GRANT SELECT ON [dbo].[vw_DSXe] TO role_NhanVien_KhoHang
GO

GRANT SELECT ON [dbo].[Phieu_Nhap] TO role_NhanVien_KhoHang
GO

GRANT SELECT ON [dbo].[fn_ThongTinPhieuNhap] TO role_NhanVien_KhoHang
GO

GRANT SELECT ON [dbo].[fn_LayThongTinNhanVien] TO role_NhanVien_KhoHang
GO

GRANT SELECT ON [dbo].[vw_DSPhieuNhap] TO role_NhanVien_KhoHang
GO

GRANT SELECT ON [dbo].[fn_ThongTinNCC] TO role_NhanVien_KhoHang
GO

GRANT SELECT ON [dbo].[vw_DSPhuTung] TO role_NhanVien_KhoHang
GO

GRANT SELECT ON [dbo].[vw_DSNhaCungCap] TO role_NhanVien_KhoHang
GO

GRANT EXECUTE ON [dbo].[sp_ThemPhuTung] TO role_NhanVien_KhoHang
GO

GRANT EXECUTE ON [dbo].[sp_SuaPhuTung] TO role_NhanVien_KhoHang
GO

GRANT EXECUTE ON [dbo].[sp_ThemPhieuNhap] TO role_NhanVien_KhoHang
GO



GRANT SELECT ON [dbo].[fn_DSBaoDuong] TO role_NhanVien_BaoDuong
GO

GRANT SELECT ON [dbo].[Nhan_Vien] TO role_NhanVien_BaoDuong
GO

GRANT SELECT, DELETE ON [dbo].[Bao_Duong] TO role_NhanVien_BaoDuong
GO

GRANT SELECT ON [dbo].[vw_DSBaoDuong] TO role_NhanVien_BaoDuong
GO

GRANT EXECUTE ON [dbo].[sp_ThemBaoDuong] TO role_NhanVien_BaoDuong
GO

GRANT EXECUTE ON [dbo].[sp_SuaBaoDuong] TO role_NhanVien_BaoDuong
GO



GRANT SELECT ON [dbo].[Chi_Tiet_Hoa_Don] TO role_NhanVien_ThuNgan
GO 

GRANT DELETE ON [dbo].[Chi_Tiet_Hoa_Don] TO role_NhanVien_ThuNgan
GO 

GRANT EXECUTE ON [dbo].[sp_SuaCTHDBaoDuong] TO role_NhanVien_ThuNgan
GO

GRANT EXECUTE ON [dbo].[sp_ThemCTHDBaoDuong] TO role_NhanVien_ThuNgan
GO

GRANT EXECUTE ON [dbo].[sp_SuaCTHDMatHang] TO role_NhanVien_ThuNgan
GO

GRANT EXECUTE ON [dbo].[sp_ThemCTHDMatHang] TO role_NhanVien_ThuNgan
GO

GRANT SELECT ON [dbo].[fn_DSNhanVien] TO role_NhanVien_ThuNgan
GO

GRANT SELECT ON [dbo].[vw_DSPhuTung] TO role_NhanVien_ThuNgan
GO

GRANT SELECT ON [dbo].[vw_DSXe] TO role_NhanVien_ThuNgan
GO

GRANT SELECT ON [dbo].[fn_DSXe] TO role_NhanVien_ThuNgan
GO

GRANT SELECT ON [dbo].[fn_XemChiTietHoaDonBaoDuong] TO role_NhanVien_ThuNgan
GO

GRANT SELECT ON [dbo].[fn_XemChiTietHoaDonPhuTung] TO role_NhanVien_ThuNgan
GO

GRANT SELECT ON [dbo].[fn_XemChiTietHoaDonXe] TO role_NhanVien_ThuNgan
GO

GRANT SELECT ON [dbo].[fn_ThongTinHoaDon] TO role_NhanVien_ThuNgan
GO

GRANT SELECT ON [dbo].[Hoa_Don] TO role_NhanVien_ThuNgan
GO

GRANT SELECT ON [dbo].[Nhan_Vien] TO role_NhanVien_ThuNgan
GO

GRANT SELECT ON [dbo].[fn_DSHoaDon] TO role_NhanVien_ThuNgan
GO

GRANT SELECT ON [dbo].[fn_LayThongTinNhanVien] TO role_NhanVien_ThuNgan
GO

GRANT SELECT ON [dbo].[vw_DSKhachHang] TO role_NhanVien_ThuNgan
GO

GRANT SELECT ON [dbo].[fn_TimKhachHangTheoSĐT] TO role_NhanVien_ThuNgan
GO

GRANT SELECT ON [dbo].[fn_TimKhachHangTheoCCCD] TO role_NhanVien_ThuNgan
GO

GRANT SELECT ON [dbo].[vw_DSBaoDuong] TO role_NhanVien_ThuNgan
GO

GRANT SELECT ON [dbo].[fn_DSBaoDuong] TO role_NhanVien_ThuNgan
GO

GRANT SELECT ON [dbo].[vw_DSHoaDon] TO role_NhanVien_ThuNgan
GO

GRANT EXECUTE ON [dbo].[sp_ThemHoaDon] TO role_NhanVien_ThuNgan
GO

GRANT EXECUTE ON [dbo].[sp_ThemBaoDuong] TO role_NhanVien_ThuNgan
GO

GRANT EXECUTE ON [dbo].[sp_SuaBaoDuong] TO role_NhanVien_ThuNgan
GO

GRANT EXECUTE ON [dbo].[sp_ThemKhachHang] TO role_NhanVien_ThuNgan
GO

GRANT EXECUTE ON [dbo].[sp_SuaKhachHang] TO role_NhanVien_ThuNgan
GO

GRANT SELECT, DELETE ON [dbo].[Bao_Duong] TO role_NhanVien_ThuNgan
GO



GRANT SELECT ON [dbo].[fn_DSPhuTung] TO role_NhanVien_TuVan
GO

GRANT SELECT ON [dbo].[Nhan_Vien] TO role_NhanVien_TuVan
GO

GRANT SELECT ON [dbo].[vw_DSKhachHang] TO role_NhanVien_TuVan
GO

GRANT SELECT ON [dbo].[vw_DSPhuTung] TO role_NhanVien_TuVan
GO

GRANT EXECUTE ON [dbo].[sp_ThemKhachHang] TO role_NhanVien_TuVan
GO

GRANT EXECUTE ON [dbo].[sp_SuaKhachHang] TO role_NhanVien_TuVan
GO
