USE [master]
GO
/****** Object:  Database [mefcar]    Script Date: 12.12.2017 13:30:17 ******/
CREATE DATABASE [mefcar]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'autopark', FILENAME = N'C:\ProgramData\SOLIDWORKS Electrical\MSSQL12.TEW_SQLEXPRESS\MSSQL\DATA\autopark.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'autopark_log', FILENAME = N'C:\ProgramData\SOLIDWORKS Electrical\MSSQL12.TEW_SQLEXPRESS\MSSQL\DATA\autopark_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [mefcar] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [mefcar].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [mefcar] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [mefcar] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [mefcar] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [mefcar] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [mefcar] SET ARITHABORT OFF 
GO
ALTER DATABASE [mefcar] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [mefcar] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [mefcar] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [mefcar] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [mefcar] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [mefcar] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [mefcar] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [mefcar] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [mefcar] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [mefcar] SET  DISABLE_BROKER 
GO
ALTER DATABASE [mefcar] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [mefcar] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [mefcar] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [mefcar] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [mefcar] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [mefcar] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [mefcar] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [mefcar] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [mefcar] SET  MULTI_USER 
GO
ALTER DATABASE [mefcar] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [mefcar] SET DB_CHAINING OFF 
GO
ALTER DATABASE [mefcar] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [mefcar] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [mefcar] SET DELAYED_DURABILITY = DISABLED 
GO
USE [mefcar]
GO
/****** Object:  Table [dbo].[carsinpark]    Script Date: 12.12.2017 13:30:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[carsinpark](
	[id] [int] NOT NULL,
	[plate] [nchar](20) NOT NULL,
	[model] [nchar](20) NULL,
	[enterdate] [datetime] NOT NULL,
	[color] [nchar](10) NULL,
	[clean] [bit] NULL,
	[floor] [int] NOT NULL,
	[num] [int] NOT NULL,
	[cleanreq] [bit] NOT NULL,
 CONSTRAINT [PK_carsinpark] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[carspast]    Script Date: 12.12.2017 13:30:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[carspast](
	[id] [int] NOT NULL,
	[plate] [nchar](20) NOT NULL,
	[model] [nchar](20) NULL,
	[enterdate] [datetime] NOT NULL,
	[color] [nchar](10) NULL,
	[clean] [bit] NULL,
	[floor] [int] NOT NULL,
	[num] [int] NOT NULL,
	[cleanreq] [bit] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[news]    Script Date: 12.12.2017 13:30:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[news](
	[id] [int] NOT NULL,
	[metin] [nvarchar](4000) NOT NULL,
	[tarih] [date] NULL,
	[title] [nchar](30) NULL,
 CONSTRAINT [PK__news__3213E83F0A3052A5] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[parkplace]    Script Date: 12.12.2017 13:30:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[parkplace](
	[id] [int] NOT NULL,
	[floor] [int] NOT NULL,
	[number] [int] NOT NULL,
	[emty] [bit] NOT NULL,
	[saved] [nvarchar](20) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Personel]    Script Date: 12.12.2017 13:30:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personel](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Last_name] [nvarchar](100) NOT NULL,
	[Departmant] [nvarchar](75) NULL,
	[enter_date] [datetime] NOT NULL DEFAULT (getdate()),
	[phone] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[submit]    Script Date: 12.12.2017 13:30:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[submit](
	[fname] [nvarchar](100) NOT NULL,
	[lname] [nvarchar](100) NOT NULL,
	[email] [nvarchar](100) NOT NULL,
	[country] [nvarchar](100) NOT NULL,
	[submessage] [nvarchar](2000) NOT NULL,
	[readstate] [int] NOT NULL
) ON [PRIMARY]

GO
USE [master]
GO
ALTER DATABASE [mefcar] SET  READ_WRITE 
GO
