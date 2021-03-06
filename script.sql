USE [master]
GO
/****** Object:  Database [DAI-TPcrud]    Script Date: 11/5/2022 10:34:19 ******/
CREATE DATABASE [DAI-TPcrud]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DAI-TPcrud', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\DAI-TPcrud.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DAI-TPcrud_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\DAI-TPcrud_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [DAI-TPcrud] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DAI-TPcrud].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DAI-TPcrud] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DAI-TPcrud] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DAI-TPcrud] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DAI-TPcrud] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DAI-TPcrud] SET ARITHABORT OFF 
GO
ALTER DATABASE [DAI-TPcrud] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DAI-TPcrud] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DAI-TPcrud] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DAI-TPcrud] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DAI-TPcrud] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DAI-TPcrud] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DAI-TPcrud] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DAI-TPcrud] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DAI-TPcrud] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DAI-TPcrud] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DAI-TPcrud] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DAI-TPcrud] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DAI-TPcrud] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DAI-TPcrud] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DAI-TPcrud] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DAI-TPcrud] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DAI-TPcrud] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DAI-TPcrud] SET RECOVERY FULL 
GO
ALTER DATABASE [DAI-TPcrud] SET  MULTI_USER 
GO
ALTER DATABASE [DAI-TPcrud] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DAI-TPcrud] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DAI-TPcrud] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DAI-TPcrud] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DAI-TPcrud] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'DAI-TPcrud', N'ON'
GO
ALTER DATABASE [DAI-TPcrud] SET QUERY_STORE = OFF
GO
USE [DAI-TPcrud]
GO
/****** Object:  User [alumno]    Script Date: 11/5/2022 10:34:19 ******/
CREATE USER [alumno] FOR LOGIN [alumno] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Peliculas]    Script Date: 11/5/2022 10:34:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Peliculas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Imagen] [varchar](50) NOT NULL,
	[Titulo] [varchar](50) NOT NULL,
	[Fecha] [varchar](50) NOT NULL,
	[Calificacion] [int] NOT NULL,
 CONSTRAINT [PK_Peliculas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Personajes]    Script Date: 11/5/2022 10:34:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personajes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Imagen] [varchar](250) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Edad] [int] NOT NULL,
	[Peso] [float] NOT NULL,
	[Historia] [varchar](200) NOT NULL,
	[Nacimiento] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Personaje] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PersonajesPeliculas]    Script Date: 11/5/2022 10:34:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersonajesPeliculas](
	[Id_personaje] [int] NOT NULL,
	[Id_pelicula] [int] NOT NULL,
 CONSTRAINT [PK_PersonajesPeliculas] PRIMARY KEY CLUSTERED 
(
	[Id_personaje] ASC,
	[Id_pelicula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Peliculas] ON 

INSERT [dbo].[Peliculas] ([Id], [Imagen], [Titulo], [Fecha], [Calificacion]) VALUES (1, N'Pollitos', N'Pollos en fuga', N'10-10-2000', 5)
INSERT [dbo].[Peliculas] ([Id], [Imagen], [Titulo], [Fecha], [Calificacion]) VALUES (2, N'La roca disfrazada', N'Hada por accidente', N'10-10-2001', 5)
INSERT [dbo].[Peliculas] ([Id], [Imagen], [Titulo], [Fecha], [Calificacion]) VALUES (3, N'Autos y pelados', N'Rapidos y furiosos', N'10-10-2002', 4)
INSERT [dbo].[Peliculas] ([Id], [Imagen], [Titulo], [Fecha], [Calificacion]) VALUES (4, N'Brad pitt con jabon', N'El club de la pelea', N'10-10-1990', 5)
SET IDENTITY_INSERT [dbo].[Peliculas] OFF
GO
SET IDENTITY_INSERT [dbo].[Personajes] ON 

INSERT [dbo].[Personajes] ([Id], [Imagen], [Nombre], [Edad], [Peso], [Historia], [Nacimiento]) VALUES (1, N'Una noche de verano', N'Pana Mati', 15, 50, N'Un pibe con traumas', N'2022-12-20')
INSERT [dbo].[Personajes] ([Id], [Imagen], [Nombre], [Edad], [Peso], [Historia], [Nacimiento]) VALUES (6, N'url', N'Raúl', 40, 175, N'BLA BLA BLA', N'11/17/2017')
INSERT [dbo].[Personajes] ([Id], [Imagen], [Nombre], [Edad], [Peso], [Historia], [Nacimiento]) VALUES (7, N'Un pelado fuerte', N'La roca', 35, 100, N'EX Pelador WWE', N'09/09/1980')
INSERT [dbo].[Personajes] ([Id], [Imagen], [Nombre], [Edad], [Peso], [Historia], [Nacimiento]) VALUES (8, N'Brad pitt joven', N'Brad Pitt', 50, 75, N'Es brad ', N'pitt')
SET IDENTITY_INSERT [dbo].[Personajes] OFF
GO
INSERT [dbo].[PersonajesPeliculas] ([Id_personaje], [Id_pelicula]) VALUES (1, 1)
INSERT [dbo].[PersonajesPeliculas] ([Id_personaje], [Id_pelicula]) VALUES (6, 1)
INSERT [dbo].[PersonajesPeliculas] ([Id_personaje], [Id_pelicula]) VALUES (7, 2)
INSERT [dbo].[PersonajesPeliculas] ([Id_personaje], [Id_pelicula]) VALUES (7, 3)
INSERT [dbo].[PersonajesPeliculas] ([Id_personaje], [Id_pelicula]) VALUES (8, 4)
GO
ALTER TABLE [dbo].[PersonajesPeliculas]  WITH CHECK ADD  CONSTRAINT [FK_PersonajesPeliculas_Peliculas] FOREIGN KEY([Id_pelicula])
REFERENCES [dbo].[Peliculas] ([Id])
GO
ALTER TABLE [dbo].[PersonajesPeliculas] CHECK CONSTRAINT [FK_PersonajesPeliculas_Peliculas]
GO
ALTER TABLE [dbo].[PersonajesPeliculas]  WITH CHECK ADD  CONSTRAINT [FK_PersonajesPeliculas_Personajes] FOREIGN KEY([Id_personaje])
REFERENCES [dbo].[Personajes] ([Id])
GO
ALTER TABLE [dbo].[PersonajesPeliculas] CHECK CONSTRAINT [FK_PersonajesPeliculas_Personajes]
GO
USE [master]
GO
ALTER DATABASE [DAI-TPcrud] SET  READ_WRITE 
GO
