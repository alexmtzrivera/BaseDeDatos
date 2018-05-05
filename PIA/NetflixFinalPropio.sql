
JOSE ALEJANDRO MARTINEZ RIVERA 1680723 LABORATORIO SABADO 10-12 

USE [master]
GO
/****** Object:  Database [Netflix3]    Script Date: 05/05/2018 12:13:20 p. m. ******/
CREATE DATABASE [Netflix3]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Netflix3', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Netflix3.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Netflix3_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Netflix3_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Netflix3] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Netflix3].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Netflix3] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Netflix3] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Netflix3] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Netflix3] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Netflix3] SET ARITHABORT OFF 
GO
ALTER DATABASE [Netflix3] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Netflix3] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Netflix3] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Netflix3] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Netflix3] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Netflix3] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Netflix3] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Netflix3] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Netflix3] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Netflix3] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Netflix3] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Netflix3] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Netflix3] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Netflix3] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Netflix3] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Netflix3] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Netflix3] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Netflix3] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Netflix3] SET  MULTI_USER 
GO
ALTER DATABASE [Netflix3] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Netflix3] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Netflix3] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Netflix3] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Netflix3] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Netflix3] SET QUERY_STORE = OFF
GO
USE [Netflix3]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [Netflix3]
GO
/****** Object:  Table [dbo].[Autor]    Script Date: 05/05/2018 12:13:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Autor](
	[IDAutor] [int] NOT NULL,
	[Nombre] [nchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDAutor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Peliculas]    Script Date: 05/05/2018 12:13:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Peliculas](
	[IDPeliculas] [int] NOT NULL,
	[Nombre] [nchar](50) NOT NULL,
	[Sinopsis] [nchar](50) NOT NULL,
	[Tiempo] [nchar](50) NOT NULL,
	[Comentario] [nchar](50) NOT NULL,
	[Actor] [nchar](50) NOT NULL,
	[IDGenero] [int] NULL,
	[IDDirector] [int] NULL,
	[IDAutor] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDPeliculas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[Pelicula_autor]    Script Date: 05/05/2018 12:13:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Pelicula_autor] as 
select a.Nombre as NombreAutor, p.Nombre as Pelicula, p.Actor as ActorPelicula
from Autor a
join Peliculas p on a.IDAutor = p.IDPeliculas
GO
/****** Object:  Table [dbo].[Genero]    Script Date: 05/05/2018 12:13:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genero](
	[IDGenero] [int] NOT NULL,
	[Tipo] [nchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDGenero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[Genero_Peliculas]    Script Date: 05/05/2018 12:13:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Genero_Peliculas] as 
select p.Nombre as NombrePelicula, g.Tipo as GeneroPelicula
from Peliculas p
join Genero g on p.IDPeliculas = g.IDGenero
GO
/****** Object:  Table [dbo].[Director]    Script Date: 05/05/2018 12:13:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Director](
	[IDDirector] [int] NOT NULL,
	[Nombre] [nchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDDirector] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[Directores_Peliculas]    Script Date: 05/05/2018 12:13:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Directores_Peliculas] as 
select p.Nombre as NombrePelicula, d.Nombre as DirectorPelicula
from Peliculas p
join Director d on p.IDPeliculas = d.IDDirector
GO
/****** Object:  Table [dbo].[Subscripcion]    Script Date: 05/05/2018 12:13:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subscripcion](
	[IDSubscripcion] [int] NOT NULL,
	[Nombre] [nchar](20) NOT NULL,
	[Costo] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDSubscripcion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[Costo_Subscripcion]    Script Date: 05/05/2018 12:13:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Costo_Subscripcion] as
select s.Costo as tipo, SUM(s.costo) as PTotal
from Subscripcion s
group by s.Costo
GO
/****** Object:  Table [dbo].[Perfiles]    Script Date: 05/05/2018 12:13:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Perfiles](
	[IDPerfiles] [int] NOT NULL,
	[Tipo] [nchar](20) NOT NULL,
	[Nombre] [nchar](20) NOT NULL,
	[Fecha] [nchar](20) NOT NULL,
	[IDUsuario] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDPerfiles] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 05/05/2018 12:13:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[IDUsuario] [int] NOT NULL,
	[Nombre] [nchar](20) NULL,
	[Apellido] [nchar](20) NULL,
	[Correo] [nchar](50) NULL,
	[Telefono] [int] NULL,
	[Contraseña] [nchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[Usuario_Perfil]    Script Date: 05/05/2018 12:13:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Usuario_Perfil] as 
select u.Nombre as NombreUsuario, p.Tipo as TipodePerfil
from Usuario u
join Perfiles P on p.IDPerfiles = u.IDUsuario
GO
/****** Object:  Table [dbo].[Compras]    Script Date: 05/05/2018 12:13:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Compras](
	[IDCompra] [int] NOT NULL,
	[FechaInicio] [nchar](20) NULL,
	[FechaFinal] [nchar](20) NULL,
	[IDUsuario] [int] NULL,
	[IDEstatus] [int] NULL,
	[IDSubscripcion] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDCompra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DemandaPelicula]    Script Date: 05/05/2018 12:13:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DemandaPelicula](
	[IDDemandaPelicula] [int] NOT NULL,
	[Fecha] [nchar](20) NULL,
	[IDPeliculas] [int] NULL,
	[IDPerfiles] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDDemandaPelicula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estatus]    Script Date: 05/05/2018 12:13:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estatus](
	[IDEstatus] [int] NOT NULL,
	[Nombre] [nchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDEstatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MetodoDePago]    Script Date: 05/05/2018 12:13:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MetodoDePago](
	[IDMetodoDePago] [int] NOT NULL,
	[FormaDePago] [nchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDMetodoDePago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pago]    Script Date: 05/05/2018 12:13:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pago](
	[IDPago] [int] NOT NULL,
	[Monto] [int] NOT NULL,
	[IDMetodoDePago] [int] NULL,
	[IDCompras] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDPago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RespaldoDemandaPelicula]    Script Date: 05/05/2018 12:13:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RespaldoDemandaPelicula](
	[IDDemandaPelicula] [int] NULL,
	[Fecha] [nchar](1) NULL,
	[IDPëliculas] [int] NULL,
	[IDPerfiles] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Compras]  WITH CHECK ADD  CONSTRAINT [FK_Compras_Estatus] FOREIGN KEY([IDEstatus])
REFERENCES [dbo].[Estatus] ([IDEstatus])
GO
ALTER TABLE [dbo].[Compras] CHECK CONSTRAINT [FK_Compras_Estatus]
GO
ALTER TABLE [dbo].[Compras]  WITH CHECK ADD  CONSTRAINT [FK_Compras_Subscripcion] FOREIGN KEY([IDSubscripcion])
REFERENCES [dbo].[Subscripcion] ([IDSubscripcion])
GO
ALTER TABLE [dbo].[Compras] CHECK CONSTRAINT [FK_Compras_Subscripcion]
GO
ALTER TABLE [dbo].[Compras]  WITH CHECK ADD  CONSTRAINT [FK_Compras_Usuario] FOREIGN KEY([IDUsuario])
REFERENCES [dbo].[Usuario] ([IDUsuario])
GO
ALTER TABLE [dbo].[Compras] CHECK CONSTRAINT [FK_Compras_Usuario]
GO
ALTER TABLE [dbo].[DemandaPelicula]  WITH CHECK ADD  CONSTRAINT [FK_DemandaPelicula_Peliculas] FOREIGN KEY([IDPeliculas])
REFERENCES [dbo].[Peliculas] ([IDPeliculas])
GO
ALTER TABLE [dbo].[DemandaPelicula] CHECK CONSTRAINT [FK_DemandaPelicula_Peliculas]
GO
ALTER TABLE [dbo].[DemandaPelicula]  WITH CHECK ADD  CONSTRAINT [FK_DemandaPelicula_Perfiles] FOREIGN KEY([IDPerfiles])
REFERENCES [dbo].[Perfiles] ([IDPerfiles])
GO
ALTER TABLE [dbo].[DemandaPelicula] CHECK CONSTRAINT [FK_DemandaPelicula_Perfiles]
GO
ALTER TABLE [dbo].[Pago]  WITH CHECK ADD  CONSTRAINT [FK_Pago_Compras] FOREIGN KEY([IDCompras])
REFERENCES [dbo].[Compras] ([IDCompra])
GO
ALTER TABLE [dbo].[Pago] CHECK CONSTRAINT [FK_Pago_Compras]
GO
ALTER TABLE [dbo].[Pago]  WITH CHECK ADD  CONSTRAINT [FK_Pago_MetodoDePago] FOREIGN KEY([IDMetodoDePago])
REFERENCES [dbo].[MetodoDePago] ([IDMetodoDePago])
GO
ALTER TABLE [dbo].[Pago] CHECK CONSTRAINT [FK_Pago_MetodoDePago]
GO
ALTER TABLE [dbo].[Peliculas]  WITH CHECK ADD  CONSTRAINT [FK_Peliculas_Autor] FOREIGN KEY([IDAutor])
REFERENCES [dbo].[Autor] ([IDAutor])
GO
ALTER TABLE [dbo].[Peliculas] CHECK CONSTRAINT [FK_Peliculas_Autor]
GO
ALTER TABLE [dbo].[Peliculas]  WITH CHECK ADD  CONSTRAINT [FK_Peliculas_Director] FOREIGN KEY([IDDirector])
REFERENCES [dbo].[Director] ([IDDirector])
GO
ALTER TABLE [dbo].[Peliculas] CHECK CONSTRAINT [FK_Peliculas_Director]
GO
ALTER TABLE [dbo].[Peliculas]  WITH CHECK ADD  CONSTRAINT [FK_Peliculas_Genero] FOREIGN KEY([IDGenero])
REFERENCES [dbo].[Genero] ([IDGenero])
GO
ALTER TABLE [dbo].[Peliculas] CHECK CONSTRAINT [FK_Peliculas_Genero]
GO
ALTER TABLE [dbo].[Perfiles]  WITH CHECK ADD  CONSTRAINT [FK_Perfiles_Usuario] FOREIGN KEY([IDUsuario])
REFERENCES [dbo].[Usuario] ([IDUsuario])
GO
ALTER TABLE [dbo].[Perfiles] CHECK CONSTRAINT [FK_Perfiles_Usuario]
GO
/****** Object:  StoredProcedure [dbo].[Generop]    Script Date: 05/05/2018 12:13:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Generop]
(@valor2 nchar(20))
AS
BEGIN 
	SELECT * FROM dbo.Genero
	Where Tipo like (20)
END
GO
/****** Object:  StoredProcedure [dbo].[Pagop]    Script Date: 05/05/2018 12:13:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Pagop]
(@valor2 int)
AS
BEGIN 
	SELECT * FROM dbo.Pago
	Where Monto like @valor2
END
GO
/****** Object:  StoredProcedure [dbo].[PDO]    Script Date: 05/05/2018 12:13:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[PDO]
(@valor2 nchar(20))
AS
BEGIN 
	sELECT * FROM dbo.Genero
	Where Tipo like @valor2
end
GO
/****** Object:  StoredProcedure [dbo].[Pelciulas]    Script Date: 05/05/2018 12:13:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Pelciulas]
(@valor2 nchar(20))
AS
BEGIN 
	SELECT * FROM dbo.Peliculas
	Where Nombre like (20)
END
GO
/****** Object:  StoredProcedure [dbo].[Subscripcionp]    Script Date: 05/05/2018 12:13:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Subscripcionp]
(@valor2 int)
AS
BEGIN 
	SELECT * FROM dbo.Subscripcion
	Where Costo like @valor2
END
GO
/****** Object:  StoredProcedure [dbo].[Subscripcionp2]    Script Date: 05/05/2018 12:13:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Subscripcionp2]
(@valor2 int)
AS
BEGIN 
	UPDATE dbo.Subscripcion
	Set Costo = @valor2
	Where Costo = 100
END
GO
USE [master]
GO
ALTER DATABASE [Netflix3] SET  READ_WRITE 
GO
