USE [master]
GO
/****** Object:  Database [Netflix3]    Script Date: 16/04/2018 11:22:47 p. m. ******/
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
/****** Object:  Table [dbo].[Autor]    Script Date: 16/04/2018 11:22:47 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Autor](
	[IdAutor] [uniqueidentifier] NOT NULL,
	[Nombre] [nchar](10) NULL,
 CONSTRAINT [PK_Autor] PRIMARY KEY CLUSTERED 
(
	[IdAutor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Compras]    Script Date: 16/04/2018 11:22:47 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Compras](
	[IdCompras] [uniqueidentifier] NOT NULL,
	[IdUsuario] [uniqueidentifier] NULL,
	[IdEstatus] [uniqueidentifier] NULL,
	[IdSubscripcion] [uniqueidentifier] NULL,
	[FechaInicio] [date] NULL,
	[FechaFinal] [date] NULL,
 CONSTRAINT [PK_Compras] PRIMARY KEY CLUSTERED 
(
	[IdCompras] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DemandaPelicula]    Script Date: 16/04/2018 11:22:47 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DemandaPelicula](
	[IdDemandaPelicula] [uniqueidentifier] NOT NULL,
	[IdPeliculas] [uniqueidentifier] NULL,
	[IdPefiles] [uniqueidentifier] NULL,
	[FechaHora] [datetime2](7) NULL,
 CONSTRAINT [PK_DemandaPelicula] PRIMARY KEY CLUSTERED 
(
	[IdDemandaPelicula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Director]    Script Date: 16/04/2018 11:22:47 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Director](
	[IdDirector] [uniqueidentifier] NOT NULL,
	[Nombre] [nchar](10) NULL,
 CONSTRAINT [PK_Director] PRIMARY KEY CLUSTERED 
(
	[IdDirector] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estatus]    Script Date: 16/04/2018 11:22:47 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estatus](
	[IdEstatus] [uniqueidentifier] NOT NULL,
	[Nombre] [nchar](10) NULL,
 CONSTRAINT [PK_Estatus] PRIMARY KEY CLUSTERED 
(
	[IdEstatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genero]    Script Date: 16/04/2018 11:22:47 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genero](
	[IdGenero] [uniqueidentifier] NOT NULL,
	[Tipo] [nchar](10) NULL,
 CONSTRAINT [PK_Genero] PRIMARY KEY CLUSTERED 
(
	[IdGenero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MetodoDePago]    Script Date: 16/04/2018 11:22:48 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MetodoDePago](
	[IdMetodoDePago] [uniqueidentifier] NOT NULL,
	[FormaDePago] [nchar](10) NULL,
 CONSTRAINT [PK_MetodoDePago] PRIMARY KEY CLUSTERED 
(
	[IdMetodoDePago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pago]    Script Date: 16/04/2018 11:22:48 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pago](
	[IdPago] [uniqueidentifier] NOT NULL,
	[IdMetodoDePago] [uniqueidentifier] NULL,
	[Monto] [int] NULL,
	[IdCompras] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Pago] PRIMARY KEY CLUSTERED 
(
	[IdPago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Peliculas]    Script Date: 16/04/2018 11:22:48 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Peliculas](
	[IdPeliculas] [uniqueidentifier] NOT NULL,
	[Nombre] [nchar](10) NULL,
	[Sinopsis] [nchar](10) NULL,
	[Tiempo] [time](7) NULL,
	[Comentario] [nchar](10) NULL,
	[Actor] [nchar](10) NULL,
	[IdDirector] [uniqueidentifier] NULL,
	[IdGenero] [uniqueidentifier] NULL,
	[IdAutor] [uniqueidentifier] NULL,
	[Imagen] [image] NULL,
 CONSTRAINT [PK_Peliculas] PRIMARY KEY CLUSTERED 
(
	[IdPeliculas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Perfiles]    Script Date: 16/04/2018 11:22:48 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Perfiles](
	[IdPerfil] [uniqueidentifier] NOT NULL,
	[Tipo] [nchar](10) NULL,
	[Imagen] [image] NULL,
	[Nombre] [nchar](10) NULL,
	[Fecha] [date] NULL,
	[IdUsuario] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Perfiles] PRIMARY KEY CLUSTERED 
(
	[IdPerfil] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subscripcion]    Script Date: 16/04/2018 11:22:48 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subscripcion](
	[IdSubscripcion] [uniqueidentifier] NOT NULL,
	[Nombre] [nchar](10) NULL,
	[Costo] [int] NULL,
 CONSTRAINT [PK_Subscripcion] PRIMARY KEY CLUSTERED 
(
	[IdSubscripcion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 16/04/2018 11:22:48 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[IdUsuario] [uniqueidentifier] NOT NULL,
	[Nombre] [nchar](10) NULL,
	[Apellido] [nchar](10) NULL,
	[Correo] [nchar](10) NULL,
	[Tlefono] [nchar](10) NULL,
	[Contraseña] [nchar](10) NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IX_Autor]    Script Date: 16/04/2018 11:22:48 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_Autor] ON [dbo].[Autor]
(
	[IdAutor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Compras]    Script Date: 16/04/2018 11:22:48 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_Compras] ON [dbo].[Compras]
(
	[IdCompras] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_DemandaPelicula]    Script Date: 16/04/2018 11:22:48 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_DemandaPelicula] ON [dbo].[DemandaPelicula]
(
	[IdDemandaPelicula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Director]    Script Date: 16/04/2018 11:22:48 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_Director] ON [dbo].[Director]
(
	[IdDirector] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Estatus]    Script Date: 16/04/2018 11:22:48 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_Estatus] ON [dbo].[Estatus]
(
	[IdEstatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Genero]    Script Date: 16/04/2018 11:22:48 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_Genero] ON [dbo].[Genero]
(
	[IdGenero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MetodoDePago]    Script Date: 16/04/2018 11:22:48 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_MetodoDePago] ON [dbo].[MetodoDePago]
(
	[IdMetodoDePago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Pago]    Script Date: 16/04/2018 11:22:48 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_Pago] ON [dbo].[Pago]
(
	[IdPago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Peliculas]    Script Date: 16/04/2018 11:22:48 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_Peliculas] ON [dbo].[Peliculas]
(
	[IdPeliculas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Perfiles]    Script Date: 16/04/2018 11:22:48 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_Perfiles] ON [dbo].[Perfiles]
(
	[IdPerfil] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Subscripcion]    Script Date: 16/04/2018 11:22:48 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_Subscripcion] ON [dbo].[Subscripcion]
(
	[IdSubscripcion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Usuario]    Script Date: 16/04/2018 11:22:48 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_Usuario] ON [dbo].[Usuario]
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Compras]  WITH CHECK ADD  CONSTRAINT [FK_Compras_Estatus] FOREIGN KEY([IdEstatus])
REFERENCES [dbo].[Estatus] ([IdEstatus])
GO
ALTER TABLE [dbo].[Compras] CHECK CONSTRAINT [FK_Compras_Estatus]
GO
ALTER TABLE [dbo].[Compras]  WITH CHECK ADD  CONSTRAINT [FK_Compras_Subscripcion] FOREIGN KEY([IdSubscripcion])
REFERENCES [dbo].[Subscripcion] ([IdSubscripcion])
GO
ALTER TABLE [dbo].[Compras] CHECK CONSTRAINT [FK_Compras_Subscripcion]
GO
ALTER TABLE [dbo].[Compras]  WITH CHECK ADD  CONSTRAINT [FK_Compras_Usuario] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuario] ([IdUsuario])
GO
ALTER TABLE [dbo].[Compras] CHECK CONSTRAINT [FK_Compras_Usuario]
GO
ALTER TABLE [dbo].[DemandaPelicula]  WITH CHECK ADD  CONSTRAINT [FK_DemandaPelicula_Peliculas] FOREIGN KEY([IdPeliculas])
REFERENCES [dbo].[Peliculas] ([IdPeliculas])
GO
ALTER TABLE [dbo].[DemandaPelicula] CHECK CONSTRAINT [FK_DemandaPelicula_Peliculas]
GO
ALTER TABLE [dbo].[DemandaPelicula]  WITH CHECK ADD  CONSTRAINT [FK_DemandaPelicula_Perfiles] FOREIGN KEY([IdPefiles])
REFERENCES [dbo].[Perfiles] ([IdPerfil])
GO
ALTER TABLE [dbo].[DemandaPelicula] CHECK CONSTRAINT [FK_DemandaPelicula_Perfiles]
GO
ALTER TABLE [dbo].[Pago]  WITH CHECK ADD  CONSTRAINT [FK_Pago_MetodoDePago] FOREIGN KEY([IdMetodoDePago])
REFERENCES [dbo].[MetodoDePago] ([IdMetodoDePago])
GO
ALTER TABLE [dbo].[Pago] CHECK CONSTRAINT [FK_Pago_MetodoDePago]
GO
ALTER TABLE [dbo].[Peliculas]  WITH CHECK ADD  CONSTRAINT [FK_Peliculas_Autor] FOREIGN KEY([IdAutor])
REFERENCES [dbo].[Autor] ([IdAutor])
GO
ALTER TABLE [dbo].[Peliculas] CHECK CONSTRAINT [FK_Peliculas_Autor]
GO
ALTER TABLE [dbo].[Peliculas]  WITH CHECK ADD  CONSTRAINT [FK_Peliculas_Director] FOREIGN KEY([IdDirector])
REFERENCES [dbo].[Director] ([IdDirector])
GO
ALTER TABLE [dbo].[Peliculas] CHECK CONSTRAINT [FK_Peliculas_Director]
GO
ALTER TABLE [dbo].[Peliculas]  WITH CHECK ADD  CONSTRAINT [FK_Peliculas_Genero] FOREIGN KEY([IdGenero])
REFERENCES [dbo].[Genero] ([IdGenero])
GO
ALTER TABLE [dbo].[Peliculas] CHECK CONSTRAINT [FK_Peliculas_Genero]
GO
ALTER TABLE [dbo].[Perfiles]  WITH CHECK ADD  CONSTRAINT [FK_Perfiles_Usuario] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuario] ([IdUsuario])
GO
ALTER TABLE [dbo].[Perfiles] CHECK CONSTRAINT [FK_Perfiles_Usuario]
GO
USE [master]
GO
ALTER DATABASE [Netflix3] SET  READ_WRITE 
GO

Insert into Usuario(
IdUsuario, Nombre, Apellido, Correo, Telefono, Contraseña
)
values(
newid(), 'Alejandro' , 'Martinez' , 'alexmartinez@gmail.com' , '8185246589' , 'qqwertyuiop'
newid(), 'Jose' , 'Rivera', 'joserivera@gmail.com' ,  '8183548578' , 'asdfghj'
newid(), 'Israel' , 'Cantu', 'israelcantu@gmail.com' , '8184568578'  ,  'contraseña'
newid(), 'Alejandro' , 'Rosas', 'alejandrorosas@gmail.com' , '8127545774' , '123456789'
newid(), ' Alexia ' , 'Martinez', 'alexiamartinez@gmail.com' , '8189854123' , '54321'
newid(), ' Rodrigo' , 'Botello', 'botellorodrigo@gmail.com' , '8129547534' , 'rodrigo123'
newid(), 'Juan' , 'Valdez' , 'juanvaldez@gmai.com' , '8137552774' , 'one2tres'
newid(), ' Rosa' , 'Gamez' , 'rosagamez@gmail.com' , '8125559763' , 'matematicas'
newid(), 'Jonathan', 'Moller', 'moller@gmai.com', '8127493574' , 'mollersito'
newid(), 'Alfredo' , 'Holguin' , 'alfredo21@gmail.com' , '8117373165' , 'olafsa21'
)

Insert into Director(
IdDirector, Nombre
)
values(
newid(), 'Adam Sandler' 
newid(), 'Jose Jose' 
newid(), 'Eugenio Derbez' 
newid(), ' Alpa Chino' 
newid(), ' Juan Gabriel' 
newid(), ' Guillermo del toro'
newid(), ' Iñarritu' 
newid(), ' Juan Escutia' 
newid(), 'Roberto Elizondo'
newid(), 'Juan de la Barrera' 
)

Insert into Genero(
IdGenero, Tipo
)
values(
newid(), 'Comedia' 
newid(), 'Romance' 
newid(), 'Romance' 
newid(), 'Terror' 
newid(), ' Accion' 
newid(), ' Terror'
newid(), 'Musical' 
newid(), 'Comedia' 
newid(), 'Comedia'
newid(), 'Suspenspo' 
)

Insert into Subscripcion(
IdSubscripion, Tipo, Costo
)
values(
newid(), 'Mensual' , '100'
newid(), 'Mensual' , '100'
newid(), 'Mensual' , '100'
newid(), 'Trimestre' , '250'
newid(), 'Semestre' , '600'
newid(), 'Mensual' , '100'
newid(), 'Mensual' , '100'
newid(), 'Mensual' , '100'
newid(), 'Mensual' , '100'
newid(), 'Mensual' , '100'
)

Insert into Peliculas(
IdPeliculas, Nombre, Sinopsis, Tiempo, Comentario, Actor,
)
values(
newid(), 'La toalla del mojado' , 'Historia de una toalla de un mojado' , ' 01:20:00 ' , 'Muy buena pelicula' , 'Frankie Rivers' 
newid(), 'Como si fuera la primera vez' , ' Un chico enamora cada dia a su enamorada' , ' 02:00:00 ' ,' Excelente pelicula' , ' Adam Sadler'
newid(), 'It' , 'Un payaso loco que se roba a los niños', ' 01:45:00 ' , 'Pelicula de terror muy interesante' , ' Tupac' 
newid(), 'Complices' , ' Comedia romantica Mexicana' , '01:35:00' , 'Buena, pero queda a dever' , ' Arath de la Torre'
newid(), 'Avatar' , ' Pelicula de ciencia ficción con alta animacion' , ' 02:45:00' , 'Pelicula sobrevalorada respecto a su contenido' , ' Jennifer Lopez'
newid(), 'Lego' , ' Pelicula animada sobre los juguetes lego' , ' 01:32:00' , 
newid(), 'Frozen' , 'Pelicula animada sobre el amor' , '01:22:00' , 'Y si hacemos un muñeco' , ' Elza'    
newid(), 'Francotirador' , ' Soldado americano con la pasion de ser franco' , ' 01:40:00 ' , ' Excelente pelicula' , ' Bradley Cooper'
newid(), ' Ratatouille' , ' Pelicula sobre una rata que hace comida' , ' 01:46:00' , ' La veria ocacionalmente' , 'Shefsito'
newid(), 'Donde estan las rubias' , ' Comedia sobre dos agentes de policia disfrasados' , '01:56:00' , ' Excelente comedia' , 'Shawn Wayans'
)

Update Usuario(
set Nombre = 'Juan' 
where telefono = '8185246589' 
)

Update Usuario(
set Nombre = 'Roberto' 
where telefono =  '8183548578'
)

Update Usuario(
set Nombre = 'Roberto' 
where telefono =  '8127545774'
)

Update Usuario(
set Nombre = 'Roberto' 
where telefono =  '8189854123'
)

Update Usuario(
set Nombre = 'Roberto' 
where telefono =  '8129547534'
)


delete
from Peliculas
where Nombre in ('Lego')

delete
from Peliculas
where Nombre in ('Ratatoulle')

delete
from Peliculas
where Nombre in ('Francotirador')

delete
from Peliculas
where Nombre in ('Donde estan las rubias')

delete
from Peliculas
where Nombre in ('Frozen')


