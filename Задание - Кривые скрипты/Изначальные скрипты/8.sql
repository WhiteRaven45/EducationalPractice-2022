USE [Kyrsach]
GO
/****** Object:  Table [dbo].[Drivers]    Script Date: 13.12.2020 23:49:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Drivers](
	[Personnel_number] [int] NOT NULL,
	[Fisrtname] [nvarchar](50) NULL,
	[Secondname] [nvarchar](50) NULL,
	[Midname] [nvarchar](50) NULL,
	[Birthday] [date] NULL,
	[Salary] [decimal](15, 2) NULL,
	[Address] [nvarchar](200) NULL,
	[Phone_number] [nvarchar](50) NULL,
	[Passport] [nvarchar](50) NULL,
	[INN] [nvarchar](50) NULL,
	[Standart_deduction] [bit] NULL,
	[Gender] [nvarchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[Personnel_number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 13.12.2020 23:49:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Order_code] [int] NOT NULL,
	[ID_Product] [int] NOT NULL,
	[Customer] [nvarchar](50) NULL,
	[Order_date] [date] NULL,
	[Cost_Rub] [decimal](15, 2) NULL,
	[Personnel_number] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Order_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 13.12.2020 23:49:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ID_Product] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Provider] [nvarchar](50) NULL,
	[Number] [int] NULL,
	[Status] [nvarchar](50) NULL,
	[Driver] [nvarchar](50) NULL,
	[Date_of_appearance] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Product] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Drivers] ([Personnel_number], [Fisrtname], [Secondname], [Midname], [Birthday], [Salary], [Address], [Phone_number], [Passport], [INN], [Standart_deduction], [Gender]) VALUES (1000, N'Алексей', N'Путин', N'Валерьевич', CAST(N'1991-06-30' AS Date), CAST(49000.00 AS Decimal(15, 2)), N'Улица Тютчева., д12, кв 416.', N'8(495)996-78-56', N'4317 664177', N'349393543994', 1, N'М')
INSERT [dbo].[Drivers] ([Personnel_number], [Fisrtname], [Secondname], [Midname], [Birthday], [Salary], [Address], [Phone_number], [Passport], [INN], [Standart_deduction], [Gender]) VALUES (1001, N'Дмитрий', N'Смирнов', N'Валерьевич', CAST(N'1985-04-02' AS Date), CAST(56666.00 AS Decimal(15, 2)), N'Улица академика Сахарова, д. 17, кв. 55', N'8(495)696-68-23', N'4515 119934', N'395956934598', 0, N'М')
INSERT [dbo].[Drivers] ([Personnel_number], [Fisrtname], [Secondname], [Midname], [Birthday], [Salary], [Address], [Phone_number], [Passport], [INN], [Standart_deduction], [Gender]) VALUES (1002, N'Олег', N'Новиков', N'Александрович', CAST(N'1990-11-03' AS Date), CAST(55555.00 AS Decimal(15, 2)), N'Северный б-р, д. 4, кв. 56', N'8(495)501-99-40', N'4438 459145', N'583248320432', 1, N'М')
INSERT [dbo].[Drivers] ([Personnel_number], [Fisrtname], [Secondname], [Midname], [Birthday], [Salary], [Address], [Phone_number], [Passport], [INN], [Standart_deduction], [Gender]) VALUES (1003, N'Пётр', N'Вавилов ', N'Миронович', CAST(N'1992-04-03' AS Date), CAST(73909.00 AS Decimal(15, 2)), N'Улица Сабов, д. 36, кв. 212', N'8(495)292-88-81', N'4439 158084', N'765593294329', 1, N'М')
INSERT [dbo].[Drivers] ([Personnel_number], [Fisrtname], [Secondname], [Midname], [Birthday], [Salary], [Address], [Phone_number], [Passport], [INN], [Standart_deduction], [Gender]) VALUES (1004, N'Дмитрий', N'Митрофанов', N'Васильевич', CAST(N'1984-06-17' AS Date), CAST(70000.00 AS Decimal(15, 2)), N'Улица Перепелкина, д. 32, кв. 355', N'8(495)073-68-50', N'4273 812831', N'685485312809', 1, N'М')
INSERT [dbo].[Drivers] ([Personnel_number], [Fisrtname], [Secondname], [Midname], [Birthday], [Salary], [Address], [Phone_number], [Passport], [INN], [Standart_deduction], [Gender]) VALUES (1005, N'Михаил', N'Макаров', N'Алексеевич', CAST(N'1979-03-25' AS Date), CAST(86442.00 AS Decimal(15, 2)), N'Ленинский бульвар, д. 1, кв. 22', N'8(495)571-39-43', N'4796 812789', N'682184383805', 0, N'М')
INSERT [dbo].[Drivers] ([Personnel_number], [Fisrtname], [Secondname], [Midname], [Birthday], [Salary], [Address], [Phone_number], [Passport], [INN], [Standart_deduction], [Gender]) VALUES (1006, N'Даниил', N'Горбунов ', N'Александрович', CAST(N'1995-02-26' AS Date), CAST(67180.00 AS Decimal(15, 2)), N'Улица Перепелкина, д. 32, кв. 234', N'8(495)454-39-51', N'4637 594544', N'572379432497', 1, N'М')
INSERT [dbo].[Drivers] ([Personnel_number], [Fisrtname], [Secondname], [Midname], [Birthday], [Salary], [Address], [Phone_number], [Passport], [INN], [Standart_deduction], [Gender]) VALUES (1007, N'Глеб', N'Муравьев ', N'Глебович', CAST(N'1975-12-27' AS Date), CAST(20277.00 AS Decimal(15, 2)), N'Улица академика Сахарова, д. 17, кв. 55', N'8(495)540-32-24', N'4485 681135', N'583248320432', 0, N'М')
INSERT [dbo].[Drivers] ([Personnel_number], [Fisrtname], [Secondname], [Midname], [Birthday], [Salary], [Address], [Phone_number], [Passport], [INN], [Standart_deduction], [Gender]) VALUES (1008, N'Анна', N'Виноградова', N'Андреевна', CAST(N'1976-08-18' AS Date), CAST(52000.00 AS Decimal(15, 2)), N'Северный б-р, д. 1, кв. 11', N'8(495)979-72-01', N'4945 586853', N'395956934598', 1, N'ж')
INSERT [dbo].[Drivers] ([Personnel_number], [Fisrtname], [Secondname], [Midname], [Birthday], [Salary], [Address], [Phone_number], [Passport], [INN], [Standart_deduction], [Gender]) VALUES (1009, N'Тимофей', N'Козлов', N'Степанович', CAST(N'1992-06-09' AS Date), CAST(93444.00 AS Decimal(15, 2)), N'Площадь революции, д. 2, кв. 5', N'8(495)831-87-43', N'4440 872384', N'586548654685', 0, N'М')
INSERT [dbo].[Drivers] ([Personnel_number], [Fisrtname], [Secondname], [Midname], [Birthday], [Salary], [Address], [Phone_number], [Passport], [INN], [Standart_deduction], [Gender]) VALUES (1010, N'Александр', N'Агафонов', N'Вячеславович', CAST(N'1982-06-17' AS Date), CAST(84252.00 AS Decimal(15, 2)), N'Улица Попугаев, д. 23, кв 356', N'8(495)086-93-71', N'4499 296074', N'594968543943', 0, N'М')
INSERT [dbo].[Drivers] ([Personnel_number], [Fisrtname], [Secondname], [Midname], [Birthday], [Salary], [Address], [Phone_number], [Passport], [INN], [Standart_deduction], [Gender]) VALUES (1011, N'Серафим', N'Морозов', N'Владимирович', CAST(N'1988-08-12' AS Date), CAST(74622.00 AS Decimal(15, 2)), N'Улица Перепелкина, д. 32, кв. 312', N'8(495)222-45-67', N'4527 499889', N'596958498654', 1, N'М')
INSERT [dbo].[Drivers] ([Personnel_number], [Fisrtname], [Secondname], [Midname], [Birthday], [Salary], [Address], [Phone_number], [Passport], [INN], [Standart_deduction], [Gender]) VALUES (1012, N'Елизавета', N'Корнеева', N'Михайловна', CAST(N'1996-06-24' AS Date), CAST(39674.00 AS Decimal(15, 2)), N'Ленинский проспект, д. 5, кв. 52', N'8(495)372-67-44', N'4285 609992', N'128585623333', 1, N'ж')
INSERT [dbo].[Drivers] ([Personnel_number], [Fisrtname], [Secondname], [Midname], [Birthday], [Salary], [Address], [Phone_number], [Passport], [INN], [Standart_deduction], [Gender]) VALUES (1013, N'Федор', N'Звереф', N'Тимурович', CAST(N'1979-02-03' AS Date), CAST(29188.00 AS Decimal(15, 2)), N'Волгоградская улица, д. 45, кв. 5', N'8(495)754-50-77', N'4873 660848', N'349393543994', 1, N'М')
INSERT [dbo].[Drivers] ([Personnel_number], [Fisrtname], [Secondname], [Midname], [Birthday], [Salary], [Address], [Phone_number], [Passport], [INN], [Standart_deduction], [Gender]) VALUES (1014, N'Матвей', N'Максимов', N'Максимович', CAST(N'1997-12-23' AS Date), CAST(87990.00 AS Decimal(15, 2)), N'Северный б-р, д. 4, кв. 56', N'8(495)530-91-28', N'4558 458343', N'139295554532', 0, N'М')
GO
INSERT [dbo].[Orders] ([Order_code], [ID_Product], [Customer], [Order_date], [Cost_Rub], [Personnel_number]) VALUES (1, 1, N'Ямбаев Артем Феодосович', CAST(N'2020-07-07' AS Date), CAST(3036.00 AS Decimal(15, 2)), 1000)
INSERT [dbo].[Orders] ([Order_code], [ID_Product], [Customer], [Order_date], [Cost_Rub], [Personnel_number]) VALUES (2, 2, N'Куксилин Илья Петрович', CAST(N'2020-09-02' AS Date), CAST(5585.00 AS Decimal(15, 2)), 1001)
INSERT [dbo].[Orders] ([Order_code], [ID_Product], [Customer], [Order_date], [Cost_Rub], [Personnel_number]) VALUES (3, 3, N'Корявин Ефим Савванович', CAST(N'2020-11-27' AS Date), CAST(1432.00 AS Decimal(15, 2)), 1011)
INSERT [dbo].[Orders] ([Order_code], [ID_Product], [Customer], [Order_date], [Cost_Rub], [Personnel_number]) VALUES (4, 4, N'Малафеев Иннокентий Валентинович', CAST(N'2020-09-12' AS Date), CAST(3600.00 AS Decimal(15, 2)), 1006)
GO
INSERT [dbo].[Products] ([ID_Product], [Name], [Provider], [Number], [Status], [Driver], [Date_of_appearance]) VALUES (1, N'Бумага', N'Лента', 4, N'Отгружен', N'Алексей', CAST(N'2018-05-28' AS Date))
INSERT [dbo].[Products] ([ID_Product], [Name], [Provider], [Number], [Status], [Driver], [Date_of_appearance]) VALUES (2, N'Мясо', N'ВЕЛКОМ', 10, N'Частично отгружен', N'Дмитрий', CAST(N'2018-05-23' AS Date))
INSERT [dbo].[Products] ([ID_Product], [Name], [Provider], [Number], [Status], [Driver], [Date_of_appearance]) VALUES (3, N'Хлеб', N'Ивантеевский', 7, N'Частично отгружен', N'Олег', CAST(N'2018-04-05' AS Date))
INSERT [dbo].[Products] ([ID_Product], [Name], [Provider], [Number], [Status], [Driver], [Date_of_appearance]) VALUES (4, N'Яйца', N'Магнит', 5, N'Отгружен', N'Пётр', CAST(N'2018-05-07' AS Date))
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([ID_Product])
REFERENCES [dbo].[Products] ([ID_Product])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([Personnel_number])
REFERENCES [dbo].[Drivers] ([Personnel_number])
GO
