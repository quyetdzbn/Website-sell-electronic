USE [laptop2]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 6/19/2022 4:21:11 PM ******/
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
/****** Object:  Table [dbo].[Categorylap]    Script Date: 6/19/2022 4:21:11 PM ******/
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
/****** Object:  Table [dbo].[kindOfProduct]    Script Date: 6/19/2022 4:21:11 PM ******/
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
/****** Object:  Table [dbo].[Laptop_Details]    Script Date: 6/19/2022 4:21:11 PM ******/
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
/****** Object:  Table [dbo].[Order_Details]    Script Date: 6/19/2022 4:21:11 PM ******/
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
/****** Object:  Table [dbo].[Orders]    Script Date: 6/19/2022 4:21:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[date] [date] NULL,
	[aid] [int] NULL,
	[totalmoney] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 6/19/2022 4:21:11 PM ******/
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
INSERT [dbo].[Account] ([id], [user], [pass], [isAdmin], [sdt], [diachi]) VALUES (5, N'nqhai', N'123456', 0, N'09866476', N'SÆ¡n ÄÃ  - Ba VÃ¬ - HÃ  Ná»i')
INSERT [dbo].[Account] ([id], [user], [pass], [isAdmin], [sdt], [diachi]) VALUES (6, N'adminn', N'123', 0, N'0327243352', N'Thái Bình')
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
INSERT [dbo].[kindOfProduct] ([id], [name]) VALUES (1, N'Laptop')
INSERT [dbo].[kindOfProduct] ([id], [name]) VALUES (2, N'Phụ kiện')
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
SET IDENTITY_INSERT [dbo].[Order_Details] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([id], [date], [aid], [totalmoney]) VALUES (1, CAST(N'2022-06-03' AS Date), 3, 370)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (1, N'Asus Nitro Gaming', N'https://images.fpt.shop/unsafe/fit-in/240x215/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2021/12/15/637751569796016673_acer-nitro-gaming-an515-45-den-dd.jpg', 200.0000, N'laptop', N'Acer TravelMate B3 được chế tác từ chất liệu nhựa cứng cáp, trọng lượng 1.4 kg và độ dày 20.99 mm, lúc cầm mình cảm thấy chiếc máy sẽ hơi nặng một xíu nhưng bù lại rất chắc tay, cứng cáp và không quá cồng kềnh.

', 3, 1, 10, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (2, N'Asus TUF Gaming', N'https://images.fpt.shop/unsafe/fit-in/240x215/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2021/9/21/637678404165582920_asus-zenbook-duo-ux482-xanh-dd.jpg', 200.0000, N'laptop', N'Asus TUF Gaming sở hữu màu sắc độc lạ mang cá tính mạnh mẽ riêng. Khung máy sở hữu từng nét vẽ ấn tượng kết hợp cùng những đường cắt xén đầy tinh tế cho một sản phẩm laptop Gaming Asus độc đáo. Phần đế sáng tạo với kiểu dáng hình tổ ong gia tăng độ bám để cố định máy trên mặt bàn. Nhờ đó, Asus TUF  được ví như một kiệt tác mới trong các thế hệ Gaming đến từ Asus. 
', 3, 6, 5, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (3, N'Dell Gaming Alienware', N'https://images.fpt.shop/unsafe/fit-in/240x215/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2022/3/7/637822697106524805_dell-gaming-alienware-m15-r6-den-dd.jpg', 130.0000, N'laptop', N'Với phong cách thiết kế độc đáo cùng cấu hình vượt trội, laptop Dell Gaming Alienware m15 R6 i7 11800H (70272633) sẵn sàng đáp ứng hoàn hảo mọi tác vụ của một chiếc laptop đồ họa - kỹ thuật như thiết kế hay chiến game.
• Laptop Dell Gaming Alienware sở hữu CPU Intel Core i7 Tiger Lake 11800H mang lại hiệu năng xử lý vượt trội. Cùng bạn thoả sức sáng tạo hình ảnh, video với card tích hợp NVIDIA GeForce RTX 3070 8 GB hay giải trí với các tựa game hấp dẫn như CS:GO, GTAV,...

• Bộ nhớ RAM 32 GB cho khả năng đa nhiệm cực mượt mà, ổ cứng SSD 1 TB cho bạn thoải mái lưu trữ dữ liệu với khả năng truy xuất, khởi động máy cực nhanh.

• Laptop Dell sở hữu ngoại hình độc đáo mang lại độ nhận diện cao với chiếc logo nổi bật trên lớp vỏ nhựa bền chắc, trọng lượng 2.69 kg luôn trong tư thế sẵn sàng chiến đấu bất cứ khi nào bạn cần.

• Màn hình 15.6 inch có độ sáng lên đến 400 nits và 99% DCI-P3 cho hình ảnh hiển thị sống động, rực rỡ với độ tương phản cao.

• Công nghệ WVA mang đến cho màn hình laptop góc nhìn rộng lên đến 178 độ, tần số quét 240 Hz cho độ trễ cực thấp, mang lại trải nghiệm hình ảnh siêu mượt mà, không bị giật, xé khi chiến những trận game đỉnh cao.

• Đèn bàn phím chuyển màu RGB độc đáo hỗ trợ bạn gõ tốt, chiến game trong mọi điều kiện sáng.

• Trang bị các cổng kết nối tiện lợi như USB 3.2, HDMI, LAN (RJ45), USB Type-C.

• Công nghệ High Definition (HD) với tính năng khuếch đại âm thanh cùng Audio Nahimic Audio giả lập hệ thống âm vòm 3D sống động, lọc và khử tiếng ồn hiệu quả.
', 1, 7, 9, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (4, N'Lenovo 100e Gen 2', N'https://images.fpt.shop/unsafe/fit-in/240x215/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2021/11/30/637738603461090929_lenovo-100e-gen-2-n4020-win-10-pro-dd.jpg', 140.0000, N'laptop', N'Lenovo 100e Gen 2 là chiếc laptop nhỏ gọn, bền bỉ, mức giá rất rẻ, được xây dựng phù hợp cho hoạt động học tập online của các em học sinh.
 
Thiết kế siêu bền, độ bền chuẩn quân sự
 
Trẻ em rất hiếu động, chính vì thế một chiếc laptop đặc biệt dành cho học sinh cần có độ bền vượt trội so với các sản phẩm khác. Lenovo 100e Gen 2 đạt độ bền chuẩn quân sự với các miếng đệm cao su ở các góc cạnh; bản lề và cổng kết nối được gia cố chắc chắn; bàn phím được neo cơ học. Thiết kế này sẽ chống lại những va đập, rủi ro thường ngày. Laptop có khả năng chống rơi ở cự ly 75cm, tương đương chiều cao của một chiếc bàn học.
 
Kiểu dáng nhỏ gọn, dễ dàng cho vào cặp, balo
 
Với màn hình chỉ 11,6 inch, Lenovo 100e Gen 2 vô cùng nhỏ gọn khi kích thước chỉ tương đương một cuốn sách. Các em học sinh có thể cho laptop vào cặp hay balo mang đi học dễ dàng. Trọng lượng của máy cũng hết sức ấn tượng với cân nặng 1,21kg, rất nhẹ nhàng để di chuyển.
 
Học tập hiệu quả
', 4, 1, 10, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (5, N'MacBook Pro 14', N'https://images.fpt.shop/unsafe/fit-in/240x215/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2021/10/20/637703173013037856_macbook-pro-14-2021-xam-dd.jpg', 150.0000, N'laptop', N'Sự đẳng cấp không chỉ ở thiết kế thời thượng, sang trọng mà còn sở hữu sức mạnh siêu năng với con chip Apple M1 Pro phiên bản nâng cấp ấn tượng đến từ nhà Apple, mang đến cho bạn trải nghiệm làm việc chuyên nghiệp nhất dù là các tác vụ đồ họa – kỹ thuật chuyên sâu.

Mọi thứ chúng ta biết về MacBook Pro 14 inch mới của Apple

MacBook Pro 2021 14 inch cuối cùng đã được tiết lộ tại sự kiện ngày 18 tháng 10 của Apple cùng với MacBook 16 inch 2021 . Cả hai đều cung cấp một danh sách nâng cấp bao gồm nhiều cổng hơn, màn hình tốt hơn và chip M1 Pro và M1 Max hoàn toàn mới hứa hẹn sức mạnh đáng nể.

Nhưng mẫu 14 inch mới đặc biệt thú vị vì đây là MacBook Pro 14 inch đầu tiên của Apple. Sau nhiều tháng đồn thổi, khá nhiều điều chúng tôi mong đợi đã trở thành sự thật. Đây là chiếc MacBook Pro 14 inch được thiết kế lại với màn hình LED mini tuyệt đẹp giống như iPad Pro 2021 (12,9 inch) và hiện nó có thể được cấu hình với hai biến thể mạnh mẽ hơn của chip M1 đáng kinh ngạc của Apple: M1 Pro và M1 Max.'
, 2, 6, 10, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (6, N'Laptop Dell XPS 13', N'https://images.fpt.shop/unsafe/fit-in/240x215/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2021/3/22/637520284988683886_dell-xps-13-9310-bac-dd-evo.jpg', 160.0000, N'laptop', N'Laptop Dell XPS17 9700 XPS7I7001W1 (I7- 11800H / 16Gb/ 1Tb SSD/ 17" UHD (3840x2400) + InfinityEdge Touch Anti-Reflecitve 500-Nits/ VGA RTX 3050 4G GDDR6/ Win11+Office ST/ Silver/ vỏ nhôm)
Siêu phẩm laptop cao cấp Dell XPS17 9700 với những công nghệ đỉnh, mạnh mẽ sẵn sàng cho những công việc đồ họa - kỹ thuật, hay xử lý các dự án chuyên nghiệp, quản lý hệ thống cho các doanh nghiệp.', 1, 7, 10, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (7, N'Asus Zenbook Duo', N'https://images.fpt.shop/unsafe/fit-in/240x215/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2021/9/21/637678404165582920_asus-zenbook-duo-ux482-xanh-dd.jpg', 170.0000, N'laptop', N'ASUS ZenBook Duo 14 UX482EA là chiếc chìa khóa đưa bạn mở ra thế giới công nghệ hoàn toàn mới, nơi bạn được chứng kiến những điều tưởng như chỉ có trong phim viễn tưởng với một chiếc laptop 2 màn hình siêu độc, sở hữu sức mạnh và loạt tính năng đáng kinh ngạc.Không chỉ một mà có tới 2 màn hình trên ASUS ZenBook Duo 14 UX482EA. Bên cạnh màn hình chính 14 inch độ phân giải Full HD đạt chuẩn PANTONE Validated về độ chính xác màu chuyên nghiệp, ZenBook Duo 14 còn có màn hình phụ ScreenPad Plus với thiết kế nghiêng mới. Màn hình phụ này có khả năng cảm ứng, nghiêng theo góc 7 độ, vừa dễ dàng thao tác, lại vừa nâng cao trải nghiệm xem. Với 2 màn hình cùng lúc, năng suất làm việc của bạn được nâng cao đáng kể nhờ tăng không gian hiển thị và tăng cường khả năng đa nhiệm.', 3, 14, 10, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (8, N'Laptop Asus Aspire', N'https://images.fpt.shop/unsafe/fit-in/240x215/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2021/11/18/637728596076020587_acer-aspire-gaming-a715-42g-r1sb-r5-5500u-den-dd.jpg', 150.0000, N'laptop', N'Sở hữu thiết kế phổ thông, bền bỉ và thông minh phù hợp dành riêng cho lứa tuổi nhỏ và học sinh tiểu học, trung học, mang sức mạnh hiệu năng ổn định tối ưu cho nhu cầu học tập cơ bản, sẽ là người bạn đồng hành lý tưởng bền bỉ và chắc chắn người dùng nhỏ tuổi.
Thiết kế đơn giản, bền bỉ, chống va đập, thấm nước', 3, 15, 10, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (9, N'Lenovo Ideapad Slim 3', N'https://images.fpt.shop/unsafe/fit-in/240x215/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2022/4/21/637861584460182816_lenovo-ideapad-3-14itl6-vang-dd-1.jpg', 180.0000, N'laptop', N'Laptop Lenovo Ideapad Slim 3i 15IIL05 81WE00R5VN
Sự lựa chọn tuyệt vời trong phân khúc tầm trung gọi tên laptop Lenovo Ideapad Slim 3i 15IIL05 81WE00R5VN hứa hẹn sẽ đáp ứng tốt nhu cầu sử dụng laptop thường ngày của dân văn phòng và đặc biệt là các bạn sinh viên đang tìm kiếm thiết bị hỗ trợ cho học tập tốt nhất.

Thiết kế nhỏ gọn, màu sắc hiện đại, thời trang
Ideapad Slim 3i 15IIL05 81WE00R5VN là sản phẩm có mặt lưng fade xước dọc lần đầu tiên xuất hiện trên các sản phẩm của Lenovo, màu xám hiện đại với các cạnh được làm nhám, tôn lên tính thời trang, hiện đại. Được gia công với lớp vỏ nhựa nên trọng lượng máy tối ưu chỉ còn 1.5 kg, rất thoải mái để bạn mang đi mọi nơi.Máy có thiết kế bản lề gập mở 180 độ linh hoạt hơn cho bạn khi giao tiếp với khách hàng hay dễ dàng tương tác với màn hình khi đứng thuyết trình, thiết kế này cũng giúp thiết bị bền hơn bởi dù bạn có mở quá tay thì cũng không bị gãy bản lề.

Phục vụ mọi công việc, học tập với cầu hình mạnh mẽ
Lenovo Ideapad Slim 3i 15IIL05 81WE00R5VN giúp bạn nhanh chóng hoàn thành công việc nhờ sở hữu hiệu năng xuất sắc qua việc trang bị bộ vi xử lý Intel thế hệ thứ 10 Ice Lake mới nhất. IdeaPad Slim 3i mang trên mình con chip Intel Core i3 1005G1 sản xuất trên tiến trình 10nm tiên tiến nhất, cho tốc độ xử lý nhanh vượt trội đồng thời rất tiết kiệm năng lượng, góp phần kéo dài tuổi thọ pin.Bên cạnh đó là 4GB RAM DDR4 và ổ cứng SSD 256GB cao cấp giúp bạn làm được nhiều việc cùng lúc hơn nhờ nâng cao khả năng đa nhiệm, đảm bảo tăng tốc máy tính toàn diện và cho dung lượng lưu trữ lớn. Với cấu hình này, bạn sẽ có một chiếc laptop hiệu năng lý tưởng trong tầm giá.

Màn hình, âm thanh sống động, tuyệt vời cho giải trí
Ideapad Slim 3i sở hữu màn hình viền mỏng 3 cạnh, kích thước 15.6 inch, chính vì thế chiếc laptop Lenovo của bạn trở nên vừa nhỏ gọn, vừa mang lại trải nghiệm xem mãn nhãn. Bạn sẽ được đắm chìm trong những bộ phim, chương trình yêu thích với màn hình Full HD sắc nét, ngay cả khi làm việc thì màn hình chất lượng cũng góp phần hiển thị rõ ràng, công việc hiệu quả hơn.
', 4, 14, 10, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (10, N'Dell Inspiron N3510', N'https://images.fpt.shop/unsafe/fit-in/240x215/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2021/10/21/637704096245522041_dell-inspiron-n3510-black-dd.jpg', 180.0000, N'laptop', N'Laptop Dell Vostro 3400 - 70253900 là một trong những sản phẩm chất lượng cao của thương hiệu Laptop nổi tiếng thế giới DELL, không chỉ được trang bị cấu hình mạnh mẽ, mà còn có thiết kế đầy tinh tế, hiện đại. Chiếc laptop này chắc chắn sẽ là một lựa chọn lý tưởng phục vụ cho khách hàng làm công việc văn phòng, học tập.
', 1, 15, 10, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (11, N'MacBook Pro 16', N'https://images.fpt.shop/unsafe/fit-in/240x215/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2021/10/20/637703174146015116_macbook-pro-16-2021-xam-dd.jpg', 150.0000, N'laptop', N'Macbook Pro 16 inch, All New Macbook Pro với chip xử lý thế hệ mới nhất 8 Core, hỗ trợ RAM lên đến 64GB, ổ cứng dữ liệu thể rắn PCie 8TB tốc độ 3TB/s, Card đồ hoạ mới lên đến 8GB. Mac24h cung cấp Macbook Pro 16 inch chính hãng, Bảo Hành 12 Tháng.

Hỗ Trợ Cài Đặt Nâng Cấp Phần Mềm Đồ Hoạ, Cài đặt Windows.
Hỗ Trợ Thu Đổi Nâng Cấp Macbook cũ Lên Macbook Pro 16 Inch.
', 2, 17, 10, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (12, N'Laptop Dell Gaming G15', N'https://images.fpt.shop/unsafe/fit-in/240x215/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2021/12/2/637740490696341842_dell-gaming-g15-5511-xam-dd.jpg', 165.0000, N'laptop', N'Chơi game mượt mà cùng chip AMD
Laptop Dell sở hữu CPU AMD Ryzen 5 5600H kết hợp với card đồ họa NVIDIA RTX 3050 4 GB giúp khả năng chơi game trơn tru. Trong lúc trải nghiệm, hầu hết khi chiến các tựa game trực tuyến như Liên Minh Huyền Thoại, CS:GO,... tình trạng giật lag thường xảy ra ở các dòng laptop gaming giá rẻ do máy thu bắt sóng internet yếu, tuy nhiên chiếc máy này đã vượt qua và chạy tốt, không ảnh hưởng đến trải nghiệm chơi game nhờ công nghệ Wi-Fi 6 (802.11ax).Đầu tiên mình chơi con game phổ biến Liên Minh Huyền thoại và chiếc máy vận hành khá thoải mái, từ 45 đến 50 phút sau khi chơi, máy vẫn khá mát ở phần kê tay và bàn phím, phần thân máy gần bản lề có hơi ấm lên đôi chút, tuy nhiên quạt tản nhiệt chạy rất êm, không ồn. Số khung hình ổn định khoảng 136 FPS đem lại những pha giao tranh, tung chiêu của mình được chính xác hơn, không có độ trễ gây khó chịu khi chơi.


', 1, 19, 10, 1)

INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (13, N'Laptop Apple MacBook Pro M1 2020', N'https://cdn.tgdd.vn/Products/Images/44/231255/Slider/apple-macbook-pro-2020-z11c-061220-1119080.jpg', 4490.0000, N'laptop', N'Macbook Pro M1 2020 được nâng cấp với bộ vi xử lý mới cực kỳ mạnh mẽ, chiếc laptop này sẽ phục vụ tốt cho công việc của bạn, đặc biệt cho lĩnh vực đồ họa, kỹ thuật.
Tăng cường không gian lưu trữ, tốc độ xử lý
Chip Apple M1 là một bộ vi xử lý mạnh mẽ, được ra mắt lần đầu tiên trên máy Mac. Đây là con chip sản xuất trên tiến trình 5 nm, tích hợp CPU 8 lõi với 4 lõi CPU tốc độ và và 4 lõi tiết kiệm năng lượng. Nhờ vậy, thời lượng pin của laptop được kéo dài đến tận 10 tiếng đồng hồ, giúp cho bạn thoải mái làm việc với một hiệu suất cực kỳ cao.Ngoài ra, card đồ họa tích hợp 8 nhân GPU giúp người dùng thao tác tốt các tác vụ văn phòng cơ bản Word, Excel,... cũng như thiết kế đồ họa bằng Photoshop, AI, Pr,... một cách trơn tru, mượt mà với tốc độ xử lý gấp 5 lần các thế hệ trước đó. Nhờ vậy, bạn có thể nâng cao hiệu suất làm việc cũng như tiết kiệm được thời gian một cách tối ưu nhất.

', 2, 8, 10, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (14, N'Laptop MacBook Pro 14 M1 Pro 2021', N'https://cdn.tgdd.vn/Products/Images/44/275442/Slider/vi-vn-macbook-pro-14-inch-m1-pro-2021-10-core-cpu-01.jpg', 4150.0000, N'laptop', N'Khoác lên mình vẻ ngoài mới lạ so với các dòng Mac trước đó, thiết kế màn hình tai thỏ ấn tượng, bắt mắt cùng bộ hiệu năng đỉnh cao M1 Pro mạnh mẽ, MacBook Pro 14 inch M1 Pro 2021 xứng tầm là chiếc laptop cao cấp chuyên dụng dành cho dân kỹ thuật - đồ họa, sáng tạo nội dung.
Thiết kế hiện đại, đẳng cấp, thời thượng
Apple MacBook M1 Pro 14 inch bao bọc bởi lớp vỏ kim loại nguyên khối bằng nhôm tái chế cứng cáp, bền bỉ, kiểu dáng được cải tiến so với những dòng Mac trước đây, phong cách đơn giản mà đầy tinh tế. Laptop có độ dày 15.5 mm và trọng lượng 1.6 kg khá gọn gàng, thuận tiện đồng hành cùng bạn mọi lúc mọi nơi để học tập, làm việc, giải trí hiệu quả.', 2, 6, 10, 1)

INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (15, N'Laptop Asus TUF Gaming FX506LH', N'https://cdn.tgdd.vn/Products/Images/44/269241/Slider/vi-vn-asus-tuf-gaming-fx506lh-i5-hn188w-2.jpg', 750.0000, N'laptop', N'Với cấu hình khoẻ từ card rời NVIDIA GeForce GTX cùng một thiết kế ấn tượng, laptop Asus TUF Gaming FX506LH i5 (HN188W) sẽ mang đến nhiều trải nghiệm thú vị cho các game thủ.
• Sở hữu chip Intel Core i5 Comet Lake 10300H và card GeForce GTX 1650 4 GB từ nhà NVIDIA xử lý hoàn hảo mọi nhu cầu từ văn phòng đến đồ họa nặng hay thậm chí hỗ trợ bạn chiến các tựa game hấp dẫn: CS:GO, Fifa Online 4, GTA V,...

• Cùng RAM 8 GB và SSD 512 GB nâng cao tốc độ phản hồi, hạn chế tình trạng giật hay lag máy khi bạn mở nhiều ứng dụng cùng lúc hay chuyển đổi qua lại, tối ưu hiệu suất cho laptop.

• Các chuyển động diễn ra trơn tru, nắm bắt mọi khoảnh khắc trong game, giảm độ trễ nhờ tần số quét 144 Hz.

• Độ sáng 250 nits, chống chói Anti Glare và tấm nền IPS được trang bị trên màn hình 15.6 inch hạn chế hiện bóng gương khi cường độ ánh sáng cao, cho hiển thị rõ nét ở những chỗ điều kiện ánh sáng kém, góc nhìn được mở rộng, trải nghiệm hình ảnh sắc nét, chân thật.

• Laptop Asus TUF mang một ngoại hình mạnh mẽ với các đường nét tinh tế, góc cạnh cùng trọng lượng 2.3 kg, dày 24.9 mm, tạo nên chiếc laptop gaming cực cá tính, sẵn sàng đồng hành cùng bạn.

• Đèn nền chuyển màu RGB cũng được cài đặt trên laptop Asus không chỉ tô điểm cho không gian chiến game của bạn mà còn hỗ trợ bạn gõ phím chính xác trong những nơi thiếu sáng.

• Đáp ứng đa dạng cổng kết nối như: USB 3.2 Gen 2 Type-C, 2 cổng USB 3.2, HDMI, LAN (RJ45), USB 2.0 phục vụ nhu cầu truyền tải dữ liệu nhanh chóng.

', 3, 12, 10, 1)

INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (16, N'Laptop Asus Vivobook 15 X1502ZA ', N'https://cdn.tgdd.vn/Products/Images/44/281483/Slider/vi-vn-asus-vivobook-15-x1502za-i5-ej120w-3.jpg', 850.0000, N'laptop', N'Với mức giá chưa đầy 18 triệu mà sở hữu cấu hình mạnh ngang với các dòng máy mỏng nhẹ, cao cấp? Không cần nghi ngờ hay tìm kiếm đâu xa, mình sẽ chứng minh ngay trên chiếc laptop Asus Vivobook 15 X1502ZA i5 (EJ120W) này với con chip Gen 12 mới nhất đến từ nhà Intel.
Hiệu năng đáng gờm trong tầm giá 
Trước khi phân tích kỹ về em máy này thì mình sẽ giới thiệu sơ qua con chip Gen 12 mới nhất của nhà Intel, so với dòng G tiết kiệm điện năm ngoái thì dòng P năm nay vẫn là tiết kiệm điện nhưng lại mang một hiệu năng cao hơn đáng kể. Nếu bạn vẫn chưa hình dung được rõ sức mạnh của em nó thì những con số sau đây sẽ là minh chứng cụ thể nhất.    

Nếu khả năng ăn điện của dòng G năm ngoái là 28 W thì con số trên dòng P năm nay lên đến 64 W và không chỉ dừng lại ở đó, khi mình thực hiện bài kiểm tra thông qua Cinebench R23 đã thu được số điểm đơn nhân là 1630 điểm và đa nhân lên đến hơn 10.000 điểm, một con số thuộc hàng cực khủng trong phân khúc laptop học tập - văn phòng.  

Mình đã từng nghĩ rằng với con số hơn 10.000 điểm thì chiếc máy này liệu có hoạt động ổn không, và khi sở hữu em nó mình đã tìm ra được câu trả lời. Hệ thống tản nhiệt của chiếc laptop này đã cải thiện tốt hơn rất nhiều với số lượng cánh quạt lên đến 87 cánh được uốn cong 3D, từ đó cho phép máy tạo ra luồng gió nhiều hơn 30% giúp bạn duy trì máy ổn định ở nhiệt độ trung bình là 65 độ. 

Card đồ họa của máy cũng là phần khiến mình thắc mắc rất nhiều vì đã hãng đã trang bị đến tận con chip Gen 12 mà vẫn sử dụng card Intel UHD Graphics nhưng sau khi tìm hiểu kỹ càng, mình sẽ giải đáp ngay cho các bạn luôn nhé. Vốn dĩ em máy này có nhân đồ họa Iris Xe nhưng RAM trang bị sẵn chỉ là 1 thanh Onboard, bạn cần phải nâng cấp RAM để kích hoạt Dual-Channel mới có thể sử dụng được card Intel Iris Xe Graphics.

Mình đã test qua thử con game quốc dân Liên Minh Huyền Thoại. Thú thật mình nghĩ em máy này sẽ thích hợp để chơi game giải trí nhẹ nhàng hơn vì khi cài đặt ở mức cao nhất thì có vẻ hơi đuối, tốc độ khung hình chỉ ở mức ổn định và sẽ có hiện tượng tuột FPS nếu xảy ra các cuộc giao tranh nảy lửa trên chiến trường.  

Với những sinh viên như mình thì việc nâng cấp RAM cũng khá đắn đo vì chi phí sẽ dao động từ vài trăm đến vài triệu, nhưng đó hoàn toàn không phải là vấn đề quá lớn khi chỉ với bộ vi xử lý Intel Core i5 Alder Lake 1240P này thôi cũng đủ để mình vận hành tốt mọi tác vụ cần thiết rồi.

Laptop RAM 8 GB cũng như ổ cứng SSD 512 GB đã khá quen thuộc trong phân khúc này, mình có thể làm việc đa nhiệm trên nhiều cửa sổ khác nhau, vừa soạn thảo văn bản vừa nghe nhạc giải trí vừa lướt Facebook vẫn rất trơn tru. Tốc độ đọc ghi cũng được gia tăng đáng kể cùng không gian lưu trữ đủ để mình sử dụng cho các công việc học tập, làm việc hằng ngày.

Ngoại hình tinh tế, đẹp mắt 
Chiếc laptop Asus này đưa mình đi từ bất ngờ này đến bất ngờ khác vì ngay cả khi nói về thiết kế của em nó thì mình vẫn còn thắc mắc. Theo thông tin hãng đưa ra, màu sắc của máy là bạc băng giá nhưng khi khảo sát qua nhiều người trong đó có cả mình, nó lại sở hữu lớp áo xanh pastel nhẹ nhàng cực hút mắt, dù cả 2 gam màu đều rất đẹp nhưng nếu bạn có ý định sắm em này thì ra ngay cửa hàng Thế Giới Di Động để nhận định thử nha. 

Trọng lượng 1.7 kg đối với những bạn nữ có thể sẽ khá nặng để cầm máy bằng một tay nhưng vẫn dễ dàng bỏ vào bất kỳ chiếc balo 15.6 inch nào và mang chúng đi khắp mọi nơi. Tuy được hoàn thiện từ nhựa nhưng máy vẫn có độ cứng cáp nhất định chứ không ọp ẹp hay lỏng lẻo.

Mình đã rất bất ngờ khi Asus còn trang bị thêm cho em máy này những tính năng cực kỳ hấp dẫn như bản lề mở 180 độ, bảo mật vân tay, công tắc khóa camera và độ bền chuẩn quân đội MIL STD 810H, thật sự không nên bỏ lỡ trong tầm giá luôn. Cổng kết nối cũng tương đối đầy đủ với USB 2.0, 2 cổng USB 3.2, HDMI, Jack tai nghe 3.5 mm và USB Type-C.

Tưởng chừng như mọi thứ đều hoàn hảo nhưng mình đã hơi hụt hẫng nhẹ khi con laptop Asus VivoBook này không được trang bị đèn nền bàn phím, gây không ít khó khăn mỗi khi có nhu cầu sử dụng trong môi trường thiếu sáng. Bù lại cảm giác gõ phím khá tốt cùng bố cục được sắp xếp hợp lý nên mình sẽ nhanh thích nghi được với vấn đề nhỏ này.

Hiển thị hình ảnh rõ nét, sống động
Phần màn hình của máy theo mình là phù hợp trong tầm giá với kích thước 15.6 inch cùng tấm nền IPS cho góc nhìn rộng rãi, độ phân giải Full HD (1920 x 1080) và tần số quét 60 Hz hiển thị tốt những nội dung trên màn hình từ học tập, làm việc cho đến xem phim giải trí. 

Các thông số được đo đạt bằng Spyder 5 Pro lần lượt là 66% sRGB, 50% Adobe RGB và 49% DCI-P3 giúp những trải nghiệm của mình khi xem phim, coi video trên YouTube tương đối tốt, tuy vẫn còn hơi ám vàng một chút nhưng việc việc này có thể khắc phục được nhờ phần mềm MyASUS có sẵn trên máy, cho phép bạn tùy ý chỉnh phần màu sắc của màn hình.

Khả năng mở máy 180 độ giúp tăng hiệu quả làm việc nhóm của mình lên rất nhiều, những lúc ngồi quán nước và muốn trao đổi bài tập thì chỉ cần gập màn hình máy xuống, người ngồi đối diện có thể dễ dàng nhìn thấy mà không cần phải dịch chuyển nguyên máy qua, tiện lợi hơn rất nhiều so với các sản phẩm laptop khác.  

Mình đã tham gia lớp học trực tuyến trên Zoom cũng như làm các công việc cơ bản trên Google Sheets, Word,... được hơn 4 giờ dù mở độ sáng hết cỡ và luôn bật Wifi nhờ viên pin 42 Wh.

Đối với mình, laptop Asus Vivobook 15 X1502ZA i5 (EJ120W) hứa hẹn sẽ là sản phẩm đáng mua trong tầm giá với sức mạnh đến từ con chip mới nhất của nhà Intel cùng thiết kế đẹp mắt và nhiều tính năng, tiện ích ấn tượng.  

', 3, 11, 10, 1)

INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (17, N'Laptop Asus TUF Gaming FX516PM', N'https://cdn.tgdd.vn/Products/Images/44/251247/Slider/vi-vn-asus-tuf-gaming-fx516pm-i7-hn002t-5.jpg', 650.0000, N'laptop', N'Diện mạo thanh lịch nhưng sở hữu cấu hình mạnh mẽ vượt trội, laptop Asus TUF Gaming FX516PM i7 11370H (HN002T) hứa hẹn sẽ cùng bạn chinh chiến trên mọi chiến trường ảo cùng ưu thế thuận lợi nhất.
Sức mạnh tối thượng tạo nên đối thủ đáng gờm khiến ai cũng phải dè chừng
Đánh thức sức mạnh thật sự nhờ bộ vi xử lý mạnh mẽ Intel Core i7 Tiger Lake 11370H sở hữu 4 nhân 8 luồng cho tốc độ cơ bản đạt 3.30 GHz và đạt tối đa lên đến 4.8 GHz nhờ Turbo Boost, mang đến không gian giải trí cực đã với hàng loạt các tựa game thịnh hành hay trở thành người cộng sự đắc lực, cùng bạn hoàn thành các nhiệm vụ trong văn phòng nhanh chóng một cách hiệu quả cùng Work, Excel,...', 3, 9, 10, 1)



INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (18, N'Tai nghe HyperX Cloud Stinger', N'https://images.fpt.shop/unsafe/fit-in/200x200/filters:quality(90):fill(white)/https://fptshop.com.vn/Uploads/Originals/2021/11/10/637721638521972942_anhdaidien-00779689.jpg', 200.0000, N'tai nghe', N'Với mức giá rất đáng cân nhắc khi đong đếm về chất lượng/giá cả so với các dòng tai nghe khác, HyperX Cloud Stinger chắc chắn sẽ là một trong những tai nghe gaming nổi bật trong phân khúc Mid-end.', 7, 18, 10, 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (19, N' tai có mic JBL QUANTUM50BLKAS', N'https://images.fpt.shop/unsafe/fit-in/200x200/filters:quality(90):fill(white)/https://fptshop.com.vn/Uploads/Originals/2021/10/29/637711178012905930_55687_tai_nghe_gaming_jbl_quantum_50_trang_0002_3.jpg', 200.0000, N'tai nghe', N'Được đảm bảo bởi thương hiệu sản xuất thiết bị âm thanh lừng danh trên thị trường - JBL, mẫu tai nghe Quantum 50 ghi điểm nhờ thiết kế đầy vẻ năng động trẻ trung, đồng thời sở hữu chất âm ấn tượng với driver 8.6mm. Sự hỗ trợ của sản phẩm sẽ giúp cho mọi tác vụ từ giải trí đến học tập và làm việc trở nên trọn vẹn hơn nhiều.', 7, 1, 10, 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (20, N'Chuột không dây Logitech M221', N'https://images.fpt.shop/unsafe/fit-in/214x214/filters:quality(90):fill(white)/https://fptshop.com.vn/Uploads/Originals/2020/11/25/637418984502900576_M221.jpg', 100.0000, N'chuot', N'Nhằm để giảm thiểu những sự phiền toái và giới hạn khoảng cách do chuột máy tính có dây thì chuột không dây Logitech M221 được ra đời. Với công nghệ không dây 2.4GHz, chuột Logitech M221 cho phép người dùng kết nối xa lên đến 10m.', 5, 6, 10, 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (21, N'Chuột có dây Rapoo N200 ', N'https://images.fpt.shop/unsafe/fit-in/214x214/filters:quality(90):fill(white)/https://fptshop.com.vn/Uploads/Originals/2018/11/7/636772096317963039_chuot-co-day-rapoo-n200-1o.png', 120.0000, N'chuot', N'Mens Skid Resistant Hiking Shoes Waterproof Mountain Boots Climbing Shoes Outdoors
', 5, 7, 10, 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (22, N'Tai nghe gaming XO ON-EAR S32 ', N'https://fptshop.com.vn/Uploads/Thumbs/2021/11/3/637715539763820373_Untitled-2.jpg', 350.0000, N'laptop', N'Tai nghe chụp đầu giúp loại bỏ tạp âm tối đa, kết nối đầu cắm aux 3.5mm, được thiết kế hiện đại ôm khít vành tai nên cách âm rất tốt, âm thanh sống động.
', 7, 2, 10, 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (23, N'Tai nghe gaming Sony MDR - ZX110AP ', N'https://fptshop.com.vn/Uploads/Thumbs/2021/10/13/637697564578125358_HASP-00774720-den-2.jpg', 540.0000, N'tainghe', N'Tai nghe gaming Sony MDR - ZX110AP được sáng tạo dành cho những ai yêu trải nghiệm âm nhạc và thường xuyên dịch chuyển. Với thiết kế headband có thể nới rộng hoặc thu gọn tùy thích, rất thoải mái mang theo sản phẩm trong những chuyến đi xa.
', 7, 5, 10, 2)


INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (24, N'chuột máy tính có dây LOGITECH G102 RBG', N'https://vn-live-05.slatic.net/p/cc33cd4c00c5cf83df2960c9e9d0457b.jpg_525x525q80.jpg', 215.0000, N'chuot', N'Chuột gaming logitech G102 có hiệu suất cao. Nhanh hơn tới 8 lần: Giao tiếp ở mức lên tới 1000 báo cáo mỗi giây - hay nhanh hơn gấp 8 lần so với chuột tiêu chuẩn.'
, 5, 12, 10, 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (25, N'Chuột không dây Logitech M221', N'https://fptshop.com.vn/Uploads/Thumbs/2016/12/1/636161960541846703_HAPK-CHUOT-KHONG-DAY-LOGITECH-M221-3.JPG', 319.0000, N'chuot', N'Chuột Logitech M221với công nghệ không dây 2.4GHz cho phép người dùng kết nối xa lên đến 10m.
', 5, 7, 10, 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (26, N'Chuột Gaming không dây Logitech G304', N'https://fptshop.com.vn/Uploads/Thumbs/2020/10/26/637393197109518808_G304-4.jpg', 890.0000, N'chuot', N'Chuột không dây logitech G304 sở hữu thiết kế đột phá, cảm biến HERO 12.000 mức DPI, hệ thống 6 nút lập trình để tùy chỉnh tính năng và công nghệ tương tác không dây vượt trội LIGHTSPEED.
', 5, 6, 10, 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (27, N'Chuột Gaming Logitech G102 Gen2', N'https://fptshop.com.vn/Uploads/Thumbs/2020/9/28/637369016836148422_G102%20Gen2-4.jpg', 590.0000, N'chuot', N'Logitech G102 Gen 2 có tạo hình hết sức cổ điển với kiểu dáng đối xứng truyền thống. Công nghệ đèn LED RGB tạo điểm nhấn. Sự tinh tế của Logitech được thể hiện qua hệ thống 6 nút tiện lợi, cho phép bạn kích hoạt nhanh các tính năng được thiết lập ở các vị trí dễ nhấn khi cầm nắm.
', 5, 11, 10, 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (28, N'Chuột không dây Xiaomi Mi Dual', N'https://fptshop.com.vn/Uploads/Thumbs/2021/10/9/637693741650549361_00775587-1.jpg', 350.0000, N'chuot', N'Chuột không dây Mi Dual Mode Wireless hoạt động êm ái, không ồn ào, được thiết kế với màu trắng thanh lịch và vận hành mượt mà nhờ độ phân giải đạt mức 1.300 DPI, có hai chế độ kết nối, có nút bên hông, thiết kế gọn nhẹ.
', 5, 15, 10, 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (29, N'Bàn phím Prolink PKCM-2007', N'https://fptshop.com.vn/Uploads/Thumbs/2021/7/16/637620335967558201_PKCM-2007%20-%201.jpeg', 200.0000, N'banphim', N'Với thiết kế full size và kiểu dáng chống tràn khi gõ, bàn phím Prolink PKCM-2007 là công cụ đắc lực cho những người làm việc văn phòng, thiết kế bàn phím PKCM-2007 nghiêng nhẹ dưới đáy, tạo nên tư thế gõ thuận lợi cho cả hai tay giúp soạn thảo văn bản dễ dàng hơn.
', 6, 3, 10, 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (30, N'Bàn phím giả cơ có dây Zadez G-850K', N'https://fptshop.com.vn/Uploads/Thumbs/2021/12/9/637746607810605486_1.jpg', 350.0000, N'banphim', N'Bàn phím có dây Gaming Zadez G-850K được làm từ chất liệu nhựa ABS cao cấp, phím khắc Laser,  full 104 phím, 11 phím đa phương tiện. Hỗ trợ 19 phím nhấn cùng lúc (N-Key Rollover), có đèn LED RGB nhiều màu sắc.
', 6, 6, 10, 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (31, N'Bàn phím giả cơ có dây MSI Vigor GK20 US', N'https://fptshop.com.vn/Uploads/Thumbs/2021/12/24/637759602815516534_BAN-PHIM-2.jpg', 700.0000, N'banphim', N'Bàn phím Gaming MSI Vigor GK20 hiệu ứng đèn nền tuyệt đẹp và thiết kế công thái học cũng như kháng nước.
', 6, 9, 10, 2)

INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (32, N'Tai nghe chụp tai Sennheiser HD206', N'https://fptshop.com.vn/Uploads/Thumbs/2021/11/25/637734458601378209_3.jpg', 669.0000, N'tainghe', N'Sennheiser HD 206 có thiết kế kiểu tai nghe closed back với các miếng đệm lót tai đặt bên trong chụp tai. Nhờ đó, trải nghiệm nghe sẽ luôn đạt được chất lượng cao và trọn vẹn nhất. Bên cạnh đó, chiếc tai nghe này còn có trọng lượng nhẹ, đặc biệt phù hợp cho những ai đang làm công việc tại phòng thu hoặc DJ.
', 7, 4, 10, 2)

INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (33, N'Bàn phím cơ không dây Zadez GT-015DK', N'https://fptshop.com.vn/Uploads/Thumbs/2022/4/18/637858933452880200_HASP-Zadek-GT-015DK-1.png', 1490.0000, N'banphim', N'Bàn phím cơ Gaming không dây ZADEZ Blue Switch GT-015DK sở hữu một kiểu dáng thiết kế ấn tượng, mang lối cách điệu của các đường nét nằm tại cạnh bên và mặt trên. Ngoài ra, các phím được in rõ ràng tạo nên độ sắc nét, đồng thời với chất liệu cao cấp cùng lớp phủ bằng nhựa PVC giúp bàn phím ZADEZ Blue Switch GT-015DK có được độ chắc chắn đáng kinh ngạc.
', 6, 8, 10, 2)

INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (34, N'Chuột Gaming Logitech G502 Hero High Performance', N'https://fptshop.com.vn/Uploads/Thumbs/2020/10/26/637393203689499588_G502-2.jpg', 1759.0000, N'chuot', N'Chuột G502 HERO High Performance được Logitech trang bị cảm biến HERO 25K – cảm biến gaming có độ chính xác cao bậc nhất thế giới hiện nay. Công nghệ ánh sáng LIGHTSYNC RGB. Bộ quang phổ 16,8 triệu màu sẽ đem lại hiệu ứng ánh sáng sống động nhất trên G502 HERO High Performance.
', 5, 7, 10, 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (35, N'Chuột Gaming MSI Clutch GM20 Elite', N'https://fptshop.com.vn/Uploads/Thumbs/2021/12/24/637759609885464213_CHUOT-4.jpg', 756.0000, N'Chuot', N'Chuột chơi game MSI Clutch GM20 Elite nổi bật ở thiết kế đậm chất gaming và hệ thống đèn LED RGB đa sắc màu. Ngoài ra, sản phẩm còn có tốc độ phản hồi siêu nhanh, chất lượng xây dựng bền bỉ và trọng lượng có thể điều chỉnh
', 5, 9, 10, 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (36, N'Chuột gaming Corsair Iron claw RGB', N'https://fptshop.com.vn/Uploads/Thumbs/2021/9/13/637671646464389567_00772807-chuot-corsair-iron-claw-rgb-1.jpg', 1600.0000, N'chuot', N'Corsair sử dụng cảm biến PMW3391 với mức mức CPI cao nhất lên tới 18.000 và mức IPS lên tới 450. Ngoài ra Corsair Iron claw RGB sử dụng switch Omron với độ bền 50 triệu lần nhấn, đảm bảo tuổi thọ của chuột sẽ vô cùng bền bỉ.
', 5, 6, 10, 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (37, N'Chuột không dây Logitech MX Master 3', N'https://fptshop.com.vn/Uploads/Thumbs/2021/9/24/637680744725377286_mxmaster3.jpg', 2490.0000, N'chuot', N'Chuột không dây Logitech MX Master 3 được thiết kế với kiểu dáng hỗ trợ cử động cổ tay và bàn tay thoải mái nhất, có thể vận hành mượt mà trên nhiều bề mặt nhờ độ phân giải cảm biến lên tới 4000 DPI và hỗ trợ công nghệ Logitech Flow giúp duy trì tương tác với ba máy tính hoặc laptop riêng biệt.
', 5, 12, 10, 2)
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

• Công nghệ High Definition (HD) với tính năng khuếch đại âm thanh cùng Audio Nahimic Audio giả lập hệ thống âm vòm 3D sống động, lọc và khử tiếng ồn hiệu quả.', 1, 9, 10, 1)

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
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([aid])
REFERENCES [dbo].[Account] ([id])
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

INSERT [dbo].[kindOfPhuKien] ([id], [name]) VALUES (5, N'Chuột')
INSERT [dbo].[kindOfPhuKien] ([id], [name]) VALUES (6, N'Bàn phím')
INSERT [dbo].[kindOfPhuKien] ([id], [name]) VALUES (7, N'Tai nghe')
GO

