USE [EMIAS IS]
GO
/****** Object:  Table [dbo].[Врачи]    Script Date: 11.12.2020 16:59:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Врачи](
	[КодВрача] [int] NOT NULL,
	[ФИО] [nvarchar](50) NOT NULL,
	[Специальность] [nvarchar](50) NOT NULL,
	[Зарплата] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Врачи] PRIMARY KEY CLUSTERED 
(
	[КодВрача] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Обращения]    Script Date: 11.12.2020 16:59:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Обращения](
	[КодОбращени] [int] NOT NULL,
	[КодВрача] [int] NULL,
	[КодПациента] [int] NULL,
	[Дата Обращения] [date] NULL,
	[Диагноз] [nvarchar](50) NULL,
	[Стоимость лечения] [nvarchar](50) NULL,
 CONSTRAINT [PK_Обращения] PRIMARY KEY CLUSTERED 
(
	[КодОбращени] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Пациенты]    Script Date: 11.12.2020 16:59:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Пациенты](
	[КодПациента] [int] NOT NULL,
	[ФИО] [nvarchar](50) NOT NULL,
	[Дата Рождения] [date] NOT NULL,
	[Дата обращения] [date] NOT NULL,
 CONSTRAINT [PK_Пациенты] PRIMARY KEY CLUSTERED 
(
	[КодПациента] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Врачи] ([КодВрача], [ФИО], [Специальность], [Зарплата]) VALUES (22, N'Маджэд Ираил Мирович', N'Хирург', N'20 000,00 ₽')
INSERT [dbo].[Врачи] ([КодВрача], [ФИО], [Специальность], [Зарплата]) VALUES (23, N'Масленников Виктор Алексеевич', N'Отоларинголог', N'25 000,00 ₽')
INSERT [dbo].[Врачи] ([КодВрача], [ФИО], [Специальность], [Зарплата]) VALUES (24, N'Вилов Илья Владимирович', N'Невролог', N'40 000,00 ₽')
INSERT [dbo].[Врачи] ([КодВрача], [ФИО], [Специальность], [Зарплата]) VALUES (25, N'Магомедов Рамзан Кадырович', N'Психиатр', N'50 000,00 ₽')
INSERT [dbo].[Врачи] ([КодВрача], [ФИО], [Специальность], [Зарплата]) VALUES (111, N'Иссак Вилиан Луйз', N'Терапевт', N'30 000,00 ₽')
INSERT [dbo].[Обращения] ([КодОбращени], [КодВрача], [КодПациента], [Дата Обращения], [Диагноз], [Стоимость лечения]) VALUES (101, 22, 1, CAST(N'2020-10-12' AS Date), N'Перелом челюсти', N'5 000,00 ₽')
INSERT [dbo].[Обращения] ([КодОбращени], [КодВрача], [КодПациента], [Дата Обращения], [Диагноз], [Стоимость лечения]) VALUES (102, 23, 2, CAST(N'2020-10-11' AS Date), N'Отит', N'1 500,00 ₽')
INSERT [dbo].[Обращения] ([КодОбращени], [КодВрача], [КодПациента], [Дата Обращения], [Диагноз], [Стоимость лечения]) VALUES (103, 24, 3, CAST(N'2020-11-04' AS Date), N'Головная боль', N'2 000,00 ₽')
INSERT [dbo].[Обращения] ([КодОбращени], [КодВрача], [КодПациента], [Дата Обращения], [Диагноз], [Стоимость лечения]) VALUES (104, 25, 4, CAST(N'2020-11-01' AS Date), N'Психическое расстройство', N'3 000,00 ₽')
INSERT [dbo].[Пациенты] ([КодПациента], [ФИО], [Дата Рождения], [Дата обращения]) VALUES (1, N'Антонов Николай Викторович', CAST(N'1987-09-11' AS Date), CAST(N'2020-10-12' AS Date))
INSERT [dbo].[Пациенты] ([КодПациента], [ФИО], [Дата Рождения], [Дата обращения]) VALUES (2, N'Михайлов Алексей Манурович', CAST(N'1995-05-30' AS Date), CAST(N'2020-10-11' AS Date))
INSERT [dbo].[Пациенты] ([КодПациента], [ФИО], [Дата Рождения], [Дата обращения]) VALUES (3, N'Меролов Виталий Шурович', CAST(N'1993-12-03' AS Date), CAST(N'2020-11-04' AS Date))
INSERT [dbo].[Пациенты] ([КодПациента], [ФИО], [Дата Рождения], [Дата обращения]) VALUES (4, N'Сенов Василий Генадьевич', CAST(N'1966-06-06' AS Date), CAST(N'2020-11-01' AS Date))
