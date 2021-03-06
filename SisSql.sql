/****** Object:  Database [School_Information_System]    Script Date: 11/28/2016 9:58:02 AM ******/
CREATE DATABASE [School_Information_System]
GO
USE [School_Information_System]
GO
/****** Object:  Schema [Administration]    Script Date: 11/28/2016 9:58:02 AM ******/
CREATE SCHEMA [Administration]
GO
/****** Object:  Schema [Admission]    Script Date: 11/28/2016 9:58:02 AM ******/
CREATE SCHEMA [Admission]
GO
/****** Object:  Schema [FinancialRecords]    Script Date: 11/28/2016 9:58:02 AM ******/
CREATE SCHEMA [FinancialRecords]
GO
/****** Object:  Schema [OfficeRecords]    Script Date: 11/28/2016 9:58:02 AM ******/
CREATE SCHEMA [OfficeRecords]
GO
/****** Object:  Schema [Planing]    Script Date: 11/28/2016 9:58:02 AM ******/
CREATE SCHEMA [Planing]
GO
/****** Object:  Table [Administration].[Login_Details]    Script Date: 11/28/2016 9:58:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [Administration].[Login_Details](
	[UserID_Number] [nvarchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[UserName] [varchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Password] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[UserRole] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_Login_Details] PRIMARY KEY CLUSTERED 
(
	[UserID_Number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Admission].[Parent_Record]    Script Date: 11/28/2016 9:58:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Admission].[Parent_Record](
	[ParentID] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[StudentID] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[LastName] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[MiddleName] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FirstName] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Address] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Phone] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Email] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Nationality] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Occupation] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Entity] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Entity_Addres] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Salary_Range] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_Parent_Record] PRIMARY KEY CLUSTERED 
(
	[ParentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Admission].[Registration_Details]    Script Date: 11/28/2016 9:58:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Admission].[Registration_Details](
	[Reg_NO] [int] IDENTITY(1,1) NOT NULL,
	[RegID] [int] NOT NULL,
	[LastName] [varchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[MiddleName] [varchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FirstName] [varchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Class] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Gender] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Phone] [int] NULL,
	[Email] [varchar](350) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Address] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[City] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[County] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Nationality] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Date_Of_Birth] [date] NOT NULL,
	[Place_Of_Birth] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Registraton_Date] [datetime] NULL,
	[Country_Of_Origin] [varchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Emergency_Contact_FullName] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Emergency_Contact_Phone] [int] NOT NULL,
	[Transcript] [varbinary](max) NULL,
 CONSTRAINT [PK__Registra__2C682118D03D387C] PRIMARY KEY CLUSTERED 
(
	[RegID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Admission].[StudentRecords]    Script Date: 11/28/2016 9:58:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Admission].[StudentRecords](
	[StudentID] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[RegID] [int] NOT NULL,
	[ParentID] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[StudentPhoto] [image] NOT NULL,
	[Class] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Previous_School_Attended] [varchar](60) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Previous_School_Address] [varchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Last_Year_In_Previous_School] [date] NOT NULL,
	[EnrollmentStatus] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[EnrollmentDate] [date] NOT NULL,
	[AcademicYear] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK__StudentR__32C52A791DAD28CC] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [FinancialRecords].[Fees_Payment]    Script Date: 11/28/2016 9:58:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [FinancialRecords].[Fees_Payment](
	[PaymentID] [int] NOT NULL,
	[StudentID] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ReceiptNo] [int] NOT NULL,
	[Digital_Signature] [uniqueidentifier] NOT NULL,
	[Transaction_Date] [datetime] NOT NULL,
	[Total_First_Semester_Fees] [money] NOT NULL,
	[First_Payment] [money] NOT NULL,
	[Second_Payment] [money] NOT NULL,
	[Total_First_Semester_Payment] [money] NOT NULL,
	[First_Semester_Balance] [money] NOT NULL,
	[Total_Second_Semester_Fees] [money] NOT NULL,
	[Third_Payment] [money] NOT NULL,
	[Fourth_Payment] [money] NOT NULL,
	[Total_Second_Semester_Payment] [money] NOT NULL,
	[Second_Semester_Balance] [money] NOT NULL,
	[Yearly_Balance] [money] NOT NULL,
 CONSTRAINT [PK_Fees_Payment] PRIMARY KEY CLUSTERED 
(
	[PaymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [FinancialRecords].[Payroll]    Script Date: 11/28/2016 9:58:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [FinancialRecords].[Payroll](
	[Payroll_ID] [int] NOT NULL,
	[StaffID] [int] NOT NULL,
	[Account_No] [numeric](18, 0) NOT NULL,
	[Month_Of_Payment] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Monthly_Salary] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Contract_Period] [int] NOT NULL,
	[Annual_Salary] [money] NOT NULL,
	[Monthly_Income_Tax] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[PayDate] [date] NOT NULL,
	[DepartmentID] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [FinancialRecords].[TotalFees]    Script Date: 11/28/2016 9:58:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [FinancialRecords].[TotalFees](
	[Fees_ID] [int] NOT NULL,
	[Class] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Total_Fees] [money] NOT NULL,
 CONSTRAINT [PK_TotalFees] PRIMARY KEY CLUSTERED 
(
	[Fees_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [OfficeRecords].[AcademicYear]    Script Date: 11/28/2016 9:58:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [OfficeRecords].[AcademicYear](
	[AcademicYear_ID] [int] NOT NULL,
	[AcademicYear] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Semester] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[IsActive] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_AcademicYear] PRIMARY KEY CLUSTERED 
(
	[AcademicYear] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [OfficeRecords].[Class]    Script Date: 11/28/2016 9:58:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [OfficeRecords].[Class](
	[ClassID] [int] NOT NULL,
	[Class] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Sponsor] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Number_of_Students] [int] NOT NULL,
	[ClassScheduleID] [int] NOT NULL,
	[AcademicYearID] [int] NOT NULL,
 CONSTRAINT [PK_Class] PRIMARY KEY CLUSTERED 
(
	[Class] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [OfficeRecords].[Staff]    Script Date: 11/28/2016 9:58:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [OfficeRecords].[Staff](
	[StaffID] [int] IDENTITY(1,1) NOT NULL,
	[Staff_Position] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Staff_Photo] [image] NOT NULL,
	[Last_Name] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Middle_Name] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[First_Name] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Gender] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Phone] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Email] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Date_of_Birth] [date] NOT NULL,
	[Place_of_Birth] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Nationality] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Subject] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Highest_Qualification] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Years_of_experience] [int] NOT NULL,
	[License] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_Staff] PRIMARY KEY CLUSTERED 
(
	[StaffID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [OfficeRecords].[Staff Position]    Script Date: 11/28/2016 9:58:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [OfficeRecords].[Staff Position](
	[PositionID] [int] NOT NULL,
	[Staff_Position] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[StaffID] [int] NOT NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[Staff_Position] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [OfficeRecords].[Student_Attendance]    Script Date: 11/28/2016 9:58:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [OfficeRecords].[Student_Attendance](
	[StudentAttendanceID] [int] IDENTITY(1,1) NOT NULL,
	[StudentID] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[AcademicYear] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ClassID] [int] NOT NULL,
	[Present] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Absent] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Absent_Reason] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Date] [date] NOT NULL,
 CONSTRAINT [PK__Student___6342643B08EA5793] PRIMARY KEY CLUSTERED 
(
	[StudentAttendanceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [OfficeRecords].[StudentMark]    Script Date: 11/28/2016 9:58:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [OfficeRecords].[StudentMark](
	[StudentMarkID] [int] NOT NULL,
	[AcademicYear] [int] NOT NULL,
	[StudentID] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[SubjectID] [int] NOT NULL,
	[Period] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Score] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Status] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[SemesterAverage] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[StudentRank] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_StudentMark_1] PRIMARY KEY CLUSTERED 
(
	[StudentMarkID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [OfficeRecords].[Subject]    Script Date: 11/28/2016 9:58:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [OfficeRecords].[Subject](
	[SubjectID] [int] IDENTITY(1,1) NOT NULL,
	[StaffID] [int] NOT NULL,
	[Subject] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_Subject] PRIMARY KEY CLUSTERED 
(
	[Subject] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [Planing].[ClassSchedule]    Script Date: 11/28/2016 9:58:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Planing].[ClassSchedule](
	[ScheduleID] [int] NOT NULL,
	[ClassID] [int] NOT NULL,
	[Days] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Time] [time](7) NOT NULL,
	[AcademicYear] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[SubjectID] [int] NOT NULL,
	[StaffID] [int] NOT NULL,
 CONSTRAINT [PK_ClassSchedule] PRIMARY KEY CLUSTERED 
(
	[ScheduleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [Admission].[Registration_Details] ADD  CONSTRAINT [default_Date]  DEFAULT (getdate()) FOR [Registraton_Date]
GO
ALTER TABLE [Admission].[StudentRecords] ADD  CONSTRAINT [DF_StudentRecords_StudentID]  DEFAULT ('(getdate())') FOR [StudentID]
GO
ALTER TABLE [FinancialRecords].[Fees_Payment] ADD  CONSTRAINT [DF_Fees_Payment_Transaction_Date]  DEFAULT (getdate()) FOR [Transaction_Date]
GO
ALTER TABLE [FinancialRecords].[Payroll] ADD  CONSTRAINT [DF_Payroll_PayDate]  DEFAULT (getdate()) FOR [PayDate]
GO
ALTER TABLE [Admission].[Parent_Record]  WITH CHECK ADD  CONSTRAINT [FK_Parent_Record_StudentRecords] FOREIGN KEY([StudentID])
REFERENCES [Admission].[StudentRecords] ([StudentID])
GO
ALTER TABLE [Admission].[Parent_Record] CHECK CONSTRAINT [FK_Parent_Record_StudentRecords]
GO
ALTER TABLE [Admission].[StudentRecords]  WITH CHECK ADD  CONSTRAINT [FK_StudentRecords_Parent_Record] FOREIGN KEY([ParentID])
REFERENCES [Admission].[Parent_Record] ([ParentID])
GO
ALTER TABLE [Admission].[StudentRecords] CHECK CONSTRAINT [FK_StudentRecords_Parent_Record]
GO
ALTER TABLE [Admission].[StudentRecords]  WITH CHECK ADD  CONSTRAINT [frk_RegNo] FOREIGN KEY([RegID])
REFERENCES [Admission].[Registration_Details] ([RegID])
GO
ALTER TABLE [Admission].[StudentRecords] CHECK CONSTRAINT [frk_RegNo]
GO
ALTER TABLE [FinancialRecords].[Fees_Payment]  WITH CHECK ADD  CONSTRAINT [FK_Fees_Payment_Registration_Details] FOREIGN KEY([ReceiptNo])
REFERENCES [Admission].[Registration_Details] ([RegID])
GO
ALTER TABLE [FinancialRecords].[Fees_Payment] CHECK CONSTRAINT [FK_Fees_Payment_Registration_Details]
GO
ALTER TABLE [FinancialRecords].[Fees_Payment]  WITH CHECK ADD  CONSTRAINT [FK_Fees_Payment_StudentRecords] FOREIGN KEY([StudentID])
REFERENCES [Admission].[StudentRecords] ([StudentID])
GO
ALTER TABLE [FinancialRecords].[Fees_Payment] CHECK CONSTRAINT [FK_Fees_Payment_StudentRecords]
GO
ALTER TABLE [OfficeRecords].[Staff]  WITH CHECK ADD  CONSTRAINT [FK_Staff_Subject] FOREIGN KEY([Subject])
REFERENCES [OfficeRecords].[Subject] ([Subject])
GO
ALTER TABLE [OfficeRecords].[Staff] CHECK CONSTRAINT [FK_Staff_Subject]
GO
