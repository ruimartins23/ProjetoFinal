USE [master]
GO
/****** Object:  Database [RM_SiteReceitas]    Script Date: 24/11/2020 12:23:54 ******/
CREATE DATABASE [RM_SiteReceitas]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ProjetoFinal', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ProjetoFinal.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ProjetoFinal_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ProjetoFinal_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [RM_SiteReceitas] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [RM_SiteReceitas].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [RM_SiteReceitas] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [RM_SiteReceitas] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [RM_SiteReceitas] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [RM_SiteReceitas] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [RM_SiteReceitas] SET ARITHABORT OFF 
GO
ALTER DATABASE [RM_SiteReceitas] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [RM_SiteReceitas] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [RM_SiteReceitas] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [RM_SiteReceitas] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [RM_SiteReceitas] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [RM_SiteReceitas] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [RM_SiteReceitas] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [RM_SiteReceitas] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [RM_SiteReceitas] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [RM_SiteReceitas] SET  DISABLE_BROKER 
GO
ALTER DATABASE [RM_SiteReceitas] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [RM_SiteReceitas] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [RM_SiteReceitas] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [RM_SiteReceitas] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [RM_SiteReceitas] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [RM_SiteReceitas] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [RM_SiteReceitas] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [RM_SiteReceitas] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [RM_SiteReceitas] SET  MULTI_USER 
GO
ALTER DATABASE [RM_SiteReceitas] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [RM_SiteReceitas] SET DB_CHAINING OFF 
GO
ALTER DATABASE [RM_SiteReceitas] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [RM_SiteReceitas] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [RM_SiteReceitas] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [RM_SiteReceitas] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [RM_SiteReceitas] SET QUERY_STORE = OFF
GO
USE [RM_SiteReceitas]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 24/11/2020 12:23:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[Account_Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Utilizador_Id] [int] NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[Account_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 24/11/2020 12:23:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categoria](
	[Categoria_Id] [int] IDENTITY(1,1) NOT NULL,
	[ValorCategoria] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Categoria] PRIMARY KEY CLUSTERED 
