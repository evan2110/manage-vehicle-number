USE [master]
GO
/****** Object:  Database [assignment]    Script Date: 10/03/2022 8:59:52 CH ******/
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
/****** Object:  Table [dbo].[Account]    Script Date: 10/03/2022 8:59:53 CH ******/
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
/****** Object:  Table [dbo].[Class]    Script Date: 10/03/2022 8:59:53 CH ******/
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
/****** Object:  Table [dbo].[Report]    Script Date: 10/03/2022 8:59:53 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Report](
	[content] [text] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 10/03/2022 8:59:53 CH ******/
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
/****** Object:  Table [dbo].[Vehicle]    Script Date: 10/03/2022 8:59:53 CH ******/
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
INSERT [dbo].[Account] ([username], [password]) VALUES (N'123                                               ', N'123                                               ')
INSERT [dbo].[Account] ([username], [password]) VALUES (N'ducdn                                             ', N'2110                                              ')
INSERT [dbo].[Account] ([username], [password]) VALUES (N'ducdn21                                           ', N'12345                                             ')
INSERT [dbo].[Account] ([username], [password]) VALUES (N'ducphuong                                         ', N'1509                                              ')
INSERT [dbo].[Account] ([username], [password]) VALUES (N'mrquang                                           ', N'quang                                             ')
INSERT [dbo].[Account] ([username], [password]) VALUES (N'mrteo                                             ', N'mrteo                                             ')
GO
INSERT [dbo].[Class] ([cid], [cname]) VALUES (N'1                                                 ', N'10A                                               ')
INSERT [dbo].[Class] ([cid], [cname]) VALUES (N'2                                                 ', N'11B                                               ')
INSERT [dbo].[Class] ([cid], [cname]) VALUES (N'3                                                 ', N'12C                                               ')
GO
INSERT [dbo].[Report] ([content]) VALUES (N'I am very happy during using')
INSERT [dbo].[Report] ([content]) VALUES (N'Amazing good job ')
INSERT [dbo].[Report] ([content]) VALUES (N'So happy')
GO
INSERT [dbo].[Student] ([sid], [sname], [dob], [cid], [vid]) VALUES (N'1                                                 ', N'Do Nhat Duc                                       ', CAST(N'2001-10-21' AS Date), N'1                                                 ', N'1                                                 ')
INSERT [dbo].[Student] ([sid], [sname], [dob], [cid], [vid]) VALUES (N'10                                                ', N'Bui Hoang Dat                                     ', CAST(N'2022-03-30' AS Date), N'1                                                 ', N'10                                                ')
INSERT [dbo].[Student] ([sid], [sname], [dob], [cid], [vid]) VALUES (N'11                                                ', N'Le Manh Quy                                       ', CAST(N'2022-03-02' AS Date), N'1                                                 ', N'11                                                ')
INSERT [dbo].[Student] ([sid], [sname], [dob], [cid], [vid]) VALUES (N'12                                                ', N'Hoang Cong Hung                                   ', CAST(N'2022-03-08' AS Date), N'1                                                 ', N'12                                                ')
INSERT [dbo].[Student] ([sid], [sname], [dob], [cid], [vid]) VALUES (N'13                                                ', N'Vuong Thai Quoc                                   ', CAST(N'2001-10-21' AS Date), N'1                                                 ', N'13                                                ')
INSERT [dbo].[Student] ([sid], [sname], [dob], [cid], [vid]) VALUES (N'14                                                ', N'Cao Hoang Long                                    ', CAST(N'2022-03-14' AS Date), N'1                                                 ', N'14                                                ')
INSERT [dbo].[Student] ([sid], [sname], [dob], [cid], [vid]) VALUES (N'15                                                ', N'Hoang Van Quyen                                   ', CAST(N'2022-03-16' AS Date), N'1                                                 ', N'15                                                ')
INSERT [dbo].[Student] ([sid], [sname], [dob], [cid], [vid]) VALUES (N'16                                                ', N'Hoang Quang Luan                                  ', CAST(N'2022-03-22' AS Date), N'2                                                 ', N'16                                                ')
INSERT [dbo].[Student] ([sid], [sname], [dob], [cid], [vid]) VALUES (N'2                                                 ', N'Hoang Thi Phuong                                  ', CAST(N'2005-09-15' AS Date), N'1                                                 ', N'2                                                 ')
INSERT [dbo].[Student] ([sid], [sname], [dob], [cid], [vid]) VALUES (N'3                                                 ', N'Do Tien Dat                                       ', CAST(N'2006-03-02' AS Date), N'1                                                 ', N'3                                                 ')
INSERT [dbo].[Student] ([sid], [sname], [dob], [cid], [vid]) VALUES (N'4                                                 ', N'Do Van My                                         ', CAST(N'1975-01-15' AS Date), N'1                                                 ', N'4                                                 ')
INSERT [dbo].[Student] ([sid], [sname], [dob], [cid], [vid]) VALUES (N'5                                                 ', N'Nguyen Thi Mui                                    ', CAST(N'1977-11-27' AS Date), N'1                                                 ', N'5                                                 ')
INSERT [dbo].[Student] ([sid], [sname], [dob], [cid], [vid]) VALUES (N'6                                                 ', N'Le Thanh Tung                                     ', CAST(N'2022-03-08' AS Date), N'1                                                 ', N'6                                                 ')
INSERT [dbo].[Student] ([sid], [sname], [dob], [cid], [vid]) VALUES (N'7                                                 ', N'Hoang Cong Hoa                                    ', CAST(N'2022-03-23' AS Date), N'1                                                 ', N'7                                                 ')
INSERT [dbo].[Student] ([sid], [sname], [dob], [cid], [vid]) VALUES (N'8                                                 ', N'Nguyen Phu Nghi                                   ', CAST(N'2022-03-08' AS Date), N'1                                                 ', N'8                                                 ')
INSERT [dbo].[Student] ([sid], [sname], [dob], [cid], [vid]) VALUES (N'9                                                 ', N'Nguyen Thi Duyen                                  ', CAST(N'2022-03-16' AS Date), N'1                                                 ', N'9                                                 ')
GO
INSERT [dbo].[Vehicle] ([vid], [vname], [color]) VALUES (N'1                                                 ', N'Lead                                              ', N'Red                                               ')
INSERT [dbo].[Vehicle] ([vid], [vname], [color]) VALUES (N'10                                                ', N'Honda                                             ', N'Yellow                                            ')
INSERT [dbo].[Vehicle] ([vid], [vname], [color]) VALUES (N'11                                                ', N'AB                                                ', N'Red                                               ')
INSERT [dbo].[Vehicle] ([vid], [vname], [color]) VALUES (N'12                                                ', N'Lead                                              ', N'Red                                               ')
INSERT [dbo].[Vehicle] ([vid], [vname], [color]) VALUES (N'13                                                ', N'Lambogrni                                         ', N'Black                                             ')
INSERT [dbo].[Vehicle] ([vid], [vname], [color]) VALUES (N'14                                                ', N'Vision                                            ', N'Blue                                              ')
INSERT [dbo].[Vehicle] ([vid], [vname], [color]) VALUES (N'15                                                ', N'Huyndai                                           ', N'Red                                               ')
INSERT [dbo].[Vehicle] ([vid], [vname], [color]) VALUES (N'16                                                ', N'Sirius                                            ', N'White                                             ')
INSERT [dbo].[Vehicle] ([vid], [vname], [color]) VALUES (N'2                                                 ', N'Vision                                            ', N'White                                             ')
INSERT [dbo].[Vehicle] ([vid], [vname], [color]) VALUES (N'3                                                 ', N'AB                                                ', N'Black                                             ')
INSERT [dbo].[Vehicle] ([vid], [vname], [color]) VALUES (N'4                                                 ', N'Dream                                             ', N'Black                                             ')
INSERT [dbo].[Vehicle] ([vid], [vname], [color]) VALUES (N'5                                                 ', N'Lead                                              ', N'Red                                               ')
INSERT [dbo].[Vehicle] ([vid], [vname], [color]) VALUES (N'6                                                 ', N'Sirius                                            ', N'Black                                             ')
INSERT [dbo].[Vehicle] ([vid], [vname], [color]) VALUES (N'7                                                 ', N'Honda                                             ', N'Black                                             ')
INSERT [dbo].[Vehicle] ([vid], [vname], [color]) VALUES (N'8                                                 ', N'Suzuki                                            ', N'Black                                             ')
INSERT [dbo].[Vehicle] ([vid], [vname], [color]) VALUES (N'9                                                 ', N'Mistsu                                            ', N'Red                                               ')
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD FOREIGN KEY([cid])
REFERENCES [dbo].[Class] ([cid])
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD FOREIGN KEY([vid])
REFERENCES [dbo].[Vehicle] ([vid])
GO
USE [master]
GO
ALTER DATABASE [assignment] SET  READ_WRITE 
GO
