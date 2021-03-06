USE [jojodb]
GO
/****** Object:  Table [dbo].[admin]    Script Date: 5/17/2021 9:42:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[matkhau] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_admin] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bangphu]    Script Date: 5/17/2021 9:42:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bangphu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idchitiethd] [int] NOT NULL,
	[idsanpham] [int] NOT NULL,
	[soluong] [int] NOT NULL,
 CONSTRAINT [PK_bangphu] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bangxoahoadon]    Script Date: 5/17/2021 9:42:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bangxoahoadon](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idhoadon] [int] NOT NULL,
	[idnhanvien] [int] NOT NULL,
	[ngay] [datetime] NOT NULL,
	[active] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_bangxoahoadon] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chiphi]    Script Date: 5/17/2021 9:42:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chiphi](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idloaichiphi] [int] NOT NULL,
	[ngay] [datetime] NOT NULL,
	[chiphi] [int] NOT NULL,
	[active] [nvarchar](50) NULL,
 CONSTRAINT [PK_chiphi] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chitiethoadon]    Script Date: 5/17/2021 9:42:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chitiethoadon](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idhoadon] [int] NOT NULL,
	[idspchinh] [int] NOT NULL,
	[soluong] [int] NOT NULL,
	[thanhtien] [int] NOT NULL,
 CONSTRAINT [PK_chitiethoadon] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hoadon]    Script Date: 5/17/2021 9:42:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hoadon](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tongtien] [int] NOT NULL,
	[idkhachhang] [int] NOT NULL,
	[idnhanvien] [int] NOT NULL,
	[ngayhoadon] [datetime] NOT NULL,
	[giamgia] [int] NOT NULL,
	[khachphaitra] [int] NOT NULL,
	[active] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_hoadon] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[khachhang]    Script Date: 5/17/2021 9:42:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[khachhang](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tenkhachhang] [nvarchar](150) NOT NULL,
	[sodienthoai] [nvarchar](50) NOT NULL,
	[diachi] [nvarchar](250) NOT NULL,
	[email] [nvarchar](150) NOT NULL,
	[ghichu] [nvarchar](1000) NOT NULL,
	[trangthai] [nvarchar](50) NOT NULL,
	[active] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_khachhang] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[loaichiphi]    Script Date: 5/17/2021 9:42:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[loaichiphi](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tenchiphi] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_loaichiphi] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nhanvien]    Script Date: 5/17/2021 9:42:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nhanvien](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[matkhau] [nvarchar](500) NOT NULL,
	[hovaten] [nvarchar](150) NOT NULL,
	[gioitinh] [nvarchar](50) NOT NULL,
	[ngaysinh] [nvarchar](50) NOT NULL,
	[sodienthoai] [nvarchar](50) NOT NULL,
	[diachi] [nvarchar](250) NOT NULL,
	[cmnd] [nvarchar](50) NOT NULL,
	[ngayvaolam] [nvarchar](50) NOT NULL,
	[congviec] [nvarchar](150) NOT NULL,
	[taikhoan] [nvarchar](50) NOT NULL,
	[loai] [int] NOT NULL,
	[active] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_nhanvien] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sanpham]    Script Date: 5/17/2021 9:42:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sanpham](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ten] [nvarchar](250) NOT NULL,
	[gia] [int] NOT NULL,
	[loai] [nvarchar](50) NOT NULL,
	[active] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_sanpham] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sanphamphu]    Script Date: 5/17/2021 9:42:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sanphamphu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ten] [nvarchar](50) NOT NULL,
	[gia] [int] NOT NULL,
	[active] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_sanphamphu] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[admin] ON 

INSERT [dbo].[admin] ([id], [matkhau]) VALUES (1, N'1')
SET IDENTITY_INSERT [dbo].[admin] OFF
GO
SET IDENTITY_INSERT [dbo].[bangphu] ON 

INSERT [dbo].[bangphu] ([id], [idchitiethd], [idsanpham], [soluong]) VALUES (19476, 21747, 1, 1)
INSERT [dbo].[bangphu] ([id], [idchitiethd], [idsanpham], [soluong]) VALUES (19477, 21748, 4, 1)
INSERT [dbo].[bangphu] ([id], [idchitiethd], [idsanpham], [soluong]) VALUES (19478, 21748, 5, 1)
INSERT [dbo].[bangphu] ([id], [idchitiethd], [idsanpham], [soluong]) VALUES (19479, 21748, 6, 1)
INSERT [dbo].[bangphu] ([id], [idchitiethd], [idsanpham], [soluong]) VALUES (19480, 21749, 5, 1)
INSERT [dbo].[bangphu] ([id], [idchitiethd], [idsanpham], [soluong]) VALUES (19481, 21750, 5, 1)
INSERT [dbo].[bangphu] ([id], [idchitiethd], [idsanpham], [soluong]) VALUES (19482, 21751, 1, 1)
INSERT [dbo].[bangphu] ([id], [idchitiethd], [idsanpham], [soluong]) VALUES (19483, 21752, 1, 0)
INSERT [dbo].[bangphu] ([id], [idchitiethd], [idsanpham], [soluong]) VALUES (19484, 21753, 1, 0)
SET IDENTITY_INSERT [dbo].[bangphu] OFF
GO
SET IDENTITY_INSERT [dbo].[bangxoahoadon] ON 

INSERT [dbo].[bangxoahoadon] ([id], [idhoadon], [idnhanvien], [ngay], [active]) VALUES (3106, 16511, 1, CAST(N'2021-04-08T03:10:36.373' AS DateTime), N'false')
SET IDENTITY_INSERT [dbo].[bangxoahoadon] OFF
GO
SET IDENTITY_INSERT [dbo].[chiphi] ON 

INSERT [dbo].[chiphi] ([id], [idloaichiphi], [ngay], [chiphi], [active]) VALUES (1, 6, CAST(N'2021-01-20T00:00:00.000' AS DateTime), 1500000, N'false')
INSERT [dbo].[chiphi] ([id], [idloaichiphi], [ngay], [chiphi], [active]) VALUES (2, 7, CAST(N'2021-02-05T00:00:00.000' AS DateTime), 300000, N'false')
INSERT [dbo].[chiphi] ([id], [idloaichiphi], [ngay], [chiphi], [active]) VALUES (3, 3, CAST(N'2021-02-06T00:00:00.000' AS DateTime), 20000, N'false')
INSERT [dbo].[chiphi] ([id], [idloaichiphi], [ngay], [chiphi], [active]) VALUES (4, 1, CAST(N'2021-02-06T00:00:00.000' AS DateTime), 180000, N'false')
INSERT [dbo].[chiphi] ([id], [idloaichiphi], [ngay], [chiphi], [active]) VALUES (5, 3, CAST(N'2021-02-20T00:00:00.000' AS DateTime), 150000, N'false')
INSERT [dbo].[chiphi] ([id], [idloaichiphi], [ngay], [chiphi], [active]) VALUES (6, 3, CAST(N'2021-02-21T00:00:00.000' AS DateTime), 600000, N'false')
INSERT [dbo].[chiphi] ([id], [idloaichiphi], [ngay], [chiphi], [active]) VALUES (7, 3, CAST(N'2021-02-22T00:00:00.000' AS DateTime), 150000, N'false')
INSERT [dbo].[chiphi] ([id], [idloaichiphi], [ngay], [chiphi], [active]) VALUES (8, 3, CAST(N'2021-02-23T00:00:00.000' AS DateTime), 150000, N'false')
INSERT [dbo].[chiphi] ([id], [idloaichiphi], [ngay], [chiphi], [active]) VALUES (1009, 8, CAST(N'2021-07-10T00:00:00.000' AS DateTime), 125000, N'false')
INSERT [dbo].[chiphi] ([id], [idloaichiphi], [ngay], [chiphi], [active]) VALUES (1010, 8, CAST(N'2021-07-11T00:00:00.000' AS DateTime), 400000, N'false')
INSERT [dbo].[chiphi] ([id], [idloaichiphi], [ngay], [chiphi], [active]) VALUES (1011, 8, CAST(N'2021-07-11T00:00:00.000' AS DateTime), 683000, N'false')
INSERT [dbo].[chiphi] ([id], [idloaichiphi], [ngay], [chiphi], [active]) VALUES (1012, 8, CAST(N'2021-07-17T00:00:00.000' AS DateTime), 88000, N'false')
INSERT [dbo].[chiphi] ([id], [idloaichiphi], [ngay], [chiphi], [active]) VALUES (1013, 1, CAST(N'2021-05-10T00:00:00.000' AS DateTime), 2000000, N'true')
INSERT [dbo].[chiphi] ([id], [idloaichiphi], [ngay], [chiphi], [active]) VALUES (1014, 4, CAST(N'2021-05-10T00:00:00.000' AS DateTime), 15000000, N'true')
SET IDENTITY_INSERT [dbo].[chiphi] OFF
GO
SET IDENTITY_INSERT [dbo].[chitiethoadon] ON 

INSERT [dbo].[chitiethoadon] ([id], [idhoadon], [idspchinh], [soluong], [thanhtien]) VALUES (21747, 16511, 19, 1, 30000)
INSERT [dbo].[chitiethoadon] ([id], [idhoadon], [idspchinh], [soluong], [thanhtien]) VALUES (21748, 16512, 21, 1, 38000)
INSERT [dbo].[chitiethoadon] ([id], [idhoadon], [idspchinh], [soluong], [thanhtien]) VALUES (21749, 16513, 11, 1, 32000)
INSERT [dbo].[chitiethoadon] ([id], [idhoadon], [idspchinh], [soluong], [thanhtien]) VALUES (21750, 16514, 21, 1, 28000)
INSERT [dbo].[chitiethoadon] ([id], [idhoadon], [idspchinh], [soluong], [thanhtien]) VALUES (21751, 16515, 10, 1, 29000)
INSERT [dbo].[chitiethoadon] ([id], [idhoadon], [idspchinh], [soluong], [thanhtien]) VALUES (21752, 16516, 19, 1, 25000)
INSERT [dbo].[chitiethoadon] ([id], [idhoadon], [idspchinh], [soluong], [thanhtien]) VALUES (21753, 16517, 9, 1, 20000)
SET IDENTITY_INSERT [dbo].[chitiethoadon] OFF
GO
SET IDENTITY_INSERT [dbo].[hoadon] ON 

INSERT [dbo].[hoadon] ([id], [tongtien], [idkhachhang], [idnhanvien], [ngayhoadon], [giamgia], [khachphaitra], [active]) VALUES (16511, 30000, 1, 1, CAST(N'2021-04-07T00:03:19.000' AS DateTime), 0, 30000, N'false')
INSERT [dbo].[hoadon] ([id], [tongtien], [idkhachhang], [idnhanvien], [ngayhoadon], [giamgia], [khachphaitra], [active]) VALUES (16512, 38000, 9282, 1, CAST(N'2021-04-07T13:10:10.000' AS DateTime), 9500, 28500, N'true')
INSERT [dbo].[hoadon] ([id], [tongtien], [idkhachhang], [idnhanvien], [ngayhoadon], [giamgia], [khachphaitra], [active]) VALUES (16513, 32000, 1, 2, CAST(N'2021-04-07T13:17:48.000' AS DateTime), 0, 32000, N'true')
INSERT [dbo].[hoadon] ([id], [tongtien], [idkhachhang], [idnhanvien], [ngayhoadon], [giamgia], [khachphaitra], [active]) VALUES (16514, 28000, 9283, 2, CAST(N'2021-04-07T13:18:44.000' AS DateTime), 0, 28000, N'true')
INSERT [dbo].[hoadon] ([id], [tongtien], [idkhachhang], [idnhanvien], [ngayhoadon], [giamgia], [khachphaitra], [active]) VALUES (16515, 29000, 1, 1, CAST(N'2021-04-07T14:06:57.000' AS DateTime), 0, 29000, N'true')
INSERT [dbo].[hoadon] ([id], [tongtien], [idkhachhang], [idnhanvien], [ngayhoadon], [giamgia], [khachphaitra], [active]) VALUES (16516, 25000, 9284, 1, CAST(N'2021-05-10T21:06:18.000' AS DateTime), 0, 25000, N'true')
INSERT [dbo].[hoadon] ([id], [tongtien], [idkhachhang], [idnhanvien], [ngayhoadon], [giamgia], [khachphaitra], [active]) VALUES (16517, 20000, 9285, 1, CAST(N'2021-05-13T22:19:19.000' AS DateTime), 0, 20000, N'true')
SET IDENTITY_INSERT [dbo].[hoadon] OFF
GO
SET IDENTITY_INSERT [dbo].[khachhang] ON 

INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (2, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (3, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (4, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1004, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1005, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1006, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1007, N'test', N'', N'', N'', N'', N'Đã cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1008, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1009, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1010, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1011, N'test', N'', N'', N'', N'', N'Đã cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1012, N'test', N'', N'', N'', N'', N'Đã cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1013, N'test', N'', N'', N'', N'', N'Đã cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1014, N'test', N'', N'', N'', N'', N'Đã cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1015, N'test', N'', N'', N'', N'', N'Đã cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1016, N'test', N'', N'', N'', N'', N'Đã cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1017, N'test', N'', N'', N'', N'', N'Đã cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1018, N'test', N'', N'', N'', N'', N'Đã cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1019, N'test', N'', N'', N'', N'', N'Đã cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1020, N'test', N'', N'', N'', N'', N'Đã cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1021, N'test', N'', N'', N'', N'', N'Đã cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1022, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'false')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1023, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1024, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1025, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1026, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1027, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1028, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1029, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1030, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1031, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1032, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1033, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1034, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1035, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1036, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1037, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1038, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1039, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1040, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1041, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1042, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1043, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1044, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1045, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1046, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1047, N'test', N'', N'', N'', N'', N'Đã cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1048, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1049, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1050, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1051, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1052, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1053, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1054, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1055, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1056, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1057, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1058, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1059, N'test', N'', N'', N'', N'', N'Đã cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1060, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1061, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1062, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1063, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1064, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1065, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1066, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1067, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1068, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1069, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1070, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1071, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1072, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1073, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1074, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1075, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1076, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1077, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1078, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1079, N'test', N'', N'', N'', N'', N'Đã cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1080, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1081, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1082, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1083, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1084, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1085, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1086, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1087, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1088, N'test', N'', N'', N'', N'', N'Đã cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1089, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1090, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1091, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1092, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1093, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1094, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (1095, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (2077, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (2078, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (2079, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
GO
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (2080, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (2081, N'test', N'', N'', N'', N'', N'Đã cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (2082, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (3077, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (3078, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (3079, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'false')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (3080, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (3081, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (3082, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (3083, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (3084, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (3085, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (3086, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (3087, N'test', N'', N'', N'', N'', N'Đã cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (3088, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (3089, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (3090, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (3091, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (3092, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (3093, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (3094, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (4080, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (4081, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (4082, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (4083, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (4084, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (4085, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (4086, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (4087, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (4088, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (4089, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (4090, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (4091, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (4092, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (4093, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (4094, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (4095, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (4096, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (5093, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (5094, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (6093, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (7093, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (7094, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (7095, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (7096, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (7097, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (7098, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (7099, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (7100, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (7101, N'test', N'', N'', N'', N'', N'Đã cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (7102, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (7103, N'test', N'', N'', N'', N'', N'Đã cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (7104, N'test', N'', N'', N'', N'', N'Đã cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (7105, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (7106, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (7107, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (7108, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (7109, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (7110, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (7111, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (7112, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (7113, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (7114, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (7115, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (7116, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (7117, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (7118, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (7119, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (7120, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (7121, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (7122, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (7123, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (7124, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (7125, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (7126, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (7127, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (7128, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (7129, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (7130, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (7131, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (7132, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (7133, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (7134, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (7135, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (7136, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (7137, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (7138, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (7139, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (7140, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (7141, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (7142, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (7143, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (7144, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (7145, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (7146, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (7147, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (7148, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (7149, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (7150, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (7151, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
GO
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (7152, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (7153, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (7154, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (7155, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (7156, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (7157, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (7158, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (7159, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (7160, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (7161, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (7162, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (7163, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (7164, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (7165, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (7166, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (7167, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (7168, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (8168, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (8169, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (8170, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (8171, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (8172, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (8173, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (8174, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (8175, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (8176, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (8177, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (8178, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (8179, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (8180, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (8181, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (8182, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (8183, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (8184, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (8185, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (8186, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (8187, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (8188, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (8189, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (8190, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (8191, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (8192, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (8193, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (8194, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (8195, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (8196, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (8197, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (8198, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (8199, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (8200, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (8201, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (8202, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (8203, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (8204, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (8205, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (8206, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (8207, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (8208, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (8209, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (8210, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (8211, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (8212, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (8213, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (8214, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (8215, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (8216, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (8217, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (8218, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (9218, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (9219, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (9220, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (9221, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (9222, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (9223, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (9224, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (9225, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (9226, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (9227, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (9228, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (9229, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (9230, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (9231, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (9232, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (9233, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (9234, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (9235, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (9236, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (9237, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (9238, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (9239, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (9240, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (9241, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (9242, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (9243, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (9244, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (9245, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (9246, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (9247, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (9248, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (9249, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
GO
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (9250, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (9251, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (9252, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (9253, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (9254, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (9255, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (9256, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (9257, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (9258, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (9259, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (9260, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (9261, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (9262, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (9263, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (9264, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (9265, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (9266, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (9267, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (9268, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (9269, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (9270, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (9271, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (9272, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (9273, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (9274, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (9275, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (9276, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (9277, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (9278, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (9279, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (9280, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (9281, N'test', N'', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (9282, N'Quang Hợp', N'0769999213', N'113 võ hữu lợi, bình chánh', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (9283, N'Nguyễn Văn A', N'0123456789', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (9284, N'', N'0765467089', N'', N'', N'', N'Chưa cập nhật', N'true')
INSERT [dbo].[khachhang] ([id], [tenkhachhang], [sodienthoai], [diachi], [email], [ghichu], [trangthai], [active]) VALUES (9285, N'Hung', N'077777', N'', N'', N'', N'Chưa cập nhật', N'true')
SET IDENTITY_INSERT [dbo].[khachhang] OFF
GO
SET IDENTITY_INSERT [dbo].[loaichiphi] ON 

INSERT [dbo].[loaichiphi] ([id], [tenchiphi]) VALUES (1, N'Nguyên liệu trà sữa')
INSERT [dbo].[loaichiphi] ([id], [tenchiphi]) VALUES (2, N'Nguyên liệu sinh tố')
INSERT [dbo].[loaichiphi] ([id], [tenchiphi]) VALUES (3, N'Nguyên liệu khác')
INSERT [dbo].[loaichiphi] ([id], [tenchiphi]) VALUES (4, N'Nhà')
INSERT [dbo].[loaichiphi] ([id], [tenchiphi]) VALUES (5, N'Điện nước')
INSERT [dbo].[loaichiphi] ([id], [tenchiphi]) VALUES (6, N'Nhân viên')
INSERT [dbo].[loaichiphi] ([id], [tenchiphi]) VALUES (7, N'Mua sắm thiết bị')
INSERT [dbo].[loaichiphi] ([id], [tenchiphi]) VALUES (8, N'Marketing')
SET IDENTITY_INSERT [dbo].[loaichiphi] OFF
GO
SET IDENTITY_INSERT [dbo].[nhanvien] ON 

INSERT [dbo].[nhanvien] ([id], [matkhau], [hovaten], [gioitinh], [ngaysinh], [sodienthoai], [diachi], [cmnd], [ngayvaolam], [congviec], [taikhoan], [loai], [active]) VALUES (1, N'1', N'Thạch Chí Hùng', N'Nam', N'', N'', N'', N'', N'', N'Quản lý', N'chihung', 2, N'true')
INSERT [dbo].[nhanvien] ([id], [matkhau], [hovaten], [gioitinh], [ngaysinh], [sodienthoai], [diachi], [cmnd], [ngayvaolam], [congviec], [taikhoan], [loai], [active]) VALUES (2, N'1', N'Nguyễn Long Hồ', N'Nam', N'', N'', N'', N'', N'', N'Quản lý', N'longho', 2, N'true')
INSERT [dbo].[nhanvien] ([id], [matkhau], [hovaten], [gioitinh], [ngaysinh], [sodienthoai], [diachi], [cmnd], [ngayvaolam], [congviec], [taikhoan], [loai], [active]) VALUES (3, N'1', N'test11', N'Nữ', N'', N'', N'', N'', N'', N'Nhân viên', N'Huynh', 1, N'false')
INSERT [dbo].[nhanvien] ([id], [matkhau], [hovaten], [gioitinh], [ngaysinh], [sodienthoai], [diachi], [cmnd], [ngayvaolam], [congviec], [taikhoan], [loai], [active]) VALUES (4, N'1', N'Nguyễn Đăng Khoa', N'Nam', N'', N'', N'', N'', N'', N'Quản lý', N'dangkhoa', 2, N'true')
INSERT [dbo].[nhanvien] ([id], [matkhau], [hovaten], [gioitinh], [ngaysinh], [sodienthoai], [diachi], [cmnd], [ngayvaolam], [congviec], [taikhoan], [loai], [active]) VALUES (5, N'1', N'Mai Bá Tân', N'Nam', N'', N'', N'', N'', N'', N'Quản lý', N'batan', 2, N'true')
INSERT [dbo].[nhanvien] ([id], [matkhau], [hovaten], [gioitinh], [ngaysinh], [sodienthoai], [diachi], [cmnd], [ngayvaolam], [congviec], [taikhoan], [loai], [active]) VALUES (6, N'1', N'Trịnh Quang Hợp', N'Nam', N'', N'', N'', N'', N'', N'Bồi bàn', N'quanghop', 1, N'true')
INSERT [dbo].[nhanvien] ([id], [matkhau], [hovaten], [gioitinh], [ngaysinh], [sodienthoai], [diachi], [cmnd], [ngayvaolam], [congviec], [taikhoan], [loai], [active]) VALUES (7, N'1', N'test11', N'Nam', N'27/10/1994', N'', N'', N'', N'15/7/2021', N'Giao hàng', N'kunship', 1, N'false')
INSERT [dbo].[nhanvien] ([id], [matkhau], [hovaten], [gioitinh], [ngaysinh], [sodienthoai], [diachi], [cmnd], [ngayvaolam], [congviec], [taikhoan], [loai], [active]) VALUES (8, N'1', N'Nguyễn Mậu Vũ Huy', N'Nam', N'20/8/2000', N'0345656795', N'58 thống nhất', N'012345678', N'7/4/2021', N'Pha chế', N'vuhuy', 1, N'true')
SET IDENTITY_INSERT [dbo].[nhanvien] OFF
GO
SET IDENTITY_INSERT [dbo].[sanpham] ON 

INSERT [dbo].[sanpham] ([id], [ten], [gia], [loai], [active]) VALUES (1, N'Pina Colada', 25000, N'1', N'true')
INSERT [dbo].[sanpham] ([id], [ten], [gia], [loai], [active]) VALUES (2, N'Pina Tropica', 25000, N'1', N'true')
INSERT [dbo].[sanpham] ([id], [ten], [gia], [loai], [active]) VALUES (3, N'Pine Bara', 25000, N'1', N'true')
INSERT [dbo].[sanpham] ([id], [ten], [gia], [loai], [active]) VALUES (4, N'Fresh Cucum', 25000, N'1', N'true')
INSERT [dbo].[sanpham] ([id], [ten], [gia], [loai], [active]) VALUES (5, N'Passion Bee', 25000, N'1', N'true')
INSERT [dbo].[sanpham] ([id], [ten], [gia], [loai], [active]) VALUES (6, N'Passion Guana', 29000, N'1', N'true')
INSERT [dbo].[sanpham] ([id], [ten], [gia], [loai], [active]) VALUES (7, N'Coco Smoothies', 29000, N'1', N'true')
INSERT [dbo].[sanpham] ([id], [ten], [gia], [loai], [active]) VALUES (8, N'Milk Berry', 29000, N'1', N'true')
INSERT [dbo].[sanpham] ([id], [ten], [gia], [loai], [active]) VALUES (9, N'Hồng trà - N', 20000, N'2', N'true')
INSERT [dbo].[sanpham] ([id], [ten], [gia], [loai], [active]) VALUES (10, N'Hồng trà - L', 24000, N'2', N'true')
INSERT [dbo].[sanpham] ([id], [ten], [gia], [loai], [active]) VALUES (11, N'Truyền thống-N', 24000, N'2', N'true')
INSERT [dbo].[sanpham] ([id], [ten], [gia], [loai], [active]) VALUES (12, N'Truyền thống-L', 29000, N'2', N'true')
INSERT [dbo].[sanpham] ([id], [ten], [gia], [loai], [active]) VALUES (13, N'Thái xanh - N', 24000, N'2', N'true')
INSERT [dbo].[sanpham] ([id], [ten], [gia], [loai], [active]) VALUES (14, N'Thái xanh - L', 29000, N'2', N'true')
INSERT [dbo].[sanpham] ([id], [ten], [gia], [loai], [active]) VALUES (15, N'Trà táo - N', 24000, N'2', N'true')
INSERT [dbo].[sanpham] ([id], [ten], [gia], [loai], [active]) VALUES (16, N'Trà táo - L', 29000, N'2', N'true')
INSERT [dbo].[sanpham] ([id], [ten], [gia], [loai], [active]) VALUES (17, N'Trà đào - N', 27000, N'2', N'true')
INSERT [dbo].[sanpham] ([id], [ten], [gia], [loai], [active]) VALUES (18, N'Trà đào - L', 35000, N'2', N'true')
INSERT [dbo].[sanpham] ([id], [ten], [gia], [loai], [active]) VALUES (19, N'Cam Vắt', 25000, N'3', N'true')
INSERT [dbo].[sanpham] ([id], [ten], [gia], [loai], [active]) VALUES (20, N'Nước ép ổi', 25000, N'3', N'false')
INSERT [dbo].[sanpham] ([id], [ten], [gia], [loai], [active]) VALUES (21, N'Ép Dưa hấu', 20000, N'3', N'true')
INSERT [dbo].[sanpham] ([id], [ten], [gia], [loai], [active]) VALUES (22, N'Ép Bưởi', 29000, N'3', N'false')
INSERT [dbo].[sanpham] ([id], [ten], [gia], [loai], [active]) VALUES (23, N'Ép Chanh dây', 20000, N'3', N'true')
INSERT [dbo].[sanpham] ([id], [ten], [gia], [loai], [active]) VALUES (24, N'Trà vải - N', 25000, N'2', N'false')
INSERT [dbo].[sanpham] ([id], [ten], [gia], [loai], [active]) VALUES (25, N'Trà vải - L', 33000, N'2', N'false')
INSERT [dbo].[sanpham] ([id], [ten], [gia], [loai], [active]) VALUES (26, N'Khô gà', 20000, N'3', N'true')
INSERT [dbo].[sanpham] ([id], [ten], [gia], [loai], [active]) VALUES (27, N'Cơm cháy', 22000, N'3', N'false')
INSERT [dbo].[sanpham] ([id], [ten], [gia], [loai], [active]) VALUES (28, N'Cơm cuộn', 25000, N'3', N'false')
INSERT [dbo].[sanpham] ([id], [ten], [gia], [loai], [active]) VALUES (29, N'Khô gà 500g', 175000, N'3', N'true')
INSERT [dbo].[sanpham] ([id], [ten], [gia], [loai], [active]) VALUES (30, N'Cơm cháy L', 33000, N'3', N'false')
INSERT [dbo].[sanpham] ([id], [ten], [gia], [loai], [active]) VALUES (31, N'Beauty Berry', 29000, N'1', N'true')
INSERT [dbo].[sanpham] ([id], [ten], [gia], [loai], [active]) VALUES (32, N'Trà sữa JoJo - N', 24000, N'2', N'true')
INSERT [dbo].[sanpham] ([id], [ten], [gia], [loai], [active]) VALUES (33, N'Trà sữa JoJo -L', 29000, N'2', N'true')
INSERT [dbo].[sanpham] ([id], [ten], [gia], [loai], [active]) VALUES (34, N'Ly đá', 4000, N'3', N'true')
INSERT [dbo].[sanpham] ([id], [ten], [gia], [loai], [active]) VALUES (35, N'Sơ ri', 25000, N'3', N'false')
INSERT [dbo].[sanpham] ([id], [ten], [gia], [loai], [active]) VALUES (36, N'Sơ ri - ổi', 25000, N'3', N'false')
INSERT [dbo].[sanpham] ([id], [ten], [gia], [loai], [active]) VALUES (37, N'Milkavo', 33000, N'1', N'true')
INSERT [dbo].[sanpham] ([id], [ten], [gia], [loai], [active]) VALUES (38, N'Sapo Smoothies', 25000, N'1', N'true')
INSERT [dbo].[sanpham] ([id], [ten], [gia], [loai], [active]) VALUES (39, N'Trân châu giòn', 7000, N'3', N'false')
INSERT [dbo].[sanpham] ([id], [ten], [gia], [loai], [active]) VALUES (40, N'Ép Thơm', 25000, N'3', N'true')
INSERT [dbo].[sanpham] ([id], [ten], [gia], [loai], [active]) VALUES (41, N'Mulberry Chiller', 29000, N'1', N'true')
INSERT [dbo].[sanpham] ([id], [ten], [gia], [loai], [active]) VALUES (42, N'Raspberry Chiller', 29000, N'1', N'true')
INSERT [dbo].[sanpham] ([id], [ten], [gia], [loai], [active]) VALUES (1040, N'Lục trà sữa - N', 24000, N'2', N'true')
INSERT [dbo].[sanpham] ([id], [ten], [gia], [loai], [active]) VALUES (1041, N'Lục trà sữa - L', 29000, N'2', N'true')
INSERT [dbo].[sanpham] ([id], [ten], [gia], [loai], [active]) VALUES (1042, N'Macchiato Trà đen', 25000, N'2', N'false')
INSERT [dbo].[sanpham] ([id], [ten], [gia], [loai], [active]) VALUES (1043, N'Macchiato Cacao', 29000, N'2', N'false')
INSERT [dbo].[sanpham] ([id], [ten], [gia], [loai], [active]) VALUES (1044, N'Macchiato Matcha', 29000, N'2', N'false')
INSERT [dbo].[sanpham] ([id], [ten], [gia], [loai], [active]) VALUES (1045, N'Macchiato Trà lài', 29000, N'2', N'false')
INSERT [dbo].[sanpham] ([id], [ten], [gia], [loai], [active]) VALUES (1046, N'Sữa bắp', 10000, N'3', N'false')
INSERT [dbo].[sanpham] ([id], [ten], [gia], [loai], [active]) VALUES (1047, N'Sữa đậu xanh', 10000, N'3', N'false')
INSERT [dbo].[sanpham] ([id], [ten], [gia], [loai], [active]) VALUES (2040, N'Bánh cá', 10000, N'3', N'false')
INSERT [dbo].[sanpham] ([id], [ten], [gia], [loai], [active]) VALUES (2041, N'Sâm Bí Đao', 10000, N'3', N'true')
INSERT [dbo].[sanpham] ([id], [ten], [gia], [loai], [active]) VALUES (2042, N'Bánh tráng', 15000, N'3', N'true')
INSERT [dbo].[sanpham] ([id], [ten], [gia], [loai], [active]) VALUES (2043, N'Bánh rán Doraemon', 18000, N'3', N'false')
INSERT [dbo].[sanpham] ([id], [ten], [gia], [loai], [active]) VALUES (2044, N'Matcha Sữa tươi - N', 27000, N'2', N'true')
INSERT [dbo].[sanpham] ([id], [ten], [gia], [loai], [active]) VALUES (2045, N'Matcha Sữa tươi - L', 35000, N'2', N'true')
INSERT [dbo].[sanpham] ([id], [ten], [gia], [loai], [active]) VALUES (2046, N'Sapoffee', 33000, N'1', N'true')
INSERT [dbo].[sanpham] ([id], [ten], [gia], [loai], [active]) VALUES (2047, N'Green Coco', 33000, N'1', N'true')
INSERT [dbo].[sanpham] ([id], [ten], [gia], [loai], [active]) VALUES (2048, N'Cacao Sữa tươi - N', 27000, N'2', N'true')
INSERT [dbo].[sanpham] ([id], [ten], [gia], [loai], [active]) VALUES (2049, N'Cacao Sữa tươi - L', 35000, N'2', N'true')
INSERT [dbo].[sanpham] ([id], [ten], [gia], [loai], [active]) VALUES (2050, N'Hồng trà Chanh vàng - N', 24000, N'2', N'true')
INSERT [dbo].[sanpham] ([id], [ten], [gia], [loai], [active]) VALUES (2051, N'Hồng trà Chanh vàng - L', 29000, N'2', N'true')
INSERT [dbo].[sanpham] ([id], [ten], [gia], [loai], [active]) VALUES (2052, N'Lục trà Chanh vàng - N', 24000, N'2', N'true')
INSERT [dbo].[sanpham] ([id], [ten], [gia], [loai], [active]) VALUES (2053, N'Lục trà Chanh vàng - L', 29000, N'2', N'true')
INSERT [dbo].[sanpham] ([id], [ten], [gia], [loai], [active]) VALUES (2054, N'Nước chanh vàng', 20000, N'3', N'true')
SET IDENTITY_INSERT [dbo].[sanpham] OFF
GO
SET IDENTITY_INSERT [dbo].[sanphamphu] ON 

INSERT [dbo].[sanphamphu] ([id], [ten], [gia], [active]) VALUES (1, N'Trân châu trắng', 5000, N'true')
INSERT [dbo].[sanphamphu] ([id], [ten], [gia], [active]) VALUES (2, N'Thạch chanh dây', 5000, N'false')
INSERT [dbo].[sanphamphu] ([id], [ten], [gia], [active]) VALUES (3, N'Thạch trái cây', 5000, N'false')
INSERT [dbo].[sanphamphu] ([id], [ten], [gia], [active]) VALUES (4, N'Thạch trà xanh / cà phê', 5000, N'true')
INSERT [dbo].[sanphamphu] ([id], [ten], [gia], [active]) VALUES (5, N'Thạch phô mai', 8000, N'true')
INSERT [dbo].[sanphamphu] ([id], [ten], [gia], [active]) VALUES (6, N'Pudding', 5000, N'true')
INSERT [dbo].[sanphamphu] ([id], [ten], [gia], [active]) VALUES (7, N'Hạt đác', 8000, N'true')
INSERT [dbo].[sanphamphu] ([id], [ten], [gia], [active]) VALUES (8, N'Phô mai tươi', 8000, N'true')
INSERT [dbo].[sanphamphu] ([id], [ten], [gia], [active]) VALUES (9, N'Combo 1', 12000, N'true')
INSERT [dbo].[sanphamphu] ([id], [ten], [gia], [active]) VALUES (10, N'Combo 2', 12000, N'true')
INSERT [dbo].[sanphamphu] ([id], [ten], [gia], [active]) VALUES (11, N'Combo Thạch nổ', 10000, N'false')
INSERT [dbo].[sanphamphu] ([id], [ten], [gia], [active]) VALUES (12, N'Trân Châu giòn', 8000, N'true')
INSERT [dbo].[sanphamphu] ([id], [ten], [gia], [active]) VALUES (13, N'Thạch Mini', 7000, N'false')
INSERT [dbo].[sanphamphu] ([id], [ten], [gia], [active]) VALUES (1013, N'Trân châu củ năng', 8000, N'true')
INSERT [dbo].[sanphamphu] ([id], [ten], [gia], [active]) VALUES (2013, N'Macchiato thêm', 10000, N'false')
INSERT [dbo].[sanphamphu] ([id], [ten], [gia], [active]) VALUES (2014, N'Combo 3', 15000, N'true')
INSERT [dbo].[sanphamphu] ([id], [ten], [gia], [active]) VALUES (2015, N'Phụ thu', 5000, N'false')
INSERT [dbo].[sanphamphu] ([id], [ten], [gia], [active]) VALUES (2016, N'Hương Cacao / Khoai môn', 5000, N'false')
INSERT [dbo].[sanphamphu] ([id], [ten], [gia], [active]) VALUES (2017, N'Hương Kiwi / Việt quất', 5000, N'false')
INSERT [dbo].[sanphamphu] ([id], [ten], [gia], [active]) VALUES (2018, N'Whey', 20000, N'false')
INSERT [dbo].[sanphamphu] ([id], [ten], [gia], [active]) VALUES (2019, N'+2000', 2000, N'true')
INSERT [dbo].[sanphamphu] ([id], [ten], [gia], [active]) VALUES (2020, N'Cream Cheese', 12000, N'false')
INSERT [dbo].[sanphamphu] ([id], [ten], [gia], [active]) VALUES (2021, N'Hương Matcha', 8000, N'false')
SET IDENTITY_INSERT [dbo].[sanphamphu] OFF
GO
ALTER TABLE [dbo].[bangphu]  WITH CHECK ADD FOREIGN KEY([idchitiethd])
REFERENCES [dbo].[chitiethoadon] ([id])
GO
ALTER TABLE [dbo].[bangphu]  WITH CHECK ADD FOREIGN KEY([idsanpham])
REFERENCES [dbo].[sanphamphu] ([id])
GO
ALTER TABLE [dbo].[bangxoahoadon]  WITH CHECK ADD FOREIGN KEY([idhoadon])
REFERENCES [dbo].[hoadon] ([id])
GO
ALTER TABLE [dbo].[bangxoahoadon]  WITH CHECK ADD FOREIGN KEY([idnhanvien])
REFERENCES [dbo].[nhanvien] ([id])
GO
ALTER TABLE [dbo].[chiphi]  WITH CHECK ADD FOREIGN KEY([idloaichiphi])
REFERENCES [dbo].[loaichiphi] ([id])
GO
ALTER TABLE [dbo].[chitiethoadon]  WITH CHECK ADD FOREIGN KEY([idhoadon])
REFERENCES [dbo].[hoadon] ([id])
GO
ALTER TABLE [dbo].[chitiethoadon]  WITH CHECK ADD FOREIGN KEY([idspchinh])
REFERENCES [dbo].[sanpham] ([id])
GO
ALTER TABLE [dbo].[hoadon]  WITH CHECK ADD FOREIGN KEY([idkhachhang])
REFERENCES [dbo].[khachhang] ([id])
GO
ALTER TABLE [dbo].[hoadon]  WITH CHECK ADD FOREIGN KEY([idnhanvien])
REFERENCES [dbo].[nhanvien] ([id])
GO
