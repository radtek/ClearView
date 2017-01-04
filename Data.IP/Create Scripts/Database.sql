USE [master]
GO
/****** Object:  Database [ClearViewIP]    Script Date: 08/04/2009 14:34:00 ******/
CREATE DATABASE [ClearViewIP] ON  PRIMARY 
( NAME = N'ClearViewIP', FILENAME = N'F:\Production\Database\ClearViewIP.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ClearViewIP_log', FILENAME = N'G:\Production\Logs\ClearViewIP_log.ldf' , SIZE = 10424KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
EXEC dbo.sp_dbcmptlevel @dbname=N'ClearViewIP', @new_cmptlevel=90
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ClearViewIP].[dbo].[sp_fulltext_database] @action = 'disable'
end
GO
ALTER DATABASE [ClearViewIP] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ClearViewIP] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ClearViewIP] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ClearViewIP] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ClearViewIP] SET ARITHABORT OFF 
GO
ALTER DATABASE [ClearViewIP] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ClearViewIP] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [ClearViewIP] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ClearViewIP] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ClearViewIP] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ClearViewIP] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ClearViewIP] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ClearViewIP] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ClearViewIP] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ClearViewIP] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ClearViewIP] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ClearViewIP] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ClearViewIP] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ClearViewIP] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ClearViewIP] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ClearViewIP] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ClearViewIP] SET  READ_WRITE 
GO
ALTER DATABASE [ClearViewIP] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ClearViewIP] SET  MULTI_USER 
GO
ALTER DATABASE [ClearViewIP] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ClearViewIP] SET DB_CHAINING OFF  