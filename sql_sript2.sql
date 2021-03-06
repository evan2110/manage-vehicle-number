USE [master]
GO
/****** Object:  Database [assignment]    Script Date: 20/03/2022 10:55:50 SA ******/
CREATE DATABASE [assignment]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'assignment', FILENAME = N'E:\Sql setup\MSSQL15.SQLEXPRESS\MSSQL\DATA\assignment.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'assignment_log', FILENAME = N'E:\Sql setup\MSSQL15.SQLEXPRESS\MSSQL\DATA\assignment_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [assignment] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [assignment].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [assignment] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [assignment] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [assignment] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [assignment] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [assignment] SET ARITHABORT OFF 
GO
ALTER DATABASE [assignment] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [assignment] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [assignment] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [assignment] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [assignment] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [assignment] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [assignment] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [assignment] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [assignment] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [assignment] SET  DISABLE_BROKER 
GO
ALTER DATABASE [assignment] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [assignment] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [assignment] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [assignment] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [assignment] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [assignment] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [assignment] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [assignment] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [assignment] SET  MULTI_USER 
GO
ALTER DATABASE [assignment] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [assignment] SET DB_CHAINING OFF 
GO
ALTER DATABASE [assignment] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [assignment] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [assignment] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [assignment] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [assignment] SET QUERY_STORE = OFF
GO
USE [assignment]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 20/03/2022 10:55:50 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[username] [nchar](50) NOT NULL,
	[password] [nchar](50) NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Class]    Script Date: 20/03/2022 10:55:50 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Class](
	[cid] [nchar](50) NOT NULL,
	[cname] [nchar](50) NOT NULL,
 CONSTRAINT [PK_Class] PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Report]    Script Date: 20/03/2022 10:55:50 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Report](
	[content] [text] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 20/03/2022 10:55:50 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[sid] [nchar](50) NOT NULL,
	[sname] [nchar](50) NOT NULL,
	[dob] [date] NOT NULL,
	[cid] [nchar](50) NOT NULL,
	[vid] [nchar](50) NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[sid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vehicle]    Script Date: 20/03/2022 10:55:50 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehicle](
	[vid] [nchar](50) NOT NULL,
	[vname] [nchar](50) NOT NULL,
	[color] [nchar](50) NOT NULL,
 CONSTRAINT [PK_Vehicle1] PRIMARY KEY CLUSTERED 
(
	[vid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK__Student__cid__09A971A2] FOREIGN KEY([cid])
REFERENCES [dbo].[Class] ([cid])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK__Student__cid__09A971A2]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK__Student__vid__0A9D95DB] FOREIGN KEY([vid])
REFERENCES [dbo].[Vehicle] ([vid])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK__Student__vid__0A9D95DB]
GO
USE [master]
GO
ALTER DATABASE [assignment] SET  READ_WRITE 
GO
