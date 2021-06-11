USE [MY_BLOGS]
GO
/****** Object:  User [sa1]    Script Date: 6/7/2021 9:24:28 AM ******/
CREATE USER [sa1] FOR LOGIN [sa1] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[BLOGS]    Script Date: 6/7/2021 9:24:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BLOGS](
	[ID] [int] NOT NULL,
	[NAME] [varchar](50) NULL,
	[POST_DATE] [date] NULL,
	[CONTENT] [varchar](1000) NULL,
	[CATE_ID] [int] NULL,
 CONSTRAINT [PK_BLOGS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CATEGORIES]    Script Date: 6/7/2021 9:24:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CATEGORIES](
	[ID] [int] NOT NULL,
	[NAME] [varchar](100) NULL,
 CONSTRAINT [PK_CATEGORIES] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MESSAGES]    Script Date: 6/7/2021 9:24:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MESSAGES](
	[NAME] [varchar](50) NULL,
	[EMAIL] [varchar](50) NULL,
	[PHONE] [varchar](10) NULL,
	[COMPANY] [varchar](30) NULL,
	[MESSAGE] [varchar](100) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[BLOGS] ([ID], [NAME], [POST_DATE], [CONTENT], [CATE_ID]) VALUES (1, N'Why Blog?', CAST(N'2015-11-10' AS Date), N'Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? ', 1)
GO
INSERT [dbo].[BLOGS] ([ID], [NAME], [POST_DATE], [CONTENT], [CATE_ID]) VALUES (2, N'Beauty Blog', CAST(N'2015-11-10' AS Date), N'Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? ', 2)
GO
INSERT [dbo].[BLOGS] ([ID], [NAME], [POST_DATE], [CONTENT], [CATE_ID]) VALUES (3, N'Food Blog', CAST(N'2015-11-10' AS Date), N'Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? ', 3)
GO
INSERT [dbo].[BLOGS] ([ID], [NAME], [POST_DATE], [CONTENT], [CATE_ID]) VALUES (4, N'Car Blog', CAST(N'2015-11-10' AS Date), N'Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? ', 4)
GO
INSERT [dbo].[BLOGS] ([ID], [NAME], [POST_DATE], [CONTENT], [CATE_ID]) VALUES (5, N'Art Blog', CAST(N'2015-11-10' AS Date), N'Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? Why Blog? ', 1)
GO
INSERT [dbo].[BLOGS] ([ID], [NAME], [POST_DATE], [CONTENT], [CATE_ID]) VALUES (6, N'Beauty 2 Blog', CAST(N'2021-11-14' AS Date), N'Beauty 2 Blog Beauty 2 Blog Beauty 2 Blog Beauty 2 Blog Beauty 2 Blog Beauty 2 Blog Beauty 2 Blog Beauty 2 Blog Beauty 2 Blog Beauty 2 Blog Beauty 2 Blog Beauty 2 Blog Beauty 2 Blog Beauty 2 Blog Beauty 2 Blog Beauty 2 Blog Beauty 2 Blog Beauty 2 Blog Beauty 2 Blog Beauty 2 Blog Beauty 2 Blog Beauty 2 Blog Beauty 2 Blog Beauty 2 Blog Beauty 2 Blog Beauty 2 Blog Beauty 2 Blog Beauty 2 Blog Beauty 2 Blog Beauty 2 Blog ', 2)
GO
INSERT [dbo].[CATEGORIES] ([ID], [NAME]) VALUES (1, N'Art')
GO
INSERT [dbo].[CATEGORIES] ([ID], [NAME]) VALUES (2, N'Beauty')
GO
INSERT [dbo].[CATEGORIES] ([ID], [NAME]) VALUES (3, N'Food')
GO
INSERT [dbo].[CATEGORIES] ([ID], [NAME]) VALUES (4, N'Car')
GO
INSERT [dbo].[MESSAGES] ([NAME], [EMAIL], [PHONE], [COMPANY], [MESSAGE]) VALUES (N'Do Duc Duong', N'duongdd141100@gmail.com', N'0979719735', N'asd', N'asd')
GO
INSERT [dbo].[MESSAGES] ([NAME], [EMAIL], [PHONE], [COMPANY], [MESSAGE]) VALUES (N'Do Duc Duong', N'duongdd141100@gmail.com', N'0979719735', N'abcxyz', N'asd')
GO
INSERT [dbo].[MESSAGES] ([NAME], [EMAIL], [PHONE], [COMPANY], [MESSAGE]) VALUES (N'Do Duc Duong', N'duongdd141100@gmail.com', N'0979719735', N'lkjjl', N'lkjsdlk')
GO
INSERT [dbo].[MESSAGES] ([NAME], [EMAIL], [PHONE], [COMPANY], [MESSAGE]) VALUES (N'Do Duc Duong', N'duongdd141100@gmail.com', N'0979719735', N'sdasd', N'asdasd')
GO
INSERT [dbo].[MESSAGES] ([NAME], [EMAIL], [PHONE], [COMPANY], [MESSAGE]) VALUES (N'do the tuyen', N'azpro@thcpro.vn', N'0979719735', N'asdasd', N'asdasd')
GO
ALTER TABLE [dbo].[BLOGS]  WITH CHECK ADD  CONSTRAINT [FK_BLOGS_CATEGORIES] FOREIGN KEY([CATE_ID])
REFERENCES [dbo].[CATEGORIES] ([ID])
GO
ALTER TABLE [dbo].[BLOGS] CHECK CONSTRAINT [FK_BLOGS_CATEGORIES]
GO
