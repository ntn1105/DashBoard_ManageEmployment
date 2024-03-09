USE [HumanResourceDB]
GO
ALTER TABLE [dbo].[Personal] DROP CONSTRAINT [FK_dbo.Personal_dbo.Benefit_Plans_Benefit_Plans]
GO
ALTER TABLE [dbo].[Job_History] DROP CONSTRAINT [FK_dbo.Job_History_dbo.Personal_Employee_ID]
GO
ALTER TABLE [dbo].[Employment] DROP CONSTRAINT [FK_dbo.Employment_dbo.Personal_Employee_ID]
GO
ALTER TABLE [dbo].[Emergency_Contacts] DROP CONSTRAINT [FK_dbo.Emergency_Contacts_dbo.Personal_Employee_ID]
GO
/****** Object:  Table [dbo].[Personal]    Script Date: 10/03/2024 04:07:04 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Personal]') AND type in (N'U'))
DROP TABLE [dbo].[Personal]
GO
/****** Object:  Table [dbo].[Job_History]    Script Date: 10/03/2024 04:07:04 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Job_History]') AND type in (N'U'))
DROP TABLE [dbo].[Job_History]
GO
/****** Object:  Table [dbo].[Employment]    Script Date: 10/03/2024 04:07:04 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Employment]') AND type in (N'U'))
DROP TABLE [dbo].[Employment]
GO
/****** Object:  Table [dbo].[Emergency_Contacts]    Script Date: 10/03/2024 04:07:04 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Emergency_Contacts]') AND type in (N'U'))
DROP TABLE [dbo].[Emergency_Contacts]
GO
/****** Object:  Table [dbo].[Benefit_Plans]    Script Date: 10/03/2024 04:07:04 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Benefit_Plans]') AND type in (N'U'))
DROP TABLE [dbo].[Benefit_Plans]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 10/03/2024 04:07:04 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[__MigrationHistory]') AND type in (N'U'))
DROP TABLE [dbo].[__MigrationHistory]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 10/03/2024 04:07:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Benefit_Plans]    Script Date: 10/03/2024 04:07:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Benefit_Plans](
	[Benefit_Plan_ID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Plan_Name] [nvarchar](50) NULL,
	[Deductable] [numeric](18, 0) NULL,
	[Percentage_CoPay] [int] NULL,
 CONSTRAINT [PK_dbo.Benefit_Plans] PRIMARY KEY CLUSTERED 
(
	[Benefit_Plan_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Emergency_Contacts]    Script Date: 10/03/2024 04:07:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Emergency_Contacts](
	[Employee_ID] [numeric](18, 0) NOT NULL,
	[Emergency_Contact_Name] [nvarchar](50) NULL,
	[Phone_Number] [nvarchar](50) NULL,
	[Relationship] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.Emergency_Contacts] PRIMARY KEY CLUSTERED 
(
	[Employee_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employment]    Script Date: 10/03/2024 04:07:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employment](
	[Employee_ID] [numeric](18, 0) NOT NULL,
	[Employment_Status] [nvarchar](50) NULL,
	[Hire_Date] [datetime] NULL,
	[Workers_Comp_Code] [nvarchar](50) NULL,
	[Termination_Date] [datetime] NULL,
	[Rehire_Date] [datetime] NULL,
	[Last_Review_Date] [datetime] NULL,
 CONSTRAINT [PK_dbo.Employment] PRIMARY KEY CLUSTERED 
(
	[Employee_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Job_History]    Script Date: 10/03/2024 04:07:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Job_History](
	[ID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Employee_ID] [numeric](18, 0) NOT NULL,
	[Department] [nvarchar](50) NULL,
	[Division] [nvarchar](50) NULL,
	[Start_Date] [datetime] NULL,
	[End_Date] [datetime] NULL,
	[Job_Title] [nvarchar](50) NULL,
	[Supervisor] [numeric](18, 0) NULL,
	[Job_Category] [nvarchar](50) NULL,
	[Location] [nvarchar](50) NULL,
	[Departmen_Code] [numeric](18, 0) NULL,
	[Salary_Type] [numeric](18, 0) NULL,
	[Pay_Period] [nvarchar](50) NULL,
	[Hours_per_Week] [numeric](18, 0) NULL,
	[Hazardous_Training] [bit] NULL,
 CONSTRAINT [PK_dbo.Job_History] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Personal]    Script Date: 10/03/2024 04:07:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personal](
	[Employee_ID] [numeric](18, 0) NOT NULL,
	[First_Name] [nvarchar](50) NULL,
	[Last_Name] [nvarchar](50) NULL,
	[Middle_Initial] [nvarchar](50) NULL,
	[Address1] [nvarchar](50) NULL,
	[Address2] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[State] [nvarchar](50) NULL,
	[Zip] [numeric](18, 0) NULL,
	[Email] [nvarchar](50) NULL,
	[Phone_Number] [nvarchar](50) NULL,
	[Social_Security_Number] [nvarchar](50) NULL,
	[Drivers_License] [nvarchar](50) NULL,
	[Marital_Status] [nvarchar](50) NULL,
	[Gender] [bit] NULL,
	[Shareholder_Status] [bit] NOT NULL,
	[Benefit_Plans] [numeric](18, 0) NULL,
	[Ethnicity] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.Personal] PRIMARY KEY CLUSTERED 
(
	[Employee_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Emergency_Contacts]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Emergency_Contacts_dbo.Personal_Employee_ID] FOREIGN KEY([Employee_ID])
REFERENCES [dbo].[Personal] ([Employee_ID])
GO
ALTER TABLE [dbo].[Emergency_Contacts] CHECK CONSTRAINT [FK_dbo.Emergency_Contacts_dbo.Personal_Employee_ID]
GO
ALTER TABLE [dbo].[Employment]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Employment_dbo.Personal_Employee_ID] FOREIGN KEY([Employee_ID])
REFERENCES [dbo].[Personal] ([Employee_ID])
GO
ALTER TABLE [dbo].[Employment] CHECK CONSTRAINT [FK_dbo.Employment_dbo.Personal_Employee_ID]
GO
ALTER TABLE [dbo].[Job_History]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Job_History_dbo.Personal_Employee_ID] FOREIGN KEY([Employee_ID])
REFERENCES [dbo].[Personal] ([Employee_ID])
GO
ALTER TABLE [dbo].[Job_History] CHECK CONSTRAINT [FK_dbo.Job_History_dbo.Personal_Employee_ID]
GO
ALTER TABLE [dbo].[Personal]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Personal_dbo.Benefit_Plans_Benefit_Plans] FOREIGN KEY([Benefit_Plans])
REFERENCES [dbo].[Benefit_Plans] ([Benefit_Plan_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Personal] CHECK CONSTRAINT [FK_dbo.Personal_dbo.Benefit_Plans_Benefit_Plans]
GO
