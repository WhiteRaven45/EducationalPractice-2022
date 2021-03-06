USE [Universitet]
GO
/****** Object:  Table [dbo].[Gruppa]    Script Date: 11.12.2020 12:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gruppa](
	[Id_gruppa] [int] NOT NULL,
	[kolichestvo_ych] [int] NULL,
	[sr_bal] [int] NULL,
	[kurator] [nchar](50) NULL,
 CONSTRAINT [PK_Gruppa] PRIMARY KEY CLUSTERED 
(
	[Id_gruppa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Izuchenie]    Script Date: 11.12.2020 12:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Izuchenie](
	[Nomer_grupi] [int] NULL,
	[izuchenie] [nchar](10) NULL,
	[chasi] [nchar](10) NULL,
	[stepeni] [nchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kaphedra]    Script Date: 11.12.2020 12:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kaphedra](
	[Kafedra] [nchar](30) NULL,
	[Telephone] [nchar](50) NULL,
	[Glavni] [nchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Prepodi]    Script Date: 11.12.2020 12:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prepodi](
	[Id_gruppa] [int] NULL,
	[Prepodavatel] [nchar](30) NULL,
	[Nomer] [nchar](30) NULL,
	[Kaphedra] [nchar](30) NULL,
	[chasi_rabot] [nchar](30) NULL
) ON [PRIMARY]
GO
