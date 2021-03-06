USE [master]
GO
/****** Object:  Database [StateTrafficInspectorateDB]    Script Date: 07.02.2022 17:26:12 ******/
CREATE DATABASE [StateTrafficInspectorateDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'StateTrafficInspectorateDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\StateTrafficInspectorateDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'StateTrafficInspectorateDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\StateTrafficInspectorateDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [StateTrafficInspectorateDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [StateTrafficInspectorateDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [StateTrafficInspectorateDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [StateTrafficInspectorateDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [StateTrafficInspectorateDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [StateTrafficInspectorateDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [StateTrafficInspectorateDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [StateTrafficInspectorateDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [StateTrafficInspectorateDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [StateTrafficInspectorateDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [StateTrafficInspectorateDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [StateTrafficInspectorateDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [StateTrafficInspectorateDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [StateTrafficInspectorateDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [StateTrafficInspectorateDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [StateTrafficInspectorateDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [StateTrafficInspectorateDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [StateTrafficInspectorateDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [StateTrafficInspectorateDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [StateTrafficInspectorateDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [StateTrafficInspectorateDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [StateTrafficInspectorateDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [StateTrafficInspectorateDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [StateTrafficInspectorateDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [StateTrafficInspectorateDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [StateTrafficInspectorateDB] SET  MULTI_USER 
GO
ALTER DATABASE [StateTrafficInspectorateDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [StateTrafficInspectorateDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [StateTrafficInspectorateDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [StateTrafficInspectorateDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [StateTrafficInspectorateDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [StateTrafficInspectorateDB] SET QUERY_STORE = OFF
GO
USE [StateTrafficInspectorateDB]
GO
/****** Object:  Table [dbo].[Car]    Script Date: 07.02.2022 17:26:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Car](
	[VIN] [nvarchar](50) NOT NULL,
	[Manufacturer] [int] NULL,
	[Model] [nvarchar](100) NULL,
	[Year] [date] NULL,
	[Weight] [int] NULL,
	[Color] [int] NULL,
	[EngineType] [int] NULL,
	[TypeOfDrive] [int] NULL,
 CONSTRAINT [PK_Car] PRIMARY KEY CLUSTERED 
(
	[VIN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CarManufacturer]    Script Date: 07.02.2022 17:26:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarManufacturer](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_CarManufacturer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Company]    Script Date: 07.02.2022 17:26:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Company](
	[ID] [int] NOT NULL,
	[CompanyName] [nvarchar](100) NULL,
 CONSTRAINT [PK_Company] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Driver]    Script Date: 07.02.2022 17:26:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Driver](
	[ID] [int] NOT NULL,
	[LastName] [nvarchar](100) NULL,
	[FirstName] [nvarchar](100) NULL,
	[Patronymic] [nvarchar](100) NULL,
	[Passport] [nvarchar](50) NULL,
	[RegistrationAddress] [nvarchar](100) NULL,
	[ResidentialAddress] [nvarchar](100) NULL,
	[Company] [int] NULL,
	[JobName] [int] NULL,
	[Phone] [nvarchar](15) NULL,
	[Email] [nvarchar](100) NULL,
	[Photo] [nvarchar](100) NULL,
	[Comment] [nvarchar](max) NULL,
 CONSTRAINT [PK_Driver] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DriverLicenseCar]    Script Date: 07.02.2022 17:26:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DriverLicenseCar](
	[DriverID] [int] NULL,
	[LicenseID] [int] NULL,
	[CarID] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Job]    Script Date: 07.02.2022 17:26:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Job](
	[ID] [int] NOT NULL,
	[JobName] [nvarchar](100) NULL,
 CONSTRAINT [PK_Job] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[License]    Script Date: 07.02.2022 17:26:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[License](
	[ID] [int] NOT NULL,
	[LicenceDate] [date] NULL,
	[ExpireDate] [date] NULL,
	[Categories] [nvarchar](20) NULL,
	[License] [nvarchar](50) NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_License] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 07.02.2022 17:26:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[ID] [int] NOT NULL,
	[StatusName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeOfDrive]    Script Date: 07.02.2022 17:26:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeOfDrive](
	[ID] [int] NOT NULL,
	[TypeOfDrive] [nvarchar](50) NULL,
 CONSTRAINT [PK_TypeOfDrive] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 07.02.2022 17:26:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Login] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Login] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'19UUA66218A797800', 3, N'Magentis / Optima', NULL, 1603, 133, 1, 3)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'1C4RJEAG6CC011603', 3, N'Cerato / Spectra', NULL, 1692, 107, 1, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'1C4RJEAG6FC571030', 2, N'Series 61', NULL, 1677, 377, 2, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'1D7RE3BK7AS869215', 2, N'Fleetwood Brougham', NULL, 1434, 425, 2, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'1FAHP3E28CL132877', 3, N'Opirus / Amanti', NULL, 1651, 204, 2, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'1FMJK1J51AE558998', 2, N'6200', NULL, 1426, 408, 3, 3)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'1FMJU1F5XAE067185', 1, N'X7', NULL, 1557, 236, 3, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'1FMJU1J56AE113733', 2, N'CTS', NULL, 1445, 340, 1, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'1FTEW1CM3DF334371', 3, N'Sephia', NULL, 1540, 963, 3, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'1FTEW1E86AF818093', 2, N'Series 62', NULL, 1437, 301, 1, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'1FTEX1CM1BF296018', 3, N'Clarus', NULL, 1638, 128, 2, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'1FTEX1CM5BK565807', 2, N'Series 75', NULL, 1518, 448, 2, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'1FTMF1E84AK129978', 1, N'3-Series', NULL, 1637, 129, 1, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'1FTSF3A50AE770400', 2, N'Series 75', NULL, 1505, 447, 3, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'1FTSW2A50AE633032', 1, N'5-Series, M5', NULL, 1493, 233, 1, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'1FTSX2A58AE041570', 3, N'Sephia', NULL, 1651, 371, 2, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'1FTWF3D57AE486873', 1, N'X6', NULL, 1656, 415, 3, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'1FTWW3B53AE587413', 1, N'X5', NULL, 1674, 406, 3, 3)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'1FTWW3B5XAE601405', 2, N'Series 61', NULL, 1459, 370, 1, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'1G4HD57238U904159', 2, N'Series 62', NULL, 1583, 385, 2, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'1G6AB5SA9D0113584', 3, N'Forte', NULL, 1665, 110, 3, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'1G6AH5S31F0348385', 2, N'Series 75', NULL, 1781, 449, 3, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'1G6AP5SX1E0768734', 3, N'Rio', NULL, 1713, 302, 3, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'1G6DA1E30E0416888', 3, N'Soul', NULL, 1506, 310, 2, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'1G6DD8E31E0169171', 1, N'New Class 1602, 1802, 2002', NULL, 1633, 233, 1, 3)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'1G6DE5E5XC0016413', 2, N'Series 75', NULL, 1601, 446, 1, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'1G6DH5E5XC0462438', 3, N'Sportage', NULL, 1705, 302, 1, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'1G6DJ1E37D0628461', 3, N'Joice', NULL, 1768, 245, 2, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'1G6DJ5E34C0750992', 2, N'CTS', NULL, 1455, 295, 2, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'1G6DK8ED9B0319764', 3, N'Mohave / Borrego', NULL, 1720, 370, 1, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'1G6DM577280903075', 1, N'4-Series, M4', NULL, 1711, 202, 2, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'1G6DN57U260742856', 3, N'Potentia', NULL, 1608, 201, 2, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'1G6DP567750890960', 3, N'Cee''d', NULL, 1449, 798, 2, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'1G6KF57952U735337', 3, N'Quoris / K9 / K900', NULL, 1421, 223, 1, 2)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'1GD422CGXEF170253', 3, N'Picanto', NULL, 1579, 370, 1, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'1GYFC43539R480716', 1, N'3-Series, M3', NULL, 1748, 203, 3, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'1GYS3FEJ8CR664092', 1, N'3-Series GT', NULL, 1701, 302, 1, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'1GYS3HKJ9FR278172', 4, N'Voyage', NULL, 1420, 129, 2, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'1GYS4FEJ9CR310756', 2, N'Series 75', NULL, 1535, 464, 2, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'1HGCP2E46AA778977', 2, N'Series 62', NULL, 1417, 387, 3, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'1HGCR2E55EA286661', 2, N'Series 61', NULL, 1523, 280, 3, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'1J4RG4GK7AC818854', 2, N'Eldorado', NULL, 1636, 640, 1, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'1LNHL9DK8EG585379', 3, N'Retona', NULL, 1757, 286, 3, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'1LNHL9EK9FG365197', 1, N'5-Series, M5', NULL, 1456, 371, 3, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'1N4AB7APXDN538514', 2, N'Series 75', NULL, 1404, 456, 3, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'1N6AA0CJ3FN926889', 1, N'4-Series, M4', NULL, 1761, 204, 3, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'1N6BF0KM6FN922689', 3, N'Forte / K3', NULL, 1725, 116, 1, 2)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'1ZVBP8JZ2D5191071', 3, N'Cadenza / K7', NULL, 1459, 215, 3, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'2B3CK2CV1AH775495', 2, N'Series 61', NULL, 1526, 277, 2, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'2C3CCAKT5CH834724', 1, N'5-Series, M5', NULL, 1633, 235, 2, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'2C3CDXL97FH493561', 2, N'BLS', NULL, 1454, 215, 1, 3)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'2C4RDGCG2FR292116', 1, N'2-Series', NULL, 1750, 120, 2, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'2FMPK3K98FB482688', 2, N'CTS', NULL, 1678, 236, 2, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'2G4WD582261511218', 1, N'X7', NULL, 1731, 416, 3, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'2G4WE587581834383', 4, N'SP2', NULL, 1577, 217, 2, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'2G4WS55J341869989', 3, N'Stinger', NULL, 1546, 180, 1, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'2HNYB1H68DH924015', 2, N'Series 65', NULL, 1773, 295, 3, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'2HNYD18214H913977', 2, N'Catera', NULL, 1586, 286, 3, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'2HNYD2H46CH088623', 1, N'1-Series', NULL, 1799, 127, 2, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'2T1BURHE4FC565514', 3, N'Sorento', NULL, 1571, 311, 1, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'2T1BURHE5EC940812', 2, N'Series 75', NULL, 1679, 481, 3, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'2T1BURHE6EC080516', 1, N'3-Series GT', NULL, 1574, 210, 3, 2)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'2T3BFREV2EW071669', 4, N'Gol', NULL, 1779, 118, 1, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'3C63D2GL5CG863137', 3, N'Quoris / K9 / K900', NULL, 1576, 217, 3, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'3C6LD4AT3CG450587', 2, N'Series 75', NULL, 1744, 458, 1, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'3C6TD4HTXCG839880', 2, N'Series 62', NULL, 1488, 302, 3, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'3D73M3CL4BG992821', 2, N'ELR', NULL, 1750, 280, 1, 2)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'3D73M4CL0AG485600', 2, N'ATS', NULL, 1500, 277, 3, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'3D7TT2CT1BG470774', 2, N'Fleetwood', NULL, 1460, 428, 1, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'3GYFNCEY2BS887540', 2, N'Series 75', NULL, 1468, 460, 3, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'3GYFNGEY9BS444647', 2, N'Eldorado', NULL, 1419, 671, 2, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'3LNDL2L33CR462059', 3, N'Magentis / Optima', NULL, 1609, 129, 2, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'3LNHL2GC0AR226381', 1, N'New Six CS', NULL, 1611, 385, 3, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'3N1AB6AP7BL573385', 4, N'Santana', NULL, 1515, 204, 2, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'3N1CN7AP5FL866147', 1, N'3-Series, M3', NULL, 1706, 236, 2, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'3VW217AU7FM147306', 2, N'CTS', NULL, 1795, 311, 3, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'3VW4A7AT6DM813925', 3, N'Bongo', NULL, 1744, 371, 1, 2)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'3VWF17AT3FM605285', 3, N'Carnival / Sedona', NULL, 1539, 280, 1, 3)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'3VWKX7AJ2DM808838', 3, N'Carens / Rondo', NULL, 1475, 236, 3, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'3VWML7AJXEM569531', 3, N'Cee''d', NULL, 1472, 793, 1, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'4A31K2DF7BE138498', 3, N'Bongo', NULL, 1745, 110, 3, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'4T1BD1FK6FU133645', 3, N'Sportage', NULL, 1668, 310, 2, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'4T1BF1FK2EU831999', 3, N'Magentis / Optima / K5', NULL, 1468, 170, 1, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'4USBU53567L936239', 1, N'X6', NULL, 1596, 408, 1, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'5FNRL5H2XCB183642', 1, N'3-Series, M3', NULL, 1409, 180, 1, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'5FNYF3H48FB049614', 1, N'5-Series', NULL, 1569, 217, 2, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'5FRYD4H97GB588815', 3, N'Carnival / Sedona', NULL, 1737, 276, 2, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'5N1AA0NC5EN749211', 2, N'Brougham', NULL, 1459, 427, 1, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'5NMSG3AB7AH234028', 1, N'5-Series', NULL, 1447, 310, 3, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'5TDBK3EH2BS734111', 2, N'Catera', NULL, 1567, 228, 2, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'5TDBM5G19BS020076', 4, N'Pointer', NULL, 1594, 203, 2, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'5TDBW5G12FS063304', 3, N'Sorento', NULL, 1783, 340, 3, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'5TFBY5F18AX095253', 2, N'Cimarron', NULL, 1539, 245, 1, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'5UXFG43539L241999', 1, N'4-Series, M4', NULL, 1597, 301, 1, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'5UXFG83558L839159', 2, N'Series 62', NULL, 1777, 406, 1, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'5XYKT3A62FG416932', 3, N'Elan', NULL, 1518, 228, 2, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'5XYZT3LB7FG893235', 4, N'Quantum', NULL, 1662, 210, 3, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'JH4CU2F68BC631071', 2, N'Series 61', NULL, 1770, 286, 2, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'JH4KA96631C195497', 4, N'Gol', NULL, 1528, 127, 3, 2)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'JH4KC1F78EC530392', 4, N'SpaceFox / Suran / SportVan / Fox Plus', NULL, 1718, 215, 3, 1)
GO
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'JHMZF1C46CS958531', 3, N'Pride', NULL, 1572, 373, 2, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'JM1NC2LF0E0131767', 1, N'5-Series, M5', NULL, 1585, 228, 3, 2)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'JM1NC2LF9D0043475', 3, N'Picanto', NULL, 1483, 345, 2, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'JM3TB2MA6A0887683', 2, N'ELR', NULL, 1675, 223, 3, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'JN1AZ4EH7AM509399', 4, N'Fusca', NULL, 1775, 116, 2, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'JN1BV7APXFM374795', 1, N'3-Series, M3', NULL, 1756, 277, 2, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'JN1BV7APXFM590680', 3, N'Picanto', NULL, 1762, 371, 2, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'JN1CV6AP0CM243398', 2, N'Series 60', NULL, 1433, 345, 2, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'JN1CV6APXCM884333', 1, N'1-Series', NULL, 1523, 118, 3, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'JN1CV6FEXCM381103', 3, N'Niro', NULL, 1698, 301, 3, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'JN1CY0APXAM160384', 1, N'5-Series, M5', NULL, 1722, 340, 2, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'JN8AF5MR7ET518545', 2, N'Fleetwood 75', NULL, 1614, 498, 3, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'JN8AZ2KR3DT115699', 3, N'Stonic', NULL, 1725, 295, 2, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'JN8CS1MU3EM315101', 2, N'Series 60 (Sixty Special)', NULL, 1724, 417, 1, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'JTEBU4BF9DK234908', 1, N'3-Series, M3', NULL, 1729, 201, 3, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'JTHFF2C27F2931205', 1, N'3-Series, M3', NULL, 1574, 145, 3, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'JTMHY7AJ9B4091499', 2, N'Allanté', NULL, 1694, 311, 3, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'KL4CJFSB9FB654370', 1, N'3-Series, M3', NULL, 1664, 276, 2, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'KMHTC6AD4EU662541', 1, N'3-Series, M3', NULL, 1610, 295, 3, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'KNADH4A36B6877082', 2, N'Eldorado', NULL, 1753, 670, 1, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'KNAFU5A29D5373281', 1, N'New Class 1602, 1802, 2002', NULL, 1791, 128, 1, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'KNAFU6A20B5806571', 4, N'Fox', NULL, 1526, 170, 1, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'NM0KS9BNXBT830533', 2, N'Series 61', NULL, 1401, 373, 3, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'SAJWA0FS8FP468222', 2, N'XLR', NULL, 1614, 340, 1, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'SAJWA2GTXEM305896', 4, N'Brasilia', NULL, 1771, 180, 3, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'SAJWA4EB7EL432469', 1, N'6-Series GT', NULL, 1438, 383, 1, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'SALAB2V67FA465605', 1, N'5-Series, M5', NULL, 1723, 311, 1, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'SALAG2D47AA801263', 1, N'X5', NULL, 1527, 399, 3, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'SALFR2BG8FH292196', 3, N'Avella', NULL, 1769, 311, 2, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'SCBDU3ZA7CC107541', 3, N'Carnival / Sedona', NULL, 1680, 277, 3, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'SCFBF03B27G582917', 2, N'6200', NULL, 1629, 415, 2, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'TRUDD38J481844056', 3, N'Cee''d', NULL, 1567, 340, 1, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'TRURD38J381614210', 3, N'Sportage', NULL, 1767, 307, 2, 3)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'WA1AV94L37D000070', 3, N'Rio', NULL, 1702, 385, 2, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'WA1CV74LX9D994734', 3, N'Cee''d', NULL, 1784, 370, 2, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'WA1LMAFE9DD722859', 3, N'Enterprise', NULL, 1505, 203, 3, 2)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'WA1WMAFE2DD971257', 3, N'Rio', NULL, 1487, 383, 3, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'WA1YL64B34N831763', 3, N'Forte / K3', NULL, 1710, 118, 1, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'WAUAC48H96K683520', 2, N'Eldorado', NULL, 1649, 509, 1, 3)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'WAUAFAFH7EN465064', 1, N'3-Series, M3', NULL, 1534, 280, 2, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'WAUAFAFL0FN838290', 1, N'5-Series, M5', NULL, 1725, 370, 2, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'WAUBFCFL8CN296660', 2, N'Series 75', NULL, 1573, 480, 2, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'WAUBGAFB1AN276966', 2, N'Series 62', NULL, 1423, 399, 1, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'WAUCFAFH0AN942677', 2, N'Series 60 (Sixty Special)', NULL, 1438, 416, 1, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'WAUD2AFD1EN207208', 4, N'Parati', NULL, 1763, 133, 2, 3)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'WAUDF48H97A496239', 2, N'Series 62', NULL, 1652, 403, 2, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'WAUDF48H98K345526', 4, N'Saveiro', NULL, 1469, 223, 1, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'WAUDH78E47A363910', 3, N'Sephia', NULL, 1736, 101, 2, 2)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'WAUEH48H68K095273', 2, N'Eldorado', NULL, 1736, 626, 2, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'WAUEH74F76N744161', 2, N'Eldorado', NULL, 1490, 628, 2, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'WAUFGAFC6DN013144', 3, N'Carens', NULL, 1508, 235, 2, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'WAUGFAFC5DN926548', 4, N'Logus', NULL, 1663, 202, 1, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'WAUGGAFR1DA366441', 3, N'Pride', NULL, 1753, 377, 2, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'WAUHF98P96A724812', 3, N'Concord', NULL, 1512, 127, 3, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'WAUHGAFC8FN632100', 2, N'Eldorado', NULL, 1711, 601, 3, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'WAUKD78P89A662503', 2, N'ATS', NULL, 1450, 217, 3, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'WAUKFAFL5EA281418', 2, N'Series 60', NULL, 1442, 245, 1, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'WAUKG98E56A006286', 1, N'5-Series GT', NULL, 1481, 377, 2, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'WAULFAFR3DA033269', 3, N'Sorento', NULL, 1659, 345, 1, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'WAULL44E35N431957', 4, N'Parati', NULL, 1460, 145, 3, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'WAULL44E95N690503', 4, N'Apollo', NULL, 1601, 201, 1, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'WAULT58EX5A470410', 2, N'Fleetwood Limousine', NULL, 1604, 487, 1, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'WAUUL78E45A200167', 2, N'Escalade', NULL, 1532, 310, 1, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'WAUVC68E33A401568', 1, N'4-Series, M4', NULL, 1716, 286, 2, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'WAUVC68E55A439175', 2, N'BLS', NULL, 1471, 276, 1, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'WAUVFAFH7BN873285', 1, N'X4', NULL, 1581, 387, 1, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'WAUVT68E94A410180', 2, N'Series 61', NULL, 1663, 276, 2, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'WAUWFBFL6AA160138', 2, N'Eldorado', NULL, 1406, 602, 2, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'WBA3G7C54EF309612', 4, N'Saveiro', NULL, 1453, 228, 1, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'WBA3T7C57FP608583', 1, N'New Class 1500, 1600, 1800, 2000', NULL, 1495, 215, 1, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'WBA3V5C5XFP343527', 2, N'Fleetwood', NULL, 1583, 445, 3, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'WBABV13466J082217', 2, N'CTS', NULL, 1499, 233, 1, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'WBABW33455P972485', 1, N'3-Series, M3', NULL, 1753, 170, 2, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'WBAEK13597C722490', 4, N'Voyage / Fox', NULL, 1496, 128, 3, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'WBAGN83515D855874', 2, N'Cimarron', NULL, 1763, 417, 3, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'WBAKE5C5XCJ498380', 1, N'3-Series, M3', NULL, 1483, 133, 1, 2)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'WBAKG7C54DJ746310', 1, N'1-Series', NULL, 1794, 116, 3, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'WBAKN9C51FD688174', 1, N'New Class 1500, 1600, 1800, 2000', NULL, 1691, 307, 3, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'WBANV1C59AC580740', 3, N'Venga', NULL, 1682, 233, 1, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'WBAPM7C57AE459062', 2, N'CTS', NULL, 1696, 235, 1, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'WBASN2C55AC523024', 2, N'Series 61', NULL, 1504, 371, 1, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'WBAUP7C52BV069773', 3, N'Cadenza / K7', NULL, 1675, 210, 3, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'WBAUP7C58DV367411', 1, N'5-Series, M5', NULL, 1622, 345, 2, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'WBAUP9C58AV223509', 3, N'Shuma', NULL, 1562, 120, 3, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'WBAWV13557P451979', 3, N'Soul', NULL, 1560, 307, 2, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'WBS3R9C51FF196091', 2, N'Series 65', NULL, 1596, 383, 3, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'WBSBR93493P275260', 3, N'Cee''d', NULL, 1551, 795, 3, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'WBSWD9C57AP228332', 1, N'X5', NULL, 1426, 403, 1, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'WDDHH8HB5BA767975', 3, N'Cee''d', NULL, 1788, 345, 1, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'WP0AB2A87FK108949', 2, N'Eldorado', NULL, 1791, 690, 1, 2)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'WVGAV7AX3BW390470', 2, N'Series 62', NULL, 1493, 307, 1, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'WVWAA7AJ5CW398762', 3, N'Rio', NULL, 1587, 301, 2, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'WVWAB7AJ0CW557264', 3, N'Bongo Frontier', NULL, 1667, 373, 1, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'WVWGD7AJ7EW053317', 1, N'5-Series, M5', NULL, 1705, 223, 3, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'YV1382MW1A2097161', 3, N'Potentia', NULL, 1757, 202, 1, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'YV1612FH2D1519917', 4, N'Gol', NULL, 1769, 120, 3, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'YV1672MK0D2114467', 1, N'5-Series, M5', NULL, 1480, 373, 2, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'YV1902FH3D1001332', 1, N'3-Series', NULL, 1797, 235, 3, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'YV4902NC8F1531985', 1, N'3-Series, M3', NULL, 1685, 245, 3, 1)
INSERT [dbo].[Car] ([VIN], [Manufacturer], [Model], [Year], [Weight], [Color], [EngineType], [TypeOfDrive]) VALUES (N'ZFBCFACH5FZ996096', 3, N'Magentis / Optima / K5', NULL, 1669, 145, 2, 2)
GO
INSERT [dbo].[CarManufacturer] ([ID], [Name]) VALUES (1, N'BMW')
INSERT [dbo].[CarManufacturer] ([ID], [Name]) VALUES (2, N'Cadillac')
INSERT [dbo].[CarManufacturer] ([ID], [Name]) VALUES (3, N'Kia')
INSERT [dbo].[CarManufacturer] ([ID], [Name]) VALUES (4, N'Volkswagen')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (1, N'3M')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (2, N'AT&T')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (3, N'Adidas')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (4, N'Adobe Systems')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (5, N'Allianz')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (6, N'Amazon.com')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (7, N'American Express')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (8, N'Apple Inc.')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (9, N'Audi')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (10, N'Avon')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (11, N'BMW')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (12, N'Bank of America')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (13, N'Beko')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (14, N'BlackBerry')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (15, N'Budweiser Stag Brewing Company')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (16, N'Burberry')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (17, N'Canon')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (18, N'Cartier SA')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (19, N'Caterpillar Inc.')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (20, N'Chase')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (21, N'Cisco Systems, Inc.')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (22, N'Citigroup')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (23, N'Coca-Cola')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (24, N'Corona')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (25, N'Credit Suisse')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (26, N'Deere & Company')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (27, N'Facebook, Inc.')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (28, N'Ferrari S.p.A.')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (29, N'Gap Inc.')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (30, N'General Electric')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (31, N'Global Gillette')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (32, N'Google')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (33, N'Gucci')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (34, N'H&M')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (35, N'HSBC')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (36, N'Harley-Davidson Motor Company')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (37, N'Heineken Brewery')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (38, N'Hermès')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (39, N'Hewlett-Packard')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (40, N'Home Depot')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (41, N'Honda Motor Company, Ltd')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (42, N'Hyundai')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (43, N'IBM')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (44, N'IKEA')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (45, N'Intel Corporation')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (46, N'Jack Daniel''s')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (47, N'Johnnie Walker')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (48, N'Johnson & Johnson')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (49, N'KFC')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (50, N'Kellogg Company')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (51, N'Kia Motors')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (52, N'Kleenex')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (53, N'L''Oréal')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (54, N'Louis Vuitton')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (55, N'MTV')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (56, N'MasterCard')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (57, N'McDonald''s')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (58, N'Mercedes-Benz')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (59, N'Microsoft')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (60, N'Mitsubishi')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (61, N'Morgan Stanley')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (62, N'Moët et Chandon')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (63, N'NTT Data')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (64, N'Nescafé')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (65, N'Nike, Inc.')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (66, N'Nintendo')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (67, N'Nissan Motor Co., Ltd.')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (68, N'Nokia')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (69, N'Oracle Corporation')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (70, N'Pampers')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (71, N'Panasonic Corporation')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (72, N'PepsiCo')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (73, N'Pizza Hut')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (74, N'Porsche')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (75, N'Prada')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (76, N'Ralph Lauren Corporation')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (77, N'SAP')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (78, N'Samsung Group')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (79, N'Shell Oil Company')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (80, N'Siemens AG')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (81, N'Smirnoff')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (82, N'Sony')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (83, N'Sprite')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (84, N'Starbucks')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (85, N'Tesco Corporation')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (86, N'The Walt Disney Company')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (87, N'Tiffany & Co.')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (88, N'Toyota Motor Corporation')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (89, N'United Parcel Service')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (90, N'VISA')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (91, N'Verizon Communications')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (92, N'Vodafone')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (93, N'Volkswagen Group')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (94, N'Wal-Mart')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (95, N'Wells Fargo')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (96, N'Xerox')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (97, N'Yahoo!')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (98, N'Zara')
INSERT [dbo].[Company] ([ID], [CompanyName]) VALUES (99, N'eBay')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (1, N'Hopkins', N'Alonso', N'Caleb', N'2303 160716', N'452 Cobblestone St.', N'', 31, 109, N'+7(970)383-8933', N'skippy@icloud.com', N'001-happy-18.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (2, N'Sellers', N'Kaydence', N'Susannah', N'5563 160745', N'Hyattsville, MD 20782', N'', 23, 45, N'+7(867)708-4447', N'isotopian@sbcglobal.net', N'002-cool-5.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (3, N'Bray', N'Finnegan', N'Brighton', N'3719 717453', N'9648 Philmont Lane', N'', 36, 17, N'+7(221)428-7850', N'isaacson@att.net', N'003-happy-17.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (4, N'Arias', N'Gideon', N'Varian', N'5810 721066', N'Hanover Park, IL 60133', N'', 24, 70, N'+7(786)274-7872', N'mugwump@mac.com', N'004-surprised-9.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (5, N'Schultz', N'Case', N'Aiden', N'2208 937197', N'8438 North Fairground Court', N'', 47, 39, N'+7(365)752-6445', N'mcmillan@optonline.net', N'005-shocked-4.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (6, N'Alvarado', N'Pierre', N'Harriet', N'7184 275223', N'Woodstock, GA 30188', N'', 77, 29, N'+7(446)639-6043', N'dinther@hotmail.com', N'006-shocked-3.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (7, N'Bell', N'Esteban', N'Cameron', N'9563 574791', N'148 Catherine Dr.', N'', 81, 19, N'+7(555)444-8316', N'pizza@yahoo.com', N'007-nervous-2.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (8, N'Anderson', N'Spencer', N'Meaghan', N'9008 379623', N'Lithonia, GA 30038', N'', 88, 44, N'+7(392)682-4442', N'murty@outlook.com', N'008-nervous-1.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (9, N'Sweeney', N'Seth', N'Jax', N'3810 530169', N'708 6th Drive', N'', 19, 107, N'+7(836)429-0386', N'aegreene@me.com', N'009-angry-6.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (10, N'Mason', N'Lincoln', N'Emeline', N'5387 689700', N'Egg Harbor Township, NJ 08234', N'', 10, 65, N'+7(283)945-3092', N'jnolan@aol.com', N'010-drool.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (11, N'Curtis', N'Lindsay', N'Syllable', N'1152 481271', N'8992 Union Rd.', N'', 15, 114, N'+7(621)359-3669', N'msherr@optonline.net', N'011-tired-2.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (12, N'Daugherty', N'Noah', N'Thomas', N'2924 764363', N'Villa Park, IL 60181', N'', 43, 11, N'+7(440)561-0314', N'ranasta@icloud.com', N'012-tongue-7.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (13, N'Sellers', N'Darien', N'Nadeen', N'5110 869140', N'12 Windsor St.', N'', 20, 86, N'+7(331)918-2434', N'punkis@hotmail.com', N'013-tongue-6.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (14, N'Schneider', N'Jaylene', N'Xavier', N'6948 84332', N'Waynesboro, PA 17268', N'', 63, 85, N'+7(944)627-0176', N'pereinar@yahoo.com', N'014-tongue-5.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (15, N'Schmitt', N'Leonard', N'Vincent', N'7045 366325', N'549 Lake View Dr.', N'', 45, 93, N'+7(621)405-7195', N'tskirvin@mac.com', N'015-smile-1.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (16, N'Richardson', N'Maya', N'Heath', N'7100 947091', N'Garland, TX 75043', N'', 82, 92, N'+7(837)639-1067', N'kewley@sbcglobal.net', N'016-sleeping-1.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (17, N'Delacruz', N'Thalia', N'Caprice', N'9169 340517', N'314 N. Gulf Lane', N'', 85, 14, N'+7(769)610-7084', N'ehood@icloud.com', N'017-nervous.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (18, N'Baird', N'Maci', N'Dustin', N'3097 188032', N'Hollywood, FL 33020', N'', 59, 42, N'+7(308)686-7622', N'ilial@aol.com', N'018-surprised-8.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (19, N'Stephenson', N'Ace', N'Amity', N'7796 170860', N'3 Cooper Street', N'', 57, 99, N'+7(319)872-3287', N'elmer@comcast.net', N'019-tongue-4.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (20, N'Castro', N'Robert', N'Isaiah', N'5001 550223', N'Coventry, RI 02816', N'', 90, 64, N'+7(341)620-5356', N'scarolan@live.com', N'020-happy-16.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (21, N'Stark', N'Efrain', N'Jared', N'4204 741281', N'53 E. Marvon St.', N'', 98, 77, N'+7(266)561-7456', N'bwcarty@yahoo.com', N'021-wink-1.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (22, N'Montgomery', N'Katelynn', N'Drake', N'1209 731500', N'Jamaica Plain, MA 02130', N'', 61, 100, N'+7(408)673-0059', N'facet@outlook.com', N'022-laughing-2.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (23, N'Freeman', N'Sammy', N'Lane', N'1085 749551', N'15 Indian Summer St.', N'', 60, 61, N'+7(906)825-5704', N'metzzo@att.net', N'023-laughing-1.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (24, N'Stokes', N'Jamal', N'Rayleen', N'7125 277444', N'Canton, GA 30114', N'', 9, 4, N'+7(866)732-4338', N'slaff@aol.com', N'024-sweat-1.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (25, N'Bell', N'Lilliana', N'Quintin', N'4858 465200', N'1 Rockville Ave.', N'', 99, 49, N'+7(744)876-9856', N'caidaperl@mac.com', N'025-happy-15.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (26, N'Ali', N'Jaidyn', N'Kaitlin', N'9255 131955', N'Piedmont, SC 29673', N'', 76, 7, N'+7(872)230-3310', N'jigsaw@verizon.net', N'026-happy-14.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (27, N'Nixon', N'Solomon', N'Jolee', N'3965 425455', N'154 Galvin Ave.', N'', 94, 79, N'+7(572)467-2895', N'hoyer@optonline.net', N'027-laughing.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (28, N'Mcdowell', N'Isaias', N'Kalan', N'4368 409875', N'Savannah, GA 31404', N'', 71, 52, N'+7(451)768-6075', N'danneng@msn.com', N'028-happy-13.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (29, N'Dean', N'Neveah', N'Evony', N'9283 299023', N'56 Annadale Dr.', N'', 65, 13, N'+7(555)802-6671', N'burniske@outlook.com', N'029-happy-12.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (30, N'Waters', N'Koen', N'Abraham', N'4065 664366', N'Lititz, PA 17543', N'', 67, 3, N'+7(833)460-5788', N'jipsen@sbcglobal.net', N'030-crying-8.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (31, N'Odom', N'Cale', N'Ann', N'4877 252066', N'7285 Locust Drive', N'', 55, 22, N'+7(234)895-8976', N'agapow@hotmail.com', N'031-crying-7.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (32, N'Ruiz', N'Layton', N'Aryn', N'8656 317830', N'Jackson Heights, NY 11372', N'', 18, 26, N'+7(682)469-8567', N'mobileip@icloud.com', N'032-bored.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (33, N'Patrick', N'Monserrat', N'Coralie', N'1583 513755', N'935 West Ave.', N'', 64, 55, N'+7(682)555-7940', N'mglee@yahoo.com', N'033-cool-4.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (34, N'Hardin', N'Kamden', N'Ray', N'2179 517256', N'Columbus, GA 31904', N'', 5, 105, N'+7(575)985-7625', N'animats@yahoo.ca', N'034-angry-5.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (35, N'Neal', N'Janiya', N'Irene', N'5244 495362', N'720 Summerhouse Street', N'', 28, 51, N'+7(313)507-8540', N'drewf@me.com', N'035-sad-14.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (36, N'Winters', N'Cornelius', N'James', N'9584 586486', N'Maryville, TN 37803', N'', 52, 8, N'+7(608)783-0267', N'slanglois@msn.com', N'036-angry-4.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (37, N'Love', N'Kaden', N'Neil', N'1850 453434', N'139 N. Grand St.', N'', 87, 128, N'+7(688)656-7203', N'notaprguy@verizon.net', N'037-happy-11.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (38, N'Mills', N'Finley', N'Ace', N'4286 976952', N'Irwin, PA 15642', N'', 1, 18, N'+7(530)402-7915', N'yruan@sbcglobal.net', N'038-angry-3.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (39, N'Henry', N'Markus', N'Edward', N'2767 784535', N'400 Amerige St.', N'', 79, 16, N'+7(262)635-2834', N'bmorrow@me.com', N'039-cyclops-1.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (40, N'Singleton', N'Romeo', N'Preston', N'7677 990002', N'Evans, GA 30809', N'', 4, 106, N'+7(487)957-3536', N'adillon@verizon.net', N'040-surprised-7.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (41, N'Glenn', N'Ethen', N'Kate', N'6342 37367', N'225 Iroquois St.', N'', 44, 82, N'+7(918)285-4740', N'kimvette@me.com', N'041-thinking-2.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (42, N'Gordon', N'Abbey', N'Berlynn', N'8909 475995', N'Vienna, VA 22180', N'', 68, 48, N'+7(412)706-8937', N'emcleod@outlook.com', N'042-book.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (43, N'Vasquez', N'Presley', N'Sheridan', N'9144 720543', N'44 Ocean Ave.', N'', 83, 20, N'+7(454)353-8089', N'stomv@aol.com', N'043-baby-boy.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (44, N'Levine', N'Alexis', N'Juan', N'6021 143882', N'Long Beach, NY 11561', N'', 96, 102, N'+7(623)716-7237', N'msusa@comcast.net', N'044-dead-1.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (45, N'Miles', N'Steve', N'Lydon', N'4607 499410', N'192 West Foster St.', N'', 78, 73, N'+7(594)615-8545', N'dougj@yahoo.com', N'045-star.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (46, N'Cuevas', N'Kayley', N'Tyson', N'4676 263545', N'Long Branch, NJ 07740', N'', 32, 59, N'+7(647)885-2301', N'jlbaumga@gmail.com', N'046-dubious.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (47, N'Hebert', N'Annabelle', N'Annora', N'6571 27113', N'43 SE. Cross Court', N'', 54, 24, N'+7(822)693-3953', N'temmink@mac.com', N'047-phone-call.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (48, N'Casey', N'Carolina', N'Timothy', N'2307 511412', N'Centereach, NY 11720', N'', 8, 113, N'+7(887)236-8493', N'nighthawk@msn.com', N'048-moon.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (49, N'Roach', N'Beckham', N'Elias', N'4756 956293', N'946 Yukon Lane', N'', 91, 12, N'+7(531)597-0196', N'qmacro@outlook.com', N'049-robot.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (50, N'Pugh', N'Seamus', N'Jackson', N'4693 133588', N'Winter Springs, FL 32708', N'', 25, 122, N'+7(506)774-1574', N'stewwy@att.net', N'050-flower.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (51, N'Calderon', N'Imani', N'Sullivan', N'7598 90859', N'330 Poplar Lane', N'', 95, 15, N'+7(639)813-8035', N'blixem@msn.com', N'051-happy-10.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (52, N'Roach', N'Marisol', N'Dezi', N'2416 240325', N'Titusville, FL 32780', N'', 97, 108, N'+7(883)455-5204', N'mccurley@optonline.net', N'052-happy-9.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (53, N'Jacobson', N'Kane', N'Emerson', N'3896 957754', N'626 Leatherwood St.', N'', 74, 121, N'+7(833)914-4764', N'jacks@mac.com', N'053-tired-1.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (54, N'Higgins', N'Anya', N'Erin', N'6573 581276', N'Lynn, MA 01902', N'', 62, 126, N'+7(810)945-3933', N'nwiger@att.net', N'054-ugly-3.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (55, N'Richard', N'Branson', N'Linnea', N'2225 886655', N'9971 N. Rockville Avenue', N'', 42, 83, N'+7(995)610-9002', N'muadip@me.com', N'055-tongue-3.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (56, N'Mathis', N'Kyle', N'Raine', N'8966 340666', N'Duluth, GA 30096', N'', 41, 117, N'+7(394)581-3937', N'gavinls@yahoo.com', N'056-vampire.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (57, N'Cross', N'Jamiya', N'Trevor', N'1754 958143', N'9542 Sutor Drive', N'', 13, 90, N'+7(732)375-2363', N'nicktrig@me.com', N'057-music-1.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (58, N'Keller', N'Selah', N'Merle', N'4434 406702', N'Phoenixville, PA 19460', N'', 26, 33, N'+7(587)444-2070', N'lbecchi@me.com', N'058-popcorn.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (59, N'Watson', N'Larry', N'Blayne', N'4859 211563', N'299 E. George St.', N'', 93, 6, N'+7(845)438-1802', N'willg@att.net', N'059-nurse.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (60, N'Shea', N'Braeden', N'Abe', N'5348 104186', N'Westport, CT 06880', N'', 70, 67, N'+7(320)478-3865', N'rnelson@yahoo.com', N'060-sad-13.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (61, N'Woodard', N'Allisson', N'Joan', N'9216 132859', N'7671 Tunnel Street', N'', 14, 30, N'+7(486)828-8733', N'roesch@aol.com', N'061-graduated-1.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (62, N'Garner', N'Amy', N'Tanner', N'6127 199319', N'Fair Lawn, NJ 07410', N'', 46, 10, N'+7(497)215-8724', N'pthomsen@verizon.net', N'062-happy-8.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (63, N'Choi', N'Saniyah', N'Debree', N'1102 719495', N'41 Harvard Drive', N'', 27, 66, N'+7(399)887-3591', N'itstatus@yahoo.ca', N'063-hungry.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (64, N'Simmons', N'Reagan', N'Sharon', N'2020 814747', N'Windsor, CT 06095', N'', 89, 21, N'+7(205)278-4756', N'marcs@verizon.net', N'064-police.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (65, N'Robertson', N'Coby', N'Juliet', N'4083 683928', N'7219 Prospect Drive', N'', 3, 110, N'+7(260)814-7458', N'tellis@yahoo.ca', N'065-crying-6.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (66, N'Haney', N'Dakota', N'Marguerite', N'1270 718764', N'Rolla, MO 65401', N'', 80, 76, N'+7(302)844-3480', N'scotfl@att.net', N'066-happy-7.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (67, N'Rivas', N'Malia', N'Louis', N'3871 532007', N'697 Cypress Lane', N'', 22, 127, N'+7(449)380-7477', N'jramio@optonline.net', N'067-sun.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (68, N'Green', N'Lily', N'Lynn', N'9827 633690', N'Arlington Heights, IL 60004', N'', 6, 5, N'+7(280)214-8022', N'mastinfo@gmail.com', N'068-father-2.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (69, N'Nielsen', N'Reilly', N'Marcella', N'9350 821275', N'7762 North County St.', N'', 2, 1, N'+7(967)763-6475', N'ateniese@outlook.com', N'069-happy-6.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (70, N'Brooks', N'Ryleigh', N'Leonie', N'2681 769203', N'Holly Springs, NC 27540', N'', 84, 111, N'+7(625)810-5235', N'ismail@hotmail.com', N'070-late.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (71, N'Ewing', N'Brendan', N'Adele', N'4152 160995', N'7773 Ridge Dr.', N'', 75, 25, N'+7(975)483-5566', N'oechslin@optonline.net', N'071-heart.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (72, N'Kirk', N'Cheyenne', N'Julian', N'4306 595389', N'New Haven, CT 06511', N'', 29, 58, N'+7(718)850-2518', N'jugalator@att.net', N'072-sick-3.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (73, N'Rojas', N'Jacoby', N'Rose', N'9367 402446', N'551 Spruce St.', N'', 51, 23, N'+7(550)645-2520', N'subir@verizon.net', N'073-sad-12.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (74, N'Cummings', N'Keshawn', N'Paul', N'4536 115339', N'Mount Holly, NJ 08060', N'', 21, 36, N'+7(551)270-4620', N'bryam@verizon.net', N'074-in-love-10.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (75, N'Crawford', N'Mohammed', N'Amelia', N'8478 213639', N'116 Woodside St.', N'', 40, 56, N'+7(489)444-3438', N'jpflip@optonline.net', N'075-shocked-2.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (76, N'Bryan', N'Nancy', N'Devon', N'1871 347268', N'Bridgewater, NJ 08807', N'', 92, 68, N'+7(401)862-1637', N'mgemmons@comcast.net', N'076-happy-5.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (77, N'Lynn', N'Maxwell', N'Ellory', N'1567 431190', N'9817 Manor St.', N'', 39, 103, N'+7(507)625-4900', N'csilvers@icloud.com', N'077-shocked-1.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (78, N'Khan', N'Zack', N'Gabriel', N'9952 372202', N'West Des Moines, IA 50265', N'', 38, 31, N'+7(458)566-0054', N'karasik@msn.com', N'078-cool-3.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (79, N'Walls', N'Selina', N'Ashten', N'8168 514525', N'9 Prince Street', N'', 69, 53, N'+7(979)346-6593', N'wetter@yahoo.ca', N'079-crying-5.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (80, N'Garner', N'Jerry', N'Everett', N'8239 393741', N'Brookline, MA 02446', N'', 17, 115, N'+7(320)547-9952', N'thassine@me.com', N'080-zombie.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (81, N'Carroll', N'Kaila', N'Grey', N'2909 822374', N'549 Marvon St.', N'', 49, 40, N'+7(429)809-1931', N'sassen@msn.com', N'081-pain.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (82, N'Conway', N'Sean', N'Garrison', N'5367 598823', N'Dundalk, MD 21222', N'', 30, 129, N'+7(464)285-9954', N'jandrese@yahoo.ca', N'082-cyclops.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (83, N'Cantu', N'Makaila', N'Fernando', N'5298 472573', N'1 Theatre Drive', N'', 11, 71, N'+7(748)461-4491', N'tmccarth@live.com', N'083-sweat.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (84, N'Mccall', N'Jacquelyn', N'Sherleen', N'3605 373737', N'Lumberton, NC 28358', N'', 86, 46, N'+7(578)935-1637', N'gtewari@icloud.com', N'084-thief.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (85, N'Swanson', N'Milton', N'Chase', N'8146 691253', N'673 Hamilton Road', N'', 7, 89, N'+7(927)652-4631', N'hampton@yahoo.com', N'085-sad-11.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (86, N'Lynn', N'Rodolfo', N'Zion', N'7932 623470', N'Farmingdale, NY 11735', N'', 16, 96, N'+7(595)615-6057', N'jesse@me.com', N'086-kiss-4.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (87, N'Walls', N'Paula', N'Breean', N'7817 774559', N'9662 Bay Ave.', N'', 73, 32, N'+7(751)240-3137', N'jugalator@me.com', N'087-father-1.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (88, N'Olson', N'Adison', N'Henry', N'4402 114286', N'Hamburg, NY 14075', N'', 34, 91, N'+7(626)974-2035', N'bhima@sbcglobal.net', N'088-father.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (89, N'Haynes', N'Jacob', N'Marcellus', N'2794 857949', N'8604 Fairfield Ave.', N'', 37, 125, N'+7(201)979-1451', N'gommix@comcast.net', N'089-angel-1.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (90, N'Roberts', N'Corinne', N'Suzan', N'7429 823005', N'Wisconsin Rapids, WI 54494', N'', 72, 81, N'+7(493)219-3942', N'symbolic@verizon.net', N'090-happy-4.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (91, N'Ewing', N'Aimee', N'Lane', N'6306 285690', N'56 Vale St.', N'', 12, 38, N'+7(407)485-5030', N'bruck@outlook.com', N'091-sad-10.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (92, N'Cordova', N'Alejandro', N'Hollyn', N'9370 315564', N'Mount Juliet, TN 37122', N'', 66, 57, N'+7(919)478-2497', N'jeteve@optonline.net', N'092-outrage-1.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (93, N'Haynes', N'Byron', N'Bram', N'1685 42988', N'9523 Linda Lane', N'', 48, 75, N'+7(482)802-9580', N'jsnover@comcast.net', N'093-ugly-2.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (94, N'Keith', N'Genevieve', N'David', N'5467 865823', N'Tullahoma, TN 37388', N'', 35, 41, N'+7(455)944-6449', N'hakim@comcast.net', N'094-ugly-1.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (95, N'Obrien', N'Dane', N'Shane', N'9596 712362', N'3 Ashley Ave.', N'', 50, 120, N'+7(710)388-2563', N'dexter@sbcglobal.net', N'095-scared.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (96, N'Church', N'Nayeli', N'Kent', N'9527 410913', N'Ann Arbor, MI 48103', N'', 56, 101, N'+7(759)452-3846', N'jlbaumga@hotmail.com', N'096-tongue-2.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (97, N'Jimenez', N'Ashtyn', N'Rhett', N'6760 404116', N'9851 East Prince Street', N'', 33, 27, N'+7(687)801-1332', N'djupedal@hotmail.com', N'097-sad-9.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (98, N'Wilkerson', N'Kimberly', N'Carelyn', N'9484 965470', N'Dothan, AL 36301', N'', 58, 98, N'+7(691)336-3494', N'daveewart@verizon.net', N'098-nerd-9.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (99, N'Curtis', N'Tripp', N'Apollo', N'6426 682782', N'8329 North Greenview St.', N'', 53, 35, N'+7(493)274-3888', N'msherr@sbcglobal.net', N'099-greed-2.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (100, N'Zavala', N'Eleanor', N'George', N'3709 656706', N'Hartford, CT 06106', N'', 31, 123, N'+7(983)470-4528', N'crusader@sbcglobal.net', N'100-whistle.png', N'')
GO
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (101, N'Thomas', N'Harper', N'Jae', N'4948 205524', N'215 Purple Finch Lane', N'', 23, 84, N'+7(436)951-8996', N'mdielmann@sbcglobal.net', N'101-nerd-8.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (102, N'Stephenson', N'Maximo', N'Dex', N'8134 605243', N'Annapolis, MD 21401', N'', 36, 87, N'+7(210)889-7840', N'ovprit@me.com', N'102-muted-4.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (103, N'James', N'Kiara', N'Jeremy', N'7133 997003', N'63 53rd Ave.', N'', 24, 116, N'+7(390)499-7403', N'calin@att.net', N'103-in-love-9.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (104, N'Fuller', N'Isabella', N'Naomi', N'4021 304017', N'Hagerstown, MD 21740', N'', 47, 130, N'+7(805)721-8540', N'thowell@yahoo.ca', N'104-in-love-8.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (105, N'Garrison', N'Cynthia', N'Matilda', N'3516 398883', N'2 Greenrose Rd.', N'', 77, 80, N'+7(578)220-5882', N'mpiotr@yahoo.com', N'105-kiss-3.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (106, N'Flowers', N'Donte', N'Brock', N'8533 684076', N'Maspeth, NY 11378', N'', 81, 37, N'+7(415)631-8358', N'bester@gmail.com', N'106-in-love-7.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (107, N'Rivera', N'Asia', N'Carmden', N'1618 439727', N'298 N. Hudson Court', N'', 88, 2, N'+7(900)903-0657', N'imightb@gmail.com', N'107-ugly.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (108, N'Hahn', N'Trace', N'Clelia', N'2835 991998', N'Howell, NJ 07731', N'', 19, 118, N'+7(879)442-6528', N'jschauma@icloud.com', N'108-nerd-7.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (109, N'Farley', N'Mohammed', N'Levi', N'7748 504230', N'3 Peg Shop St.', N'', 10, 34, N'+7(649)374-4690', N'syrinx@gmail.com', N'109-nerd-6.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (110, N'Velez', N'Nicholas', N'Dawn', N'4853 175687', N'Bayonne, NJ 07002', N'', 15, 112, N'+7(487)871-5975', N'konit@aol.com', N'110-crying-4.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (111, N'Curtis', N'Jamir', N'Tavian', N'3983 947212', N'648 Hill Field St.', N'', 43, 69, N'+7(503)572-6773', N'wonderkid@hotmail.com', N'111-muted-3.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (112, N'Rose', N'Cyrus', N'Jacklyn', N'7435 360206', N'South Richmond Hill, NY 11419', N'', 20, 124, N'+7(709)756-6389', N'pjacklam@verizon.net', N'112-nerd-5.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (113, N'Torres', N'Dakota', N'Cash', N'4559 179023', N'477 Oakland Street', N'', 63, 63, N'+7(931)652-7478', N'tokuhirom@live.com', N'113-kiss-2.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (114, N'Valencia', N'Matias', N'Reagan', N'2102 137023', N'Lynnwood, WA 98037', N'', 45, 54, N'+7(524)449-7554', N'adillon@comcast.net', N'114-greed-1.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (115, N'Harding', N'Rocco', N'Gwendolen', N'2018 304278', N'4 Division Lane', N'', 82, 74, N'+7(347)807-8932', N'bcevc@yahoo.ca', N'115-pirate-1.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (116, N'Clark', N'Maya', N'Evelyn', N'4625 441301', N'Champlin, MN 55316', N'', 85, 62, N'+7(675)694-8839', N'crobles@me.com', N'116-music.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (117, N'Bryan', N'Hays', N'Wade', N'8451 370682', N'8021 Shadow Brook Dr.', N'', 59, 50, N'+7(779)966-8126', N'tjensen@verizon.net', N'117-confused-2.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (118, N'Jessie', N'Nelson', N'Jack', N'7035 527026', N'Lancaster, NY 14086', N'', 57, 60, N'+7(791)357-4942', N'gozer@icloud.com', N'118-nerd-4.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (119, N'Joy', N'Franklin', N'Warren', N'2846 798890', N'7073 Hall Avenue', N'', 90, 88, N'+7(292)662-7836', N'brbarret@yahoo.ca', N'119-greed.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (120, N'Carlie', N'Lang', N'Rebecca', N'9368 90494', N'West Babylon, NY 11704', N'', 98, 9, N'+7(952)374-4396', N'mcnihil@me.com', N'120-nerd-3.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (121, N'Issac', N'Hurley', N'Blanche', N'7906 721186', N'985B Winding Way Dr.', N'', 61, 104, N'+7(758)849-9991', N'damian@yahoo.com', N'121-crying-3.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (122, N'Ariel', N'Sims', N'Bailey', N'9254 479522', N'South Windsor, CT 06074', N'', 60, 28, N'+7(534)687-2128', N'neonatus@aol.com', N'122-cheering.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (123, N'Braedon', N'Delgado', N'Oliver', N'3627 384983', N'570 Old Bayberry Street', N'', 9, 94, N'+7(642)548-4829', N'tellis@icloud.com', N'123-surprised-6.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (124, N'Christian', N'Suarez', N'Lee', N'5989 222522', N'Billerica, MA 01821', N'', 99, 78, N'+7(980)531-5346', N'frode@live.com', N'124-muted-2.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (125, N'Lilah', N'Marks', N'Anthony', N'3584 358162', N'9122 South Addison St.', N'', 76, 43, N'+7(628)326-1104', N'sjava@aol.com', N'125-sick-2.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (126, N'Jeffrey', N'Rowland', N'Gillian', N'4406 46042', N'East Lansing, MI 48823', N'', 94, 95, N'+7(669)335-7511', N'harryh@live.com', N'126-graduated.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (127, N'Hannah', N'Jordan', N'Verena', N'5511 931653', N'14 West Fifth St.', N'', 71, 97, N'+7(399)344-8840', N'elflord@me.com', N'127-angry-2.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (128, N'Peyton', N'Hinton', N'Benjamin', N'8020 284910', N'Skokie, IL 60076', N'', 65, 72, N'+7(643)676-5328', N'ramollin@mac.com', N'128-in-love-6.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (129, N'Clayton', N'Forbes', N'Zachary', N'8660 236405', N'7267 W. Roehampton St.', N'', 67, 119, N'+7(535)983-7587', N'kronvold@mac.com', N'129-cool-2.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (130, N'Salvatore', N'Cabrera', N'Krystan', N'7218 277801', N'Harrisonburg, VA 22801', N'', 55, 47, N'+7(310)925-8844', N'louise@aol.com', N'130-confused-1.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (131, N'Andre', N'Taylor', N'Felix', N'4813 710684', N'82 Oak Meadow Dr.', N'', 18, 109, N'+7(457)847-6033', N'nanop@verizon.net', N'131-sad-8.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (132, N'Kadin', N'Mcclain', N'Riley', N'8704 683064', N'Cambridge, MA 02138', N'', 64, 45, N'+7(330)730-7648', N'gtewari@sbcglobal.net', N'132-nerd-2.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (133, N'Jaida', N'Nichols', N'Lucinda', N'9908 341967', N'864 Highland Drive', N'', 5, 17, N'+7(619)883-4911', N'ylchang@mac.com', N'133-birthday-boy.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (134, N'Reid', N'Church', N'Candice', N'6752 159699', N'Alliance, OH 44601', N'', 28, 70, N'+7(482)744-7133', N'gommix@yahoo.com', N'134-surprised-5.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (135, N'Karley', N'Harrington', N'Kathryn', N'8059 911426', N'9465 St Paul Avenue', N'', 52, 39, N'+7(369)537-4704', N'uncle@sbcglobal.net', N'135-selfie.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (136, N'Beau', N'Rivers', N'Lillian', N'8452 55461', N'Massillon, OH 44646', N'', 87, 29, N'+7(540)239-8104', N'smcnabb@live.com', N'136-tongue-1.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (137, N'Riley', N'Bentley', N'Hugh', N'4452 331700', N'7651 South La Sierra Dr.', N'', 1, 19, N'+7(863)714-2111', N'shrapnull@aol.com', N'137-smart-1.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (138, N'Ellis', N'Choi', N'Julina', N'3520 765331', N'Centreville, VA 20120', N'', 79, 44, N'+7(839)694-4168', N'djpig@sbcglobal.net', N'138-smart.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (139, N'Jaylyn', N'Leon', N'Ellison', N'8629 761047', N'3 Alton Lane', N'', 4, 107, N'+7(983)868-6473', N'oechslin@hotmail.com', N'139-surprised-4.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (140, N'Drew', N'Mayer', N'Carlen', N'2381 911641', N'Glen Allen, VA 23059', N'', 44, 65, N'+7(325)574-7514', N'xnormal@verizon.net', N'140-3d-glasses.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (141, N'Ashleigh', N'Walters', N'Claude', N'3634 590673', N'9441 W. Pineknoll Drive', N'', 68, 114, N'+7(921)683-0258', N'atmarks@icloud.com', N'141-in-love-5.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (142, N'Scott', N'Dickerson', N'Arden', N'5913 725569', N'Florence, SC 29501', N'', 83, 11, N'+7(503)446-7180', N'makarow@comcast.net', N'142-sleeping.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (143, N'Kolton', N'Knight', N'Miriam', N'7702 344201', N'7070 Shady Street', N'', 96, 86, N'+7(467)243-5219', N'raides@yahoo.com', N'143-pirate.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (144, N'Izabelle', N'Boyle', N'Naveen', N'2262 625946', N'Lewiston, ME 04240', N'', 78, 85, N'+7(633)700-7724', N'hwestiii@mac.com', N'144-santa-claus.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (145, N'Haylie', N'Singleton', N'Sue', N'1646 243340', N'146 East Bank Street', N'', 32, 93, N'+7(632)874-7209', N'scitext@gmail.com', N'145-wink.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (146, N'Sariah', N'Lin', N'Olive', N'2153 460491', N'Billings, MT 59101', N'', 54, 92, N'+7(368)599-1877', N'gward@yahoo.ca', N'146-in-love-4.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (147, N'Chace', N'Spears', N'Elodie', N'3126 716773', N'8723 Cedar Swamp Drive', N'', 8, 14, N'+7(324)886-1499', N'bockelboy@outlook.com', N'147-tired.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (148, N'Liam', N'Frazier', N'Korin', N'8828 972758', N'Norman, OK 73072', N'', 91, 42, N'+7(374)356-4166', N'tubesteak@comcast.net', N'148-bang.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (149, N'Joseph', N'Stokes', N'William', N'8114 880420', N'8419 E. Harvey Drive', N'', 25, 99, N'+7(868)982-2419', N'krueger@mac.com', N'149-baby.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (150, N'Lorelei', N'Hurley', N'Coralie', N'8085 811955', N'Groton, CT 06340', N'', 95, 64, N'+7(781)785-5837', N'skaufman@optonline.net', N'150-tongue.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (151, N'Miguel', N'Leon', N'Haiden', N'1318 208906', N'179 Manchester St.', N'', 97, 77, N'+7(489)361-6374', N'tezbo@live.com', N'151-sick-1.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (152, N'Melina', N'Hamilton', N'Isaac', N'3115 642377', N'Chelmsford, MA 01824', N'', 74, 100, N'+7(872)856-7001', N'crowl@icloud.com', N'152-outrage.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (153, N'Serena', N'Duke', N'Arthur', N'5150 553212', N'70 Cambridge Ave.', N'', 62, 61, N'+7(812)814-4854', N'plover@hotmail.com', N'153-injury.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (154, N'Kristen', N'Dillon', N'Kylie', N'4169 626192', N'Durham, NC 27703', N'', 42, 4, N'+7(803)510-4214', N'calin@aol.com', N'154-dead.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (155, N'Saniyah', N'Hawkins', N'Josiah', N'7466 33192', N'566 S. Cherry Street', N'', 41, 49, N'+7(869)369-9524', N'timtroyr@live.com', N'155-rich-1.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (156, N'Thalia', N'Leach', N'Nicolas', N'2646 768816', N'Forney, TX 75126', N'', 13, 7, N'+7(464)585-3155', N'keutzer@yahoo.com', N'156-sick.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (157, N'Irene', N'Caldwell', N'Noah', N'5732 336554', N'83 NE. Hill Dr.', N'', 26, 79, N'+7(703)958-7186', N'thurston@outlook.com', N'157-angel.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (158, N'Nikhil', N'Bowen', N'Glenn', N'5254 555116', N'Norwood, MA 02062', N'', 93, 52, N'+7(515)615-0912', N'mbalazin@att.net', N'158-nerd-1.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (159, N'Jolie', N'Charles', N'Matteo', N'3285 403999', N'556 Summerhouse Street', N'', 70, 13, N'+7(854)941-5210', N'dkasak@gmail.com', N'159-crying-2.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (160, N'Xavier', N'Baxter', N'Joseph', N'1373 588622', N'Nottingham, MD 21236', N'', 14, 3, N'+7(380)573-4186', N'esbeck@comcast.net', N'160-crying-1.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (161, N'Lukas', N'Dean', N'Ellice', N'1890 691040', N'9750 Hawthorne Ave.', N'', 46, 22, N'+7(297)369-0265', N'novanet@aol.com', N'161-muted-1.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (162, N'Athena', N'King', N'Lilibeth', N'3307 217825', N'Muskogee, OK 74403', N'', 27, 26, N'+7(671)293-5634', N'mhouston@me.com', N'162-surprised-3.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (163, N'Adan', N'Noble', N'Bree', N'3286 297169', N'97 Elmwood Street', N'', 89, 55, N'+7(305)214-6934', N'bahwi@yahoo.com', N'163-crying.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (164, N'Kiley', N'Pham', N'Madeleine', N'2401 289619', N'Seymour, IN 47274', N'', 3, 105, N'+7(812)919-9643', N'chrisj@outlook.com', N'164-sad-7.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (165, N'Steven', N'Johnston', N'Kai', N'8507 252786', N'308 Studebaker Drive', N'', 80, 51, N'+7(754)769-3349', N'louise@gmail.com', N'165-cool-1.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (166, N'Ayana', N'Hart', N'Dash', N'9342 187671', N'Algonquin, IL 60102', N'', 22, 8, N'+7(206)323-2722', N'qrczak@me.com', N'166-happy-3.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (167, N'Aileen', N'Copeland', N'Seth', N'1067 401389', N'15 Marsh St.', N'', 6, 128, N'+7(273)495-7160', N'arachne@hotmail.com', N'167-thinking-1.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (168, N'Emery', N'Pitts', N'Eli', N'2273 445653', N'Garden City, NY 11530', N'', 2, 18, N'+7(463)932-3808', N'mfburgo@icloud.com', N'168-muted.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (169, N'Vicente', N'Chavez', N'Bernice', N'6403 754163', N'8614 Charles Street', N'', 84, 16, N'+7(551)789-0645', N'karasik@att.net', N'169-confused.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (170, N'Cherish', N'Monroe', N'Vanessa', N'3912 930948', N'Wake Forest, NC 27587', N'', 75, 106, N'+7(574)759-7866', N'hauma@icloud.com', N'170-happy-2.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (171, N'Karley', N'Petersen', N'Rory', N'4008 604291', N'57 Gulf Avenue', N'', 29, 82, N'+7(852)802-5653', N'scitext@me.com', N'171-thinking.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (172, N'Alondra', N'Le', N'Clark', N'3059 930219', N'South Lyon, MI 48178', N'', 51, 48, N'+7(342)453-0606', N'matthijs@live.com', N'172-nerd.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (173, N'Dorian', N'Bird', N'Judd', N'5208 664172', N'694 Linden St.', N'', 21, 20, N'+7(434)574-4540', N'bryam@icloud.com', N'173-in-love-3.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (174, N'Karley', N'Goodwin', N'Noel', N'6338 777372', N'Missoula, MT 59801', N'', 40, 102, N'+7(425)783-2253', N'tellis@att.net', N'174-hypnotized.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (175, N'Killian', N'Davidson', N'Janetta', N'8029 73589', N'8440 Lyme St.', N'', 92, 73, N'+7(889)449-4391', N'makarow@verizon.net', N'175-cool.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (176, N'Ava', N'Melton', N'Annabel', N'1788 509266', N'Zeeland, MI 49464', N'', 39, 59, N'+7(825)301-8250', N'citadel@msn.com', N'176-shocked.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (177, N'Adam', N'Horton', N'Blake', N'2735 502335', N'7632 Oakwood Rd.', N'', 38, 24, N'+7(397)334-2086', N'jaxweb@me.com', N'177-easter.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (178, N'Jaydin', N'Singh', N'Jordon', N'7540 934686', N'Pembroke Pines, FL 33028', N'', 69, 113, N'+7(241)570-3040', N'mcsporran@aol.com', N'178-surprised-2.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (179, N'Lexie', N'Mckinney', N'Charles', N'9803 515191', N'881 Temple St.', N'', 17, 12, N'+7(713)462-8265', N'tubesteak@mac.com', N'179-surprised-1.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (180, N'Niko', N'Calderon', N'Troy', N'7220 353462', N'South El Monte, CA 91733', N'', 49, 122, N'+7(854)822-2331', N'kludge@verizon.net', N'180-surprised.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (181, N'Terrence', N'Acevedo', N'Viola', N'9575 262338', N'9591 Honey Creek St.', N'', 30, 15, N'+7(439)713-6117', N'lahvak@hotmail.com', N'181-furious.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (182, N'Madisyn', N'May', N'Byron', N'7751 986773', N'Webster, NY 14580', N'', 11, 108, N'+7(230)906-8815', N'raides@sbcglobal.net', N'182-sad-6.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (183, N'Jadon', N'Ponce', N'Doran', N'9853 763831', N'7018 Pilgrim Street', N'', 86, 121, N'+7(598)895-2899', N'gfxguy@aol.com', N'183-sad-5.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (184, N'Jaylen', N'Thornton', N'Tobias', N'2868 392150', N'Bismarck, ND 58501', N'', 7, 126, N'+7(429)678-1872', N'krueger@msn.com', N'184-sad-4.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (185, N'Brendan', N'Kelly', N'Damien', N'7019 883500', N'697 Westminster St.', N'', 16, 83, N'+7(276)750-1655', N'shang@yahoo.ca', N'185-sad-3.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (186, N'Helena', N'Houston', N'Murphy', N'1529 516117', N'Harleysville, PA 19438', N'', 73, 117, N'+7(805)953-2020', N'kalpol@comcast.net', N'186-angry-1.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (187, N'Moon', N'Madalyn', N'Carleen', N'7513 42100', N'959 Birchpond St.', N'', 34, 90, N'+7(611)670-2147', N'kildjean@msn.com', N'187-rich.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (188, N'Johns', N'Marcelo', N'Louisa', N'5292 664723', N'Euless, TX 76039', N'', 37, 33, N'+7(242)487-7082', N'treeves@comcast.net', N'188-sad-2.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (189, N'Campos', N'Jay', N'Georgina', N'1446 216584', N'67 Pumpkin Hill Lane', N'', 72, 33, N'+7(939)641-7992', N'timtroyr@icloud.com', N'189-happy-1.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (190, N'Sullivan', N'Khalil', N'Rylie', N'6353 693874', N'Yorktown Heights, NY 10598', N'', 12, 67, N'+7(669)482-2353', N'world@att.net', N'190-sad-1.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (191, N'Merritt', N'Nikhil', N'Claudia', N'8638 615943', N'5 NE. Newcastle Drive', N'', 66, 30, N'+7(801)814-0510', N'kspiteri@icloud.com', N'191-sad.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (192, N'Melendez', N'Blaine', N'Vivian', N'5428 298274', N'Ithaca, NY 14850', N'', 48, 10, N'+7(362)338-4199', N'rtanter@att.net', N'192-smile.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (193, N'Munoz', N'Clayton', N'Caylen', N'8862 885055', N'94 Longbranch St.', N'', 35, 66, N'+7(897)655-0021', N'twoflower@mac.com', N'193-in-love-2.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (194, N'Montgomery', N'Khalil', N'Eloise', N'2574 326715', N'Mount Prospect, IL 60056', N'', 50, 21, N'+7(710)859-3522', N'howler@msn.com', N'194-happy.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (195, N'Medina', N'Bruce', N'Elein', N'7843 990305', N'566 Gulf St.', N'', 56, 110, N'+7(612)934-2623', N'yfreund@sbcglobal.net', N'195-kiss-1.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (196, N'Landry', N'Lesly', N'Gregory', N'5688 765287', N'Wantagh, NY 11793', N'', 33, 76, N'+7(896)396-9500', N'nogin@msn.com', N'196-in-love-1.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (197, N'Hartman', N'Alyson', N'Lee', N'7217 461000', N'518 Clinton Ave.', N'', 58, 127, N'+7(533)891-1018', N'onestab@live.com', N'197-in-love.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (198, N'Contreras', N'Ellen', N'Fawn', N'1559 96165', N'Encino, CA 91316', N'', 53, 5, N'+7(309)279-3798', N'lcheng@mac.com', N'198-kiss.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (199, N'Barr', N'Sofia', N'Kingston', N'3480 736537', N'370 Ashley Lane', N'', 49, 1, N'+7(483)664-9876', N'bdthomas@yahoo.com', N'199-angry.png', N'')
INSERT [dbo].[Driver] ([ID], [LastName], [FirstName], [Patronymic], [Passport], [RegistrationAddress], [ResidentialAddress], [Company], [JobName], [Phone], [Email], [Photo], [Comment]) VALUES (200, N'Wilkerson', N'Joyce', N'Payten', N'6440 241468', N'Wausau, WI 54401', N'', 30, 111, N'+7(765)461-9730', N'hoangle@optonline.net', N'200-sleepy.png', N'')
GO
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (1, 1, N'WBAKG7C54DJ746310')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (2, 2, N'JN1CV6APXCM884333')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (3, 3, N'2C4RDGCG2FR292116')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (4, 4, N'2HNYD2H46CH088623')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (5, 5, N'KNAFU5A29D5373281')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (6, 6, N'1FTMF1E84AK129978')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (7, 7, N'WBAKE5C5XCJ498380')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (8, 8, N'JTHFF2C27F2931205')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (9, 9, N'WBABW33455P972485')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (10, 10, N'5FNRL5H2XCB183642')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (11, 11, N'JTEBU4BF9DK234908')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (12, 12, N'1G6DM577280903075')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (13, 13, N'1GYFC43539R480716')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (14, 14, N'1N6AA0CJ3FN926889')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (15, 15, N'2T1BURHE6EC080516')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (16, 16, N'WBA3T7C57FP608583')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (17, 17, N'5FNYF3H48FB049614')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (18, 18, N'WVWGD7AJ7EW053317')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (19, 19, N'JM1NC2LF0E0131767')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (20, 20, N'1FTSW2A50AE633032')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (21, 21, N'2C3CCAKT5CH834724')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (22, 22, N'1FMJU1F5XAE067185')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (23, 23, N'5TFBY5F18AX095253')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (24, 24, N'WAUVC68E55A439175')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (25, 25, N'3D73M4CL0AG485600')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (26, 26, N'3D73M3CL4BG992821')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (27, 27, N'2HNYD18214H913977')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (28, 28, N'1G6DJ5E34C0750992')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (29, 29, N'3VW217AU7FM147306')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (30, 30, N'1FMJU1J56AE113733')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (31, 31, N'JN1CV6AP0CM243398')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (32, 32, N'1FTWW3B5XAE601405')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (33, 33, N'WBASN2C55AC523024')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (34, 34, N'NM0KS9BNXBT830533')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (35, 35, N'1C4RJEAG6FC571030')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (36, 36, N'WBS3R9C51FF196091')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (37, 37, N'1G4HD57238U904159')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (38, 38, N'1HGCP2E46AA778977')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (39, 39, N'WAUBGAFB1AN276966')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (40, 40, N'WAUDF48H97A496239')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (41, 41, N'5UXFG83558L839159')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (42, 42, N'1FMJK1J51AE558998')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (43, 43, N'SCFBF03B27G582917')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (44, 44, N'WAUCFAFH0AN942677')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (45, 45, N'JN8CS1MU3EM315101')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (46, 46, N'1D7RE3BK7AS869215')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (47, 47, N'5N1AA0NC5EN749211')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (48, 48, N'3D7TT2CT1BG470774')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (49, 49, N'WBA3V5C5XFP343527')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (50, 50, N'1G6DE5E5XC0016413')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (51, 51, N'1FTSF3A50AE770400')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (52, 52, N'1FTEX1CM5BK565807')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (53, 53, N'1G6AH5S31F0348385')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (54, 54, N'1N4AB7APXDN538514')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (55, 55, N'3C6LD4AT3CG450587')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (56, 56, N'3GYFNCEY2BS887540')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (57, 57, N'1GYS4FEJ9CR310756')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (58, 58, N'WAUBFCFL8CN296660')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (59, 59, N'2T1BURHE5EC940812')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (60, 60, N'WAULT58EX5A470410')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (61, 61, N'JN8AF5MR7ET518545')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (62, 62, N'WAUAC48H96K683520')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (63, 63, N'WAUHGAFC8FN632100')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (64, 64, N'WAUWFBFL6AA160138')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (65, 65, N'WAUEH48H68K095273')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (66, 66, N'WAUEH74F76N744161')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (67, 67, N'1J4RG4GK7AC818854')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (68, 68, N'KNADH4A36B6877082')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (69, 69, N'3GYFNGEY9BS444647')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (70, 70, N'WP0AB2A87FK108949')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (71, 71, N'3VWML7AJXEM569531')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (72, 72, N'WBSBR93493P275260')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (73, 73, N'1G6DP567750890960')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (74, 74, N'1FTEW1CM3DF334371')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (75, 75, N'WAUDH78E47A363910')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (76, 76, N'1C4RJEAG6CC011603')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (77, 77, N'1G6AB5SA9D0113584')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (78, 78, N'1N6BF0KM6FN922689')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (79, 79, N'WA1YL64B34N831763')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (80, 80, N'WBAUP9C58AV223509')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (81, 81, N'WAUHF98P96A724812')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (82, 82, N'1FTEX1CM1BF296018')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (83, 83, N'3LNDL2L33CR462059')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (84, 84, N'19UUA66218A797800')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (85, 85, N'ZFBCFACH5FZ996096')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (86, 86, N'4T1BF1FK2EU831999')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (87, 87, N'2G4WS55J341869989')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (88, 88, N'1G6DN57U260742856')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (89, 89, N'YV1382MW1A2097161')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (90, 90, N'WA1LMAFE9DD722859')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (91, 91, N'1FAHP3E28CL132877')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (92, 92, N'WBAUP7C52BV069773')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (93, 93, N'1ZVBP8JZ2D5191071')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (94, 94, N'3C63D2GL5CG863137')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (95, 95, N'1G6KF57952U735337')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (96, 96, N'5XYKT3A62FG416932')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (97, 97, N'WBANV1C59AC580740')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (98, 98, N'WAUFGAFC6DN013144')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (99, 99, N'3VWKX7AJ2DM808838')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (100, 100, N'1G6DJ1E37D0628461')
GO
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (101, 101, N'5FRYD4H97GB588815')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (102, 102, N'SCBDU3ZA7CC107541')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (103, 103, N'3VWF17AT3FM605285')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (104, 104, N'1LNHL9DK8EG585379')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (105, 105, N'JN8AZ2KR3DT115699')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (106, 106, N'JN1CV6FEXCM381103')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (107, 107, N'1G6DH5E5XC0462438')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (108, 108, N'TRURD38J381614210')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (109, 109, N'4T1BD1FK6FU133645')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (110, 110, N'2T1BURHE4FC565514')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (111, 111, N'5TDBW5G12FS063304')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (112, 112, N'WAULFAFR3DA033269')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (113, 113, N'1G6DK8ED9B0319764')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (114, 114, N'3VW4A7AT6DM813925')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (115, 115, N'WVWAB7AJ0CW557264')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (116, 116, N'4A31K2DF7BE138498')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (117, 117, N'JN1AZ4EH7AM509399')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (118, 118, N'2T3BFREV2EW071669')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (119, 119, N'YV1612FH2D1519917')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (120, 120, N'JH4KA96631C195497')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (121, 121, N'WBAEK13597C722490')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (122, 122, N'1GYS3HKJ9FR278172')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (123, 123, N'WAUD2AFD1EN207208')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (124, 124, N'WAULL44E35N431957')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (125, 125, N'KNAFU6A20B5806571')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (126, 126, N'SAJWA2GTXEM305896')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (127, 127, N'WAULL44E95N690503')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (128, 128, N'WAUGFAFC5DN926548')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (129, 129, N'5TDBM5G19BS020076')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (130, 130, N'3N1AB6AP7BL573385')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (131, 131, N'5XYZT3LB7FG893235')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (132, 132, N'JH4KC1F78EC530392')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (133, 133, N'2G4WE587581834383')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (134, 134, N'WAUDF48H98K345526')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (135, 135, N'WBA3G7C54EF309612')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (136, 136, N'1G6DD8E31E0169171')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (137, 137, N'YV1902FH3D1001332')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (138, 138, N'3N1CN7AP5FL866147')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (139, 139, N'YV4902NC8F1531985')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (140, 140, N'KL4CJFSB9FB654370')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (141, 141, N'JN1BV7APXFM374795')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (142, 142, N'WAUAFAFH7EN465064')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (143, 143, N'WAUVC68E33A401568')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (144, 144, N'KMHTC6AD4EU662541')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (145, 145, N'5UXFG43539L241999')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (146, 146, N'1GYS3FEJ8CR664092')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (147, 147, N'WBAKN9C51FD688174')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (148, 148, N'5NMSG3AB7AH234028')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (149, 149, N'SALAB2V67FA465605')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (150, 150, N'JN1CY0APXAM160384')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (151, 151, N'WBAUP7C58DV367411')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (152, 152, N'WAUAFAFL0FN838290')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (153, 153, N'1LNHL9EK9FG365197')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (154, 154, N'YV1672MK0D2114467')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (155, 155, N'WAUKG98E56A006286')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (156, 156, N'SAJWA4EB7EL432469')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (157, 157, N'3LNHL2GC0AR226381')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (158, 158, N'WAUVFAFH7BN873285')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (159, 159, N'SALAG2D47AA801263')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (160, 160, N'WBSWD9C57AP228332')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (161, 161, N'1FTWW3B53AE587413')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (162, 162, N'4USBU53567L936239')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (163, 163, N'1FTWF3D57AE486873')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (164, 164, N'2G4WD582261511218')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (165, 165, N'WBAGN83515D855874')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (166, 166, N'2C3CDXL97FH493561')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (167, 167, N'WAUKD78P89A662503')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (168, 168, N'JM3TB2MA6A0887683')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (169, 169, N'5TDBK3EH2BS734111')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (170, 170, N'WBABV13466J082217')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (171, 171, N'WBAPM7C57AE459062')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (172, 172, N'2FMPK3K98FB482688')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (173, 173, N'WAUKFAFL5EA281418')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (174, 174, N'WAUVT68E94A410180')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (175, 175, N'2B3CK2CV1AH775495')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (176, 176, N'1HGCR2E55EA286661')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (177, 177, N'JH4CU2F68BC631071')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (178, 178, N'2HNYB1H68DH924015')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (179, 179, N'1FTEW1E86AF818093')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (180, 180, N'3C6TD4HTXCG839880')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (181, 181, N'WVGAV7AX3BW390470')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (182, 182, N'WAUUL78E45A200167')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (183, 183, N'JTMHY7AJ9B4091499')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (184, 184, N'SAJWA0FS8FP468222')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (185, 185, N'JM1NC2LF9D0043475')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (186, 186, N'1GD422CGXEF170253')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (187, 187, N'JN1BV7APXFM590680')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (188, 188, N'JHMZF1C46CS958531')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (189, 189, N'WAUGGAFR1DA366441')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (190, 190, N'WA1WMAFE2DD971257')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (191, 191, N'WA1AV94L37D000070')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (192, 192, N'WVWAA7AJ5CW398762')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (193, 193, N'1G6AP5SX1E0768734')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (194, 194, N'WBAWV13557P451979')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (195, 195, N'1G6DA1E30E0416888')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (196, 196, N'SALFR2BG8FH292196')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (197, 197, N'TRUDD38J481844056')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (198, 198, N'WDDHH8HB5BA767975')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (199, 199, N'WA1CV74LX9D994734')
INSERT [dbo].[DriverLicenseCar] ([DriverID], [LicenseID], [CarID]) VALUES (200, 200, N'1FTSX2A58AE041570')
GO
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (1, N'Accountant')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (2, N'Actor')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (3, N'Actuary')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (4, N'Anthropologist')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (5, N'Architect')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (6, N'Art Director')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (7, N'Artist')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (8, N'Auto Mechanic')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (9, N'Automotive mechanic')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (10, N'Bookkeeping clerk')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (11, N'Budget analyst')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (12, N'Bus Driver')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (13, N'Carpenter')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (14, N'Cashier')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (15, N'Chef')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (16, N'Chemist')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (17, N'Childcare worker')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (18, N'Civil Engineer')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (19, N'Clinical Laboratory Technician')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (20, N'Coach')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (21, N'College Professor')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (22, N'Compliance Officer')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (23, N'Computer Hardware Engineer')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (24, N'Computer Programmer')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (25, N'Computer Support Specialist')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (26, N'Computer Systems Administrator')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (27, N'Computer Systems Analyst')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (28, N'Construction Manager')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (29, N'Cost Estimator')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (30, N'Court Reporter')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (31, N'Customer Service Representative')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (32, N'Dancer')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (33, N'Database administrator')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (34, N'Dental Hygienist')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (35, N'Dentist')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (36, N'Designer')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (37, N'Desktop publisher')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (38, N'Diagnostic Medical Sonographer')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (39, N'Drafter')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (40, N'Economist')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (41, N'Editor')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (42, N'Educator')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (43, N'Electrical Engineer')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (44, N'Electrician')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (45, N'Elementary School Teacher')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (46, N'Environmental scientist')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (47, N'Epidemiologist')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (48, N'Event Planner')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (49, N'Executive Assistant')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (50, N'Farmer')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (51, N'Financial Advisor')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (52, N'Firefighter')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (53, N'Fitness Trainer')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (54, N'Food Scientist')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (55, N'HR Specialist')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (56, N'Hairdresser')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (57, N'High School Teacher')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (58, N'Historian')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (59, N'Housekeeper')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (60, N'Human Resources Assistant')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (61, N'IT Manager')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (62, N'Insurance Agent')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (63, N'Interpreter & Translator')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (64, N'Janitor')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (65, N'Judge')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (66, N'Landscape Architect')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (67, N'Landscaper & Groundskeeper')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (68, N'Lawyer')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (69, N'Librarian')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (70, N'Loan Officer')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (71, N'Logistician')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (72, N'Maintenance & Repair Worker')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (73, N'Market Research Analyst')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (74, N'Marketing Manager')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (75, N'Marriage & Family Therapist')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (76, N'Mason')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (77, N'Massage Therapist')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (78, N'Mathematician')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (79, N'Mechanical Engineer')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (80, N'Medical Assistant')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (81, N'Medical Secretary')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (82, N'Microbiologist')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (83, N'Middle School Teacher')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (84, N'Musician')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (85, N'Occupational Therapist')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (86, N'Painter')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (87, N'Paralegal')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (88, N'Paramedic')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (89, N'Patrol Officer')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (90, N'Personal Care Aide')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (91, N'Pharmacist')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (92, N'Photographer')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (93, N'Physical Therapist')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (94, N'Physician')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (95, N'Physicist')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (96, N'Plumber')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (97, N'Police Officer')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (98, N'Preschool Teacher')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (99, N'Professional athlete')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (100, N'Psychologist')
GO
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (101, N'Public Relations Specialist')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (102, N'Radiologic Technologist')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (103, N'Real Estate Agent')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (104, N'Receptionist')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (105, N'Recreation & Fitness Worker')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (106, N'Recreational Therapist')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (107, N'Referee')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (108, N'Registered Nurse')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (109, N'Reporter')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (110, N'Respiratory Therapist')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (111, N'School Counselor')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (112, N'School Psychologist')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (113, N'Secretary')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (114, N'Security Guard')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (115, N'Social Worker')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (116, N'Software Developer')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (117, N'Speech-Language Pathologist')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (118, N'Sports Coach')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (119, N'Statistician')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (120, N'Substance Abuse Counselor')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (121, N'Surveyor')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (122, N'Systems Analyst')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (123, N'Teacher Assistant')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (124, N'Telemarketer')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (125, N'Truck Driver')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (126, N'Urban Planner')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (127, N'Veterinarian')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (128, N'Web Developer')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (129, N'Writer')
INSERT [dbo].[Job] ([ID], [JobName]) VALUES (130, N'Zoologist')
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (1, CAST(N'2019-01-13' AS Date), CAST(N'2027-07-03' AS Date), N'B', N'5640613073', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (2, CAST(N'2018-08-02' AS Date), CAST(N'2023-09-21' AS Date), N'B', N'7465904246', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (3, CAST(N'2018-12-31' AS Date), CAST(N'2025-01-25' AS Date), N'B, A', N'6750769897', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (4, CAST(N'2019-02-26' AS Date), CAST(N'2021-10-30' AS Date), N'B', N'4467967541', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (5, CAST(N'2019-03-12' AS Date), CAST(N'2025-06-03' AS Date), N'B', N'9360117922', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (6, CAST(N'2018-05-29' AS Date), CAST(N'2021-07-15' AS Date), N'B', N'9640750187', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (7, CAST(N'2018-09-20' AS Date), CAST(N'2019-07-10' AS Date), N'B, A', N'1148615982', 2)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (8, CAST(N'2018-06-21' AS Date), CAST(N'2022-11-18' AS Date), N'B', N'6161864298', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (9, CAST(N'2019-05-14' AS Date), CAST(N'2020-11-18' AS Date), N'B', N'9566936083', 2)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (10, CAST(N'2019-02-28' AS Date), CAST(N'2019-10-15' AS Date), N'B', N'1754167771', 2)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (11, CAST(N'2018-06-23' AS Date), CAST(N'2022-06-14' AS Date), N'B', N'8965820437', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (12, CAST(N'2019-02-01' AS Date), CAST(N'2027-05-06' AS Date), N'B', N'1345505754', 3)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (13, CAST(N'2019-04-11' AS Date), CAST(N'2020-01-08' AS Date), N'B', N'6845157412', 2)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (14, CAST(N'2018-10-20' AS Date), CAST(N'2021-08-28' AS Date), N'B', N'3763724944', 4)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (15, CAST(N'2018-11-04' AS Date), CAST(N'2020-08-18' AS Date), N'B', N'5753428231', 2)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (16, CAST(N'2018-08-23' AS Date), CAST(N'2024-01-30' AS Date), N'B', N'2159855910', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (17, CAST(N'2019-02-08' AS Date), CAST(N'2024-08-16' AS Date), N'B', N'5771562291', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (18, CAST(N'2018-12-31' AS Date), CAST(N'2023-10-03' AS Date), N'B, A', N'9550828023', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (19, CAST(N'2018-08-05' AS Date), CAST(N'2028-01-24' AS Date), N'B', N'2269366545', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (20, CAST(N'2018-12-09' AS Date), CAST(N'2020-04-19' AS Date), N'B', N'3449882286', 2)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (21, CAST(N'2018-11-22' AS Date), CAST(N'2020-06-14' AS Date), N'B', N'3453766347', 2)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (22, CAST(N'2018-12-11' AS Date), CAST(N'2027-08-22' AS Date), N'B', N'2252107095', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (23, CAST(N'2019-02-11' AS Date), CAST(N'2028-05-02' AS Date), N'B', N'2259191387', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (24, CAST(N'2019-02-12' AS Date), CAST(N'2028-02-26' AS Date), N'B', N'5567914299', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (25, CAST(N'2018-06-28' AS Date), CAST(N'2025-06-14' AS Date), N'B', N'3755538095', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (26, CAST(N'2018-05-23' AS Date), CAST(N'2027-02-17' AS Date), N'B, A', N'2365140143', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (27, CAST(N'2018-10-09' AS Date), CAST(N'2019-11-02' AS Date), N'B', N'7644231262', 2)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (28, CAST(N'2018-06-06' AS Date), CAST(N'2020-06-20' AS Date), N'B', N'7180465917', 2)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (29, CAST(N'2019-02-13' AS Date), CAST(N'2021-03-19' AS Date), N'B', N'8854797589', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (30, CAST(N'2018-06-25' AS Date), CAST(N'2022-11-05' AS Date), N'B', N'9243289084', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (31, CAST(N'2019-02-15' AS Date), CAST(N'2025-06-24' AS Date), N'B', N'2457286769', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (32, CAST(N'2018-08-15' AS Date), CAST(N'2024-08-25' AS Date), N'B', N'9062811272', 3)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (33, CAST(N'2019-01-05' AS Date), CAST(N'2021-06-11' AS Date), N'B', N'8160668818', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (34, CAST(N'2018-09-25' AS Date), CAST(N'2027-10-07' AS Date), N'B', N'4954493125', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (35, CAST(N'2018-09-19' AS Date), CAST(N'2028-04-08' AS Date), N'B', N'2858111698', 4)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (36, CAST(N'2018-11-14' AS Date), CAST(N'2026-09-10' AS Date), N'B', N'6268279896', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (37, CAST(N'2018-12-16' AS Date), CAST(N'2022-07-25' AS Date), N'B', N'3169987280', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (38, CAST(N'2018-08-30' AS Date), CAST(N'2019-06-04' AS Date), N'B, A', N'6257783363', 2)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (39, CAST(N'2018-06-24' AS Date), CAST(N'2028-01-27' AS Date), N'B, A', N'7146913695', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (40, CAST(N'2019-02-17' AS Date), CAST(N'2026-05-15' AS Date), N'B, A', N'9066607418', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (41, CAST(N'2018-09-01' AS Date), CAST(N'2023-01-25' AS Date), N'B, A', N'3748951841', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (42, CAST(N'2018-10-13' AS Date), CAST(N'2022-09-26' AS Date), N'B, A', N'9570754064', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (43, CAST(N'2018-10-25' AS Date), CAST(N'2023-09-16' AS Date), N'B, A', N'8174301902', 3)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (44, CAST(N'2018-09-24' AS Date), CAST(N'2023-05-23' AS Date), N'B, A', N'9873370750', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (45, CAST(N'2018-10-07' AS Date), CAST(N'2021-01-08' AS Date), N'B, A', N'9263836793', 2)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (46, CAST(N'2019-01-30' AS Date), CAST(N'2024-01-08' AS Date), N'B, A', N'8567433962', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (47, CAST(N'2019-02-11' AS Date), CAST(N'2019-07-20' AS Date), N'B, A', N'6853739807', 2)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (48, CAST(N'2019-01-26' AS Date), CAST(N'2021-08-13' AS Date), N'B, A', N'8459127815', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (49, CAST(N'2018-06-17' AS Date), CAST(N'2020-04-19' AS Date), N'B, A', N'6558972443', 2)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (50, CAST(N'2019-03-21' AS Date), CAST(N'2028-03-11' AS Date), N'B, A', N'1179215392', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (51, CAST(N'2018-11-29' AS Date), CAST(N'2024-03-22' AS Date), N'B', N'4750682392', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (52, CAST(N'2019-03-14' AS Date), CAST(N'2024-10-02' AS Date), N'B', N'5780704668', 3)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (53, CAST(N'2018-09-26' AS Date), CAST(N'2021-10-09' AS Date), N'B', N'8351612336', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (54, CAST(N'2019-02-25' AS Date), CAST(N'2020-04-15' AS Date), N'B', N'8848700693', 2)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (55, CAST(N'2018-10-17' AS Date), CAST(N'2022-07-04' AS Date), N'B', N'4556360521', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (56, CAST(N'2018-10-13' AS Date), CAST(N'2025-11-13' AS Date), N'D, C', N'3550716066', 4)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (57, CAST(N'2019-01-04' AS Date), CAST(N'2025-08-18' AS Date), N'B', N'4443378433', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (58, CAST(N'2018-12-31' AS Date), CAST(N'2025-04-19' AS Date), N'B', N'7044504351', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (59, CAST(N'2019-03-16' AS Date), CAST(N'2025-08-16' AS Date), N'B', N'4465130693', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (60, CAST(N'2018-12-24' AS Date), CAST(N'2021-07-11' AS Date), N'D, C', N'8744923347', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (61, CAST(N'2018-08-12' AS Date), CAST(N'2020-07-30' AS Date), N'D, C', N'8378995967', 2)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (62, CAST(N'2019-01-07' AS Date), CAST(N'2026-04-27' AS Date), N'D, C', N'9973996427', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (63, CAST(N'2019-01-06' AS Date), CAST(N'2022-06-15' AS Date), N'D, C', N'7153413313', 3)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (64, CAST(N'2019-05-18' AS Date), CAST(N'2026-10-19' AS Date), N'D, C', N'4343983635', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (65, CAST(N'2019-03-01' AS Date), CAST(N'2020-04-19' AS Date), N'D, C', N'2561922773', 2)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (66, CAST(N'2018-10-29' AS Date), CAST(N'2022-02-26' AS Date), N'D, C', N'5878165905', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (67, CAST(N'2019-04-22' AS Date), CAST(N'2022-12-14' AS Date), N'D, C', N'7242458530', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (68, CAST(N'2018-06-02' AS Date), CAST(N'2026-10-26' AS Date), N'D, C', N'5458150506', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (69, CAST(N'2019-01-31' AS Date), CAST(N'2025-10-22' AS Date), N'D, C', N'6976403371', 4)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (70, CAST(N'2019-03-26' AS Date), CAST(N'2027-05-16' AS Date), N'D, C', N'4565502480', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (71, CAST(N'2018-10-01' AS Date), CAST(N'2025-04-03' AS Date), N'D, C', N'5647346550', 4)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (72, CAST(N'2018-07-14' AS Date), CAST(N'2027-02-10' AS Date), N'D, C', N'5940123897', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (73, CAST(N'2018-11-03' AS Date), CAST(N'2023-09-19' AS Date), N'D, C', N'7567880032', 3)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (74, CAST(N'2018-08-20' AS Date), CAST(N'2021-11-07' AS Date), N'D, C', N'5369329732', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (75, CAST(N'2019-01-30' AS Date), CAST(N'2024-01-19' AS Date), N'D, C', N'4265754604', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (76, CAST(N'2018-10-13' AS Date), CAST(N'2025-09-25' AS Date), N'B', N'4571347925', 3)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (77, CAST(N'2019-02-11' AS Date), CAST(N'2022-11-06' AS Date), N'B', N'1849397861', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (78, CAST(N'2018-08-14' AS Date), CAST(N'2021-01-30' AS Date), N'B', N'9755409226', 2)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (79, CAST(N'2018-07-10' AS Date), CAST(N'2021-02-22' AS Date), N'B', N'1761996073', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (80, CAST(N'2018-10-17' AS Date), CAST(N'2023-07-20' AS Date), N'B', N'8860686627', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (81, CAST(N'2018-10-31' AS Date), CAST(N'2028-01-19' AS Date), N'B', N'3368892304', 3)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (82, CAST(N'2019-05-07' AS Date), CAST(N'2024-11-04' AS Date), N'B', N'9645996326', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (83, CAST(N'2019-02-28' AS Date), CAST(N'2024-03-02' AS Date), N'B', N'5372524117', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (84, CAST(N'2019-01-16' AS Date), CAST(N'2021-01-23' AS Date), N'B', N'3076820189', 2)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (85, CAST(N'2019-04-05' AS Date), CAST(N'2020-09-10' AS Date), N'B', N'3153732792', 2)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (86, CAST(N'2018-05-31' AS Date), CAST(N'2024-07-30' AS Date), N'B', N'2754500373', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (87, CAST(N'2018-09-18' AS Date), CAST(N'2022-04-24' AS Date), N'B', N'9752660653', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (88, CAST(N'2018-10-31' AS Date), CAST(N'2020-01-21' AS Date), N'B', N'1645771049', 2)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (89, CAST(N'2018-08-04' AS Date), CAST(N'2027-01-17' AS Date), N'B', N'6445186021', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (90, CAST(N'2018-11-07' AS Date), CAST(N'2021-04-17' AS Date), N'B', N'5045725156', 4)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (91, CAST(N'2019-04-14' AS Date), CAST(N'2022-07-18' AS Date), N'B', N'2965213322', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (92, CAST(N'2019-02-23' AS Date), CAST(N'2020-01-27' AS Date), N'B', N'3141340685', 2)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (93, CAST(N'2019-02-06' AS Date), CAST(N'2019-10-17' AS Date), N'B', N'6071733903', 2)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (94, CAST(N'2018-05-27' AS Date), CAST(N'2023-09-29' AS Date), N'B', N'5449298803', 3)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (95, CAST(N'2018-08-05' AS Date), CAST(N'2022-11-16' AS Date), N'B', N'7158321618', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (96, CAST(N'2018-11-06' AS Date), CAST(N'2024-12-24' AS Date), N'B', N'8553424706', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (97, CAST(N'2019-02-06' AS Date), CAST(N'2019-06-19' AS Date), N'B', N'2963456353', 2)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (98, CAST(N'2019-01-21' AS Date), CAST(N'2025-10-16' AS Date), N'D1, D1E', N'5759552536', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (99, CAST(N'2018-08-17' AS Date), CAST(N'2021-03-17' AS Date), N'B', N'5565355405', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (100, CAST(N'2019-02-15' AS Date), CAST(N'2022-05-09' AS Date), N'B', N'5157441335', 1)
GO
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (101, CAST(N'2019-01-13' AS Date), CAST(N'2025-08-29' AS Date), N'B', N'5949144483', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (102, CAST(N'2018-08-02' AS Date), CAST(N'2019-07-06' AS Date), N'B', N'7663351410', 2)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (103, CAST(N'2018-12-31' AS Date), CAST(N'2019-05-25' AS Date), N'B', N'7045177463', 3)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (104, CAST(N'2019-02-26' AS Date), CAST(N'2026-12-12' AS Date), N'B', N'5169640455', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (105, CAST(N'2019-03-12' AS Date), CAST(N'2022-01-03' AS Date), N'B', N'8758537518', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (106, CAST(N'2018-05-29' AS Date), CAST(N'2019-06-20' AS Date), N'B', N'1448206175', 2)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (107, CAST(N'2018-09-20' AS Date), CAST(N'2022-12-06' AS Date), N'B', N'9862646552', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (108, CAST(N'2018-06-21' AS Date), CAST(N'2023-08-21' AS Date), N'B', N'9252511894', 4)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (109, CAST(N'2019-05-14' AS Date), CAST(N'2022-07-23' AS Date), N'B', N'6965215700', 3)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (110, CAST(N'2019-02-28' AS Date), CAST(N'2027-04-07' AS Date), N'B', N'5344602449', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (111, CAST(N'2018-06-23' AS Date), CAST(N'2027-11-16' AS Date), N'B', N'5662189864', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (112, CAST(N'2019-02-01' AS Date), CAST(N'2024-02-11' AS Date), N'B', N'4455179449', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (113, CAST(N'2019-04-11' AS Date), CAST(N'2021-08-06' AS Date), N'B', N'1446984592', 3)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (114, CAST(N'2018-10-20' AS Date), CAST(N'2023-04-03' AS Date), N'B', N'3875480183', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (115, CAST(N'2018-11-04' AS Date), CAST(N'2028-01-13' AS Date), N'B', N'4548143560', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (116, CAST(N'2018-08-23' AS Date), CAST(N'2025-03-08' AS Date), N'B', N'8775143198', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (117, CAST(N'2019-02-08' AS Date), CAST(N'2021-07-10' AS Date), N'B', N'4456698959', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (118, CAST(N'2018-12-31' AS Date), CAST(N'2021-06-23' AS Date), N'B', N'5774218810', 3)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (119, CAST(N'2018-08-05' AS Date), CAST(N'2026-07-05' AS Date), N'B', N'7372870584', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (120, CAST(N'2018-12-09' AS Date), CAST(N'2023-05-20' AS Date), N'B', N'2462735138', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (121, CAST(N'2018-11-22' AS Date), CAST(N'2022-03-05' AS Date), N'B', N'6070112930', 4)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (122, CAST(N'2018-12-11' AS Date), CAST(N'2022-01-13' AS Date), N'B', N'4576922777', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (123, CAST(N'2019-02-11' AS Date), CAST(N'2025-09-03' AS Date), N'B', N'4562434160', 4)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (124, CAST(N'2019-02-12' AS Date), CAST(N'2021-08-12' AS Date), N'B', N'8067198658', 2)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (125, CAST(N'2018-06-28' AS Date), CAST(N'2026-11-07' AS Date), N'B', N'3651955678', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (126, CAST(N'2018-05-23' AS Date), CAST(N'2019-01-26' AS Date), N'B', N'5673570962', 2)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (127, CAST(N'2018-10-09' AS Date), CAST(N'2025-08-08' AS Date), N'B', N'8043244787', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (128, CAST(N'2018-06-06' AS Date), CAST(N'2028-02-08' AS Date), N'B', N'6143360486', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (129, CAST(N'2019-02-13' AS Date), CAST(N'2028-05-11' AS Date), N'B', N'7764593417', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (130, CAST(N'2018-06-25' AS Date), CAST(N'2020-11-10' AS Date), N'B', N'7869300408', 2)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (131, CAST(N'2019-02-15' AS Date), CAST(N'2027-07-14' AS Date), N'B', N'9261564412', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (132, CAST(N'2018-08-15' AS Date), CAST(N'2019-04-06' AS Date), N'B', N'8650649001', 2)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (133, CAST(N'2019-01-05' AS Date), CAST(N'2021-10-31' AS Date), N'B', N'8051417594', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (134, CAST(N'2018-09-25' AS Date), CAST(N'2023-08-09' AS Date), N'B', N'8165173583', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (135, CAST(N'2018-09-19' AS Date), CAST(N'2027-05-20' AS Date), N'B', N'6163107404', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (136, CAST(N'2018-11-14' AS Date), CAST(N'2026-02-12' AS Date), N'B', N'6455604567', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (137, CAST(N'2018-12-16' AS Date), CAST(N'2026-12-19' AS Date), N'B', N'4177152038', 4)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (138, CAST(N'2018-08-30' AS Date), CAST(N'2023-12-18' AS Date), N'B', N'4775631972', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (139, CAST(N'2018-06-24' AS Date), CAST(N'2019-03-28' AS Date), N'B', N'5856389246', 2)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (140, CAST(N'2019-02-17' AS Date), CAST(N'2023-06-24' AS Date), N'B', N'5665672465', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (141, CAST(N'2018-09-01' AS Date), CAST(N'2019-06-02' AS Date), N'B', N'1352375141', 2)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (142, CAST(N'2018-10-13' AS Date), CAST(N'2023-09-02' AS Date), N'B', N'9580672343', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (143, CAST(N'2018-10-25' AS Date), CAST(N'2028-04-14' AS Date), N'B', N'9460114388', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (144, CAST(N'2018-09-24' AS Date), CAST(N'2022-06-26' AS Date), N'B', N'7946834138', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (145, CAST(N'2018-10-07' AS Date), CAST(N'2023-03-25' AS Date), N'B', N'4160943122', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (146, CAST(N'2019-01-30' AS Date), CAST(N'2024-12-12' AS Date), N'B', N'9358978442', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (147, CAST(N'2019-02-11' AS Date), CAST(N'2028-02-26' AS Date), N'B', N'7577669648', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (148, CAST(N'2019-01-26' AS Date), CAST(N'2025-10-29' AS Date), N'B', N'8963563046', 4)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (149, CAST(N'2018-06-17' AS Date), CAST(N'2025-12-10' AS Date), N'B', N'8559935502', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (150, CAST(N'2019-03-21' AS Date), CAST(N'2020-10-17' AS Date), N'B', N'5647618832', 2)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (151, CAST(N'2018-11-29' AS Date), CAST(N'2022-01-20' AS Date), N'B', N'1844286148', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (152, CAST(N'2019-03-14' AS Date), CAST(N'2024-06-13' AS Date), N'B', N'1542848910', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (153, CAST(N'2018-09-26' AS Date), CAST(N'2019-12-14' AS Date), N'B', N'8648153332', 2)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (154, CAST(N'2019-02-25' AS Date), CAST(N'2027-12-23' AS Date), N'B', N'2164281543', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (155, CAST(N'2018-10-17' AS Date), CAST(N'2019-06-24' AS Date), N'B', N'4465689019', 2)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (156, CAST(N'2018-10-13' AS Date), CAST(N'2022-12-01' AS Date), N'B', N'6373339944', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (157, CAST(N'2019-01-04' AS Date), CAST(N'2020-10-22' AS Date), N'B', N'8043838745', 2)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (158, CAST(N'2018-12-31' AS Date), CAST(N'2026-08-09' AS Date), N'B', N'4174833772', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (159, CAST(N'2019-03-16' AS Date), CAST(N'2023-05-07' AS Date), N'Tb', N'7053197719', 3)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (160, CAST(N'2018-12-24' AS Date), CAST(N'2025-01-15' AS Date), N'B', N'5347642355', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (161, CAST(N'2018-08-12' AS Date), CAST(N'2022-02-10' AS Date), N'B', N'3945599900', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (162, CAST(N'2019-01-07' AS Date), CAST(N'2023-09-12' AS Date), N'B', N'9970313651', 3)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (163, CAST(N'2019-01-06' AS Date), CAST(N'2026-01-09' AS Date), N'B', N'5378482016', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (164, CAST(N'2019-05-18' AS Date), CAST(N'2025-05-30' AS Date), N'B', N'8247608653', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (165, CAST(N'2019-03-01' AS Date), CAST(N'2019-08-09' AS Date), N'B', N'3276726052', 2)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (166, CAST(N'2018-10-29' AS Date), CAST(N'2026-04-18' AS Date), N'B', N'1056710506', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (167, CAST(N'2019-04-22' AS Date), CAST(N'2027-05-07' AS Date), N'B', N'4447857224', 4)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (168, CAST(N'2018-06-02' AS Date), CAST(N'2022-01-03' AS Date), N'B', N'1544216181', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (169, CAST(N'2019-01-31' AS Date), CAST(N'2028-01-25' AS Date), N'B', N'9060267003', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (170, CAST(N'2019-03-26' AS Date), CAST(N'2026-03-24' AS Date), N'B', N'2557211673', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (171, CAST(N'2018-10-01' AS Date), CAST(N'2027-06-21' AS Date), N'B', N'7263140335', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (172, CAST(N'2018-07-14' AS Date), CAST(N'2025-12-25' AS Date), N'B', N'8146112671', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (173, CAST(N'2018-11-03' AS Date), CAST(N'2025-01-09' AS Date), N'B', N'5372121874', 4)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (174, CAST(N'2018-08-20' AS Date), CAST(N'2023-04-03' AS Date), N'B', N'3855988267', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (175, CAST(N'2019-01-30' AS Date), CAST(N'2027-05-27' AS Date), N'B', N'9366407687', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (176, CAST(N'2018-10-13' AS Date), CAST(N'2026-07-07' AS Date), N'B', N'7150321250', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (177, CAST(N'2019-02-11' AS Date), CAST(N'2020-09-03' AS Date), N'B', N'5548283081', 2)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (178, CAST(N'2018-08-14' AS Date), CAST(N'2020-12-15' AS Date), N'B', N'1841954617', 2)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (179, CAST(N'2018-07-10' AS Date), CAST(N'2021-05-04' AS Date), N'B', N'7260808111', 3)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (180, CAST(N'2018-10-17' AS Date), CAST(N'2021-01-08' AS Date), N'B', N'8853584291', 2)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (181, CAST(N'2018-10-31' AS Date), CAST(N'2026-09-02' AS Date), N'B', N'5142920836', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (182, CAST(N'2019-05-07' AS Date), CAST(N'2025-10-16' AS Date), N'B', N'5274843119', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (183, CAST(N'2019-02-28' AS Date), CAST(N'2027-10-12' AS Date), N'B', N'8769608724', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (184, CAST(N'2019-01-16' AS Date), CAST(N'2024-02-23' AS Date), N'B', N'2278602987', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (185, CAST(N'2019-04-05' AS Date), CAST(N'2019-06-14' AS Date), N'B', N'2960390525', 2)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (186, CAST(N'2018-05-31' AS Date), CAST(N'2025-07-24' AS Date), N'B', N'7956112224', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (187, CAST(N'2018-09-18' AS Date), CAST(N'2020-08-26' AS Date), N'B', N'1156742127', 2)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (188, CAST(N'2018-10-31' AS Date), CAST(N'2021-08-29' AS Date), N'B', N'5242884090', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (189, CAST(N'2018-08-04' AS Date), CAST(N'2023-08-15' AS Date), N'B', N'8958989847', 3)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (190, CAST(N'2018-11-07' AS Date), CAST(N'2022-09-23' AS Date), N'B', N'4046106016', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (191, CAST(N'2019-04-14' AS Date), CAST(N'2024-03-06' AS Date), N'B', N'8766120201', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (192, CAST(N'2019-02-23' AS Date), CAST(N'2021-01-25' AS Date), N'B', N'9065677102', 2)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (193, CAST(N'2019-02-06' AS Date), CAST(N'2019-05-26' AS Date), N'B', N'7072962735', 2)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (194, CAST(N'2018-05-27' AS Date), CAST(N'2025-06-03' AS Date), N'B', N'8580622744', 4)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (195, CAST(N'2018-08-05' AS Date), CAST(N'2020-04-10' AS Date), N'B', N'8246115947', 2)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (196, CAST(N'2018-11-06' AS Date), CAST(N'2021-12-10' AS Date), N'B', N'1974705660', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (197, CAST(N'2019-02-06' AS Date), CAST(N'2026-12-26' AS Date), N'B', N'3946518387', 3)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (198, CAST(N'2019-01-21' AS Date), CAST(N'2022-12-18' AS Date), N'B', N'6360909624', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (199, CAST(N'2018-08-17' AS Date), CAST(N'2028-01-28' AS Date), N'B', N'3365198629', 1)
INSERT [dbo].[License] ([ID], [LicenceDate], [ExpireDate], [Categories], [License], [Status]) VALUES (200, CAST(N'2019-02-15' AS Date), CAST(N'2025-09-02' AS Date), N'B', N'7568533909', 1)
GO
INSERT [dbo].[Status] ([ID], [StatusName]) VALUES (1, N'Active')
INSERT [dbo].[Status] ([ID], [StatusName]) VALUES (2, N'Expire')
INSERT [dbo].[Status] ([ID], [StatusName]) VALUES (3, N'Paused')
INSERT [dbo].[Status] ([ID], [StatusName]) VALUES (4, N'Withdrawn')
INSERT [dbo].[TypeOfDrive] ([ID], [TypeOfDrive]) VALUES (1, N'front-wheel drive')
INSERT [dbo].[TypeOfDrive] ([ID], [TypeOfDrive]) VALUES (2, N'full drive')
INSERT [dbo].[TypeOfDrive] ([ID], [TypeOfDrive]) VALUES (3, N'rear drive')
INSERT [dbo].[User] ([Login], [Password]) VALUES (N'inspector', N'inspector')
ALTER TABLE [dbo].[Car]  WITH CHECK ADD  CONSTRAINT [FK_Car_CarManufacturer] FOREIGN KEY([Manufacturer])
REFERENCES [dbo].[CarManufacturer] ([ID])
GO
ALTER TABLE [dbo].[Car] CHECK CONSTRAINT [FK_Car_CarManufacturer]
GO
ALTER TABLE [dbo].[Car]  WITH CHECK ADD  CONSTRAINT [FK_Car_TypeOfDrive] FOREIGN KEY([TypeOfDrive])
REFERENCES [dbo].[TypeOfDrive] ([ID])
GO
ALTER TABLE [dbo].[Car] CHECK CONSTRAINT [FK_Car_TypeOfDrive]
GO
ALTER TABLE [dbo].[Driver]  WITH CHECK ADD  CONSTRAINT [FK_Driver_Company] FOREIGN KEY([Company])
REFERENCES [dbo].[Company] ([ID])
GO
ALTER TABLE [dbo].[Driver] CHECK CONSTRAINT [FK_Driver_Company]
GO
ALTER TABLE [dbo].[Driver]  WITH CHECK ADD  CONSTRAINT [FK_Driver_Job] FOREIGN KEY([JobName])
REFERENCES [dbo].[Job] ([ID])
GO
ALTER TABLE [dbo].[Driver] CHECK CONSTRAINT [FK_Driver_Job]
GO
ALTER TABLE [dbo].[DriverLicenseCar]  WITH CHECK ADD  CONSTRAINT [FK_DriverLicenseCar_Car] FOREIGN KEY([CarID])
REFERENCES [dbo].[Car] ([VIN])
GO
ALTER TABLE [dbo].[DriverLicenseCar] CHECK CONSTRAINT [FK_DriverLicenseCar_Car]
GO
ALTER TABLE [dbo].[DriverLicenseCar]  WITH CHECK ADD  CONSTRAINT [FK_DriverLicenseCar_Driver] FOREIGN KEY([DriverID])
REFERENCES [dbo].[Driver] ([ID])
GO
ALTER TABLE [dbo].[DriverLicenseCar] CHECK CONSTRAINT [FK_DriverLicenseCar_Driver]
GO
ALTER TABLE [dbo].[DriverLicenseCar]  WITH CHECK ADD  CONSTRAINT [FK_DriverLicenseCar_License] FOREIGN KEY([LicenseID])
REFERENCES [dbo].[License] ([ID])
GO
ALTER TABLE [dbo].[DriverLicenseCar] CHECK CONSTRAINT [FK_DriverLicenseCar_License]
GO
ALTER TABLE [dbo].[License]  WITH CHECK ADD  CONSTRAINT [FK_License_Status] FOREIGN KEY([Status])
REFERENCES [dbo].[Status] ([ID])
GO
ALTER TABLE [dbo].[License] CHECK CONSTRAINT [FK_License_Status]
GO
USE [master]
GO
ALTER DATABASE [StateTrafficInspectorateDB] SET  READ_WRITE 
GO
