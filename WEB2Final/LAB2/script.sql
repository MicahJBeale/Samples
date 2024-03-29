USE [master]
GO
/****** Object:  Database [MicahBealeDataBase]    Script Date: 5/9/2018 8:30:43 PM ******/
CREATE DATABASE [MicahBealeDataBase]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MicahBealeDataBase', FILENAME = N'C:\Users\public\MicahBealeDataBase.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MicahBealeDataBase_log', FILENAME = N'C:\Users\public\MicahBealeDataBase.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [MicahBealeDataBase] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MicahBealeDataBase].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MicahBealeDataBase] SET ANSI_NULL_DEFAULT ON 
GO
ALTER DATABASE [MicahBealeDataBase] SET ANSI_NULLS ON 
GO
ALTER DATABASE [MicahBealeDataBase] SET ANSI_PADDING ON 
GO
ALTER DATABASE [MicahBealeDataBase] SET ANSI_WARNINGS ON 
GO
ALTER DATABASE [MicahBealeDataBase] SET ARITHABORT ON 
GO
ALTER DATABASE [MicahBealeDataBase] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MicahBealeDataBase] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MicahBealeDataBase] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MicahBealeDataBase] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MicahBealeDataBase] SET CURSOR_DEFAULT  LOCAL 
GO
ALTER DATABASE [MicahBealeDataBase] SET CONCAT_NULL_YIELDS_NULL ON 
GO
ALTER DATABASE [MicahBealeDataBase] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MicahBealeDataBase] SET QUOTED_IDENTIFIER ON 
GO
ALTER DATABASE [MicahBealeDataBase] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MicahBealeDataBase] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MicahBealeDataBase] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MicahBealeDataBase] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MicahBealeDataBase] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MicahBealeDataBase] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MicahBealeDataBase] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MicahBealeDataBase] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MicahBealeDataBase] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MicahBealeDataBase] SET RECOVERY FULL 
GO
ALTER DATABASE [MicahBealeDataBase] SET  MULTI_USER 
GO
ALTER DATABASE [MicahBealeDataBase] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MicahBealeDataBase] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MicahBealeDataBase] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MicahBealeDataBase] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MicahBealeDataBase] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MicahBealeDataBase] SET QUERY_STORE = OFF
GO
USE [MicahBealeDataBase]
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
USE [MicahBealeDataBase]
GO
/****** Object:  Table [dbo].[Brands]    Script Date: 5/9/2018 8:30:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brands](
	[BrandID] [int] NOT NULL,
	[BrandName] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[BrandID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brands$]    Script Date: 5/9/2018 8:30:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brands$](
	[BrandID] [float] NULL,
	[BrandName] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 5/9/2018 8:30:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryID] [int] NOT NULL,
	[CategoryName] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories$]    Script Date: 5/9/2018 8:30:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories$](
	[CategoryID] [float] NULL,
	[CategoryName] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 5/9/2018 8:30:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[CommentID] [int] NOT NULL,
	[CommentRemarks] [varchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CommentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Items]    Script Date: 5/9/2018 8:30:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Items](
	[ItemName] [varchar](50) NOT NULL,
	[ItemQuantity] [int] NOT NULL,
	[BrandID] [int] NOT NULL,
	[CategoryID] [int] NOT NULL,
	[ItemPrice] [decimal](18, 0) NOT NULL,
	[RatingID] [int] NOT NULL,
	[CommentID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ItemName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ratings]    Script Date: 5/9/2018 8:30:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ratings](
	[RatingID] [int] NOT NULL,
	[RatingStars] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RatingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Brands] ([BrandID], [BrandName]) VALUES (0, N'Dell')
INSERT [dbo].[Brands] ([BrandID], [BrandName]) VALUES (1, N'HP')
INSERT [dbo].[Brands] ([BrandID], [BrandName]) VALUES (2, N'Sony')
INSERT [dbo].[Brands] ([BrandID], [BrandName]) VALUES (3, N'Nintendo')
INSERT [dbo].[Brands] ([BrandID], [BrandName]) VALUES (4, N'Microsoft')
INSERT [dbo].[Brands] ([BrandID], [BrandName]) VALUES (5, N'Macintosh')
INSERT [dbo].[Brands] ([BrandID], [BrandName]) VALUES (6, N'Adobe')
INSERT [dbo].[Brands$] ([BrandID], [BrandName]) VALUES (0, N'Dell')
INSERT [dbo].[Brands$] ([BrandID], [BrandName]) VALUES (1, N'HP')
INSERT [dbo].[Brands$] ([BrandID], [BrandName]) VALUES (2, N'Sony')
INSERT [dbo].[Brands$] ([BrandID], [BrandName]) VALUES (3, N'Nintendo')
INSERT [dbo].[Brands$] ([BrandID], [BrandName]) VALUES (4, N'Microsoft')
INSERT [dbo].[Brands$] ([BrandID], [BrandName]) VALUES (5, N'Macintosh')
INSERT [dbo].[Brands$] ([BrandID], [BrandName]) VALUES (6, N'Adobe')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (0, N'*')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (1, N'Game Consoles')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (2, N'Games')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (3, N'Productivity Software')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (4, N'Accessories')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (5, N'Computers')
INSERT [dbo].[Categories$] ([CategoryID], [CategoryName]) VALUES (0, N'*')
INSERT [dbo].[Categories$] ([CategoryID], [CategoryName]) VALUES (1, N'Game Consoles')
INSERT [dbo].[Categories$] ([CategoryID], [CategoryName]) VALUES (2, N'Games')
INSERT [dbo].[Categories$] ([CategoryID], [CategoryName]) VALUES (3, N'Productivity Software')
INSERT [dbo].[Categories$] ([CategoryID], [CategoryName]) VALUES (4, N'Accessories')
INSERT [dbo].[Categories$] ([CategoryID], [CategoryName]) VALUES (5, N'Computers')
INSERT [dbo].[Comments] ([CommentID], [CommentRemarks]) VALUES (0, N'Best PC I''ce ever bought.')
INSERT [dbo].[Comments] ([CommentID], [CommentRemarks]) VALUES (1, N'Best Laptop I have ever bought.')
INSERT [dbo].[Comments] ([CommentID], [CommentRemarks]) VALUES (2, N'Best Console I''ve ever bought.')
INSERT [dbo].[Comments] ([CommentID], [CommentRemarks]) VALUES (3, N'Best Accessory I have ever bought.')
INSERT [dbo].[Comments] ([CommentID], [CommentRemarks]) VALUES (4, N'Best Game I have ever bought.')
INSERT [dbo].[Comments] ([CommentID], [CommentRemarks]) VALUES (5, N'Best Productivity Software I have ever bought.')
INSERT [dbo].[Comments] ([CommentID], [CommentRemarks]) VALUES (6, N'Worst PC I''ve ever bought.')
INSERT [dbo].[Comments] ([CommentID], [CommentRemarks]) VALUES (7, N'Worst Laptop I''ve ever bought.')
INSERT [dbo].[Comments] ([CommentID], [CommentRemarks]) VALUES (8, N'Worst Console I have ever bought.')
INSERT [dbo].[Comments] ([CommentID], [CommentRemarks]) VALUES (9, N'Worst Accessory I have ever bought.')
INSERT [dbo].[Comments] ([CommentID], [CommentRemarks]) VALUES (10, N'Worst Game I have ever bought')
INSERT [dbo].[Comments] ([CommentID], [CommentRemarks]) VALUES (11, N'Worst Productivity software I have ever bought')
INSERT [dbo].[Comments] ([CommentID], [CommentRemarks]) VALUES (12, N'Mac never fails yet again.')
INSERT [dbo].[Comments] ([CommentID], [CommentRemarks]) VALUES (13, N'Wow Apple... get your act together.')
INSERT [dbo].[Comments] ([CommentID], [CommentRemarks]) VALUES (14, N'No review is yet available for this new product.')
INSERT [dbo].[Items] ([ItemName], [ItemQuantity], [BrandID], [CategoryID], [ItemPrice], [RatingID], [CommentID]) VALUES (N'Adobe Photoshop', 100, 6, 3, CAST(250 AS Decimal(18, 0)), 0, 5)
INSERT [dbo].[Items] ([ItemName], [ItemQuantity], [BrandID], [CategoryID], [ItemPrice], [RatingID], [CommentID]) VALUES (N'Adobe Photoshop monthly subscription', 100, 6, 3, CAST(20 AS Decimal(18, 0)), 5, 11)
INSERT [dbo].[Items] ([ItemName], [ItemQuantity], [BrandID], [CategoryID], [ItemPrice], [RatingID], [CommentID]) VALUES (N'Dell XPS 2018', 500, 0, 5, CAST(700 AS Decimal(18, 0)), 0, 0)
INSERT [dbo].[Items] ([ItemName], [ItemQuantity], [BrandID], [CategoryID], [ItemPrice], [RatingID], [CommentID]) VALUES (N'God of War PS4', 1000, 2, 2, CAST(60 AS Decimal(18, 0)), 0, 4)
INSERT [dbo].[Items] ([ItemName], [ItemQuantity], [BrandID], [CategoryID], [ItemPrice], [RatingID], [CommentID]) VALUES (N'HP Basic Wired mouse keyboard combo', 100, 1, 4, CAST(20 AS Decimal(18, 0)), 4, 9)
INSERT [dbo].[Items] ([ItemName], [ItemQuantity], [BrandID], [CategoryID], [ItemPrice], [RatingID], [CommentID]) VALUES (N'HP Omen 2018', 300, 1, 5, CAST(1200 AS Decimal(18, 0)), 1, 1)
INSERT [dbo].[Items] ([ItemName], [ItemQuantity], [BrandID], [CategoryID], [ItemPrice], [RatingID], [CommentID]) VALUES (N'HP Pavillion Wave Desktop', 1000, 1, 5, CAST(550 AS Decimal(18, 0)), 5, 6)
INSERT [dbo].[Items] ([ItemName], [ItemQuantity], [BrandID], [CategoryID], [ItemPrice], [RatingID], [CommentID]) VALUES (N'MacBook Air 2018', 2000, 5, 5, CAST(800 AS Decimal(18, 0)), 5, 13)
INSERT [dbo].[Items] ([ItemName], [ItemQuantity], [BrandID], [CategoryID], [ItemPrice], [RatingID], [CommentID]) VALUES (N'MacBook Pro 2018 TouchBar', 3000, 5, 5, CAST(2000 AS Decimal(18, 0)), 0, 12)
INSERT [dbo].[Items] ([ItemName], [ItemQuantity], [BrandID], [CategoryID], [ItemPrice], [RatingID], [CommentID]) VALUES (N'Microsoft Sculpt', 100, 4, 4, CAST(70 AS Decimal(18, 0)), 3, 3)
INSERT [dbo].[Items] ([ItemName], [ItemQuantity], [BrandID], [CategoryID], [ItemPrice], [RatingID], [CommentID]) VALUES (N'Microsoft SurfaceBook', 100, 4, 5, CAST(3000 AS Decimal(18, 0)), 5, 7)
INSERT [dbo].[Items] ([ItemName], [ItemQuantity], [BrandID], [CategoryID], [ItemPrice], [RatingID], [CommentID]) VALUES (N'Nintendo Switch', 1000, 3, 1, CAST(300 AS Decimal(18, 0)), 0, 2)
INSERT [dbo].[Items] ([ItemName], [ItemQuantity], [BrandID], [CategoryID], [ItemPrice], [RatingID], [CommentID]) VALUES (N'PS4 Pro', 500, 2, 1, CAST(400 AS Decimal(18, 0)), 3, 8)
INSERT [dbo].[Items] ([ItemName], [ItemQuantity], [BrandID], [CategoryID], [ItemPrice], [RatingID], [CommentID]) VALUES (N'Xbox one X', 2000, 4, 1, CAST(400 AS Decimal(18, 0)), 1, 2)
INSERT [dbo].[Ratings] ([RatingID], [RatingStars]) VALUES (0, 5)
INSERT [dbo].[Ratings] ([RatingID], [RatingStars]) VALUES (1, 4)
INSERT [dbo].[Ratings] ([RatingID], [RatingStars]) VALUES (2, 3)
INSERT [dbo].[Ratings] ([RatingID], [RatingStars]) VALUES (3, 2)
INSERT [dbo].[Ratings] ([RatingID], [RatingStars]) VALUES (4, 1)
INSERT [dbo].[Ratings] ([RatingID], [RatingStars]) VALUES (5, 0)
ALTER TABLE [dbo].[Items]  WITH CHECK ADD  CONSTRAINT [FK_Items_ToTable] FOREIGN KEY([BrandID])
REFERENCES [dbo].[Brands] ([BrandID])
GO
ALTER TABLE [dbo].[Items] CHECK CONSTRAINT [FK_Items_ToTable]
GO
ALTER TABLE [dbo].[Items]  WITH CHECK ADD  CONSTRAINT [FK_Items_ToTable_1] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([CategoryID])
GO
ALTER TABLE [dbo].[Items] CHECK CONSTRAINT [FK_Items_ToTable_1]
GO
ALTER TABLE [dbo].[Items]  WITH CHECK ADD  CONSTRAINT [FK_Items_ToTable_2] FOREIGN KEY([RatingID])
REFERENCES [dbo].[Ratings] ([RatingID])
GO
ALTER TABLE [dbo].[Items] CHECK CONSTRAINT [FK_Items_ToTable_2]
GO
ALTER TABLE [dbo].[Items]  WITH CHECK ADD  CONSTRAINT [FK_Items_ToTable_3] FOREIGN KEY([CommentID])
REFERENCES [dbo].[Comments] ([CommentID])
GO
ALTER TABLE [dbo].[Items] CHECK CONSTRAINT [FK_Items_ToTable_3]
GO
USE [master]
GO
ALTER DATABASE [MicahBealeDataBase] SET  READ_WRITE 
GO
