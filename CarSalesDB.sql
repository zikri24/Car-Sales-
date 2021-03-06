USE [CarSalesDB]
GO
/****** Object:  Table [dbo].[Cars]    Script Date: 01/14/2013 11:15:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cars](
	[CarID] [int] IDENTITY(1,1) NOT NULL,
	[AccountID] [int] NULL,
	[Type] [varchar](50) NULL,
	[Make] [varchar](50) NULL,
	[Model] [varchar](50) NULL,
	[Year] [varchar](50) NULL,
	[Color] [varchar](50) NULL,
	[Killometers] [varchar](50) NULL,
	[Transmission] [varchar](50) NULL,
	[Condition] [varchar](50) NULL,
	[Price] [money] NULL,
	[Location] [varchar](50) NULL,
	[LinkToFile] [varchar](50) NULL,
 CONSTRAINT [PK_Cars] PRIMARY KEY CLUSTERED 
(
	[CarID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Cars] ON
INSERT [dbo].[Cars] ([CarID], [AccountID], [Type], [Make], [Model], [Year], [Color], [Killometers], [Transmission], [Condition], [Price], [Location], [LinkToFile]) VALUES (59, 2, N'HatchBack', N'Audi', N'A3', N'2012', N'White', N'0', N'Manual', N'New', 65000.0000, N'NSW', N'~/Photos/imagesCA0S41LV.jpg')
INSERT [dbo].[Cars] ([CarID], [AccountID], [Type], [Make], [Model], [Year], [Color], [Killometers], [Transmission], [Condition], [Price], [Location], [LinkToFile]) VALUES (60, 3, N'Convertible', N'Audi', N'A3', N'2012', N'White', N'7000', N'Manual', N'SecondHand', 65000.0000, N'VIC', N'~/Photos/imagesCAA062SA.jpg')
INSERT [dbo].[Cars] ([CarID], [AccountID], [Type], [Make], [Model], [Year], [Color], [Killometers], [Transmission], [Condition], [Price], [Location], [LinkToFile]) VALUES (61, 4, N'HatchBack', N'Audi', N'A1', N'2012', N'White', N'0', N'Auto', N'New', 45000.0000, N'NSW', N'~/Photos/2.png')
INSERT [dbo].[Cars] ([CarID], [AccountID], [Type], [Make], [Model], [Year], [Color], [Killometers], [Transmission], [Condition], [Price], [Location], [LinkToFile]) VALUES (62, 5, N'Sedan', N'Daewoo', N'Nubera', N'1995', N'Red', N'150000', N'Auto', N'Used', 4000.0000, N'NSW', N'~/Photos/1.png')
INSERT [dbo].[Cars] ([CarID], [AccountID], [Type], [Make], [Model], [Year], [Color], [Killometers], [Transmission], [Condition], [Price], [Location], [LinkToFile]) VALUES (63, 6, N'Sedan', N'BMW', N'523I', N'2000', N'Silver', N'100000', N'Auto', N'Used', 25000.0000, N'Sydney', N'~/Photos/imagesCA55F5P8.jpg')
INSERT [dbo].[Cars] ([CarID], [AccountID], [Type], [Make], [Model], [Year], [Color], [Killometers], [Transmission], [Condition], [Price], [Location], [LinkToFile]) VALUES (64, 7, N'Sedan', N'BMW', N'523I', N'2000', N'Silver', N'100000', N'Auto', N'Used', 25000.0000, N'Sydney', N'~/Photos/imagesCA55F5P8.jpg')
INSERT [dbo].[Cars] ([CarID], [AccountID], [Type], [Make], [Model], [Year], [Color], [Killometers], [Transmission], [Condition], [Price], [Location], [LinkToFile]) VALUES (66, 8, N'SUV', N'Audi', N'Q7', N'2013', N'White', N'0', N'Auto', N'New', 120000.0000, N'NSW', N'~/Photos/untitled13.png')
INSERT [dbo].[Cars] ([CarID], [AccountID], [Type], [Make], [Model], [Year], [Color], [Killometers], [Transmission], [Condition], [Price], [Location], [LinkToFile]) VALUES (67, 9, N'SUV', N'Audi', N'Q5', N'2012', N'Silver', N'5000', N'Manual', N'Used', 80000.0000, N'NSW', N'~/Photos/Q5.png')
INSERT [dbo].[Cars] ([CarID], [AccountID], [Type], [Make], [Model], [Year], [Color], [Killometers], [Transmission], [Condition], [Price], [Location], [LinkToFile]) VALUES (68, 10, N'Sedan', N'Audi', N'A4', N'2112', N'Red', N'100000', N'Auto', N'New', 80000.0000, N'Melbourn', N'~/Photos/3.png')
INSERT [dbo].[Cars] ([CarID], [AccountID], [Type], [Make], [Model], [Year], [Color], [Killometers], [Transmission], [Condition], [Price], [Location], [LinkToFile]) VALUES (69, 9, N'SUV', N'Audi', N'Q7', N'2013', N'Grey', N'0', N'Auto', N'New', 120000.0000, N'NSW', N'~/Photos/imagesCA0XWBOM.jpg')
INSERT [dbo].[Cars] ([CarID], [AccountID], [Type], [Make], [Model], [Year], [Color], [Killometers], [Transmission], [Condition], [Price], [Location], [LinkToFile]) VALUES (70, 9, N'Convertible', N'BMW', N'330I', N'2012', N'Brown', N'10000', N'Auto', N'Used', 125000.0000, N'VIC', N'~/Photos/imagesCAYLTU7P.jpg')
INSERT [dbo].[Cars] ([CarID], [AccountID], [Type], [Make], [Model], [Year], [Color], [Killometers], [Transmission], [Condition], [Price], [Location], [LinkToFile]) VALUES (71, 9, N'Sedan', N'Mecedes Benz', N'C250', N'2013', N'Black', N'0', N'Auto', N'New', 90000.0000, N'NSW', N'~/Photos/imagesCAAIO8D0.jpg')
INSERT [dbo].[Cars] ([CarID], [AccountID], [Type], [Make], [Model], [Year], [Color], [Killometers], [Transmission], [Condition], [Price], [Location], [LinkToFile]) VALUES (72, 9, N'Sedan', N'Honda', N'Civic', N'2013', N'White', N'0', N'Auto', N'New', 30000.0000, N'Melbourn', N'~/Photos/imagesCA397FI7.jpg')
INSERT [dbo].[Cars] ([CarID], [AccountID], [Type], [Make], [Model], [Year], [Color], [Killometers], [Transmission], [Condition], [Price], [Location], [LinkToFile]) VALUES (73, 9, N'Coupe', N'Mitsubishi', N'Lancer', N'95', N'white', N'97000', N'Auto', N'Used', 2500.0000, N'NSW', N'~/Photos/untitled77.png')
INSERT [dbo].[Cars] ([CarID], [AccountID], [Type], [Make], [Model], [Year], [Color], [Killometers], [Transmission], [Condition], [Price], [Location], [LinkToFile]) VALUES (74, 9, N'HatchBack', N'Audi', N'A3', N'2013', N'Black', N'100000', N'Auto', N'Used', 125000.0000, N'NSW', N'~/Photos/2.png')
INSERT [dbo].[Cars] ([CarID], [AccountID], [Type], [Make], [Model], [Year], [Color], [Killometers], [Transmission], [Condition], [Price], [Location], [LinkToFile]) VALUES (75, 9, N'SUV', N'Toyota', N'330I', N'1995', N'Black', N'0', N'Auto', N'New', 35000.0000, N'Sydney', N'~/Photos/imagesCA0K8WZA.jpg')
SET IDENTITY_INSERT [dbo].[Cars] OFF
/****** Object:  Table [dbo].[Accounts]    Script Date: 01/14/2013 11:15:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Accounts](
	[AccountID] [int] IDENTITY(1,1) NOT NULL,
	[Role] [varchar](50) NULL,
	[Username] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[DateCreated] [date] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_Accounts] PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Accounts] ON
INSERT [dbo].[Accounts] ([AccountID], [Role], [Username], [Password], [DateCreated], [IsActive]) VALUES (1, N'Admin', N'Omar', N'omar', CAST(0x32360B00 AS Date), 1)
INSERT [dbo].[Accounts] ([AccountID], [Role], [Username], [Password], [DateCreated], [IsActive]) VALUES (2, N'User', N'Jess', N'jess', CAST(0x32360B00 AS Date), 0)
INSERT [dbo].[Accounts] ([AccountID], [Role], [Username], [Password], [DateCreated], [IsActive]) VALUES (3, N'user', N'Ahmed', N'ahmed', CAST(0x32360B00 AS Date), 1)
INSERT [dbo].[Accounts] ([AccountID], [Role], [Username], [Password], [DateCreated], [IsActive]) VALUES (6, N'User', N'Rosy', N'rosy', NULL, NULL)
INSERT [dbo].[Accounts] ([AccountID], [Role], [Username], [Password], [DateCreated], [IsActive]) VALUES (7, N'User', N'Ihab', N'ihab', CAST(0x36360B00 AS Date), NULL)
INSERT [dbo].[Accounts] ([AccountID], [Role], [Username], [Password], [DateCreated], [IsActive]) VALUES (8, N'User', N'Ehab', N'ehab', CAST(0x36360B00 AS Date), 1)
INSERT [dbo].[Accounts] ([AccountID], [Role], [Username], [Password], [DateCreated], [IsActive]) VALUES (9, N'User', N'Ahmed', N'ahmed', CAST(0x37360B00 AS Date), 1)
INSERT [dbo].[Accounts] ([AccountID], [Role], [Username], [Password], [DateCreated], [IsActive]) VALUES (10, N'User', N'Revca', N'revca', CAST(0x3E360B00 AS Date), 1)
INSERT [dbo].[Accounts] ([AccountID], [Role], [Username], [Password], [DateCreated], [IsActive]) VALUES (11, N'User', N'Plema', N'plema', CAST(0x44360B00 AS Date), 1)
INSERT [dbo].[Accounts] ([AccountID], [Role], [Username], [Password], [DateCreated], [IsActive]) VALUES (12, N'User', N'Jessica', N'jess', CAST(0x47360B00 AS Date), 1)
INSERT [dbo].[Accounts] ([AccountID], [Role], [Username], [Password], [DateCreated], [IsActive]) VALUES (13, N'User', N'', N'', CAST(0x4E360B00 AS Date), 1)
INSERT [dbo].[Accounts] ([AccountID], [Role], [Username], [Password], [DateCreated], [IsActive]) VALUES (14, N'User', N'Tom', N'tom', CAST(0x69360B00 AS Date), 1)
INSERT [dbo].[Accounts] ([AccountID], [Role], [Username], [Password], [DateCreated], [IsActive]) VALUES (15, N'User', N'Metwaly', N'metwaly', CAST(0x69360B00 AS Date), 1)
INSERT [dbo].[Accounts] ([AccountID], [Role], [Username], [Password], [DateCreated], [IsActive]) VALUES (16, N'Admin', N'Admin', N'admin', CAST(0x6B360B00 AS Date), 1)
INSERT [dbo].[Accounts] ([AccountID], [Role], [Username], [Password], [DateCreated], [IsActive]) VALUES (17, N'User', N'Mohamed', N'mohamed', CAST(0x76360B00 AS Date), 1)
INSERT [dbo].[Accounts] ([AccountID], [Role], [Username], [Password], [DateCreated], [IsActive]) VALUES (18, N'User', N'Adam', N'Jone', CAST(0xA0360B00 AS Date), 1)
SET IDENTITY_INSERT [dbo].[Accounts] OFF
/****** Object:  StoredProcedure [dbo].[sp_Cars_SearchByMake]    Script Date: 01/14/2013 11:16:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Cars_SearchByMake] 
	(
	@make varchar(50)
	)
AS
BEGIN
	SELECT 
	   [CarID]
      ,[Type]
      ,[Make]
      ,[Model]
      ,[Year]
      ,[Color]
      ,[Killometers]
      ,[Transmission]
      ,[Condition]
      ,[Price]
      ,[Location]
      ,[LinkToFile]
      
  FROM [CarSalesDB].[dbo].[Cars]

	WHERE Make = @make

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Cars_MultipleSearch]    Script Date: 01/14/2013 11:16:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_Cars_MultipleSearch]
	@Make varchar(50) =null,
	@Model varchar(50) =null,
	@PriceMin float = null,
	@PriceMax float = null,
	@Location varchar(50) = null,
	@Type varchar(50) = null
	
	
AS
BEGIN
SELECT	* FROM	Cars
WHERE

  (@Make IS NULL OR Make=@Make)
  AND (@Model IS NULL OR Model =@Model)
 AND (@PriceMin IS NULL OR Price>=@PriceMin)
 AND (@PriceMax IS NULL OR Price<=@PriceMax)
 AND (@Location IS NULL OR Location=@Location)
 AND (@Type IS NULL OR Type=@Type)
 END
GO
/****** Object:  StoredProcedure [dbo].[sp_Cars_ModelDataSource]    Script Date: 01/14/2013 11:16:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Cars_ModelDataSource] 
	(
	@Make varchar(50)
	)
AS
BEGIN
	
	SELECT DISTINCT model FROM Cars WHERE Make =@Make
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Cars_Make]    Script Date: 01/14/2013 11:16:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Cars_Make]
	
AS
BEGIN
	
	SELECT DISTINCT Make FROM Cars
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Cars_Insert]    Script Date: 01/14/2013 11:16:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Cars_Insert]

(
@carID int output,
@type varchar(50),
@make varchar(50),
@model varchar(50),
@year varchar(50),
@color varchar(50),
@killometers varchar(50),
@transmission varchar(50),
@condition varchar(50),
@price money,
@location varchar(50),
@linkToFile varchar(50),
@accountID int
)
	
AS
BEGIN
INSERT INTO [CarSalesDB].[dbo].[Cars]
           (
            [Type]
           ,[Make]
           ,[Model]
           ,[Year]
           ,[Color]
           ,[Killometers]
           ,[Transmission]
           ,[Condition]
           ,[Price]
           ,[Location],
           [LinkToFile],
           [AccountID]
            )
           
     VALUES
           (@type
           ,@make
           ,@model
           ,@year
           ,@color
           ,@killometers
           ,@transmission
           ,@condition
           ,@price
           ,@location,
           @linkToFile,
           @accountID
           )
           
       SET @carID = @@IDENTITY  
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Cars_CountAllCars]    Script Date: 01/14/2013 11:16:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Cars_CountAllCars]
	
AS
BEGIN
	
	SELECT (CarID) FROM Cars
	END
GO
/****** Object:  StoredProcedure [dbo].[sp_Cars_BodyTypeDataSource]    Script Date: 01/14/2013 11:16:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Cars_BodyTypeDataSource]
	
AS
BEGIN
	
	SELECT DISTINCT [Type] FROM Cars
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Car_SelectAccountIdByCarID]    Script Date: 01/14/2013 11:16:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Car_SelectAccountIdByCarID]
	(
	@CarID int
	)
AS
BEGIN
	
	SELECT AccountID FROM Cars WHERE CarID = @CarID
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Accounts_SelectAccountByUsername]    Script Date: 01/14/2013 11:16:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Accounts_SelectAccountByUsername]
(
@username varchar(50)
)
AS
BEGIN
	SELECT * FROM Accounts WHERE Username = @username 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Accounts_CountAllAccounts]    Script Date: 01/14/2013 11:16:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Accounts_CountAllAccounts] 
	
AS
BEGIN
	
	SELECT (AccountID) FROM dbo.Accounts
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Account_Insert]    Script Date: 01/14/2013 11:16:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Account_Insert]

(
	@accountID int  output ,	
	@username varchar(50),
	@password varchar (50),	
	@role varchar (50),
	@dateCreated date,
	@isActive bit
)
AS
BEGIN
	INSERT INTO [CarSalesDB].[dbo].[Accounts]
           ([Username]
           ,[Password]            
           ,[Role]
           ,[DateCreated]
           ,[IsActive])
           
     VALUES
           (@username
           ,@password           
           ,@role
           ,@dateCreated,
            @isActive)
           
           
        SET @accountID = @@IDENTITY   
         
END
GO
/****** Object:  Table [dbo].[Links]    Script Date: 01/14/2013 11:16:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Links](
	[PhotoID] [int] IDENTITY(1,1) NOT NULL,
	[LinkToFile] [varchar](50) NULL,
	[CarID] [int] NULL,
 CONSTRAINT [PK_Links] PRIMARY KEY CLUSTERED 
(
	[PhotoID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Links] ON
INSERT [dbo].[Links] ([PhotoID], [LinkToFile], [CarID]) VALUES (1, N'Hello', NULL)
INSERT [dbo].[Links] ([PhotoID], [LinkToFile], [CarID]) VALUES (2, N'Test', NULL)
INSERT [dbo].[Links] ([PhotoID], [LinkToFile], [CarID]) VALUES (3, N'Test', NULL)
INSERT [dbo].[Links] ([PhotoID], [LinkToFile], [CarID]) VALUES (4, N'Test', NULL)
INSERT [dbo].[Links] ([PhotoID], [LinkToFile], [CarID]) VALUES (55, N'~/Photos/imagesCATLAZ6M.jpg', 59)
INSERT [dbo].[Links] ([PhotoID], [LinkToFile], [CarID]) VALUES (56, N'~/Photos/imagesCADD72NR.jpg', 59)
INSERT [dbo].[Links] ([PhotoID], [LinkToFile], [CarID]) VALUES (57, N'~/Photos/imagesCADDJG0T.jpg', 59)
INSERT [dbo].[Links] ([PhotoID], [LinkToFile], [CarID]) VALUES (58, N'~/Photos/imagesCAY9II9C.jpg', 59)
INSERT [dbo].[Links] ([PhotoID], [LinkToFile], [CarID]) VALUES (59, N'~/Photos/imagesCAWSOFME.jpg', 60)
INSERT [dbo].[Links] ([PhotoID], [LinkToFile], [CarID]) VALUES (60, N'~/Photos/untitled.png', 60)
INSERT [dbo].[Links] ([PhotoID], [LinkToFile], [CarID]) VALUES (61, N'~/Photos/imagesCASAZ641.jpg', 60)
INSERT [dbo].[Links] ([PhotoID], [LinkToFile], [CarID]) VALUES (62, N'~/Photos/3.png', 61)
INSERT [dbo].[Links] ([PhotoID], [LinkToFile], [CarID]) VALUES (63, N'~/Photos/imagesCAASHLJS.jpg', 61)
INSERT [dbo].[Links] ([PhotoID], [LinkToFile], [CarID]) VALUES (64, N'~/Photos/imagesCAIWO0Y8.jpg', 61)
INSERT [dbo].[Links] ([PhotoID], [LinkToFile], [CarID]) VALUES (65, N'~/Photos/images.jpg', 61)
INSERT [dbo].[Links] ([PhotoID], [LinkToFile], [CarID]) VALUES (66, N'~/Photos/untitled55.png', 62)
INSERT [dbo].[Links] ([PhotoID], [LinkToFile], [CarID]) VALUES (67, N'~/Photos/imagesCA29Z9O6.jpg', 64)
INSERT [dbo].[Links] ([PhotoID], [LinkToFile], [CarID]) VALUES (73, N'~/Photos/untitled15.png', 66)
INSERT [dbo].[Links] ([PhotoID], [LinkToFile], [CarID]) VALUES (74, N'~/Photos/untitled12.png', 66)
INSERT [dbo].[Links] ([PhotoID], [LinkToFile], [CarID]) VALUES (75, N'~/Photos/imagesCAJLC3SZ.jpg', 66)
INSERT [dbo].[Links] ([PhotoID], [LinkToFile], [CarID]) VALUES (76, N'~/Photos/audi-q7-ttdi.jpg', 66)
INSERT [dbo].[Links] ([PhotoID], [LinkToFile], [CarID]) VALUES (77, N'~/Photos/untitledQ5.png', 67)
INSERT [dbo].[Links] ([PhotoID], [LinkToFile], [CarID]) VALUES (78, N'~/Photos/Q5.1.png', 67)
INSERT [dbo].[Links] ([PhotoID], [LinkToFile], [CarID]) VALUES (79, N'~/Photos/imagesCA0XWBOM.jpg', 67)
INSERT [dbo].[Links] ([PhotoID], [LinkToFile], [CarID]) VALUES (80, N'~/Photos/untitled1.png', 70)
INSERT [dbo].[Links] ([PhotoID], [LinkToFile], [CarID]) VALUES (81, N'~/Photos/imagesCAVMBV8R.jpg', 70)
INSERT [dbo].[Links] ([PhotoID], [LinkToFile], [CarID]) VALUES (82, N'~/Photos/untitled.png', 70)
INSERT [dbo].[Links] ([PhotoID], [LinkToFile], [CarID]) VALUES (83, N'~/Photos/imagesCAAIO8D0.jpg', 71)
INSERT [dbo].[Links] ([PhotoID], [LinkToFile], [CarID]) VALUES (84, N'~/Photos/3.jpg', 71)
INSERT [dbo].[Links] ([PhotoID], [LinkToFile], [CarID]) VALUES (85, N'~/Photos/imagesCACME6BY.jpg', 71)
INSERT [dbo].[Links] ([PhotoID], [LinkToFile], [CarID]) VALUES (86, N'~/Photos/untitled3.png', 71)
INSERT [dbo].[Links] ([PhotoID], [LinkToFile], [CarID]) VALUES (87, N'~/Photos/8.png', 72)
INSERT [dbo].[Links] ([PhotoID], [LinkToFile], [CarID]) VALUES (88, N'~/Photos/imagesCASG3CX4.jpg', 72)
INSERT [dbo].[Links] ([PhotoID], [LinkToFile], [CarID]) VALUES (89, N'~/Photos/untitled6.png', 72)
INSERT [dbo].[Links] ([PhotoID], [LinkToFile], [CarID]) VALUES (90, N'~/Photos/untitled35.png', 72)
INSERT [dbo].[Links] ([PhotoID], [LinkToFile], [CarID]) VALUES (91, N'~/Photos/imagesCA6QAGY1.jpg', 73)
INSERT [dbo].[Links] ([PhotoID], [LinkToFile], [CarID]) VALUES (92, N'~/Photos/untitled8.png', 73)
INSERT [dbo].[Links] ([PhotoID], [LinkToFile], [CarID]) VALUES (93, N'~/Photos/untitled55.png', 73)
INSERT [dbo].[Links] ([PhotoID], [LinkToFile], [CarID]) VALUES (94, N'~/Photos/untitled88.png', 73)
INSERT [dbo].[Links] ([PhotoID], [LinkToFile], [CarID]) VALUES (95, N'~/Photos/imagesCA0S41LV.jpg', 74)
INSERT [dbo].[Links] ([PhotoID], [LinkToFile], [CarID]) VALUES (96, N'~/Photos/audi-q7-ttdi.jpg', 74)
SET IDENTITY_INSERT [dbo].[Links] OFF
/****** Object:  Table [dbo].[Customers]    Script Date: 01/14/2013 11:16:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customers](
	[AccountID] [int] NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[Email] [varchar](50) NOT NULL,
	[Address] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[State] [varchar](50) NULL,
	[Postcode] [varchar](50) NULL,
	[Phone] [varchar](50) NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Customers] ([AccountID], [FirstName], [LastName], [Email], [Address], [City], [State], [Postcode], [Phone]) VALUES (1, N'Omar', N'Zikri', N'zikri24@gmail.com', N'Anzac Parade', N'Maroubra', N'NSW', N'2035', N'0406464857')
INSERT [dbo].[Customers] ([AccountID], [FirstName], [LastName], [Email], [Address], [City], [State], [Postcode], [Phone]) VALUES (2, N'Jessica', N'NG', N'jess@hotmail.com', N'Anzac Parade', N'Maroubra', N'NSW', N'2032', N'0415151919')
INSERT [dbo].[Customers] ([AccountID], [FirstName], [LastName], [Email], [Address], [City], [State], [Postcode], [Phone]) VALUES (3, N'Ahmed Zikri', N'Zikri', N'ahmed@gmail.com', N'Botany Street', N'Kingsford', N'NSW', N'2032', N'0406464857')
INSERT [dbo].[Customers] ([AccountID], [FirstName], [LastName], [Email], [Address], [City], [State], [Postcode], [Phone]) VALUES (6, N'Rosy', N'Ben', N'rosy@gmail.com', N'27 Park Street', N'Sydney', N'NSW', N'2000', N'0406464857')
INSERT [dbo].[Customers] ([AccountID], [FirstName], [LastName], [Email], [Address], [City], [State], [Postcode], [Phone]) VALUES (7, NULL, NULL, N'ihab@hotmail.com', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Customers] ([AccountID], [FirstName], [LastName], [Email], [Address], [City], [State], [Postcode], [Phone]) VALUES (8, NULL, NULL, N'ehab@hotmail.com', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Customers] ([AccountID], [FirstName], [LastName], [Email], [Address], [City], [State], [Postcode], [Phone]) VALUES (9, N'Ahmed', N'Zikri', N'zikri@zikri.com', N'Anzac Parade', N'Maroubra', N'NSW', N'2032', N'0406464857')
INSERT [dbo].[Customers] ([AccountID], [FirstName], [LastName], [Email], [Address], [City], [State], [Postcode], [Phone]) VALUES (10, N'Revca', N'Micheal', N'revca@hotmail.com', N'ASYUGTDUA', N'YSADGTJSA', N'YTYUT', N'UYTYUT', N'UYTYUT')
INSERT [dbo].[Customers] ([AccountID], [FirstName], [LastName], [Email], [Address], [City], [State], [Postcode], [Phone]) VALUES (11, NULL, NULL, N'plema@yahoo.com', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Customers] ([AccountID], [FirstName], [LastName], [Email], [Address], [City], [State], [Postcode], [Phone]) VALUES (12, NULL, NULL, N'jess@gmail.com', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Customers] ([AccountID], [FirstName], [LastName], [Email], [Address], [City], [State], [Postcode], [Phone]) VALUES (13, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Customers] ([AccountID], [FirstName], [LastName], [Email], [Address], [City], [State], [Postcode], [Phone]) VALUES (14, NULL, NULL, N'tom@gmail.com', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Customers] ([AccountID], [FirstName], [LastName], [Email], [Address], [City], [State], [Postcode], [Phone]) VALUES (15, NULL, NULL, N'metwaly@gmail.com', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Customers] ([AccountID], [FirstName], [LastName], [Email], [Address], [City], [State], [Postcode], [Phone]) VALUES (16, N'Omar', N'Zikri', N'zikri24@hotmail.com', N'Anzac Parade', N'Maroubra', N'NSW', N'2032', N'0406464857')
INSERT [dbo].[Customers] ([AccountID], [FirstName], [LastName], [Email], [Address], [City], [State], [Postcode], [Phone]) VALUES (17, NULL, NULL, N'zikri24@zikri.com', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Customers] ([AccountID], [FirstName], [LastName], [Email], [Address], [City], [State], [Postcode], [Phone]) VALUES (18, N'Adam', N'Jone', N'adam@gmail.com', N'851 Pitt Street', N'Sydney', N'NSW', N'2000', N'0406464857')
/****** Object:  StoredProcedure [dbo].[sp_Cars_UpdateCar]    Script Date: 01/14/2013 11:16:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Cars_UpdateCar]

(
@carID int ,
@type varchar(50),
@make varchar(50),
@model varchar(50),
@year varchar(50),
@color varchar(50),
@killometers varchar(50),
@transmission varchar(50),
@condition varchar(50),
@price money
)
	
AS
BEGIN
UPDATE Cars
SET
			 
            [Type]=@type
           ,[Make]=@make
           ,[Model]=@model
           ,[Year]=@year
           ,[Color]=@color
           ,[Killometers]=@killometers
           ,[Transmission]=@transmission
           ,[Condition]=@condition
           ,[Price]=@price           
           
       WHERE CarID=@carID
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Cars_SelectNewCars]    Script Date: 01/14/2013 11:16:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Cars_SelectNewCars]
	(
	@condition varchar(50)
	)
AS
BEGIN
	
	SELECT* FROM Cars WHERE Condition = @condition
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Cars_SelectCarByID]    Script Date: 01/14/2013 11:16:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Cars_SelectCarByID]
	(@carID int)
AS
BEGIN
	SELECT *
	FROM Cars
	WHERE CarID = @carID
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Cars_SelectCarByAccountID]    Script Date: 01/14/2013 11:16:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Cars_SelectCarByAccountID] 
	(
	@AccountID int
	)
AS
BEGIN
	
	SELECT * FROM Cars WHERE AccountID = @AccountID
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Cars_SelectAllCars]    Script Date: 01/14/2013 11:16:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Cars_SelectAllCars] 
	
AS
BEGIN
	
	SELECT * FROM Cars
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Cars_SearchByType]    Script Date: 01/14/2013 11:16:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Cars_SearchByType] 
	(
	@type varchar(50)
	)
AS
BEGIN
	SELECT 
	   [CarID]
      ,[Type]
      ,[Make]
      ,[Model]
      ,[Year]
      ,[Color]
      ,[Killometers]
      ,[Transmission]
      ,[Condition]
      ,[Price]
      ,[Location]
      
  FROM [CarSalesDB].[dbo].[Cars]

	WHERE [Type] = @type

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Links_SelectPhotos]    Script Date: 01/14/2013 11:16:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Links_SelectPhotos]
	(
	@carID int
	)
AS
BEGIN
	
	SELECT LinkToFile FROM Links WHERE CarID=@carID
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Links_SelectByCarID]    Script Date: 01/14/2013 11:16:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Links_SelectByCarID]
	(
	@carID int
	)
AS
BEGIN
	SELECT * FROM Links WHERE CarID = @carID
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Links_InsertPhoto]    Script Date: 01/14/2013 11:16:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Links_InsertPhoto]
	
	(
	@carID int,
	@linkToFile varchar(50)
	)
AS
BEGIN

INSERT INTO Links ([LinkToFile], [CarID]) VALUES  (@linkToFile, @carID)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Customers_Update]    Script Date: 01/14/2013 11:16:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Customers_Update]
(
@accountID int,
@firstName varchar(50),
@lastName varchar(50),
@email varchar(50),
@Address varchar(50),
@city varchar(50),
@state varchar(50),
@postcode varchar(50),
@phone varchar(50)
)
	
AS
BEGIN
	UPDATE [CarSalesDB].[dbo].[Customers]
	
   SET [AccountID] = @accountID      
      ,[FirstName] = @firstName
      ,[LastName] = @lastName
      ,[Email] = @email
      ,[Address] = @Address
      ,[City] = @city
      ,[State] = @state
      ,[Postcode] = @postcode
      ,[Phone] = @phone
      
 WHERE AccountID =@accountID

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Customers_SelectAllCustomers]    Script Date: 01/14/2013 11:16:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Customers_SelectAllCustomers]
	
AS
BEGIN
	
	SELECT * FROM Customers
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Customers_Insert]    Script Date: 01/14/2013 11:16:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Customers_Insert]

(
@accountID int,
@email varchar(50)
)

AS
BEGIN
	INSERT INTO [CarSalesDB].[dbo].[Customers]
	       (
           [AccountID]
           ,[Email]
           )
           
     VALUES
     
           (
           @accountID,
           @email
           )
           
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Customer_SelectCustomerByID]    Script Date: 01/14/2013 11:16:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Customer_SelectCustomerByID]
(
	@accountID int
)	
	
AS
BEGIN
	SELECT * FROM Customers WHERE AccountID = @accountID
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Cars_SearchByMake1]    Script Date: 01/14/2013 11:16:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Cars_SearchByMake1]
(
@make varchar(50)
)
AS
BEGIN
	SELECT     Links.LinkToFile, Cars.Type, Cars.Make, Cars.Model, Cars.Year, Cars.Color, Cars.Killometers, Cars.Transmission, Cars.Condition, Cars.Price, Cars.Location
FROM         Links INNER JOIN
                      Cars ON Links.CarID = Cars.CarID
                      WHERE Make= @make
END
GO
/****** Object:  StoredProcedure [dbo].[sp_selectCarsWithPhotos]    Script Date: 01/14/2013 11:16:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_selectCarsWithPhotos]
	(
	@carID int,
	@make varchar(50)
	)
AS
BEGIN
	SELECT     Cars.CarID, Cars.Type, Cars.Make, Cars.Model, Cars.Year, Cars.Color, Cars.Killometers, Cars.Transmission, Cars.Condition, Cars.Price, Cars.Location, 
                      Links.LinkToFile
FROM         Cars INNER JOIN
                      Links ON Cars.CarID = Links.CarID
                      
                      WHERE Cars.CarID = @carID
                      
END
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 01/14/2013 11:16:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderNo] [int] IDENTITY(1,1) NOT NULL,
	[AccountID] [int] NULL,
	[DateTime] [datetime] NULL,
	[Total] [money] NULL,
	[Status] [varchar](50) NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON
INSERT [dbo].[Orders] ([OrderNo], [AccountID], [DateTime], [Total], [Status]) VALUES (12, 9, CAST(0x0000A10E0008CB83 AS DateTime), 45000.0000, N'S')
INSERT [dbo].[Orders] ([OrderNo], [AccountID], [DateTime], [Total], [Status]) VALUES (13, 9, CAST(0x0000A10E000A3ACF AS DateTime), 65000.0000, N'S')
INSERT [dbo].[Orders] ([OrderNo], [AccountID], [DateTime], [Total], [Status]) VALUES (14, 2, CAST(0x0000A10E001085DB AS DateTime), 65000.0000, N'S')
INSERT [dbo].[Orders] ([OrderNo], [AccountID], [DateTime], [Total], [Status]) VALUES (15, 9, CAST(0x0000A10E00A73A13 AS DateTime), 65000.0000, N'S')
INSERT [dbo].[Orders] ([OrderNo], [AccountID], [DateTime], [Total], [Status]) VALUES (16, 10, CAST(0x0000A10E00AAFE88 AS DateTime), 4000.0000, N'S')
INSERT [dbo].[Orders] ([OrderNo], [AccountID], [DateTime], [Total], [Status]) VALUES (17, 14, CAST(0x0000A10E00B9DEB9 AS DateTime), 120000.0000, N'S')
INSERT [dbo].[Orders] ([OrderNo], [AccountID], [DateTime], [Total], [Status]) VALUES (18, 14, CAST(0x0000A10E00BA3D66 AS DateTime), 120000.0000, N'S')
INSERT [dbo].[Orders] ([OrderNo], [AccountID], [DateTime], [Total], [Status]) VALUES (19, 10, CAST(0x0000A10E00BBE263 AS DateTime), 80000.0000, N'S')
INSERT [dbo].[Orders] ([OrderNo], [AccountID], [DateTime], [Total], [Status]) VALUES (20, 9, CAST(0x0000A10E012254B5 AS DateTime), 80000.0000, N'S')
INSERT [dbo].[Orders] ([OrderNo], [AccountID], [DateTime], [Total], [Status]) VALUES (21, 9, CAST(0x0000A10E01252923 AS DateTime), 4000.0000, N'S')
INSERT [dbo].[Orders] ([OrderNo], [AccountID], [DateTime], [Total], [Status]) VALUES (22, 1, CAST(0x0000A10F0183CFF9 AS DateTime), 65000.0000, N'S')
INSERT [dbo].[Orders] ([OrderNo], [AccountID], [DateTime], [Total], [Status]) VALUES (23, 9, CAST(0x0000A11000A1F0EE AS DateTime), 25000.0000, N'S')
INSERT [dbo].[Orders] ([OrderNo], [AccountID], [DateTime], [Total], [Status]) VALUES (24, 9, CAST(0x0000A11000E5DFD3 AS DateTime), 65000.0000, N'S')
INSERT [dbo].[Orders] ([OrderNo], [AccountID], [DateTime], [Total], [Status]) VALUES (25, 2, CAST(0x0000A12401407FFE AS DateTime), 80000.0000, N'S')
INSERT [dbo].[Orders] ([OrderNo], [AccountID], [DateTime], [Total], [Status]) VALUES (26, 9, CAST(0x0000A13E01483B96 AS DateTime), 120000.0000, N'S')
INSERT [dbo].[Orders] ([OrderNo], [AccountID], [DateTime], [Total], [Status]) VALUES (27, 9, CAST(0x0000A143013F0717 AS DateTime), 65000.0000, N'S')
INSERT [dbo].[Orders] ([OrderNo], [AccountID], [DateTime], [Total], [Status]) VALUES (28, 9, CAST(0x0000A14400F5C68C AS DateTime), 65000.0000, N'S')
SET IDENTITY_INSERT [dbo].[Orders] OFF
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 01/14/2013 11:16:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderNo] [int] NULL,
	[CarID] [int] NULL,
	[Price] [money] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[OrderDetails] ([OrderNo], [CarID], [Price]) VALUES (12, 61, 45000.0000)
INSERT [dbo].[OrderDetails] ([OrderNo], [CarID], [Price]) VALUES (15, 59, 65000.0000)
INSERT [dbo].[OrderDetails] ([OrderNo], [CarID], [Price]) VALUES (16, 62, 4000.0000)
INSERT [dbo].[OrderDetails] ([OrderNo], [CarID], [Price]) VALUES (17, 66, 120000.0000)
INSERT [dbo].[OrderDetails] ([OrderNo], [CarID], [Price]) VALUES (18, 66, 120000.0000)
INSERT [dbo].[OrderDetails] ([OrderNo], [CarID], [Price]) VALUES (20, 67, 80000.0000)
INSERT [dbo].[OrderDetails] ([OrderNo], [CarID], [Price]) VALUES (21, 62, 4000.0000)
INSERT [dbo].[OrderDetails] ([OrderNo], [CarID], [Price]) VALUES (22, 59, 65000.0000)
INSERT [dbo].[OrderDetails] ([OrderNo], [CarID], [Price]) VALUES (23, 63, 25000.0000)
INSERT [dbo].[OrderDetails] ([OrderNo], [CarID], [Price]) VALUES (24, 59, 65000.0000)
INSERT [dbo].[OrderDetails] ([OrderNo], [CarID], [Price]) VALUES (25, 67, 80000.0000)
INSERT [dbo].[OrderDetails] ([OrderNo], [CarID], [Price]) VALUES (26, 69, 120000.0000)
INSERT [dbo].[OrderDetails] ([OrderNo], [CarID], [Price]) VALUES (28, 60, 65000.0000)
INSERT [dbo].[OrderDetails] ([OrderNo], [CarID], [Price]) VALUES (13, 60, 65000.0000)
INSERT [dbo].[OrderDetails] ([OrderNo], [CarID], [Price]) VALUES (19, 67, 80000.0000)
/****** Object:  StoredProcedure [dbo].[sp_Orders_SelectAllOrders]    Script Date: 01/14/2013 11:16:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Orders_SelectAllOrders]
	
AS
BEGIN
	
	SELECT    * FROM Orders
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Orders_Insert]    Script Date: 01/14/2013 11:16:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Orders_Insert]
	(
	@OrderNo int OUTPUT,
	@AccountID int,
	@DateTime DateTime,
	@Total Float,
	@Status varchar
	)
	
AS
BEGIN
	INSERT INTO [CarSalesDB].[dbo].[Orders]
           ([AccountID]
           ,[DateTime]
           ,[Total]           
           ,[Status])
     VALUES
           (@AccountID,
			@DateTime,
			@Total,          
			@Status)
			
			SET @OrderNo = @@IDENTITY   
         

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Orders_CountAllOrders]    Script Date: 01/14/2013 11:16:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Orders_CountAllOrders]
	
AS
BEGIN
	
	SELECT OrderNo FROM dbo.Orders
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Orders_ShowUserOrders]    Script Date: 01/14/2013 11:16:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Orders_ShowUserOrders]

(
@username varchar(50)
)

AS
BEGIN
	SELECT     *
FROM         OrderDetails INNER JOIN
                      Cars ON OrderDetails.CarID = Cars.CarID INNER JOIN
                      Orders ON OrderDetails.OrderNo = Orders.OrderNo INNER JOIN
                      Accounts INNER JOIN
                      Customers ON Accounts.AccountID = Customers.AccountID ON Orders.AccountID = Customers.AccountID
                      
                      WHERE Username = @username
END
GO
/****** Object:  StoredProcedure [dbo].[sp_OrderDetails_Insert]    Script Date: 01/14/2013 11:16:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_OrderDetails_Insert]
	(
	@OrderNo int,
	@CarID int,	
	@Price Float
	)
	
AS
BEGIN
	INSERT INTO [CarSalesDB].[dbo].[OrderDetails]
           ([OrderNo]
           ,[CarID]
           ,[Price])
     VALUES
           (@OrderNo,
			@CarID,
			@Price)
END
GO
/****** Object:  ForeignKey [FK_Links_Cars1]    Script Date: 01/14/2013 11:16:03 ******/
ALTER TABLE [dbo].[Links]  WITH CHECK ADD  CONSTRAINT [FK_Links_Cars1] FOREIGN KEY([CarID])
REFERENCES [dbo].[Cars] ([CarID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Links] CHECK CONSTRAINT [FK_Links_Cars1]
GO
/****** Object:  ForeignKey [FK_Customers_Accounts]    Script Date: 01/14/2013 11:16:03 ******/
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [FK_Customers_Accounts] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Accounts] ([AccountID])
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_Customers_Accounts]
GO
/****** Object:  ForeignKey [FK_Orders_Customers1]    Script Date: 01/14/2013 11:16:03 ******/
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Customers1] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Customers] ([AccountID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Customers1]
GO
/****** Object:  ForeignKey [FK_OrderDetails_Cars1]    Script Date: 01/14/2013 11:16:03 ******/
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Cars1] FOREIGN KEY([CarID])
REFERENCES [dbo].[Cars] ([CarID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Cars1]
GO
/****** Object:  ForeignKey [FK_OrderDetails_Orders]    Script Date: 01/14/2013 11:16:03 ******/
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders] FOREIGN KEY([OrderNo])
REFERENCES [dbo].[Orders] ([OrderNo])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders]
GO
