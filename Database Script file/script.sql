USE [master]
GO
/****** Object:  Database [OnlineHotelManagementSystem]    Script Date: 20-10-2022 20:24:13 ******/
CREATE DATABASE [OnlineHotelManagementSystem]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'OnlineHotelManagementSystem', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\OnlineHotelManagementSystem.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'OnlineHotelManagementSystem_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\OnlineHotelManagementSystem_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [OnlineHotelManagementSystem] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [OnlineHotelManagementSystem].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [OnlineHotelManagementSystem] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [OnlineHotelManagementSystem] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [OnlineHotelManagementSystem] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [OnlineHotelManagementSystem] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [OnlineHotelManagementSystem] SET ARITHABORT OFF 
GO
ALTER DATABASE [OnlineHotelManagementSystem] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [OnlineHotelManagementSystem] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [OnlineHotelManagementSystem] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [OnlineHotelManagementSystem] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [OnlineHotelManagementSystem] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [OnlineHotelManagementSystem] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [OnlineHotelManagementSystem] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [OnlineHotelManagementSystem] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [OnlineHotelManagementSystem] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [OnlineHotelManagementSystem] SET  ENABLE_BROKER 
GO
ALTER DATABASE [OnlineHotelManagementSystem] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [OnlineHotelManagementSystem] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [OnlineHotelManagementSystem] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [OnlineHotelManagementSystem] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [OnlineHotelManagementSystem] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [OnlineHotelManagementSystem] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [OnlineHotelManagementSystem] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [OnlineHotelManagementSystem] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [OnlineHotelManagementSystem] SET  MULTI_USER 
GO
ALTER DATABASE [OnlineHotelManagementSystem] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [OnlineHotelManagementSystem] SET DB_CHAINING OFF 
GO
ALTER DATABASE [OnlineHotelManagementSystem] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [OnlineHotelManagementSystem] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [OnlineHotelManagementSystem] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [OnlineHotelManagementSystem] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [OnlineHotelManagementSystem] SET QUERY_STORE = OFF
GO
USE [OnlineHotelManagementSystem]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 20-10-2022 20:24:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Admins]    Script Date: 20-10-2022 20:24:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admins](
	[Username] [nvarchar](450) NOT NULL,
	[PasswordHash] [varbinary](max) NOT NULL,
	[PasswordSalt] [varbinary](max) NOT NULL,
	[RefreshToken] [nvarchar](max) NOT NULL,
	[TokenCreated] [datetime2](7) NOT NULL,
	[TokenExpires] [datetime2](7) NOT NULL,
	[Role] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Admins] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Guests]    Script Date: 20-10-2022 20:24:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Guests](
	[GuestId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[PhnNumber] [nvarchar](max) NOT NULL,
	[gender] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Guests] PRIMARY KEY CLUSTERED 
(
	[GuestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inventoriess]    Script Date: 20-10-2022 20:24:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventoriess](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[InventoryName] [nvarchar](max) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [float] NOT NULL,
 CONSTRAINT [PK_Inventoriess] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payments]    Script Date: 20-10-2022 20:24:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payments](
	[PaymentID] [int] IDENTITY(1,1) NOT NULL,
	[CardholderName] [nvarchar](max) NOT NULL,
	[CardNumber] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Payments] PRIMARY KEY CLUSTERED 
(
	[PaymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rates]    Script Date: 20-10-2022 20:24:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rates](
	[rate_id] [int] IDENTITY(1,1) NOT NULL,
	[No_of_Days] [int] NOT NULL,
	[ExtensionPrice] [float] NOT NULL,
	[PerNightPrice] [float] NOT NULL,
	[TotalAmount] [float] NOT NULL,
	[room_id] [int] NULL,
 CONSTRAINT [PK_Rates] PRIMARY KEY CLUSTERED 
(
	[rate_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reservations]    Script Date: 20-10-2022 20:24:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reservations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[no_of_children] [int] NOT NULL,
	[no_of_adults] [int] NOT NULL,
	[checkin_date] [datetime2](7) NOT NULL,
	[checkout_date] [datetime2](7) NOT NULL,
	[no_of_rooms] [int] NOT NULL,
	[PhnNumber] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Reservations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rooms]    Script Date: 20-10-2022 20:24:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rooms](
	[room_id] [int] IDENTITY(1,1) NOT NULL,
	[room_type] [nvarchar](max) NOT NULL,
	[check_in] [datetime2](7) NULL,
	[check_out] [datetime2](7) NULL,
	[status] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Rooms] PRIMARY KEY CLUSTERED 
(
	[room_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staffs]    Script Date: 20-10-2022 20:24:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staffs](
	[StaffId] [int] IDENTITY(1,1) NOT NULL,
	[StaffName] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[NIC] [nvarchar](max) NOT NULL,
	[Salary] [float] NOT NULL,
	[Age] [int] NOT NULL,
	[Occupation] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Staffs] PRIMARY KEY CLUSTERED 
(
	[StaffId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Index [IX_Rates_room_id]    Script Date: 20-10-2022 20:24:13 ******/
CREATE NONCLUSTERED INDEX [IX_Rates_room_id] ON [dbo].[Rates]
(
	[room_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Rates]  WITH CHECK ADD  CONSTRAINT [FK_Rates_Rooms_room_id] FOREIGN KEY([room_id])
REFERENCES [dbo].[Rooms] ([room_id])
GO
ALTER TABLE [dbo].[Rates] CHECK CONSTRAINT [FK_Rates_Rooms_room_id]
GO
USE [master]
GO
ALTER DATABASE [OnlineHotelManagementSystem] SET  READ_WRITE 
GO
