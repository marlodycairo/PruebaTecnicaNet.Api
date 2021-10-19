USE [master]
GO
/****** Object:  Database [Library]    Script Date: 17/10/2021 2:15:11 a. m. ******/
CREATE DATABASE [Library]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Library', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Library.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Library_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Library_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Library] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Library].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Library] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Library] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Library] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Library] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Library] SET ARITHABORT OFF 
GO
ALTER DATABASE [Library] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Library] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Library] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Library] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Library] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Library] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Library] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Library] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Library] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Library] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Library] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Library] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Library] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Library] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Library] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Library] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Library] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Library] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Library] SET  MULTI_USER 
GO
ALTER DATABASE [Library] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Library] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Library] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Library] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Library] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Library] SET QUERY_STORE = OFF
GO
USE [Library]
GO
/****** Object:  Table [dbo].[Authors]    Script Date: 17/10/2021 2:15:11 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Authors](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fullname] [varchar](250) NULL,
	[birthdate] [datetime] NULL,
	[cityOrigin] [varchar](150) NULL,
	[email] [varchar](250) NULL,
 CONSTRAINT [PK_Authors] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Books]    Script Date: 17/10/2021 2:15:11 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Books](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](250) NULL,
	[date] [date] NULL,
	[genre] [int] NULL,
	[numberOfPages] [int] NULL,
	[authorId] [int] NOT NULL,
 CONSTRAINT [PK_Books] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Authors] ON 

INSERT [dbo].[Authors] ([id], [fullname], [birthdate], [cityOrigin], [email]) VALUES (1, N'Jack London', CAST(N'1876-01-12T00:00:00.000' AS DateTime), N'San Francisco', N'email@notfound.com')
INSERT [dbo].[Authors] ([id], [fullname], [birthdate], [cityOrigin], [email]) VALUES (2, N'Rhonda Byrne', CAST(N'1945-01-01T00:00:00.000' AS DateTime), N'Melbourne - Australia', N'email@notfound.com')
INSERT [dbo].[Authors] ([id], [fullname], [birthdate], [cityOrigin], [email]) VALUES (8, N'Yann Martel', CAST(N'1963-06-25T00:00:00.000' AS DateTime), N'Salamanca-España', N'ymartel@yannmartel.com')
INSERT [dbo].[Authors] ([id], [fullname], [birthdate], [cityOrigin], [email]) VALUES (9, N'Harper Lee', CAST(N'1926-04-28T00:00:00.000' AS DateTime), N'Monroeville - Alabama', N'email@notfound.com')
INSERT [dbo].[Authors] ([id], [fullname], [birthdate], [cityOrigin], [email]) VALUES (10, N'Sir Arthur Conan Doyle', CAST(N'1859-05-22T00:00:00.000' AS DateTime), N'Edimburgo', N'email@notfound.com')
INSERT [dbo].[Authors] ([id], [fullname], [birthdate], [cityOrigin], [email]) VALUES (11, N'Stephen King', CAST(N'1947-09-21T00:00:00.000' AS DateTime), N'Portland - Maine', N'email@notfound.com')
SET IDENTITY_INSERT [dbo].[Authors] OFF
GO
SET IDENTITY_INSERT [dbo].[Books] ON 

INSERT [dbo].[Books] ([id], [title], [date], [genre], [numberOfPages], [authorId]) VALUES (11, N'Life of Pi', CAST(N'2003-05-01' AS Date), 1, 326, 8)
INSERT [dbo].[Books] ([id], [title], [date], [genre], [numberOfPages], [authorId]) VALUES (12, N'Smile', CAST(N'2009-01-01' AS Date), 14, 211, 8)
INSERT [dbo].[Books] ([id], [title], [date], [genre], [numberOfPages], [authorId]) VALUES (13, N'The Call of the Wild', CAST(N'1903-01-01' AS Date), 1, 56, 1)
INSERT [dbo].[Books] ([id], [title], [date], [genre], [numberOfPages], [authorId]) VALUES (14, N'Carrie', CAST(N'1974-04-05' AS Date), 7, 304, 11)
SET IDENTITY_INSERT [dbo].[Books] OFF
GO
ALTER TABLE [dbo].[Books]  WITH CHECK ADD  CONSTRAINT [FK_Books_Authors] FOREIGN KEY([authorId])
REFERENCES [dbo].[Authors] ([id])
GO
ALTER TABLE [dbo].[Books] CHECK CONSTRAINT [FK_Books_Authors]
GO
USE [master]
GO
ALTER DATABASE [Library] SET  READ_WRITE 
GO
