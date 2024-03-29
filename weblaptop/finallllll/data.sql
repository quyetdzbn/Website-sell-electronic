USE [laptop]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 6/22/2022 1:08:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user] [nvarchar](max) NULL,
	[pass] [nvarchar](max) NULL,
	[isAdmin] [int] NULL,
	[sdt] [nvarchar](50) NULL,
	[diachi] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categorylap]    Script Date: 6/22/2022 1:08:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorylap](
	[cid] [int] NOT NULL,
	[cname] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[kindOfLaptop]    Script Date: 6/22/2022 1:08:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kindOfLaptop](
	[id] [int] NOT NULL,
	[name] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[kindOfProduct]    Script Date: 6/22/2022 1:08:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kindOfProduct](
	[id] [int] NOT NULL,
	[name] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[kindOfPhuKien]    Script Date: 6/22/2022 1:08:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kindOfPhuKien](
	[id] [int] NOT NULL,
	[name] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Laptop_Details]    Script Date: 6/22/2022 1:08:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Laptop_Details](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[pid] [int] NOT NULL,
	[manhinh] [nvarchar](max) NULL,
	[cpu] [nvarchar](max) NULL,
	[ram] [nvarchar](max) NULL,
	[ocung] [nvarchar](max) NULL,
	[dohoa] [nvarchar](max) NULL,
	[khoiluong] [nvarchar](max) NULL,
	[kichthuoc] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_Details]    Script Date: 6/22/2022 1:08:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_Details](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NULL,
	[product_id] [int] NULL,
	[price] [int] NULL,
	[quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 6/22/2022 1:08:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[date] [date] NULL,
	[aid] [int] NULL,
	[totalmoney] [int] NULL,
	[status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 6/22/2022 1:08:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[image] [nvarchar](max) NULL,
	[price] [money] NULL,
	[title] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[cateID] [int] NULL,
	[sell_ID] [int] NULL,
	[soluong] [int] NULL,
	[kind] [int] NULL,
 CONSTRAINT [PK_lap] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([id], [user], [pass], [isAdmin], [sdt], [diachi]) VALUES (1, N'adm', N'adm', 1, N'03692952', N'Mỗ Lao - Hà Đông - Hà Nội')
INSERT [dbo].[Account] ([id], [user], [pass], [isAdmin], [sdt], [diachi]) VALUES (2, N'admin', N'admin', 1, N'03692952', N'Mỗ Lao - Hà Đông - Hà Nội')
INSERT [dbo].[Account] ([id], [user], [pass], [isAdmin], [sdt], [diachi]) VALUES (3, N'quanghai', N'123456', 1, N'03692952', N'Mỗ Lao - Hà Đông - Hà Nội')
INSERT [dbo].[Account] ([id], [user], [pass], [isAdmin], [sdt], [diachi]) VALUES (4, N'anhyeuem', N'123456', 0, N'022525425', N'Sơn Đà - Ba Vì')
INSERT [dbo].[Account] ([id], [user], [pass], [isAdmin], [sdt], [diachi]) VALUES (5, N'nqhai', N'123456', 0, N'09866476', N'Ba Vì - Hà Nội')
INSERT [dbo].[Account] ([id], [user], [pass], [isAdmin], [sdt], [diachi]) VALUES (6, N'adminn', N'123', 0, N'0327243352', N'Thái Bình')
INSERT [dbo].[Account] ([id], [user], [pass], [isAdmin], [sdt], [diachi]) VALUES (7, N'ad', N'123', 1, N'0327243352', N'Thái Bình')
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
INSERT [dbo].[Categorylap] ([cid], [cname]) VALUES (1, N'Dell')
INSERT [dbo].[Categorylap] ([cid], [cname]) VALUES (2, N'Apple')
INSERT [dbo].[Categorylap] ([cid], [cname]) VALUES (3, N'Asus')
INSERT [dbo].[Categorylap] ([cid], [cname]) VALUES (4, N'Lenovo')
INSERT [dbo].[Categorylap] ([cid], [cname]) VALUES (5, N'Chuột')
INSERT [dbo].[Categorylap] ([cid], [cname]) VALUES (6, N'Bàn phím')
INSERT [dbo].[Categorylap] ([cid], [cname]) VALUES (7, N'Tai nghe')
GO
INSERT [dbo].[kindOfLaptop] ([id], [name]) VALUES (1, N'Dell')
INSERT [dbo].[kindOfLaptop] ([id], [name]) VALUES (2, N'Apple')
INSERT [dbo].[kindOfLaptop] ([id], [name]) VALUES (3, N'Asus')
INSERT [dbo].[kindOfLaptop] ([id], [name]) VALUES (4, N'Lenovo')
GO
INSERT [dbo].[kindOfProduct] ([id], [name]) VALUES (1, N'Laptop')
INSERT [dbo].[kindOfProduct] ([id], [name]) VALUES (2, N'Phụ kiện')
GO
INSERT [dbo].[kindOfPhuKien] ([id], [name]) VALUES (5, N'Chuột')
INSERT [dbo].[kindOfPhuKien] ([id], [name]) VALUES (6, N'Bàn phím')
INSERT [dbo].[kindOfPhuKien] ([id], [name]) VALUES (7, N'Tai nghe')
GO
SET IDENTITY_INSERT [dbo].[Laptop_Details] ON 

INSERT [dbo].[Laptop_Details] ([id], [pid], [manhinh], [cpu], [ram], [ocung], [dohoa], [khoiluong], [kichthuoc]) VALUES (1, 1, N'15.6 inch, 1920 x 1080 Pixels, IPS, 144 Hz, Anti-glare LED-backlit', N'detail.cpu', N'8 GB, DDR4, 3200 MHz', N'SSD 512 GB', N'NVIDIA GeForce GTX 1650 4GB; AMD Radeon Graphics', N'2.2 kg', N'363.4 x 255 x 23.9 mm')
INSERT [dbo].[Laptop_Details] ([id], [pid], [manhinh], [cpu], [ram], [ocung], [dohoa], [khoiluong], [kichthuoc]) VALUES (2, 2, N'15.6 inch, 1920 x 1080 Pixels, IPS, 144 Hz, Anti-glare LED-backlit', N'detail.cpu', N'8 GB, DDR4, 3200 MHz', N'SSD 512 GB', N'NVIDIA GeForce GTX 1650 4GB; AMD Radeon Graphics', N'2.2 kg', N'363.4 x 255 x 23.9 mm')
INSERT [dbo].[Laptop_Details] ([id], [pid], [manhinh], [cpu], [ram], [ocung], [dohoa], [khoiluong], [kichthuoc]) VALUES (3, 3, N'15.6 inch, 1920 x 1080 Pixels, IPS, 144 Hz, Acer ComfyView Anti-glare LED-backlit
', N'AMD, Ryzen 5, 5500U
', N'8 GB, DDR4, 3200 MHz
', N'SSD 512 GB
', N'NVIDIA GeForce GTX 1650 4GB; AMD Radeon Graphics
', N'2.1 kg
', N'363.4 x 254.5 x 22.9 mm
')
INSERT [dbo].[Laptop_Details] ([id], [pid], [manhinh], [cpu], [ram], [ocung], [dohoa], [khoiluong], [kichthuoc]) VALUES (4, 4, N'14.0 inch, 1920 x 1080 Pixels, TN, 250 nits, Anti-glare LED-backlit
', N'Intel, Core i3, 1115G4
', N'8 GB, DDR4, 3200 MHz
', N'SSD 512 GB
', N'Intel UHD Graphics
', N'1.41 kg
', N'324.2 x 215.6 x 19.89 ~ 19.90 mm
')
INSERT [dbo].[Laptop_Details] ([id], [pid], [manhinh], [cpu], [ram], [ocung], [dohoa], [khoiluong], [kichthuoc]) VALUES (5, 5, N'15.6 inch, 2560 x 1440 Pixels, WVA, 240 Hz, 400 nits, Wide-Viewing Angle (WVA)
', N'Intel, Core i7, 11800H
', N'NULL32 GB (2 thanh 16 GB), DDR4, 3200 MHz
', N'SSD 1 TB
', N'NVIDIA GeForce RTX 3070 8GB; Intel UHD Graphics
', N'2.7 kg', N'356 x 272 x 19 mm
')
INSERT [dbo].[Laptop_Details] ([id], [pid], [manhinh], [cpu], [ram], [ocung], [dohoa], [khoiluong], [kichthuoc]) VALUES (6, 6, N'16.2 inch, 3456 x 2234 Pixels
', N'Apple, M1 Pro
', N'32 GB
', N'SSD 512 GB
', N'Apple M1
', N'2.129 kg
', N'15.6 x 358.5 x 235 mm
')
INSERT [dbo].[Laptop_Details] ([id], [pid], [manhinh], [cpu], [ram], [ocung], [dohoa], [khoiluong], [kichthuoc]) VALUES (7, 7, N'15.6 inch, 1920 x 1080 Pixels, WVA, 120 Hz, 250 nits, WVA Anti-glare LED Backlit Narrow Border
', N'Intel, Core i7, 11800H
', N'16 GB, DDR4, 3200 MHz
', N'SSD 512 GB
', N'Intel UHD Graphics
', N'2.81 kg
', N'25 x 357.2 x 272 mm
')
INSERT [dbo].[Laptop_Details] ([id], [pid], [manhinh], [cpu], [ram], [ocung], [dohoa], [khoiluong], [kichthuoc]) VALUES (8, 8, N'15.6 inch, 1920 x 1080 Pixels, WVA, 120 Hz, 250 nits, WVA Anti-glare LED Backlit Narrow Border
', N'Intel, Core i7, 11800H
', N'16 GB, DDR4, 3200 MHz
', N'SSD 512 GB
', N'Intel UHD Graphics
', N'2.81 kg
', N'25 x 357.2 x 272 mm
')
INSERT [dbo].[Laptop_Details] ([id], [pid], [manhinh], [cpu], [ram], [ocung], [dohoa], [khoiluong], [kichthuoc]) VALUES (9, 9, N'11.6 inch, 1366 x 768 Pixels, TN, 60 Hz, 250 nits, LED Backlit
', N'Intel, Celeron, N4020
', N'4 GB, LPDDR4, 2400 MHz
', N'eMMC 64 GB
', N'Intel UHD Graphics 600
', N'1.21 kg
', N'290 x 204.7 x 19.9 mm
')
INSERT [dbo].[Laptop_Details] ([id], [pid], [manhinh], [cpu], [ram], [ocung], [dohoa], [khoiluong], [kichthuoc]) VALUES (10, 10, N'14.2 inch, 3024 x 1964 Pixels

', N'Apple, M1 Pro

', N'32 GB

', N'SSD 512 GB

', N'Apple M1

', N'1.604 kg
', N'324.2 x 215.6 x 19.89 ~ 19.90 mm
')
INSERT [dbo].[Laptop_Details] ([id], [pid], [manhinh], [cpu], [ram], [ocung], [dohoa], [khoiluong], [kichthuoc]) VALUES (11, 11, N'13.3 inch, 2560 x 1600 Pixels, IPS, IPS LCD LED Backlit, True Tone
', N'Apple, M1
', N'16 GB, LPDDR4
', N'SSD 512 GB
', N'Apple M1 GPU 8 nhân
', N'1.4 kg
', N'304.1 x 212.4 x 15.6 mm
')
INSERT [dbo].[Laptop_Details] ([id], [pid], [manhinh], [cpu], [ram], [ocung], [dohoa], [khoiluong], [kichthuoc]) VALUES (12, 12, N'15.6 inch, 1920 x 1080 Pixels, IPS, 60 Hz, 250 nits, LED Backlit
', N'AMD, Ryzen 5, 5500U
', N'8 GB, DDR4, 3200 MHz
', N'SSD 512 GB
', N'AMD Radeon Graphics
', N'1.6 kg
', N'324.2 x 215.6 x 19.89 ~ 19.90 mm
')
INSERT [dbo].[Laptop_Details] ([id], [pid], [manhinh], [cpu], [ram], [ocung], [dohoa], [khoiluong], [kichthuoc]) VALUES (13, 17, N'11.6 inch, 1366 x 768 Pixels, TN, 60 Hz, 250 nits, LED Backlit
', N'AMD, Ryzen 5, 5500U
', N'8 GB, DDR4, 3200 MHz
', N'SSD 512 GB
', N'AMD Radeon Graphics
', N'1.6 kg
', N'324.2 x 215.6 x 19.89 ~ 19.90 mm
')
INSERT [dbo].[Laptop_Details] ([id], [pid], [manhinh], [cpu], [ram], [ocung], [dohoa], [khoiluong], [kichthuoc]) VALUES (14, 18, N'11.6 inch, 1366 x 768 Pixels, TN, 60 Hz, 250 nits, LED Backlit
', N'Intel, Celeron, N4020
', N'4 GB, LPDDR4, 2400 MHz
', N'eMMC 64 GB
', N'Intel UHD Graphics 600
', N'1.21 kg
', N'290 x 204.7 x 19.9 mm
')
SET IDENTITY_INSERT [dbo].[Laptop_Details] OFF
GO
SET IDENTITY_INSERT [dbo].[Order_Details] ON 

INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [price], [quantity]) VALUES (2, 1, 2, 120, 2)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [price], [quantity]) VALUES (3, 1, 3, 130, 1)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [price], [quantity]) VALUES (4, 2, 1, 200, 1)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [price], [quantity]) VALUES (12, 8, 6, 160, 1)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [price], [quantity]) VALUES (13, 9, 44, 160, 1)
SET IDENTITY_INSERT [dbo].[Order_Details] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([id], [date], [aid], [totalmoney], [status]) VALUES (1, CAST(N'2022-06-03' AS Date), 3, 370, 1)
INSERT [dbo].[Orders] ([id], [date], [aid], [totalmoney], [status]) VALUES (2, CAST(N'2022-06-21' AS Date), 5, 200, 1)
INSERT [dbo].[Orders] ([id], [date], [aid], [totalmoney], [status]) VALUES (8, CAST(N'2022-06-22' AS Date), 1, 160, 1)
INSERT [dbo].[Orders] ([id], [date], [aid], [totalmoney], [status]) VALUES (9, CAST(N'2022-06-22' AS Date), 1, 160, 1)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (1, N'Asus Nitro Gaming', N'https://images.fpt.shop/unsafe/fit-in/240x215/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2021/12/15/637751569796016673_acer-nitro-gaming-an515-45-den-dd.jpg', 200.0000, N'laptop', N'Acer TravelMate B3 được chế tác từ chất liệu nhựa cứng cáp, trọng lượng 1.4 kg và độ dày 20.99 mm, lúc cầm mình cảm thấy chiếc máy sẽ hơi nặng một xíu nhưng bù lại rất chắc tay, cứng cáp và không quá cồng kềnh.

', 3, 1, 9, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (2, N'Asus TUF Gaming', N'images/pexels-hasan-albari-1229861.jpg', 200.0000, N'laptop', N'Winter Men''s Snow Boots Plus Velvet Cotton Shoes Men''s Shoes Martin Cotton Boots Warm Shoes', 3, 6, 4, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (3, N'Dell Gaming Alienware', N'https://images.fpt.shop/unsafe/fit-in/240x215/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2022/3/7/637822697106524805_dell-gaming-alienware-m15-r6-den-dd.jpg', 130.0000, N'laptop', N'Giày thể thao Adidas Advantage Clean sử dụng chất liệu cao cấp, thoáng khí cả mặt trong và mặt ngoài giúp bạn luôn dễ chịu và thoải mái dù mang trong thời gian dài. Giày Adidas VS Advantage có bộ đế êm ái giúp người đi tận hưởng cảm giác thoải mái cho cả ngày dài vận động. Thời trang vốn là sự quay vòng, và thiết kế đơn giản, cổ điển đại diện cho xu hướng thời trang hoài cổ đang quay trở lại và được giới trẻ đón nhận nồng nhiệt hơn bao giờ hết. Không giống như những loại giày thể thao thông thường, mẫu giày adidas Advantage có kiểu dáng "thon thả" hơn, khiến cho đôi chân không bị trở nên lạc lõng so với đôi giày thể thao vốn bị "mang tiếng" là thô kệch, không đẹp mắt. Thêm nữa, đế của loại giày này được thiết kế theo kiểu đế xuồng 3cm vừa tạo tính đàn hồi cho từng bước đi mà cũng "tiện tay" giúp cho người đi "ăn gian" chiều cao khá đáng kể. Và tất nhiên, điểm cộng tuyệt vời nhất chính là sự phối hợp tuyệt vời từ kiểu dáng đến màu sắc của các nhà thiết kế tài hoa đã làm cho đôi giày phù hợp với mọi giới tính, mọi lứa tuổi, mix được với rất nhiều phong cách khác nhau', 1, 7, 9, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (4, N'Lenovo 100e Gen 2', N'https://images.fpt.shop/unsafe/fit-in/240x215/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2021/11/30/637738603461090929_lenovo-100e-gen-2-n4020-win-10-pro-dd.jpg', 140.0000, N'laptop', N'Giày thể thao Adidas Advantage Clean sử dụng chất liệu cao cấp, thoáng khí cả mặt trong và mặt ngoài giúp bạn luôn dễ chịu và thoải mái dù mang trong thời gian dài. Giày Adidas VS Advantage có bộ đế êm ái giúp người đi tận hưởng cảm giác thoải mái cho cả ngày dài vận động. Thời trang vốn là sự quay vòng, và thiết kế đơn giản, cổ điển đại diện cho xu hướng thời trang hoài cổ đang quay trở lại và được giới trẻ đón nhận nồng nhiệt hơn bao giờ hết. Không giống như những loại giày thể thao thông thường, mẫu giày adidas Advantage có kiểu dáng "thon thả" hơn, khiến cho đôi chân không bị trở nên lạc lõng so với đôi giày thể thao vốn bị "mang tiếng" là thô kệch, không đẹp mắt. Thêm nữa, đế của loại giày này được thiết kế theo kiểu đế xuồng 3cm vừa tạo tính đàn hồi cho từng bước đi mà cũng "tiện tay" giúp cho người đi "ăn gian" chiều cao khá đáng kể. Và tất nhiên, điểm cộng tuyệt vời nhất chính là sự phối hợp tuyệt vời từ kiểu dáng đến màu sắc của các nhà thiết kế tài hoa đã làm cho đôi giày phù hợp với mọi giới tính, mọi lứa tuổi, mix được với rất nhiều phong cách khác nhau', 4, 1, 10, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (5, N'MacBook Pro 14', N'https://images.fpt.shop/unsafe/fit-in/240x215/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2021/10/20/637703173013037856_macbook-pro-14-2021-xam-dd.jpg', 150.0000, N'laptop', N'Giày thể thao Adidas Advantage Clean sử dụng chất liệu cao cấp, thoáng khí cả mặt trong và mặt ngoài giúp bạn luôn dễ chịu và thoải mái dù mang trong thời gian dài. Giày Adidas VS Advantage có bộ đế êm ái giúp người đi tận hưởng cảm giác thoải mái cho cả ngày dài vận động. Thời trang vốn là sự quay vòng, và thiết kế đơn giản, cổ điển đại diện cho xu hướng thời trang hoài cổ đang quay trở lại và được giới trẻ đón nhận nồng nhiệt hơn bao giờ hết. Không giống như những loại giày thể thao thông thường, mẫu giày adidas Advantage có kiểu dáng "thon thả" hơn, khiến cho đôi chân không bị trở nên lạc lõng so với đôi giày thể thao vốn bị "mang tiếng" là thô kệch, không đẹp mắt. Thêm nữa, đế của loại giày này được thiết kế theo kiểu đế xuồng 3cm vừa tạo tính đàn hồi cho từng bước đi mà cũng "tiện tay" giúp cho người đi "ăn gian" chiều cao khá đáng kể. Và tất nhiên, điểm cộng tuyệt vời nhất chính là sự phối hợp tuyệt vời từ kiểu dáng đến màu sắc của các nhà thiết kế tài hoa đã làm cho đôi giày phù hợp với mọi giới tính, mọi lứa tuổi, mix được với rất nhiều phong cách khác nhau', 2, 6, 10, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (6, N'Laptop Dell XPS 13', N'https://images.fpt.shop/unsafe/fit-in/240x215/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2021/3/22/637520284988683886_dell-xps-13-9310-bac-dd-evo.jpg', 160.0000, N'laptop', N'Giày thể thao Adidas Advantage Clean sử dụng chất liệu cao cấp, thoáng khí cả mặt trong và mặt ngoài giúp bạn luôn dễ chịu và thoải mái dù mang trong thời gian dài. Giày Adidas VS Advantage có bộ đế êm ái giúp người đi tận hưởng cảm giác thoải mái cho cả ngày dài vận động. Thời trang vốn là sự quay vòng, và thiết kế đơn giản, cổ điển đại diện cho xu hướng thời trang hoài cổ đang quay trở lại và được giới trẻ đón nhận nồng nhiệt hơn bao giờ hết. Không giống như những loại giày thể thao thông thường, mẫu giày adidas Advantage có kiểu dáng "thon thả" hơn, khiến cho đôi chân không bị trở nên lạc lõng so với đôi giày thể thao vốn bị "mang tiếng" là thô kệch, không đẹp mắt. Thêm nữa, đế của loại giày này được thiết kế theo kiểu đế xuồng 3cm vừa tạo tính đàn hồi cho từng bước đi mà cũng "tiện tay" giúp cho người đi "ăn gian" chiều cao khá đáng kể. Và tất nhiên, điểm cộng tuyệt vời nhất chính là sự phối hợp tuyệt vời từ kiểu dáng đến màu sắc của các nhà thiết kế tài hoa đã làm cho đôi giày phù hợp với mọi giới tính, mọi lứa tuổi, mix được với rất nhiều phong cách khác nhau', 1, 7, 9, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (7, N'Asus Zenbook Duo', N'https://images.fpt.shop/unsafe/fit-in/240x215/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2021/9/21/637678404165582920_asus-zenbook-duo-ux482-xanh-dd.jpg', 170.0000, N'laptop', N'Giày thể thao Adidas Advantage Clean sử dụng chất liệu cao cấp, thoáng khí cả mặt trong và mặt ngoài giúp bạn luôn dễ chịu và thoải mái dù mang trong thời gian dài. Giày Adidas VS Advantage có bộ đế êm ái giúp người đi tận hưởng cảm giác thoải mái cho cả ngày dài vận động. Thời trang vốn là sự quay vòng, và thiết kế đơn giản, cổ điển đại diện cho xu hướng thời trang hoài cổ đang quay trở lại và được giới trẻ đón nhận nồng nhiệt hơn bao giờ hết. Không giống như những loại giày thể thao thông thường, mẫu giày adidas Advantage có kiểu dáng "thon thả" hơn, khiến cho đôi chân không bị trở nên lạc lõng so với đôi giày thể thao vốn bị "mang tiếng" là thô kệch, không đẹp mắt. Thêm nữa, đế của loại giày này được thiết kế theo kiểu đế xuồng 3cm vừa tạo tính đàn hồi cho từng bước đi mà cũng "tiện tay" giúp cho người đi "ăn gian" chiều cao khá đáng kể. Và tất nhiên, điểm cộng tuyệt vời nhất chính là sự phối hợp tuyệt vời từ kiểu dáng đến màu sắc của các nhà thiết kế tài hoa đã làm cho đôi giày phù hợp với mọi giới tính, mọi lứa tuổi, mix được với rất nhiều phong cách khác nhau', 3, 14, 10, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (8, N'Laptop Asus Aspire', N'https://images.fpt.shop/unsafe/fit-in/240x215/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2021/11/18/637728596076020587_acer-aspire-gaming-a715-42g-r1sb-r5-5500u-den-dd.jpg', 150.0000, N'laptop', N'New Men''s Running Shoes Comfortable Sports Shoes Men Athletic Outdoor Cushioning Sneakers for Walking&Jogging (EUR Size 39-48)', 3, 15, 10, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (9, N'Lenovo Ideapad Slim 3', N'https://images.fpt.shop/unsafe/fit-in/240x215/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2022/4/21/637861584460182816_lenovo-ideapad-3-14itl6-vang-dd-1.jpg', 180.0000, N'laptop', N'Men Hiking Shoes Waterproof Non-slip Sport Shoes Casual Running Camping Shoes Outdoor Sneakers for Men Size 39-47 3 Colors
', 4, 14, 10, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (10, N'Dell Inspiron N3510', N'https://images.fpt.shop/unsafe/fit-in/240x215/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2021/10/21/637704096245522041_dell-inspiron-n3510-black-dd.jpg', 180.0000, N'laptop', N'Winter Men''s Snow Boots Plus Velvet Cotton Shoes Men''s Shoes Martin Cotton Boots Warm Shoes
', 1, 15, 10, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (11, N'MacBook Pro 16', N'https://images.fpt.shop/unsafe/fit-in/240x215/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2021/10/20/637703174146015116_macbook-pro-16-2021-xam-dd.jpg', 150.0000, N'laptop', N'New Trend Men Hiking Shoes Waterproof Non-slip Sport Shoes Casual Running Camping Shoes Outdoor Sneakers for Men Size 39-48
', 2, 17, 10, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (12, N'Laptop Dell Gaming G15', N'https://images.fpt.shop/unsafe/fit-in/240x215/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2021/12/2/637740490696341842_dell-gaming-g15-5511-xam-dd.jpg', 165.0000, N'laptop', N'Mens Skid Resistant Hiking Shoes Waterproof Mountain Boots Climbing Shoes Outdoor Sport Shoes Fashion Sneakers
', 1, 19, 8, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (13, N'Tai nghe HyperX Cloud Stinger', N'https://images.fpt.shop/unsafe/fit-in/200x200/filters:quality(90):fill(white)/https://fptshop.com.vn/Uploads/Originals/2021/11/10/637721638521972942_anhdaidien-00779689.jpg', 200.0000, N'tai nghe', N'Với mức giá rất đáng cân nhắc khi đong đếm về chất lượng/giá cả so với các dòng tai nghe khác, HyperX Cloud Stinger chắc chắn sẽ là một trong những tai nghe gaming nổi bật trong phân khúc Mid-end.', 7, 18, 10, 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (14, N' tai có mic JBL QUANTUM50BLKAS', N'https://images.fpt.shop/unsafe/fit-in/200x200/filters:quality(90):fill(white)/https://fptshop.com.vn/Uploads/Originals/2021/10/29/637711178012905930_55687_tai_nghe_gaming_jbl_quantum_50_trang_0002_3.jpg', 200.0000, N'tai nghe', N'Được đảm bảo bởi thương hiệu sản xuất thiết bị âm thanh lừng danh trên thị trường - JBL, mẫu tai nghe Quantum 50 ghi điểm nhờ thiết kế đầy vẻ năng động trẻ trung, đồng thời sở hữu chất âm ấn tượng với driver 8.6mm. Sự hỗ trợ của sản phẩm sẽ giúp cho mọi tác vụ từ giải trí đến học tập và làm việc trở nên trọn vẹn hơn nhiều.', 7, 1, 10, 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (15, N'Chuột không dây Logitech M221', N'https://images.fpt.shop/unsafe/fit-in/214x214/filters:quality(90):fill(white)/https://fptshop.com.vn/Uploads/Originals/2020/11/25/637418984502900576_M221.jpg', 100.0000, N'chuot', N'Nhằm để giảm thiểu những sự phiền toái và giới hạn khoảng cách do chuột máy tính có dây thì chuột không dây Logitech M221 được ra đời. Với công nghệ không dây 2.4GHz, chuột Logitech M221 cho phép người dùng kết nối xa lên đến 10m.', 5, 6, 10, 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (16, N'Chuột có dây Rapoo N200 ', N'https://images.fpt.shop/unsafe/fit-in/214x214/filters:quality(90):fill(white)/https://fptshop.com.vn/Uploads/Originals/2018/11/7/636772096317963039_chuot-co-day-rapoo-n200-1o.png', 120.0000, N'chuot', N'Mens Skid Resistant Hiking Shoes Waterproof Mountain Boots Climbing Shoes Outdoors
', 5, 7, 10, 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (17, N'Modern 15 A5M ', N'https://images.fpt.shop/unsafe/fit-in/240x215/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2022/3/18/637832262308845531_masstel-e140-celeron-n4120-xam-dd.jpg', 100.0000, N'laptop', N'Men''s Modern Classic Lace Up Lined Perforated Dress Oxfords Shoes Flexible and Comfort oxfords
', 3, 1, 10, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (18, N'MacBook Pro 13', N'https://images.fpt.shop/unsafe/fit-in/240x215/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2020/11/13/637408530311831907_mbp-2020-m1-gray-dd-1.png', 120.0000, N'laptop', N'Men''s Outdoors Waterproof Boots Sports Shoes Snow Boots Hiking Boots Men''s Winter Warm Boots(No Velvet/Plus Velvet)
', 2, 7, 10, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (19, N'chuột máy tính có dây LOGITECH G102 RBG', N'https://vn-live-05.slatic.net/p/cc33cd4c00c5cf83df2960c9e9d0457b.jpg_525x525q80.jpg', 215.0000, N'chuot', N'Chuột gaming logitech G102 có hiệu suất cao. Nhanh hơn tới 8 lần: Giao tiếp ở mức lên tới 1000 báo cáo mỗi giây - hay nhanh hơn gấp 8 lần so với chuột tiêu chuẩn.', 5, 12, 10, 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (20, N'Chuột không dây Logitech M221', N'https://fptshop.com.vn/Uploads/Thumbs/2016/12/1/636161960541846703_HAPK-CHUOT-KHONG-DAY-LOGITECH-M221-3.JPG', 319.0000, N'chuot', N'Chuột Logitech M221với công nghệ không dây 2.4GHz cho phép người dùng kết nối xa lên đến 10m.
', 5, 7, 10, 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (21, N'Chuột Gaming không dây Logitech G304', N'https://fptshop.com.vn/Uploads/Thumbs/2020/10/26/637393197109518808_G304-4.jpg', 890.0000, N'chuot', N'Chuột không dây logitech G304 sở hữu thiết kế đột phá, cảm biến HERO 12.000 mức DPI, hệ thống 6 nút lập trình để tùy chỉnh tính năng và công nghệ tương tác không dây vượt trội LIGHTSPEED.
', 5, 6, 10, 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (22, N'Chuột Gaming Logitech G102 Gen2', N'https://fptshop.com.vn/Uploads/Thumbs/2020/9/28/637369016836148422_G102%20Gen2-4.jpg', 590.0000, N'chuot', N'Logitech G102 Gen 2 có tạo hình hết sức cổ điển với kiểu dáng đối xứng truyền thống. Công nghệ đèn LED RGB tạo điểm nhấn. Sự tinh tế của Logitech được thể hiện qua hệ thống 6 nút tiện lợi, cho phép bạn kích hoạt nhanh các tính năng được thiết lập ở các vị trí dễ nhấn khi cầm nắm.
', 5, 11, 10, 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (23, N'Chuột không dây Xiaomi Mi Dual', N'https://fptshop.com.vn/Uploads/Thumbs/2021/10/9/637693741650549361_00775587-1.jpg', 350.0000, N'chuot', N'Chuột không dây Mi Dual Mode Wireless hoạt động êm ái, không ồn ào, được thiết kế với màu trắng thanh lịch và vận hành mượt mà nhờ độ phân giải đạt mức 1.300 DPI, có hai chế độ kết nối, có nút bên hông, thiết kế gọn nhẹ.
', 5, 15, 10, 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (24, N'Bàn phím Prolink PKCM-2007', N'https://fptshop.com.vn/Uploads/Thumbs/2021/7/16/637620335967558201_PKCM-2007%20-%201.jpeg', 200.0000, N'banphim', N'Với thiết kế full size và kiểu dáng chống tràn khi gõ, bàn phím Prolink PKCM-2007 là công cụ đắc lực cho những người làm việc văn phòng, thiết kế bàn phím PKCM-2007 nghiêng nhẹ dưới đáy, tạo nên tư thế gõ thuận lợi cho cả hai tay giúp soạn thảo văn bản dễ dàng hơn.
', 6, 3, 7, 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (25, N'Bàn phím giả cơ có dây Zadez G-850K', N'https://fptshop.com.vn/Uploads/Thumbs/2021/12/9/637746607810605486_1.jpg', 350.0000, N'banphim', N'Bàn phím có dây Gaming Zadez G-850K được làm từ chất liệu nhựa ABS cao cấp, phím khắc Laser,  full 104 phím, 11 phím đa phương tiện. Hỗ trợ 19 phím nhấn cùng lúc (N-Key Rollover), có đèn LED RGB nhiều màu sắc.
', 6, 6, 9, 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (26, N'Bàn phím giả cơ có dây MSI Vigor GK20 US', N'https://fptshop.com.vn/Uploads/Thumbs/2021/12/24/637759602815516534_BAN-PHIM-2.jpg', 700.0000, N'banphim', N'Bàn phím Gaming MSI Vigor GK20 hiệu ứng đèn nền tuyệt đẹp và thiết kế công thái học cũng như kháng nước.
', 6, 9, 10, 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (27, N'Bàn phím cơ có dây DARE-U EK1280 Black Brown', N'https://fptshop.com.vn/Uploads/Thumbs/2021/12/9/637746599017266731_2.jpg', 999.0000, N'banphim', N'Bàn phím cơ Dareu EK1280 RGB được thiết kế với hệ thống đèn LED RGB đặc sắc, sống động, hỗ trợ 16,8 triệu màu sắc mang đến cho game thủ màn trình diễn ánh sáng ấn tượng, tạo phong cách cá tính cho góc gaming.
', 6, 14, 10, 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (28, N'Bàn phím cơ không dây Zadez GT-015DK', N'https://fptshop.com.vn/Uploads/Thumbs/2022/4/18/637858933452880200_HASP-Zadek-GT-015DK-1.png', 1490.0000, N'banphim', N'Bàn phím cơ Gaming không dây ZADEZ Blue Switch GT-015DK sở hữu một kiểu dáng thiết kế ấn tượng, mang lối cách điệu của các đường nét nằm tại cạnh bên và mặt trên. Ngoài ra, các phím được in rõ ràng tạo nên độ sắc nét, đồng thời với chất liệu cao cấp cùng lớp phủ bằng nhựa PVC giúp bàn phím ZADEZ Blue Switch GT-015DK có được độ chắc chắn đáng kinh ngạc.
', 6, 8, 9, 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (29, N'Chuột Gaming Logitech G502 Hero High Performance', N'https://fptshop.com.vn/Uploads/Thumbs/2020/10/26/637393203689499588_G502-2.jpg', 1759.0000, N'chuot', N'Chuột G502 HERO High Performance được Logitech trang bị cảm biến HERO 25K – cảm biến gaming có độ chính xác cao bậc nhất thế giới hiện nay. Công nghệ ánh sáng LIGHTSYNC RGB. Bộ quang phổ 16,8 triệu màu sẽ đem lại hiệu ứng ánh sáng sống động nhất trên G502 HERO High Performance.
', 5, 7, 10, 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (30, N'Chuột Gaming MSI Clutch GM20 Elite', N'https://fptshop.com.vn/Uploads/Thumbs/2021/12/24/637759609885464213_CHUOT-4.jpg', 756.0000, N'Chuot', N'Chuột chơi game MSI Clutch GM20 Elite nổi bật ở thiết kế đậm chất gaming và hệ thống đèn LED RGB đa sắc màu. Ngoài ra, sản phẩm còn có tốc độ phản hồi siêu nhanh, chất lượng xây dựng bền bỉ và trọng lượng có thể điều chỉnh
', 5, 9, 10, 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (31, N'Chuột gaming Corsair Iron claw RGB', N'https://fptshop.com.vn/Uploads/Thumbs/2021/9/13/637671646464389567_00772807-chuot-corsair-iron-claw-rgb-1.jpg', 1600.0000, N'chuot', N'Corsair sử dụng cảm biến PMW3391 với mức mức CPI cao nhất lên tới 18.000 và mức IPS lên tới 450. Ngoài ra Corsair Iron claw RGB sử dụng switch Omron với độ bền 50 triệu lần nhấn, đảm bảo tuổi thọ của chuột sẽ vô cùng bền bỉ.
', 5, 6, 10, 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (32, N'Chuột không dây Logitech MX Master 3', N'https://fptshop.com.vn/Uploads/Thumbs/2021/9/24/637680744725377286_mxmaster3.jpg', 2490.0000, N'chuot', N'Chuột không dây Logitech MX Master 3 được thiết kế với kiểu dáng hỗ trợ cử động cổ tay và bàn tay thoải mái nhất, có thể vận hành mượt mà trên nhiều bề mặt nhờ độ phân giải cảm biến lên tới 4000 DPI và hỗ trợ công nghệ Logitech Flow giúp duy trì tương tác với ba máy tính hoặc laptop riêng biệt.
', 5, 12, 10, 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (33, N'Chuột Bluetooth Microsoft Modern', N'https://fptshop.com.vn/Uploads/Thumbs/2019/12/9/637114960259233430_Microsoft%20Modern%20(3).jpg', 900.0000, N'chuot', N'Chuột Microsoft Modern có khả năng kết nối bluetooth với cùng lúc 3 thiết bị đầu ra, có trọng lượng nhẹ nhàng chỉ 190 gram với kích thước tổng thể là 14 x 13 x 6 cm, thời lượng pin lên đến 1 năm.
', 5, 3, 10, 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (34, N'Modern 15 A5M ', N'https://images.fpt.shop/unsafe/fit-in/240x215/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2022/3/18/637832262308845531_masstel-e140-celeron-n4120-xam-dd.jpg', 100.0000, N'laptop', N'Men''s Modern Classic Lace Up Lined Perforated Dress Oxfords Shoes Flexible and Comfort oxfords
', 3, 1, 10, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (35, N'MacBook Pro 13', N'https://images.fpt.shop/unsafe/fit-in/240x215/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2020/11/13/637408530311831907_mbp-2020-m1-gray-dd-1.png', 120.0000, N'laptop', N'Men''s Outdoors Waterproof Boots Sports Shoes Snow Boots Hiking Boots Men''s Winter Warm Boots(No Velvet/Plus Velvet)
', 2, 7, 10, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (36, N'Tai nghe chụp tai Sennheiser HD206', N'https://fptshop.com.vn/Uploads/Thumbs/2021/11/25/637734458601378209_3.jpg', 669.0000, N'tainghe', N'Sennheiser HD 206 có thiết kế kiểu tai nghe closed back với các miếng đệm lót tai đặt bên trong chụp tai. Nhờ đó, trải nghiệm nghe sẽ luôn đạt được chất lượng cao và trọn vẹn nhất. Bên cạnh đó, chiếc tai nghe này còn có trọng lượng nhẹ, đặc biệt phù hợp cho những ai đang làm công việc tại phòng thu hoặc DJ.
', 7, 4, 10, 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (37, N'Tai nghe HyperX Cloud Stinger', N'https://fptshop.com.vn/Uploads/Thumbs/2021/11/10/637721639158716568_anhdaidien-00779689-2.jpg', 1290.0000, N'tainghe', N'HyperX Cloud Stinger được trang bị màng loa định hướng rộng 50mm, song song với tai nghe nhằm định vị âm thanh trực tiếp tới tai giúp mang lại chất lượng âm thanh đẳng cấp cho các game thủ
', 7, 1, 10, 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (38, N'Chuột Bluetooth Microsoft Modern', N'https://fptshop.com.vn/Uploads/Thumbs/2019/12/9/637114960259233430_Microsoft%20Modern%20(3).jpg', 900.0000, N'chuot', N'Chuột Microsoft Modern có khả năng kết nối bluetooth với cùng lúc 3 thiết bị đầu ra, có trọng lượng nhẹ nhàng chỉ 190 gram với kích thước tổng thể là 14 x 13 x 6 cm, thời lượng pin lên đến 1 năm.
', 5, 3, 10, 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (39, N'Modern 15 A5M ', N'https://images.fpt.shop/unsafe/fit-in/240x215/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2022/3/18/637832262308845531_masstel-e140-celeron-n4120-xam-dd.jpg', 100.0000, N'laptop', N'MSI Modern 15 A5M (236VN) gây ấn tượng với người dùng bởi phong cách thiết kế thời trang, thanh lịch cùng những thông số kỹ thuật ấn tượng nhưng lại sở hữu mức giá vô cùng hợp lý, sẽ là một sự lựa chọn đúng đắn đáp ứng mọi nhu cầu laptop học tập - văn phòng đa dạng.
Thiết kế tinh xảo, đậm tính thời trang
Laptop MSI Modern luôn thu hút mọi ánh nhìn xung quanh với vóc dáng sang chảnh, thời thượng cùng chiếc áo xám hiện đại và những đường bo nét vuông vức, tinh tế, toát lên một khí thế sang trọng cho chủ nhân sở hữu nó dù ở bất kỳ không gian nào. Nắp lưng và chiếu nghỉ tay bằng kim loại bền bỉ, cứng cáp nhưng chỉ có trọng lượng 1.6 kg và độ dày 18.9 mm, cho phép người dùng linh hoạt di chuyển đến mọi nơi.  Tiết diện bàn phím được thiết kế hợp lý với dải đèn nền đơn sắc nổi bật, giúp bạn nhập liệu thoải mái và chuẩn xác đến từng vị trí với tốc độ nhanh chóng dù làm việc trong môi trường thiếu sáng. Hơn thế nữa, hành trình sâu và độ nảy ổn định cũng mang lại cảm giác êm tay khi soạn thảo mà không ảnh hưởng quá nhiều đến những người xung quanh.Tối ưu năng suất làm việc khi người dùng có thể vừa sạc pin nhanh chóng vừa truyền tải dữ liệu dễ dàng đến với các thiết bị ngoại vi tương thích như loa, chuột, máy in, máy chiếu,... nhờ đa dạng các cổng kết nối cần thiết được trang bị cho laptop như 3 cổng USB 3.2, HDMI, Jack tai nghe 3.5 mm và USB Type-C.
', 3, 1, 10, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (40, N'MacBook Pro 13', N'https://images.fpt.shop/unsafe/fit-in/240x215/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2020/11/13/637408530311831907_mbp-2020-m1-gray-dd-1.png', 120.0000, N'laptop', N'Là một chiếc ultrabook cao cấp, MacBook Air mang trên mình tất cả thẩm mỹ tinh tế của Apple trong thiết kế sản phẩm. MacBook Air M1 được hoàn thiện từ chất liệu nhôm nguyên khối, không chỉ nhẹ mà còn rất sang trọng. Trọng lượng chỉ 1,29kg cũng giúp người dùng tiện lợi mang đi sử dụng ở mọi nơi. Khách hàng có thể lựa chọn ba phiên bản màu khác nhau phù hợp với cả tính mỗi người, bao gồm xám, bạc và vàng.Cảm giác mở máy bằng một tay vẫn giữ được sự mượt mà, cho thấy khả năng hoàn thiện bản lề cực tốt của Apple. Khi mở máy ra, người dùng sẽ thấy bàn phím Magic Keyboard có hành trình phím 1mm, hỗ trợ đèn nền và TouchPad có kích thước lớn, giúp các thao tác trên máy trở nên trơn tru và có phản hồi tốt. Hai dải loa stereo được bố trị bên cạnh bàn phím, có âm lượng và chất âm tốt, hỗ trợ người dùng mọi tác vụ giải trí. Đặc biệt, nhờ không có quạt gió nên người dùng sẽ không tìm thấy khe tản nhiệt trên thiết bị này, tạo ra cảm giác thiết kế liền mạch cho sản phẩm.

MacBook Air được trang bị màn hình Retina kích thước 13,3 inch có độ phân giải 2560x1600. Màn hình này hỗ trợ công nghệ True Tone, dải màu rộng P3 và có độ sáng lên tới 400 nit, đem lại màu sắc và độ tương phản tốt ngay cả khi làm việc trong không gian có ánh sáng mạnh như ngoài trời nắng.
', 2, 7, 10, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (41, N'Bàn phím cơ có dây DARE-U EK1280 Black Brown', N'https://fptshop.com.vn/Uploads/Thumbs/2021/12/9/637746599017266731_2.jpg', 999.0000, N'banphim', N'Bàn phím cơ Dareu EK1280 RGB được thiết kế với hệ thống đèn LED RGB đặc sắc, sống động, hỗ trợ 16,8 triệu màu sắc mang đến cho game thủ màn trình diễn ánh sáng ấn tượng, tạo phong cách cá tính cho góc gaming.
', 6, 14, 10, 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (42, N'Tai nghe HyperX Cloud Stinger', N'https://fptshop.com.vn/Uploads/Thumbs/2021/11/10/637721639158716568_anhdaidien-00779689-2.jpg', 1290.0000, N'tainghe', N'HyperX Cloud Stinger được trang bị màng loa định hướng rộng 50mm, song song với tai nghe nhằm định vị âm thanh trực tiếp tới tai giúp mang lại chất lượng âm thanh đẳng cấp cho các game thủ
', 7, 1, 10, 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (43, N'Laptop Dell Gaming G15 5511', N'https://cdn.tgdd.vn/Products/Images/44/264354/Slider/vi-vn-dell-gaming-g15-5511-i5-70266676-11.jpg', 160.0000, N'laptop', N'Không những mang đến cho người dùng hiệu năng ấn tượng nhờ con chip Intel thế hệ 11 tân tiến, laptop Dell Gaming G15 5511 i5 11400H (70266676) còn sở hữu thiết kế thời thượng, lôi cuốn, hứa hẹn sẽ là người cộng sự lý tưởng cùng bạn chinh phục mọi chiến trường.
Thu hút mọi ánh nhìn cùng vẻ ngoài nổi bật
Đến với chiếc laptop, ngôn ngữ thiết kế đã được thay đổi so với các phiên bản tiền nhiệm, hầm hố hơn, các đường nét cắt xẻ tăng thêm phần gaming cho chiếc máy. Lớp vỏ nhựa màu xám bao bọc bên ngoài chiếc laptop Dell Gaming này mang đến sự bền bỉ hoàn mỹ cùng trọng lượng 2.81 kg và dày 25 mm, với mình đây là một con số vừa đủ để có thể mang theo bên người, phục vụ cho nhu cầu làm việc cũng như giải trí cho bản thân. ', 1, 7, 10, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (44, N'Laptop Dell Gaming Alienware m15 R6', N'https://cdn.tgdd.vn/Products/Images/44/271090/Slider/dell-gaming-alienware-m15-r6-i7-70272633-fix-01-1020x570.jpg', 160.0000, N'laptop', N'• Laptop Dell Gaming Alienware sở hữu CPU Intel Core i7 Tiger Lake 11800H mang lại hiệu năng xử lý vượt trội. Cùng bạn thoả sức sáng tạo hình ảnh, video với card tích hợp NVIDIA GeForce RTX 3070 8 GB hay giải trí với các tựa game hấp dẫn như CS:GO, GTAV,...

• Bộ nhớ RAM 32 GB cho khả năng đa nhiệm cực mượt mà, ổ cứng SSD 1 TB cho bạn thoải mái lưu trữ dữ liệu với khả năng truy xuất, khởi động máy cực nhanh.

• Laptop Dell sở hữu ngoại hình độc đáo mang lại độ nhận diện cao với chiếc logo nổi bật trên lớp vỏ nhựa bền chắc, trọng lượng 2.69 kg luôn trong tư thế sẵn sàng chiến đấu bất cứ khi nào bạn cần.

• Màn hình 15.6 inch có độ sáng lên đến 400 nits và 99% DCI-P3 cho hình ảnh hiển thị sống động, rực rỡ với độ tương phản cao.

• Công nghệ WVA mang đến cho màn hình laptop góc nhìn rộng lên đến 178 độ, tần số quét 240 Hz cho độ trễ cực thấp, mang lại trải nghiệm hình ảnh siêu mượt mà, không bị giật, xé khi chiến những trận game đỉnh cao.

• Đèn bàn phím chuyển màu RGB độc đáo hỗ trợ bạn gõ tốt, chiến game trong mọi điều kiện sáng.

• Trang bị các cổng kết nối tiện lợi như USB 3.2, HDMI, LAN (RJ45), USB Type-C.

• Công nghệ High Definition (HD) với tính năng khuếch đại âm thanh cùng Audio Nahimic Audio giả lập hệ thống âm vòm 3D sống động, lọc và khử tiếng ồn hiệu quả.', 1, 9, 9, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (45, N'Laptop Dell Gaming G15 5515 R7', N'https://cdn.tgdd.vn/Products/Images/44/269650/Slider/vi-vn-dell-gaming-g15-5515-r7-70266674-6.jpg', 190.0000, N'laptop', N'• Laptop đồ họa - kỹ thuật sở hữu bộ vi xử lý AMD Ryzen 7 5800H​ cùng card đồ họa rời NVIDIA GeForce RTX 3050 4 GB, đáp ứng mạnh mẽ quá trình xử lý các tác vụ văn phòng hay chiến những trận game đầy kịch tính.

• Màn hình viền mỏng 15.6 inch ở laptop Dell được trang bị các công nghệ hiện đại như công nghệ WVA, Anti Glare, LED Backlit hỗ trợ chóng chói, tiết kiệm điện, mang đến khung hình rộng mở.

• Tần số quét 120 Hz mang đến cho bạn những chuyển động mượt mà. Hạn chế tình trạng giật, xé hình.

• Laptop Dell Gaming với trọng lượng 2.81 kg và dày 25 mm, cùng bàn phím có đèn nền đơn sắc dễ dàng cùng bạn chiến game ở mọi không gian một cách thuận lợi nhất.

• Chiếc laptop này còn được trang bị các cổng kết nối phổ biến như USB 3.2, 2 cổng USB 2.0, HDMI và USB Type-C hỗ trợ quá trình truyền xuất dữ liệu dễ dàng.

• RAM 8 GB xử lý đa nhiệm mượt mà mọi tác vụ cùng ổ cứng SSD 512 GB cho khả năng lưu trữ đủ dùng, truy xuất dữ liệu nhanh chóng.

• Hệ điều hành Windows 11 Home SL + Office Home & Student 2021 vĩnh viễn được cài đặt sẵn trên máy giúp bạn tối ưu nhu cầu sử dụng.

• Sự kết hợp giữa High Definition (HD) Audio và Realtek Nahimic 3D Audio mang đến chất âm vòm, tăng cường âm Bass cùng tính năng khuếch đại cho bạn đắm chìm trong thế giới đầy thư giãn.', 1, 8, 10, 1)
SET IDENTITY_INSERT [dbo].[product] OFF
GO
ALTER TABLE [dbo].[Laptop_Details]  WITH CHECK ADD FOREIGN KEY([pid])
REFERENCES [dbo].[product] ([id])
GO
ALTER TABLE [dbo].[Laptop_Details]  WITH CHECK ADD FOREIGN KEY([pid])
REFERENCES [dbo].[product] ([id])
GO
ALTER TABLE [dbo].[Laptop_Details]  WITH CHECK ADD FOREIGN KEY([pid])
REFERENCES [dbo].[product] ([id])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([aid])
REFERENCES [dbo].[Account] ([id])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([aid])
REFERENCES [dbo].[Account] ([id])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([aid])
REFERENCES [dbo].[Account] ([id])
GO
