USE [master]
GO
/****** Object:  Database [Masterpol]    Script Date: 18.11.2024 16:42:39 ******/
CREATE DATABASE [Masterpol]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Masterpol', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Masterpol.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Masterpol_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Masterpol_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Masterpol] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Masterpol].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Masterpol] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Masterpol] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Masterpol] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Masterpol] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Masterpol] SET ARITHABORT OFF 
GO
ALTER DATABASE [Masterpol] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Masterpol] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Masterpol] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Masterpol] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Masterpol] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Masterpol] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Masterpol] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Masterpol] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Masterpol] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Masterpol] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Masterpol] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Masterpol] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Masterpol] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Masterpol] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Masterpol] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Masterpol] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Masterpol] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Masterpol] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Masterpol] SET  MULTI_USER 
GO
ALTER DATABASE [Masterpol] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Masterpol] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Masterpol] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Masterpol] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Masterpol] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Masterpol] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Masterpol] SET QUERY_STORE = OFF
GO
USE [Masterpol]
GO
/****** Object:  Table [dbo].[Adress]    Script Date: 18.11.2024 16:42:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adress](
	[id] [int] NOT NULL,
	[Indexn] [int] NULL,
	[Oblast] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[Street] [nvarchar](50) NULL,
	[Home] [int] NULL,
 CONSTRAINT [PK_Adress] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Directors]    Script Date: 18.11.2024 16:42:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Directors](
	[id] [int] NOT NULL,
	[FIODirector] [nvarchar](50) NULL,
 CONSTRAINT [PK_Directors] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Material_type_import]    Script Date: 18.11.2024 16:42:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Material_type_import](
	[id] [int] NOT NULL,
	[Material_type] [nvarchar](50) NULL,
	[Procent_Braka] [nvarchar](50) NULL,
 CONSTRAINT [PK_Material_type_import] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Partner_products_import]    Script Date: 18.11.2024 16:42:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partner_products_import](
	[id] [int] NOT NULL,
	[Products] [int] NULL,
	[Partners_name] [int] NULL,
	[Count_Products] [int] NULL,
	[Date] [date] NULL,
 CONSTRAINT [PK_Partner_products_import] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Partners_import]    Script Date: 18.11.2024 16:42:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partners_import](
	[id] [int] NOT NULL,
	[Partners_Type] [int] NULL,
	[Partners_Name] [int] NULL,
	[Director] [int] NULL,
	[Email] [nvarchar](50) NULL,
	[PhoneNumber] [nvarchar](50) NULL,
	[Adress] [int] NULL,
	[INN] [int] NULL,
	[Reiting] [int] NULL,
 CONSTRAINT [PK_Partners_import] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Partners_Name2]    Script Date: 18.11.2024 16:42:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partners_Name2](
	[id] [int] NOT NULL,
	[Partners_Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Partners_Name2] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Partners_Names]    Script Date: 18.11.2024 16:42:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partners_Names](
	[id] [int] NOT NULL,
	[Partners_Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Partners_Names] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Partners_Types]    Script Date: 18.11.2024 16:42:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partners_Types](
	[id] [int] NOT NULL,
	[Partners_Type] [nvarchar](50) NULL,
 CONSTRAINT [PK_Partners_Types] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_type_import]    Script Date: 18.11.2024 16:42:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_type_import](
	[id] [int] NOT NULL,
	[Product_Type] [nvarchar](50) NULL,
	[Koificient] [nvarchar](50) NULL,
 CONSTRAINT [PK_Product_type_import] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 18.11.2024 16:42:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[id] [int] NOT NULL,
	[Products_Name] [nvarchar](100) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products_import]    Script Date: 18.11.2024 16:42:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products_import](
	[id] [int] NOT NULL,
	[Products_type] [int] NULL,
	[Products_name] [int] NULL,
	[Articl] [int] NULL,
	[MinCost] [nvarchar](50) NULL,
 CONSTRAINT [PK_Products_import] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products_import_name]    Script Date: 18.11.2024 16:42:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products_import_name](
	[id] [int] NOT NULL,
	[Products_Name] [nvarchar](100) NULL,
 CONSTRAINT [PK_Products_import_name] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products_import_type]    Script Date: 18.11.2024 16:42:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products_import_type](
	[id] [int] NOT NULL,
	[Products_Type] [nvarchar](50) NULL,
 CONSTRAINT [PK_Products_import_type] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Adress] ([id], [Indexn], [Oblast], [City], [Street], [Home]) VALUES (1, 652050, N' Кемеровская область', N'  Юрга', N' ул. Лесная', 15)
INSERT [dbo].[Adress] ([id], [Indexn], [Oblast], [City], [Street], [Home]) VALUES (2, 164500, N' Архангельская область', N'  Северодвинск', N' ул. Строителей', 18)
INSERT [dbo].[Adress] ([id], [Indexn], [Oblast], [City], [Street], [Home]) VALUES (3, 188910, N' Ленинградская область', N'  Приморск', N' ул. Парковая', 21)
INSERT [dbo].[Adress] ([id], [Indexn], [Oblast], [City], [Street], [Home]) VALUES (4, 143960, N' Московская область', N'  Реутов', N' ул. Свободы', 51)
INSERT [dbo].[Adress] ([id], [Indexn], [Oblast], [City], [Street], [Home]) VALUES (5, 309500, N' Белгородская область', N'  Старый Оскол', N' ул. Рабочая', 122)
GO
INSERT [dbo].[Directors] ([id], [FIODirector]) VALUES (1, N'Воробьева Екатерина Валерьевна')
INSERT [dbo].[Directors] ([id], [FIODirector]) VALUES (2, N'Иванова Александра Ивановна')
INSERT [dbo].[Directors] ([id], [FIODirector]) VALUES (3, N'Петров Василий Петрович')
INSERT [dbo].[Directors] ([id], [FIODirector]) VALUES (4, N'Соловьев Андрей Николаевич')
INSERT [dbo].[Directors] ([id], [FIODirector]) VALUES (5, N'Степанов Степан Сергеевич')
GO
INSERT [dbo].[Material_type_import] ([id], [Material_type], [Procent_Braka]) VALUES (1, N'Тип материала 1', N'0,001')
INSERT [dbo].[Material_type_import] ([id], [Material_type], [Procent_Braka]) VALUES (2, N'Тип материала 2', N'0,0095')
INSERT [dbo].[Material_type_import] ([id], [Material_type], [Procent_Braka]) VALUES (3, N'Тип материала 3', N'0,0028')
INSERT [dbo].[Material_type_import] ([id], [Material_type], [Procent_Braka]) VALUES (4, N'Тип материала 4', N'0,0055')
INSERT [dbo].[Material_type_import] ([id], [Material_type], [Procent_Braka]) VALUES (5, N'Тип материала 5', N'0,0034')
GO
INSERT [dbo].[Partner_products_import] ([id], [Products], [Partners_name], [Count_Products], [Date]) VALUES (1, 4, 1, 15500, CAST(N'2023-03-23' AS Date))
INSERT [dbo].[Partner_products_import] ([id], [Products], [Partners_name], [Count_Products], [Date]) VALUES (2, 2, 1, 12350, CAST(N'2023-12-18' AS Date))
INSERT [dbo].[Partner_products_import] ([id], [Products], [Partners_name], [Count_Products], [Date]) VALUES (3, 3, 1, 37400, CAST(N'2024-06-07' AS Date))
INSERT [dbo].[Partner_products_import] ([id], [Products], [Partners_name], [Count_Products], [Date]) VALUES (4, 1, 3, 35000, CAST(N'2022-12-02' AS Date))
INSERT [dbo].[Partner_products_import] ([id], [Products], [Partners_name], [Count_Products], [Date]) VALUES (5, 5, 3, 1250, CAST(N'2023-05-17' AS Date))
INSERT [dbo].[Partner_products_import] ([id], [Products], [Partners_name], [Count_Products], [Date]) VALUES (6, 2, 3, 1000, CAST(N'2024-06-07' AS Date))
INSERT [dbo].[Partner_products_import] ([id], [Products], [Partners_name], [Count_Products], [Date]) VALUES (7, 4, 3, 7550, CAST(N'2024-07-01' AS Date))
INSERT [dbo].[Partner_products_import] ([id], [Products], [Partners_name], [Count_Products], [Date]) VALUES (8, 4, 5, 7250, CAST(N'2023-01-22' AS Date))
INSERT [dbo].[Partner_products_import] ([id], [Products], [Partners_name], [Count_Products], [Date]) VALUES (9, 1, 5, 2500, CAST(N'2024-07-05' AS Date))
INSERT [dbo].[Partner_products_import] ([id], [Products], [Partners_name], [Count_Products], [Date]) VALUES (10, 3, 4, 59050, CAST(N'2023-03-20' AS Date))
INSERT [dbo].[Partner_products_import] ([id], [Products], [Partners_name], [Count_Products], [Date]) VALUES (11, 2, 4, 37200, CAST(N'2024-03-12' AS Date))
INSERT [dbo].[Partner_products_import] ([id], [Products], [Partners_name], [Count_Products], [Date]) VALUES (12, 5, 4, 4500, CAST(N'2024-05-14' AS Date))
INSERT [dbo].[Partner_products_import] ([id], [Products], [Partners_name], [Count_Products], [Date]) VALUES (13, 2, 2, 50000, CAST(N'2023-09-19' AS Date))
INSERT [dbo].[Partner_products_import] ([id], [Products], [Partners_name], [Count_Products], [Date]) VALUES (14, 3, 2, 670000, CAST(N'2023-11-10' AS Date))
INSERT [dbo].[Partner_products_import] ([id], [Products], [Partners_name], [Count_Products], [Date]) VALUES (15, 4, 2, 35000, CAST(N'2024-04-15' AS Date))
INSERT [dbo].[Partner_products_import] ([id], [Products], [Partners_name], [Count_Products], [Date]) VALUES (16, 1, 2, 25000, CAST(N'2024-06-12' AS Date))
GO
INSERT [dbo].[Partners_import] ([id], [Partners_Type], [Partners_Name], [Director], [Email], [PhoneNumber], [Adress], [INN], [Reiting]) VALUES (1, 1, 1, 2, N'aleksandraivanova@ml.ru', N'493 123 45 67', 1, NULL, 7)
INSERT [dbo].[Partners_import] ([id], [Partners_Type], [Partners_Name], [Director], [Email], [PhoneNumber], [Adress], [INN], [Reiting]) VALUES (2, 3, 3, 3, N'vppetrov@vl.ru', N'987 123 56 78', 2, NULL, 7)
INSERT [dbo].[Partners_import] ([id], [Partners_Type], [Partners_Name], [Director], [Email], [PhoneNumber], [Adress], [INN], [Reiting]) VALUES (3, 4, 5, 4, N'ansolovev@st.ru', N'812 223 32 00', 3, NULL, 7)
INSERT [dbo].[Partners_import] ([id], [Partners_Type], [Partners_Name], [Director], [Email], [PhoneNumber], [Adress], [INN], [Reiting]) VALUES (4, 2, 4, 1, N'ekaterina.vorobeva@ml.ru', N'444 222 33 11', 4, 1111520857, 5)
INSERT [dbo].[Partners_import] ([id], [Partners_Type], [Partners_Name], [Director], [Email], [PhoneNumber], [Adress], [INN], [Reiting]) VALUES (5, 1, 2, 5, N'stepanov@stepan.ru', N'912 888 33 33', 5, NULL, 10)
GO
INSERT [dbo].[Partners_Name2] ([id], [Partners_Name]) VALUES (1, N'База Строитель')
INSERT [dbo].[Partners_Name2] ([id], [Partners_Name]) VALUES (2, N'МонтажПро')
INSERT [dbo].[Partners_Name2] ([id], [Partners_Name]) VALUES (3, N'Паркет 29')
INSERT [dbo].[Partners_Name2] ([id], [Partners_Name]) VALUES (4, N'Ремонт и отделка')
INSERT [dbo].[Partners_Name2] ([id], [Partners_Name]) VALUES (5, N'Стройсервис')
GO
INSERT [dbo].[Partners_Names] ([id], [Partners_Name]) VALUES (1, N'База Строитель')
INSERT [dbo].[Partners_Names] ([id], [Partners_Name]) VALUES (2, N'МонтажПро')
INSERT [dbo].[Partners_Names] ([id], [Partners_Name]) VALUES (3, N'Паркет 29')
INSERT [dbo].[Partners_Names] ([id], [Partners_Name]) VALUES (4, N'Ремонт и отделка')
INSERT [dbo].[Partners_Names] ([id], [Partners_Name]) VALUES (5, N'Стройсервис')
GO
INSERT [dbo].[Partners_Types] ([id], [Partners_Type]) VALUES (1, N'ЗАО')
INSERT [dbo].[Partners_Types] ([id], [Partners_Type]) VALUES (2, N'ОАО')
INSERT [dbo].[Partners_Types] ([id], [Partners_Type]) VALUES (3, N'ООО')
INSERT [dbo].[Partners_Types] ([id], [Partners_Type]) VALUES (4, N'ПАО')
GO
INSERT [dbo].[Product_type_import] ([id], [Product_Type], [Koificient]) VALUES (1, N'Ламинат', N'2,35')
INSERT [dbo].[Product_type_import] ([id], [Product_Type], [Koificient]) VALUES (2, N'Массивная доска', N'5,15')
INSERT [dbo].[Product_type_import] ([id], [Product_Type], [Koificient]) VALUES (3, N'Паркетная доска', N'4,34')
INSERT [dbo].[Product_type_import] ([id], [Product_Type], [Koificient]) VALUES (4, N'Пробковое покрытие', N'1,5')
GO
INSERT [dbo].[Products] ([id], [Products_Name]) VALUES (1, N'Инженерная доска Дуб Французская елка однополосная 12 мм')
INSERT [dbo].[Products] ([id], [Products_Name]) VALUES (2, N'Ламинат Дуб дымчато-белый 33 класс 12 мм')
INSERT [dbo].[Products] ([id], [Products_Name]) VALUES (3, N'Ламинат Дуб серый 32 класс 8 мм с фаской')
INSERT [dbo].[Products] ([id], [Products_Name]) VALUES (4, N'Паркетная доска Ясень темный однополосная 14 мм')
INSERT [dbo].[Products] ([id], [Products_Name]) VALUES (5, N'Пробковое напольное клеевое покрытие 32 класс 4 мм')
GO
INSERT [dbo].[Products_import] ([id], [Products_type], [Products_name], [Articl], [MinCost]) VALUES (1, 2, 4, 8758385, N'4456,90')
INSERT [dbo].[Products_import] ([id], [Products_type], [Products_name], [Articl], [MinCost]) VALUES (2, 2, 1, 8858958, N'7330,99')
INSERT [dbo].[Products_import] ([id], [Products_type], [Products_name], [Articl], [MinCost]) VALUES (3, 1, 2, 7750282, N'1799,33')
INSERT [dbo].[Products_import] ([id], [Products_type], [Products_name], [Articl], [MinCost]) VALUES (4, 1, 3, 7028748, N'3890,41')
INSERT [dbo].[Products_import] ([id], [Products_type], [Products_name], [Articl], [MinCost]) VALUES (5, 3, 5, 5012543, N'5450,59')
GO
INSERT [dbo].[Products_import_name] ([id], [Products_Name]) VALUES (1, N'Инженерная доска Дуб Французская елка однополосная 12 мм')
INSERT [dbo].[Products_import_name] ([id], [Products_Name]) VALUES (2, N'Ламинат Дуб дымчато-белый 33 класс 12 мм')
INSERT [dbo].[Products_import_name] ([id], [Products_Name]) VALUES (3, N'Ламинат Дуб серый 32 класс 8 мм с фаской')
INSERT [dbo].[Products_import_name] ([id], [Products_Name]) VALUES (4, N'Паркетная доска Ясень темный однополосная 14 мм')
INSERT [dbo].[Products_import_name] ([id], [Products_Name]) VALUES (5, N'Пробковое напольное клеевое покрытие 32 класс 4 мм')
GO
INSERT [dbo].[Products_import_type] ([id], [Products_Type]) VALUES (1, N'Ламинат')
INSERT [dbo].[Products_import_type] ([id], [Products_Type]) VALUES (2, N'Паркетная доска')
INSERT [dbo].[Products_import_type] ([id], [Products_Type]) VALUES (3, N'Пробковое покрытие')
GO
ALTER TABLE [dbo].[Partner_products_import]  WITH CHECK ADD  CONSTRAINT [FK_Partner_products_import_Partners_Names] FOREIGN KEY([Partners_name])
REFERENCES [dbo].[Partners_Names] ([id])
GO
ALTER TABLE [dbo].[Partner_products_import] CHECK CONSTRAINT [FK_Partner_products_import_Partners_Names]
GO
ALTER TABLE [dbo].[Partner_products_import]  WITH CHECK ADD  CONSTRAINT [FK_Partner_products_import_Products] FOREIGN KEY([Products])
REFERENCES [dbo].[Products] ([id])
GO
ALTER TABLE [dbo].[Partner_products_import] CHECK CONSTRAINT [FK_Partner_products_import_Products]
GO
ALTER TABLE [dbo].[Partners_import]  WITH CHECK ADD  CONSTRAINT [FK_Partners_import_Adress] FOREIGN KEY([Adress])
REFERENCES [dbo].[Adress] ([id])
GO
ALTER TABLE [dbo].[Partners_import] CHECK CONSTRAINT [FK_Partners_import_Adress]
GO
ALTER TABLE [dbo].[Partners_import]  WITH CHECK ADD  CONSTRAINT [FK_Partners_import_Directors] FOREIGN KEY([Director])
REFERENCES [dbo].[Directors] ([id])
GO
ALTER TABLE [dbo].[Partners_import] CHECK CONSTRAINT [FK_Partners_import_Directors]
GO
ALTER TABLE [dbo].[Partners_import]  WITH CHECK ADD  CONSTRAINT [FK_Partners_import_Partners_Name2] FOREIGN KEY([Partners_Name])
REFERENCES [dbo].[Partners_Name2] ([id])
GO
ALTER TABLE [dbo].[Partners_import] CHECK CONSTRAINT [FK_Partners_import_Partners_Name2]
GO
ALTER TABLE [dbo].[Partners_import]  WITH CHECK ADD  CONSTRAINT [FK_Partners_import_Partners_Types] FOREIGN KEY([Partners_Type])
REFERENCES [dbo].[Partners_Types] ([id])
GO
ALTER TABLE [dbo].[Partners_import] CHECK CONSTRAINT [FK_Partners_import_Partners_Types]
GO
ALTER TABLE [dbo].[Products_import]  WITH CHECK ADD  CONSTRAINT [FK_Products_import_Products_import_name] FOREIGN KEY([Products_name])
REFERENCES [dbo].[Products_import_name] ([id])
GO
ALTER TABLE [dbo].[Products_import] CHECK CONSTRAINT [FK_Products_import_Products_import_name]
GO
ALTER TABLE [dbo].[Products_import]  WITH CHECK ADD  CONSTRAINT [FK_Products_import_Products_import_type] FOREIGN KEY([Products_type])
REFERENCES [dbo].[Products_import_type] ([id])
GO
ALTER TABLE [dbo].[Products_import] CHECK CONSTRAINT [FK_Products_import_Products_import_type]
GO
USE [master]
GO
ALTER DATABASE [Masterpol] SET  READ_WRITE 
GO