(
	[Categoria_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CategoriaIngrediente]    Script Date: 24/11/2020 12:23:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoriaIngrediente](
	[Categoria_Id] [int] NOT NULL,
	[Ingrediente_Id] [int] NOT NULL,
 CONSTRAINT [PK_CategoriaIngrediente] PRIMARY KEY CLUSTERED 
(
	[Categoria_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comentario]    Script Date: 24/11/2020 12:23:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comentario](
	[Comentario_Id] [int] IDENTITY(1,1) NOT NULL,
	[ValorComentario] [ntext] NOT NULL,
	[Receita_Id] [int] NOT NULL,
	[Utilizador_Id] [int] NOT NULL,
	[DatePost] [date] NOT NULL,
 CONSTRAINT [PK_Comentario] PRIMARY KEY CLUSTERED 
(
	[Comentario_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ingrediente]    Script Date: 24/11/2020 12:23:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ingrediente](
	[Ingrediente_Id] [int] IDENTITY(1,1) NOT NULL,
	[Produto] [nvarchar](50) NOT NULL,
	[Unidade] [nvarchar](50) NOT NULL,
	[Receita_id] [int] NULL,
 CONSTRAINT [PK_Ingredientes] PRIMARY KEY CLUSTERED 
(
	[Ingrediente_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Receita]    Script Date: 24/11/2020 12:23:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Receita](
	[Receita_id] [int] IDENTITY(1,1) NOT NULL,
	[NomeRec] [nvarchar](50) NOT NULL,
	[Descricao] [ntext] NOT NULL,
	[Duracao] [nvarchar](10) NOT NULL,
	[Dificuldade] [nvarchar](10) NOT NULL,
	[Rating] [int] NOT NULL,
	[Categoria] [nvarchar](10) NOT NULL,
	[Utilizador_id] [int] NOT NULL,
	[Comentário] [ntext] NULL,
 CONSTRAINT [PK_Receita] PRIMARY KEY CLUSTERED 
(
	[Receita_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Utilizador]    Script Date: 24/11/2020 12:23:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Utilizador](
	[Utilizador_id] [int] IDENTITY(1,1) NOT NULL,
	[NomeUser] [nvarchar](25) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](20) NOT NULL,
	[BirthDate] [date] NOT NULL,
	[IsRegisted] [tinyint] NOT NULL,
	[IsAdmin] [tinyint] NOT NULL,
	[Account_Id] [int] NULL,
 CONSTRAINT [PK_Utilizador] PRIMARY KEY CLUSTERED 
(
	[Utilizador_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([Account_Id], [Username], [Password], [Utilizador_Id]) VALUES (1, N'ruimartins_23', N'1234567789', 3)
INSERT [dbo].[Account] ([Account_Id], [Username], [Password], [Utilizador_Id]) VALUES (2, N'FernandoAndrade2323', N'1234567789', 4)
INSERT [dbo].[Account] ([Account_Id], [Username], [Password], [Utilizador_Id]) VALUES (3, N'FernandoAndrade2323', N'1234567789', 4)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Categoria] ON 

INSERT [dbo].[Categoria] ([Categoria_Id], [ValorCategoria]) VALUES (1, N'Peixe')
INSERT [dbo].[Categoria] ([Categoria_Id], [ValorCategoria]) VALUES (2, N'Carne')
INSERT [dbo].[Categoria] ([Categoria_Id], [ValorCategoria]) VALUES (3, N'Ovos')
INSERT [dbo].[Categoria] ([Categoria_Id], [ValorCategoria]) VALUES (4, N'Sobremesa')
INSERT [dbo].[Categoria] ([Categoria_Id], [ValorCategoria]) VALUES (5, N'Bebidas')
INSERT [dbo].[Categoria] ([Categoria_Id], [ValorCategoria]) VALUES (6, N'Vegetariano/Vegan')
INSERT [dbo].[Categoria] ([Categoria_Id], [ValorCategoria]) VALUES (7, N'Vegetariano/Vegan')
SET IDENTITY_INSERT [dbo].[Categoria] OFF
GO
SET IDENTITY_INSERT [dbo].[Ingrediente] ON 

INSERT [dbo].[Ingrediente] ([Ingrediente_Id], [Produto], [Unidade], [Receita_id]) VALUES (1, N'Ovos', N'1', 12)
INSERT [dbo].[Ingrediente] ([Ingrediente_Id], [Produto], [Unidade], [Receita_id]) VALUES (2, N'Bife de Peru', N'100g', 13)
INSERT [dbo].[Ingrediente] ([Ingrediente_Id], [Produto], [Unidade], [Receita_id]) VALUES (3, N'Azeite', N'1 colher de café', NULL)
SET IDENTITY_INSERT [dbo].[Ingrediente] OFF
GO
SET IDENTITY_INSERT [dbo].[Receita] ON 

INSERT [dbo].[Receita] ([Receita_id], [NomeRec], [Descricao], [Duracao], [Dificuldade], [Rating], [Categoria], [Utilizador_id], [Comentário]) VALUES (12, N'Ovos Mexidos', N'Bater os ovos e meter na frigideira', N'15', N'1', 4, N'Ovos', 3, NULL)
INSERT [dbo].[Receita] ([Receita_id], [NomeRec], [Descricao], [Duracao], [Dificuldade], [Rating], [Categoria], [Utilizador_id], [Comentário]) VALUES (13, N'Bife de peru grelhado', N'Temperar o bife e grelhar', N'30', N'2', 3, N'Carne', 4, NULL)
INSERT [dbo].[Receita] ([Receita_id], [NomeRec], [Descricao], [Duracao], [Dificuldade], [Rating], [Categoria], [Utilizador_id], [Comentário]) VALUES (14, N'Ovos Mexidos', N'Bater os ovos e meter na frigideira', N'15', N'1', 4, N'Ovos', 3, NULL)
INSERT [dbo].[Receita] ([Receita_id], [NomeRec], [Descricao], [Duracao], [Dificuldade], [Rating], [Categoria], [Utilizador_id], [Comentário]) VALUES (15, N'Bife de peru grelhado', N'Temperar o bife e grelhar', N'30', N'2', 3, N'Carne', 4, NULL)
SET IDENTITY_INSERT [dbo].[Receita] OFF
GO
SET IDENTITY_INSERT [dbo].[Utilizador] ON 

INSERT [dbo].[Utilizador] ([Utilizador_id], [NomeUser], [Email], [Password], [BirthDate], [IsRegisted], [IsAdmin], [Account_Id]) VALUES (3, N'Rui', N'teste@teste.pt', N'12345', CAST(N'1997-02-02' AS Date), 1, 1, 1)
INSERT [dbo].[Utilizador] ([Utilizador_id], [NomeUser], [Email], [Password], [BirthDate], [IsRegisted], [IsAdmin], [Account_Id]) VALUES (4, N'FernandoAndrade', N'fernando@teste.pt', N'987654321', CAST(N'1962-10-10' AS Date), 1, 0, NULL)
INSERT [dbo].[Utilizador] ([Utilizador_id], [NomeUser], [Email], [Password], [BirthDate], [IsRegisted], [IsAdmin], [Account_Id]) VALUES (5, N'ruimartins', N'rui_miguel97@hotmail.com', N'123456789', CAST(N'1997-10-10' AS Date), 1, 1, NULL)
INSERT [dbo].[Utilizador] ([Utilizador_id], [NomeUser], [Email], [Password], [BirthDate], [IsRegisted], [IsAdmin], [Account_Id]) VALUES (6, N'FernandoAndrade', N'fernando@teste.pt', N'987654321', CAST(N'1962-10-10' AS Date), 1, 0, NULL)
SET IDENTITY_INSERT [dbo].[Utilizador] OFF
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Utilizador] FOREIGN KEY([Utilizador_Id])
REFERENCES [dbo].[Utilizador] ([Utilizador_id])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Utilizador]
GO
ALTER TABLE [dbo].[CategoriaIngrediente]  WITH CHECK ADD  CONSTRAINT [FK_CategoriaIngrediente_Categoria] FOREIGN KEY([Categoria_Id])
REFERENCES [dbo].[Categoria] ([Categoria_Id])
GO
ALTER TABLE [dbo].[CategoriaIngrediente] CHECK CONSTRAINT [FK_CategoriaIngrediente_Categoria]
GO
ALTER TABLE [dbo].[CategoriaIngrediente]  WITH CHECK ADD  CONSTRAINT [FK_CategoriaIngrediente_Ingrediente] FOREIGN KEY([Ingrediente_Id])
REFERENCES [dbo].[Ingrediente] ([Ingrediente_Id])
GO
ALTER TABLE [dbo].[CategoriaIngrediente] CHECK CONSTRAINT [FK_CategoriaIngrediente_Ingrediente]
GO
ALTER TABLE [dbo].[Comentario]  WITH CHECK ADD  CONSTRAINT [FK_Comentario_Receita] FOREIGN KEY([Receita_Id])
REFERENCES [dbo].[Receita] ([Receita_id])
GO
ALTER TABLE [dbo].[Comentario] CHECK CONSTRAINT [FK_Comentario_Receita]
GO
ALTER TABLE [dbo].[Ingrediente]  WITH CHECK ADD  CONSTRAINT [FK_Ingrediente_Receita] FOREIGN KEY([Receita_id])
REFERENCES [dbo].[Receita] ([Receita_id])
GO
ALTER TABLE [dbo].[Ingrediente] CHECK CONSTRAINT [FK_Ingrediente_Receita]
GO
ALTER TABLE [dbo].[Receita]  WITH CHECK ADD  CONSTRAINT [FK_Receita_Utilizador] FOREIGN KEY([Utilizador_id])
REFERENCES [dbo].[Utilizador] ([Utilizador_id])
GO
ALTER TABLE [dbo].[Receita] CHECK CONSTRAINT [FK_Receita_Utilizador]
GO
/****** Object:  StoredProcedure [dbo].[spGetAllAccount]    Script Date: 24/11/2020 12:23:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spGetAllAccount]
AS
BEGIN
SELECT * FROM Account
END
GO
/****** Object:  StoredProcedure [dbo].[spGetAllCategoria]    Script Date: 24/11/2020 12:23:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spGetAllCategoria]
AS
BEGIN
SELECT * FROM Categoria
END
GO
/****** Object:  StoredProcedure [dbo].[spGetAllComentario]    Script Date: 24/11/2020 12:23:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spGetAllComentario]
AS
BEGIN
SELECT * FROM Comentario
END
GO
/****** Object:  StoredProcedure [dbo].[spGetAllIngrediente]    Script Date: 24/11/2020 12:23:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spGetAllIngrediente]
AS
BEGIN
SELECT * FROM Ingrediente
END
GO
/****** Object:  StoredProcedure [dbo].[spGetAllReceita]    Script Date: 24/11/2020 12:23:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spGetAllReceita]
AS
BEGIN
SELECT * FROM Receita
END
GO
/****** Object:  StoredProcedure [dbo].[spGetAllUtilizador]    Script Date: 24/11/2020 12:23:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spGetAllUtilizador]
AS
BEGIN
SELECT * FROM Utilizador
END
GO
/****** Object:  StoredProcedure [dbo].[spGetReceitaById]    Script Date: 24/11/2020 12:23:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spGetReceitaById]
@id int
AS
BEGIN
	SELECT * FROM Receita
	WHERE Receita_id = @id
END
GO
USE [master]
GO
ALTER DATABASE [RM_SiteReceitas] SET  READ_WRITE 
GO
