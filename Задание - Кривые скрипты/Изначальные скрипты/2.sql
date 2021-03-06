USE [master]
GO
/****** Object:  Database [УИС5]    Script Date: 16.12.2020 9:00:10 ******/
CREATE DATABASE [УИС5]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'УИС5', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\УИС5.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'УИС5_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\УИС5_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [УИС5] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [УИС5].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [УИС5] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [УИС5] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [УИС5] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [УИС5] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [УИС5] SET ARITHABORT OFF 
GO
ALTER DATABASE [УИС5] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [УИС5] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [УИС5] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [УИС5] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [УИС5] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [УИС5] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [УИС5] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [УИС5] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [УИС5] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [УИС5] SET  DISABLE_BROKER 
GO
ALTER DATABASE [УИС5] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [УИС5] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [УИС5] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [УИС5] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [УИС5] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [УИС5] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [УИС5] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [УИС5] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [УИС5] SET  MULTI_USER 
GO
ALTER DATABASE [УИС5] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [УИС5] SET DB_CHAINING OFF 
GO
ALTER DATABASE [УИС5] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [УИС5] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [УИС5] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [УИС5] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [УИС5] SET QUERY_STORE = OFF
GO
USE [УИС5]
GO
/****** Object:  Table [dbo].[Administration]    Script Date: 16.12.2020 9:00:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Administration](
	[Табельный номер] [smallint] NOT NULL,
	[Логин] [nvarchar](50) NOT NULL,
	[Серия и номер паспорта] [nvarchar](50) NOT NULL,
	[Фамилия] [nvarchar](50) NOT NULL,
	[Имя] [nvarchar](50) NOT NULL,
	[Отчество] [nvarchar](50) NULL,
	[Должность] [nvarchar](50) NOT NULL,
	[Контакный телефон] [nvarchar](50) NOT NULL,
	[Электронная почта] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Administration_1] PRIMARY KEY CLUSTERED 
(
	[Табельный номер] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Authorization]    Script Date: 16.12.2020 9:00:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Authorization](
	[Логин] [nvarchar](50) NOT NULL,
	[Пароль] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Authorization] PRIMARY KEY CLUSTERED 
(
	[Логин] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Classes]    Script Date: 16.12.2020 9:00:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Classes](
	[Id класса] [smallint] NOT NULL,
	[Класс] [nvarchar](10) NOT NULL,
	[Id классного руководителя] [smallint] NULL,
	[Профиль] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Classes] PRIMARY KEY CLUSTERED 
(
	[Id класса] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Famileis]    Script Date: 16.12.2020 9:00:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Famileis](
	[Регистрационный номер] [nvarchar](10) NOT NULL,
	[Id родителя] [smallint] NOT NULL,
 CONSTRAINT [PK_Famileis] PRIMARY KEY CLUSTERED 
(
	[Регистрационный номер] ASC,
	[Id родителя] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Marks]    Script Date: 16.12.2020 9:00:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Marks](
	[Регистрационный номер] [nvarchar](10) NOT NULL,
	[Id предмета] [smallint] NOT NULL,
	[Оценка] [smallint] NULL,
 CONSTRAINT [PK_Marks] PRIMARY KEY CLUSTERED 
(
	[Регистрационный номер] ASC,
	[Id предмета] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Parents]    Script Date: 16.12.2020 9:00:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Parents](
	[Id родителя] [smallint] NOT NULL,
	[Серия и номер паспорта] [nvarchar](50) NOT NULL,
	[Фамилия] [nvarchar](50) NOT NULL,
	[Имя] [nvarchar](50) NOT NULL,
	[Отчество] [nvarchar](50) NULL,
	[Место работы] [nvarchar](100) NULL,
	[Контактный телефон] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Parents_1] PRIMARY KEY CLUSTERED 
(
	[Id родителя] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 16.12.2020 9:00:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[Регистрационный номер] [nvarchar](10) NOT NULL,
	[Фамилия] [nvarchar](50) NOT NULL,
	[Имя] [nvarchar](50) NOT NULL,
	[Очтество] [nvarchar](50) NULL,
	[Id класса] [smallint] NOT NULL,
	[Пол] [bit] NOT NULL,
	[Дата поступления] [smalldatetime] NOT NULL,
	[Дата рождения] [smalldatetime] NOT NULL,
	[Адресс] [nvarchar](100) NOT NULL,
	[Фото] [varbinary](max) NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[Регистрационный номер] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subjects]    Script Date: 16.12.2020 9:00:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subjects](
	[Id предмета] [smallint] NOT NULL,
	[Название предмета] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Subjects] PRIMARY KEY CLUSTERED 
(
	[Id предмета] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teachers]    Script Date: 16.12.2020 9:00:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teachers](
	[Id преподователя] [smallint] NOT NULL,
	[Серия и номер паспорта] [nvarchar](50) NOT NULL,
	[Фамилия] [nvarchar](50) NOT NULL,
	[Имя] [nvarchar](50) NOT NULL,
	[Отчество] [nvarchar](50) NULL,
	[Контактный телефон] [nvarchar](50) NOT NULL,
	[Электроная почта] [nvarchar](50) NOT NULL,
	[Категория] [int] NOT NULL,
	[Пед Стаж] [int] NOT NULL,
 CONSTRAINT [PK_Teachers_1] PRIMARY KEY CLUSTERED 
(
	[Id преподователя] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teaching]    Script Date: 16.12.2020 9:00:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teaching](
	[Id учителя] [smallint] NOT NULL,
	[Id класса] [smallint] NOT NULL,
	[Id предмета] [smallint] NOT NULL,
 CONSTRAINT [PK_Teaching] PRIMARY KEY CLUSTERED 
(
	[Id учителя] ASC,
	[Id класса] ASC,
	[Id предмета] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Administration] ([Табельный номер], [Логин], [Серия и номер паспорта], [Фамилия], [Имя], [Отчество], [Должность], [Контакный телефон], [Электронная почта]) VALUES (1, N'Admin1', N'123', N'Привет', N'Как', N'Дела', N'Завуч', N'88005553535', N'ya@ti.ru')
GO
INSERT [dbo].[Authorization] ([Логин], [Пароль]) VALUES (N'Admin1', N'123')
GO
INSERT [dbo].[Classes] ([Id класса], [Класс], [Id классного руководителя], [Профиль]) VALUES (1, N'10-А', 1001, N'физ-мат')
INSERT [dbo].[Classes] ([Id класса], [Класс], [Id классного руководителя], [Профиль]) VALUES (2, N'10-Б', 1001, N'эконом')
GO
INSERT [dbo].[Students] ([Регистрационный номер], [Фамилия], [Имя], [Очтество], [Id класса], [Пол], [Дата поступления], [Дата рождения], [Адресс], [Фото]) VALUES (N'A2', N'Панюшева', N'Людмила', N'Алксеевна', 1, 0, CAST(N'1999-01-01T00:00:00' AS SmallDateTime), CAST(N'2000-01-01T00:00:00' AS SmallDateTime), N'Москва', NULL)
INSERT [dbo].[Students] ([Регистрационный номер], [Фамилия], [Имя], [Очтество], [Id класса], [Пол], [Дата поступления], [Дата рождения], [Адресс], [Фото]) VALUES (N'А1', N'Васин', N'Максим', N'Олегович', 1, 1, CAST(N'1999-01-01T00:00:00' AS SmallDateTime), CAST(N'2000-01-01T00:00:00' AS SmallDateTime), N'Москва', NULL)
INSERT [dbo].[Students] ([Регистрационный номер], [Фамилия], [Имя], [Очтество], [Id класса], [Пол], [Дата поступления], [Дата рождения], [Адресс], [Фото]) VALUES (N'А3', N'Васина', N'Алина', N'Олеговна', 2, 0, CAST(N'2001-01-10T00:00:00' AS SmallDateTime), CAST(N'2077-10-12T00:00:00' AS SmallDateTime), N'Москва', NULL)
GO
INSERT [dbo].[Teachers] ([Id преподователя], [Серия и номер паспорта], [Фамилия], [Имя], [Отчество], [Контактный телефон], [Электроная почта], [Категория], [Пед Стаж]) VALUES (1001, N'1111123123', N'Гуторов', N'Сергей', N'Станиславович', N'88002222222', N'mail@mail.ua', 1, 150)
GO
ALTER TABLE [dbo].[Administration]  WITH CHECK ADD  CONSTRAINT [FK_Administration_Authorization] FOREIGN KEY([Логин])
REFERENCES [dbo].[Authorization] ([Логин])
GO
ALTER TABLE [dbo].[Administration] CHECK CONSTRAINT [FK_Administration_Authorization]
GO
ALTER TABLE [dbo].[Famileis]  WITH CHECK ADD  CONSTRAINT [FK_Famileis_Parents] FOREIGN KEY([Id родителя])
REFERENCES [dbo].[Parents] ([Id родителя])
GO
ALTER TABLE [dbo].[Famileis] CHECK CONSTRAINT [FK_Famileis_Parents]
GO
ALTER TABLE [dbo].[Famileis]  WITH CHECK ADD  CONSTRAINT [FK_Famileis_Students] FOREIGN KEY([Регистрационный номер])
REFERENCES [dbo].[Students] ([Регистрационный номер])
GO
ALTER TABLE [dbo].[Famileis] CHECK CONSTRAINT [FK_Famileis_Students]
GO
ALTER TABLE [dbo].[Marks]  WITH CHECK ADD  CONSTRAINT [FK_Marks_Students] FOREIGN KEY([Регистрационный номер])
REFERENCES [dbo].[Students] ([Регистрационный номер])
GO
ALTER TABLE [dbo].[Marks] CHECK CONSTRAINT [FK_Marks_Students]
GO
ALTER TABLE [dbo].[Marks]  WITH CHECK ADD  CONSTRAINT [FK_Marks_Subjects] FOREIGN KEY([Id предмета])
REFERENCES [dbo].[Subjects] ([Id предмета])
GO
ALTER TABLE [dbo].[Marks] CHECK CONSTRAINT [FK_Marks_Subjects]
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD  CONSTRAINT [FK_Students_Classes] FOREIGN KEY([Id класса])
REFERENCES [dbo].[Classes] ([Id класса])
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Students_Classes]
GO
ALTER TABLE [dbo].[Teaching]  WITH CHECK ADD  CONSTRAINT [FK_Teaching_Classes] FOREIGN KEY([Id класса])
REFERENCES [dbo].[Classes] ([Id класса])
GO
ALTER TABLE [dbo].[Teaching] CHECK CONSTRAINT [FK_Teaching_Classes]
GO
ALTER TABLE [dbo].[Teaching]  WITH CHECK ADD  CONSTRAINT [FK_Teaching_Subjects] FOREIGN KEY([Id предмета])
REFERENCES [dbo].[Subjects] ([Id предмета])
GO
ALTER TABLE [dbo].[Teaching] CHECK CONSTRAINT [FK_Teaching_Subjects]
GO
ALTER TABLE [dbo].[Teaching]  WITH CHECK ADD  CONSTRAINT [FK_Teaching_Teachers] FOREIGN KEY([Id учителя])
REFERENCES [dbo].[Teachers] ([Id преподователя])
GO
ALTER TABLE [dbo].[Teaching] CHECK CONSTRAINT [FK_Teaching_Teachers]
GO
USE [master]
GO
ALTER DATABASE [УИС5] SET  READ_WRITE 
GO
