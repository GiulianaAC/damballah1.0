USE [master]
GO
/****** Object:  Database [EscuelaManejoAutomovilDB]    Script Date: 6/09/2022 09:56:08 ******/
CREATE DATABASE [EscuelaManejoAutomovilDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EscuelaManejoAutomovilDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\EscuelaManejoAutomovilDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'EscuelaManejoAutomovilDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\EscuelaManejoAutomovilDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [EscuelaManejoAutomovilDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EscuelaManejoAutomovilDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EscuelaManejoAutomovilDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EscuelaManejoAutomovilDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EscuelaManejoAutomovilDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EscuelaManejoAutomovilDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EscuelaManejoAutomovilDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [EscuelaManejoAutomovilDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [EscuelaManejoAutomovilDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EscuelaManejoAutomovilDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EscuelaManejoAutomovilDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EscuelaManejoAutomovilDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EscuelaManejoAutomovilDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EscuelaManejoAutomovilDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EscuelaManejoAutomovilDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EscuelaManejoAutomovilDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EscuelaManejoAutomovilDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [EscuelaManejoAutomovilDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EscuelaManejoAutomovilDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EscuelaManejoAutomovilDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EscuelaManejoAutomovilDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EscuelaManejoAutomovilDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EscuelaManejoAutomovilDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [EscuelaManejoAutomovilDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EscuelaManejoAutomovilDB] SET RECOVERY FULL 
GO
ALTER DATABASE [EscuelaManejoAutomovilDB] SET  MULTI_USER 
GO
ALTER DATABASE [EscuelaManejoAutomovilDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EscuelaManejoAutomovilDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EscuelaManejoAutomovilDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EscuelaManejoAutomovilDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [EscuelaManejoAutomovilDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [EscuelaManejoAutomovilDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'EscuelaManejoAutomovilDB', N'ON'
GO
ALTER DATABASE [EscuelaManejoAutomovilDB] SET QUERY_STORE = OFF
GO
USE [EscuelaManejoAutomovilDB]
GO
/****** Object:  Table [dbo].[AsistenteAlPublico]    Script Date: 6/09/2022 09:56:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AsistenteAlPublico](
	[IDNombre] [int] IDENTITY(1,1) NOT NULL,
	[Area] [varchar](255) NOT NULL,
	[InicioContrato] [varchar](255) NOT NULL,
	[FinContrato] [varchar](255) NOT NULL,
	[DNI] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDNombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carro]    Script Date: 6/09/2022 09:56:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carro](
	[IDModelo] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [nvarchar](255) NOT NULL,
	[SedeUbicacion] [nvarchar](255) NOT NULL,
	[FechaAdquirido] [datetime] NOT NULL,
	[TiempoDeUso] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDModelo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 6/09/2022 09:56:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[IDNombre] [int] IDENTITY(1,1) NOT NULL,
	[DNI] [nvarchar](255) NOT NULL,
	[Celular] [int] NOT NULL,
	[TipoPago] [varchar](255) NOT NULL,
	[Direccion] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDNombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Escuela]    Script Date: 6/09/2022 09:56:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Escuela](
	[IDNombre] [int] IDENTITY(1,1) NOT NULL,
	[Ubicacion] [nvarchar](255) NOT NULL,
	[NumEmpleados] [tinyint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDNombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JefeDueño]    Script Date: 6/09/2022 09:56:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JefeDueño](
	[IDNombre] [int] IDENTITY(1,1) NOT NULL,
	[Area] [varchar](255) NOT NULL,
	[Direccion] [nvarchar](255) NOT NULL,
	[DNI] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDNombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AsistenteAlPublico] ON 

INSERT [dbo].[AsistenteAlPublico] ([IDNombre], [Area], [InicioContrato], [FinContrato], [DNI]) VALUES (1, N'Base1', N'02/05/2021', N'06/08/2022', 56899489)
INSERT [dbo].[AsistenteAlPublico] ([IDNombre], [Area], [InicioContrato], [FinContrato], [DNI]) VALUES (2, N'Base2', N'03/05/2019', N'05/02/2021', 54865168)
INSERT [dbo].[AsistenteAlPublico] ([IDNombre], [Area], [InicioContrato], [FinContrato], [DNI]) VALUES (3, N'Base3', N'05/02/2018', N'06/08/2022', 95168685)
SET IDENTITY_INSERT [dbo].[AsistenteAlPublico] OFF
GO
SET IDENTITY_INSERT [dbo].[Carro] ON 

INSERT [dbo].[Carro] ([IDModelo], [Codigo], [SedeUbicacion], [FechaAdquirido], [TiempoDeUso]) VALUES (1, N'G22', N'Angamos', CAST(N'2021-02-15T00:00:00.000' AS DateTime), CAST(N'2022-05-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Carro] ([IDModelo], [Codigo], [SedeUbicacion], [FechaAdquirido], [TiempoDeUso]) VALUES (2, N'G12', N'Surco', CAST(N'2021-01-03T00:00:00.000' AS DateTime), CAST(N'2022-08-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Carro] ([IDModelo], [Codigo], [SedeUbicacion], [FechaAdquirido], [TiempoDeUso]) VALUES (3, N'A26', N'Atocongo', CAST(N'2018-06-02T00:00:00.000' AS DateTime), CAST(N'2021-05-02T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Carro] OFF
GO
SET IDENTITY_INSERT [dbo].[Cliente] ON 

INSERT [dbo].[Cliente] ([IDNombre], [DNI], [Celular], [TipoPago], [Direccion]) VALUES (1, N'86599845', 944851268, N'efectivo', N'Av Las Lomas 152')
INSERT [dbo].[Cliente] ([IDNombre], [DNI], [Celular], [TipoPago], [Direccion]) VALUES (2, N'84353135', 951689998, N'efectivo', N'Av Los Jardines 220')
INSERT [dbo].[Cliente] ([IDNombre], [DNI], [Celular], [TipoPago], [Direccion]) VALUES (3, N'48951351', 984516899, N'efectivo', N'Av Las Palmas 521')
SET IDENTITY_INSERT [dbo].[Cliente] OFF
GO
SET IDENTITY_INSERT [dbo].[Escuela] ON 

INSERT [dbo].[Escuela] ([IDNombre], [Ubicacion], [NumEmpleados]) VALUES (1, N'Av Proceres 122', 45)
INSERT [dbo].[Escuela] ([IDNombre], [Ubicacion], [NumEmpleados]) VALUES (2, N'Av Los Jardines 561', 42)
INSERT [dbo].[Escuela] ([IDNombre], [Ubicacion], [NumEmpleados]) VALUES (3, N'Av Las Palmas', 52)
SET IDENTITY_INSERT [dbo].[Escuela] OFF
GO
SET IDENTITY_INSERT [dbo].[JefeDueño] ON 

INSERT [dbo].[JefeDueño] ([IDNombre], [Area], [Direccion], [DNI]) VALUES (1, N'Jefatura', N'Av Los Olivos', 75377180)
SET IDENTITY_INSERT [dbo].[JefeDueño] OFF
GO
USE [master]
GO
ALTER DATABASE [EscuelaManejoAutomovilDB] SET  READ_WRITE 
GO
