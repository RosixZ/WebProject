USE [RoomManage]
GO
/****** Object:  Table [dbo].[apply]    Script Date: 2019/12/23 20:33:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[apply](
	[applyid] [nchar](10) NOT NULL,
	[room] [nchar](10) NULL,
	[name] [nchar](10) NULL,
	[sex] [nchar](10) NULL,
	[tel] [nchar](20) NULL,
	[intime] [date] NULL,
	[idcare] [nchar](20) NULL,
 CONSTRAINT [PK_apply] PRIMARY KEY CLUSTERED 
(
	[applyid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[room]    Script Date: 2019/12/23 20:33:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[room](
	[roomid] [nchar](10) NOT NULL,
	[name] [nchar](10) NULL,
	[sex] [nchar](10) NULL,
	[phone] [nchar](15) NULL,
	[idcard] [nchar](20) NULL,
	[price] [nchar](10) NULL,
	[movein] [date] NULL,
	[moveout] [date] NULL,
	[state] [int] NOT NULL,
 CONSTRAINT [PK_room] PRIMARY KEY CLUSTERED 
(
	[roomid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[userid]    Script Date: 2019/12/23 20:33:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[userid](
	[id] [nchar](10) NOT NULL,
	[pw] [nchar](10) NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[apply] ([applyid], [room], [name], [sex], [tel], [intime], [idcare]) VALUES (N'21        ', N'米格一       ', N'刘老三       ', N'女         ', N'19100111010         ', CAST(N'1900-01-01' AS Date), N'                    ')
INSERT [dbo].[apply] ([applyid], [room], [name], [sex], [tel], [intime], [idcare]) VALUES (N'29        ', N'信息港2号     ', N'刘老三       ', N'男         ', N'19100119995         ', CAST(N'2019-12-29' AS Date), N'441166222256562335  ')
INSERT [dbo].[apply] ([applyid], [room], [name], [sex], [tel], [intime], [idcare]) VALUES (N'50        ', N'碧桂园       ', N'正式测试      ', N'男         ', N'19100111010         ', CAST(N'2019-12-28' AS Date), N'                    ')
INSERT [dbo].[apply] ([applyid], [room], [name], [sex], [tel], [intime], [idcare]) VALUES (N'84        ', N'碧桂园2其     ', N'刘老三       ', N'男         ', N'19100111010         ', CAST(N'2019-12-02' AS Date), N'                    ')
INSERT [dbo].[room] ([roomid], [name], [sex], [phone], [idcard], [price], [movein], [moveout], [state]) VALUES (N'101       ', NULL, NULL, NULL, NULL, N'100       ', NULL, NULL, 0)
INSERT [dbo].[room] ([roomid], [name], [sex], [phone], [idcard], [price], [movein], [moveout], [state]) VALUES (N'102       ', N'刘老三       ', N'男         ', N'19100111010    ', N'441166222256562335  ', N'200       ', CAST(N'2019-08-27' AS Date), CAST(N'2019-10-27' AS Date), 1)
INSERT [dbo].[room] ([roomid], [name], [sex], [phone], [idcard], [price], [movein], [moveout], [state]) VALUES (N'103       ', NULL, NULL, NULL, NULL, N'300       ', NULL, NULL, 0)
INSERT [dbo].[room] ([roomid], [name], [sex], [phone], [idcard], [price], [movein], [moveout], [state]) VALUES (N'104       ', N'王九零       ', N'女         ', N'19100115558    ', N'441166222256565622  ', N'200       ', CAST(N'2019-08-27' AS Date), CAST(N'2019-10-27' AS Date), 1)
INSERT [dbo].[room] ([roomid], [name], [sex], [phone], [idcard], [price], [movein], [moveout], [state]) VALUES (N'201       ', N'王不忿       ', N'男         ', N'19100119603    ', N'441166222256565568  ', N'1500      ', CAST(N'2017-08-27' AS Date), CAST(N'2019-08-05' AS Date), 1)
INSERT [dbo].[room] ([roomid], [name], [sex], [phone], [idcard], [price], [movein], [moveout], [state]) VALUES (N'202       ', N'刘老二       ', N'男         ', N'19100114499    ', N'441166222256565666  ', N'800       ', CAST(N'1900-01-01' AS Date), CAST(N'2019-08-16' AS Date), 1)
INSERT [dbo].[room] ([roomid], [name], [sex], [phone], [idcard], [price], [movein], [moveout], [state]) VALUES (N'203       ', NULL, NULL, NULL, NULL, N'1000      ', NULL, NULL, 0)
INSERT [dbo].[room] ([roomid], [name], [sex], [phone], [idcard], [price], [movein], [moveout], [state]) VALUES (N'204       ', NULL, NULL, NULL, NULL, N'1000      ', NULL, NULL, 0)
INSERT [dbo].[room] ([roomid], [name], [sex], [phone], [idcard], [price], [movein], [moveout], [state]) VALUES (N'301       ', NULL, NULL, NULL, NULL, N'500       ', NULL, NULL, 0)
INSERT [dbo].[room] ([roomid], [name], [sex], [phone], [idcard], [price], [movein], [moveout], [state]) VALUES (N'302       ', NULL, NULL, NULL, NULL, N'200       ', NULL, NULL, 0)
INSERT [dbo].[room] ([roomid], [name], [sex], [phone], [idcard], [price], [movein], [moveout], [state]) VALUES (N'303       ', NULL, NULL, NULL, NULL, N'400       ', NULL, NULL, 0)
INSERT [dbo].[room] ([roomid], [name], [sex], [phone], [idcard], [price], [movein], [moveout], [state]) VALUES (N'304       ', NULL, NULL, NULL, NULL, N'1000      ', NULL, NULL, 0)
INSERT [dbo].[room] ([roomid], [name], [sex], [phone], [idcard], [price], [movein], [moveout], [state]) VALUES (N'305       ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[userid] ([id], [pw]) VALUES (N'admin     ', N'123456    ')
INSERT [dbo].[userid] ([id], [pw]) VALUES (N'hell      ', N'123123    ')
