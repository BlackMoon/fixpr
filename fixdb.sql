USE [master]
GO
/****** Object:  Database [D:\DEV\FIX\FIX\APP_DATA\FIXDB.MDF]    Script Date: 13.09.2012 2:31:39 ******/
CREATE DATABASE [D:\DEV\FIX\FIX\APP_DATA\FIXDB.MDF] ON  PRIMARY 
( NAME = N'fixdb', FILENAME = N'D:\dev\fix\fix\App_Data\fixdb.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'fixdb_log', FILENAME = N'D:\dev\fix\fix\App_Data\fixdb_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [D:\DEV\FIX\FIX\APP_DATA\FIXDB.MDF] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [D:\DEV\FIX\FIX\APP_DATA\FIXDB.MDF].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [D:\DEV\FIX\FIX\APP_DATA\FIXDB.MDF] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [D:\DEV\FIX\FIX\APP_DATA\FIXDB.MDF] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [D:\DEV\FIX\FIX\APP_DATA\FIXDB.MDF] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [D:\DEV\FIX\FIX\APP_DATA\FIXDB.MDF] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [D:\DEV\FIX\FIX\APP_DATA\FIXDB.MDF] SET ARITHABORT OFF 
GO
ALTER DATABASE [D:\DEV\FIX\FIX\APP_DATA\FIXDB.MDF] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [D:\DEV\FIX\FIX\APP_DATA\FIXDB.MDF] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [D:\DEV\FIX\FIX\APP_DATA\FIXDB.MDF] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [D:\DEV\FIX\FIX\APP_DATA\FIXDB.MDF] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [D:\DEV\FIX\FIX\APP_DATA\FIXDB.MDF] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [D:\DEV\FIX\FIX\APP_DATA\FIXDB.MDF] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [D:\DEV\FIX\FIX\APP_DATA\FIXDB.MDF] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [D:\DEV\FIX\FIX\APP_DATA\FIXDB.MDF] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [D:\DEV\FIX\FIX\APP_DATA\FIXDB.MDF] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [D:\DEV\FIX\FIX\APP_DATA\FIXDB.MDF] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [D:\DEV\FIX\FIX\APP_DATA\FIXDB.MDF] SET  DISABLE_BROKER 
GO
ALTER DATABASE [D:\DEV\FIX\FIX\APP_DATA\FIXDB.MDF] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [D:\DEV\FIX\FIX\APP_DATA\FIXDB.MDF] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [D:\DEV\FIX\FIX\APP_DATA\FIXDB.MDF] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [D:\DEV\FIX\FIX\APP_DATA\FIXDB.MDF] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [D:\DEV\FIX\FIX\APP_DATA\FIXDB.MDF] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [D:\DEV\FIX\FIX\APP_DATA\FIXDB.MDF] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [D:\DEV\FIX\FIX\APP_DATA\FIXDB.MDF] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [D:\DEV\FIX\FIX\APP_DATA\FIXDB.MDF] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [D:\DEV\FIX\FIX\APP_DATA\FIXDB.MDF] SET  MULTI_USER 
GO
ALTER DATABASE [D:\DEV\FIX\FIX\APP_DATA\FIXDB.MDF] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [D:\DEV\FIX\FIX\APP_DATA\FIXDB.MDF] SET DB_CHAINING OFF 
GO
USE [D:\DEV\FIX\FIX\APP_DATA\FIXDB.MDF]
GO
/****** Object:  StoredProcedure [dbo].[Doc_CreateNew]    Script Date: 13.09.2012 2:31:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Doc_CreateNew]	
	@name			nvarchar(200),
	@author			nvarchar(200)
	
AS
BEGIN
	INSERT INTO fx_docs(name, author)
	VALUES(@name, @author)
END

GO
/****** Object:  Table [dbo].[fx_docs]    Script Date: 13.09.2012 2:31:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fx_docs](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](200) NOT NULL,
	[date] [datetime] NOT NULL,
	[author] [nvarchar](200) NULL,
 CONSTRAINT [PK_fx_docs] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_fx_docs]    Script Date: 13.09.2012 2:31:39 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_fx_docs] ON [dbo].[fx_docs]
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[fx_docs] ADD  CONSTRAINT [DF_fx_docs_date]  DEFAULT (getdate()) FOR [date]
GO
USE [master]
GO
ALTER DATABASE [D:\DEV\FIX\FIX\APP_DATA\FIXDB.MDF] SET  READ_WRITE 
GO
