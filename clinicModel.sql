USE [ClinicModel]
GO
/****** Object:  Schema [clinic]    Script Date: 27-10-2018 17:49:25 ******/
CREATE SCHEMA [clinic]
GO
/****** Object:  Schema [m2ss]    Script Date: 27-10-2018 17:49:25 ******/
CREATE SCHEMA [m2ss]
GO
/****** Object:  Table [clinic].[allergies]    Script Date: 27-10-2018 17:49:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [clinic].[allergies](
	[id] [int] IDENTITY(6,1) NOT NULL,
	[patient_id] [varchar](50) NOT NULL,
	[allergyname] [varchar](50) NOT NULL,
	[dateadded] [date] NOT NULL,
 CONSTRAINT [PK_allergies_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [clinic].[appointment]    Script Date: 27-10-2018 17:49:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [clinic].[appointment](
	[id] [int] IDENTITY(19,1) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[date] [date] NOT NULL,
	[time] [varchar](50) NOT NULL,
	[reason] [varchar](50) NOT NULL,
	[appointmentno] [varchar](50) NOT NULL,
	[status] [varchar](20) NOT NULL,
	[patienttype] [varchar](20) NOT NULL,
 CONSTRAINT [PK_appointment_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [clinic].[chronicailments]    Script Date: 27-10-2018 17:49:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [clinic].[chronicailments](
	[id] [int] IDENTITY(3,1) NOT NULL,
	[patient_id] [varchar](50) NOT NULL,
	[chronicailmentname] [varchar](50) NOT NULL,
	[dateadded] [date] NOT NULL,
 CONSTRAINT [PK_chronicailments_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [clinic].[closeddates]    Script Date: 27-10-2018 17:49:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [clinic].[closeddates](
	[id] [int] IDENTITY(16,1) NOT NULL,
	[time] [varchar](50) NOT NULL,
	[date] [date] NOT NULL,
	[reason] [varchar](50) NOT NULL,
 CONSTRAINT [PK_closeddates_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [clinic].[drugstaken]    Script Date: 27-10-2018 17:49:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [clinic].[drugstaken](
	[id] [int] IDENTITY(3,1) NOT NULL,
	[patient_id] [varchar](50) NOT NULL,
	[drugname] [varchar](50) NOT NULL,
	[dateadded] [date] NOT NULL,
 CONSTRAINT [PK_drugstaken_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [clinic].[patients]    Script Date: 27-10-2018 17:49:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [clinic].[patients](
	[patient_id] [int] IDENTITY(21,1) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[firstname] [varchar](50) NOT NULL,
	[lastname] [varchar](50) NOT NULL,
	[middlename] [varchar](50) NOT NULL,
	[birthdate] [date] NOT NULL,
	[age] [int] NOT NULL,
	[email] [varchar](50) NOT NULL,
	[gender] [varchar](20) NOT NULL,
	[address] [varchar](100) NOT NULL,
	[mobileno] [varchar](50) NOT NULL,
	[telno] [varchar](50) NOT NULL,
	[maritalstatus] [varchar](20) NOT NULL,
	[officeaddress] [varchar](100) NOT NULL,
	[officetelno] [varchar](20) NOT NULL,
	[occlusion] [varchar](50) NOT NULL,
	[periodontalcondition] [varchar](50) NOT NULL,
	[oralhygiene] [varchar](50) NOT NULL,
	[prevhistoryofbleeding] [varchar](50) NOT NULL,
	[bloodpressure] [varchar](20) NOT NULL,
	[upper_denture] [varchar](5) NOT NULL,
	[lower_denture] [varchar](5) NOT NULL,
	[upper_since] [varchar](50) NOT NULL,
	[lower_since] [varchar](50) NOT NULL,
	[total_balance] [int] NOT NULL,
	[createdby] [varchar](50) NOT NULL,
	[lastmodifiedby] [varchar](50) NOT NULL,
	[datecreated] [datetime2](0) NOT NULL,
	[datemodified] [datetime2](0) NOT NULL,
 CONSTRAINT [PK_patients_patient_id] PRIMARY KEY CLUSTERED 
(
	[patient_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [clinic].[payment_history]    Script Date: 27-10-2018 17:49:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [clinic].[payment_history](
	[id] [int] IDENTITY(75,1) NOT NULL,
	[patient_id] [int] NOT NULL,
	[type] [varchar](50) NOT NULL,
	[treatment_fee] [int] NOT NULL,
	[old_balance] [int] NOT NULL,
	[payment] [int] NOT NULL,
	[new_balance] [int] NOT NULL,
	[date] [date] NOT NULL,
	[paid_to] [varchar](50) NOT NULL,
 CONSTRAINT [PK_payment_history_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [clinic].[services]    Script Date: 27-10-2018 17:49:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [clinic].[services](
	[id] [int] IDENTITY(48,1) NOT NULL,
	[procedure_type] [varchar](50) NOT NULL,
	[dental_procedure] [varchar](50) NOT NULL,
	[service_fee] [int] NOT NULL,
	[type] [varchar](50) NOT NULL,
	[createdby] [varchar](50) NOT NULL,
	[datecreated] [datetime2](0) NOT NULL,
	[lastmodifiedby] [varchar](50) NOT NULL,
	[datemodified] [datetime2](0) NOT NULL,
	[status] [smallint] NOT NULL,
 CONSTRAINT [PK_services_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [clinic].[teethprofile]    Script Date: 27-10-2018 17:49:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [clinic].[teethprofile](
	[id] [int] IDENTITY(3,1) NOT NULL,
	[dateupdated] [datetime2](0) NOT NULL,
	[dentistincharge] [varchar](50) NOT NULL,
	[patient_id] [int] NOT NULL,
	[toothno] [int] NOT NULL,
	[toothsurface] [varchar](50) NOT NULL,
	[note] [varchar](200) NOT NULL,
 CONSTRAINT [PK_teethprofile_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [clinic].[timeslot]    Script Date: 27-10-2018 17:49:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [clinic].[timeslot](
	[id] [int] IDENTITY(14,1) NOT NULL,
	[time] [varchar](20) NOT NULL,
	[type] [char](1) NOT NULL,
 CONSTRAINT [PK_timeslot_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [clinic].[transaction]    Script Date: 27-10-2018 17:49:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [clinic].[transaction](
	[id] [int] IDENTITY(60,1) NOT NULL,
	[treatment_id] [int] NOT NULL,
	[totalamount] [real] NOT NULL,
	[amountpaid] [real] NOT NULL,
	[balance] [real] NOT NULL,
 CONSTRAINT [PK_transaction_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [clinic].[treatment]    Script Date: 27-10-2018 17:49:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [clinic].[treatment](
	[id] [int] IDENTITY(64,1) NOT NULL,
	[patient_id] [int] NOT NULL,
	[date] [date] NOT NULL,
	[dentistincharge] [varchar](30) NOT NULL,
	[chiefcomplaint] [varchar](50) NOT NULL,
	[otherfindings] [varchar](50) NOT NULL,
 CONSTRAINT [PK_treatment_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [clinic].[treatment_record]    Script Date: 27-10-2018 17:49:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [clinic].[treatment_record](
	[id] [int] IDENTITY(85,1) NOT NULL,
	[treatment_id] [int] NOT NULL,
	[type] [varchar](50) NOT NULL,
	[treatment] [varchar](50) NOT NULL,
	[toothno] [int] NOT NULL,
	[toothsurface] [varchar](50) NOT NULL,
	[price] [int] NOT NULL,
 CONSTRAINT [PK_treatment_record_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [clinic].[users]    Script Date: 27-10-2018 17:49:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [clinic].[users](
	[user_id] [int] IDENTITY(13,1) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[firstname] [varchar](50) NOT NULL,
	[middlename] [varchar](50) NOT NULL,
	[lastname] [varchar](50) NOT NULL,
	[type] [int] NOT NULL,
 CONSTRAINT [PK_users_user_id] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [clinic].[allergies] ON 

INSERT [clinic].[allergies] ([id], [patient_id], [allergyname], [dateadded]) VALUES (1, N'2', N'Seafood', CAST(N'2015-09-17' AS Date))
INSERT [clinic].[allergies] ([id], [patient_id], [allergyname], [dateadded]) VALUES (2, N'3', N'asmathic', CAST(N'2015-09-17' AS Date))
INSERT [clinic].[allergies] ([id], [patient_id], [allergyname], [dateadded]) VALUES (3, N'5', N'Asmathic', CAST(N'2015-09-17' AS Date))
INSERT [clinic].[allergies] ([id], [patient_id], [allergyname], [dateadded]) VALUES (4, N'9', N'Asmathic', CAST(N'2015-09-17' AS Date))
INSERT [clinic].[allergies] ([id], [patient_id], [allergyname], [dateadded]) VALUES (5, N'11', N'Asmathic', CAST(N'2015-09-17' AS Date))
SET IDENTITY_INSERT [clinic].[allergies] OFF
SET IDENTITY_INSERT [clinic].[appointment] ON 

INSERT [clinic].[appointment] ([id], [username], [date], [time], [reason], [appointmentno], [status], [patienttype]) VALUES (1, N'Alpha', CAST(N'2015-09-19' AS Date), N'3:00 PM - 4:00 PM', N'', N'o42ESLWp', N'Cancelled', N'')
INSERT [clinic].[appointment] ([id], [username], [date], [time], [reason], [appointmentno], [status], [patienttype]) VALUES (2, N'Bravo', CAST(N'2015-09-17' AS Date), N'9:00 AM - 10:00 AM', N'', N'onBOLBWq', N'Served', N'')
INSERT [clinic].[appointment] ([id], [username], [date], [time], [reason], [appointmentno], [status], [patienttype]) VALUES (3, N'Zebra', CAST(N'2015-09-18' AS Date), N'9:30 AM - 10:30 AM', N'', N'YJXfP73q', N'Cancelled', N'')
INSERT [clinic].[appointment] ([id], [username], [date], [time], [reason], [appointmentno], [status], [patienttype]) VALUES (4, N'Heaven', CAST(N'2015-02-09' AS Date), N'8:30 AM - 9:30 AM', N'', N'X7mFmhzm', N'Cancelled', N'')
INSERT [clinic].[appointment] ([id], [username], [date], [time], [reason], [appointmentno], [status], [patienttype]) VALUES (5, N'Zorro', CAST(N'2014-09-23' AS Date), N'7:30 AM - 8:30 AM', N'', N'zMFzTeYH', N'Cancelled', N'')
INSERT [clinic].[appointment] ([id], [username], [date], [time], [reason], [appointmentno], [status], [patienttype]) VALUES (6, N'Charlie', CAST(N'2014-09-18' AS Date), N'10:30 AM - 11:30 AM', N'', N'wdkucPmF', N'Confirmed', N'')
INSERT [clinic].[appointment] ([id], [username], [date], [time], [reason], [appointmentno], [status], [patienttype]) VALUES (7, N'Captain', CAST(N'2015-04-15' AS Date), N'9:30 AM - 10:30 AM', N'', N'EQ8a35nv', N'Cancelled', N'')
INSERT [clinic].[appointment] ([id], [username], [date], [time], [reason], [appointmentno], [status], [patienttype]) VALUES (8, N'Delta', CAST(N'2014-05-20' AS Date), N'8:30 AM - 9:30 AM', N'', N'I0SdMj5O', N'Cancelled', N'')
INSERT [clinic].[appointment] ([id], [username], [date], [time], [reason], [appointmentno], [status], [patienttype]) VALUES (9, N'Echo', CAST(N'2015-09-18' AS Date), N'10:30 AM - 11:30 AM', N'', N'v4ssTUUc', N'Cancelled', N'')
INSERT [clinic].[appointment] ([id], [username], [date], [time], [reason], [appointmentno], [status], [patienttype]) VALUES (10, N'Jill', CAST(N'2015-09-21' AS Date), N'9:30 AM - 10:30 AM', N'', N'yj2YQU9O', N'Confirmed', N'')
INSERT [clinic].[appointment] ([id], [username], [date], [time], [reason], [appointmentno], [status], [patienttype]) VALUES (11, N'Goat', CAST(N'2015-10-10' AS Date), N'1:00 PM - 2:00 PM', N'', N'anfD1Wxh', N'Confirmed', N'')
INSERT [clinic].[appointment] ([id], [username], [date], [time], [reason], [appointmentno], [status], [patienttype]) VALUES (12, N'Kind', CAST(N'2015-11-13' AS Date), N'10:30 AM - 11:30 AM', N'', N'kId5zjq5', N'Confirmed', N'')
INSERT [clinic].[appointment] ([id], [username], [date], [time], [reason], [appointmentno], [status], [patienttype]) VALUES (13, N'Month', CAST(N'2015-09-24' AS Date), N'10:30 AM - 11:30 AM', N'', N'rYmGFePJ', N'Confirmed', N'')
INSERT [clinic].[appointment] ([id], [username], [date], [time], [reason], [appointmentno], [status], [patienttype]) VALUES (14, N'or', CAST(N'2015-09-24' AS Date), N'2:00 PM - 3:00 PM', N'', N'PEqD6bvH', N'Confirmed', N'')
INSERT [clinic].[appointment] ([id], [username], [date], [time], [reason], [appointmentno], [status], [patienttype]) VALUES (15, N'Raven', CAST(N'2016-01-15' AS Date), N'7:30 AM - 8:30 AM', N'', N'esKVUMqW', N'Confirmed', N'')
INSERT [clinic].[appointment] ([id], [username], [date], [time], [reason], [appointmentno], [status], [patienttype]) VALUES (16, N'November', CAST(N'2015-09-28' AS Date), N'7:30 AM - 8:30 AM', N'', N'X38jeGf1', N'Confirmed', N'')
INSERT [clinic].[appointment] ([id], [username], [date], [time], [reason], [appointmentno], [status], [patienttype]) VALUES (17, N'Foxtrot', CAST(N'2015-09-30' AS Date), N'3:00 PM - 4:00 PM', N'', N'3C91uOKu', N'Confirmed', N'')
INSERT [clinic].[appointment] ([id], [username], [date], [time], [reason], [appointmentno], [status], [patienttype]) VALUES (18, N'Captain', CAST(N'2015-10-01' AS Date), N'10:30 AM - 11:30 AM', N'', N'MIMnwh3v', N'Confirmed', N'')
SET IDENTITY_INSERT [clinic].[appointment] OFF
SET IDENTITY_INSERT [clinic].[chronicailments] ON 

INSERT [clinic].[chronicailments] ([id], [patient_id], [chronicailmentname], [dateadded]) VALUES (1, N'3', N'Stroke
', CAST(N'2015-09-17' AS Date))
INSERT [clinic].[chronicailments] ([id], [patient_id], [chronicailmentname], [dateadded]) VALUES (2, N'7', N'Stroke', CAST(N'2015-09-17' AS Date))
SET IDENTITY_INSERT [clinic].[chronicailments] OFF
SET IDENTITY_INSERT [clinic].[closeddates] ON 

INSERT [clinic].[closeddates] ([id], [time], [date], [reason]) VALUES (9, N'7:30 AM - 8:30 AM', CAST(N'2015-09-23' AS Date), N'aadsd')
INSERT [clinic].[closeddates] ([id], [time], [date], [reason]) VALUES (10, N'8:30 AM - 9:30 AM', CAST(N'2015-09-23' AS Date), N'aadsd')
INSERT [clinic].[closeddates] ([id], [time], [date], [reason]) VALUES (11, N'9:30 AM - 10:30 AM', CAST(N'2015-09-23' AS Date), N'aadsd')
INSERT [clinic].[closeddates] ([id], [time], [date], [reason]) VALUES (12, N'10:30 AM - 11:30 AM', CAST(N'2015-09-23' AS Date), N'aadsd')
INSERT [clinic].[closeddates] ([id], [time], [date], [reason]) VALUES (13, N'1:00 PM - 2:00 PM', CAST(N'2015-09-23' AS Date), N'aadsd')
INSERT [clinic].[closeddates] ([id], [time], [date], [reason]) VALUES (14, N'2:00 PM - 3:00 PM', CAST(N'2015-09-23' AS Date), N'aadsd')
INSERT [clinic].[closeddates] ([id], [time], [date], [reason]) VALUES (15, N'3:00 PM - 4:00 PM', CAST(N'2015-09-23' AS Date), N'aadsd')
SET IDENTITY_INSERT [clinic].[closeddates] OFF
SET IDENTITY_INSERT [clinic].[drugstaken] ON 

INSERT [clinic].[drugstaken] ([id], [patient_id], [drugname], [dateadded]) VALUES (1, N'3', N'insulin', CAST(N'2015-09-17' AS Date))
INSERT [clinic].[drugstaken] ([id], [patient_id], [drugname], [dateadded]) VALUES (2, N'6', N'Shabo', CAST(N'2015-09-17' AS Date))
SET IDENTITY_INSERT [clinic].[drugstaken] OFF
SET IDENTITY_INSERT [clinic].[patients] ON 

INSERT [clinic].[patients] ([patient_id], [username], [firstname], [lastname], [middlename], [birthdate], [age], [email], [gender], [address], [mobileno], [telno], [maritalstatus], [officeaddress], [officetelno], [occlusion], [periodontalcondition], [oralhygiene], [prevhistoryofbleeding], [bloodpressure], [upper_denture], [lower_denture], [upper_since], [lower_since], [total_balance], [createdby], [lastmodifiedby], [datecreated], [datemodified]) VALUES (1, N'Alpha', N'John', N'Dorubo', N'Rob', CAST(N'1993-07-04' AS Date), 22, N'Sexyjohn@yahoo.com', N'Male', N'St. Martin Cebu City', N'09123457281', N'345-4478', N'Single', N'', N'', N'Class I', N'Normal', N'Good', N'No', N'', N'', N'', N'', N'', 29300, N'John', N'John', CAST(N'2015-09-17 12:13:46.0000000' AS DateTime2), CAST(N'2015-09-17 00:00:00.0000000' AS DateTime2))
INSERT [clinic].[patients] ([patient_id], [username], [firstname], [lastname], [middlename], [birthdate], [age], [email], [gender], [address], [mobileno], [telno], [maritalstatus], [officeaddress], [officetelno], [occlusion], [periodontalcondition], [oralhygiene], [prevhistoryofbleeding], [bloodpressure], [upper_denture], [lower_denture], [upper_since], [lower_since], [total_balance], [createdby], [lastmodifiedby], [datecreated], [datemodified]) VALUES (2, N'Bravo', N'Peter', N'Zeran', N'Green', CAST(N'2000-01-25' AS Date), 15, N'AwesomePGZ@gmail.com', N'Male', N'Ayala Heights', N'09357926758', N'233-6576', N'Single', N'', N'', N'Class II (Div.2)', N'Normal', N'Good', N'No', N'', N'', N'', N'', N'', 3500, N'John', N'John', CAST(N'2015-09-17 12:16:24.0000000' AS DateTime2), CAST(N'2015-09-17 00:00:00.0000000' AS DateTime2))
INSERT [clinic].[patients] ([patient_id], [username], [firstname], [lastname], [middlename], [birthdate], [age], [email], [gender], [address], [mobileno], [telno], [maritalstatus], [officeaddress], [officetelno], [occlusion], [periodontalcondition], [oralhygiene], [prevhistoryofbleeding], [bloodpressure], [upper_denture], [lower_denture], [upper_since], [lower_since], [total_balance], [createdby], [lastmodifiedby], [datecreated], [datemodified]) VALUES (3, N'Charlie', N'Amber', N'Goodman', N'Gozo', CAST(N'1937-05-16' AS Date), 78, N'TheGozoGoodman@gmail.com', N'Female', N'Maria Luisa, Banilad', N'09238752356', N'368-7659', N'Married', N'', N'', N'Class III', N'With Periodontal Problem', N'Poor', N'Yes', N'', N'Yes', N'', N'1965', N'', 8500, N'John', N'John', CAST(N'2015-09-17 12:20:52.0000000' AS DateTime2), CAST(N'2015-09-17 00:00:00.0000000' AS DateTime2))
INSERT [clinic].[patients] ([patient_id], [username], [firstname], [lastname], [middlename], [birthdate], [age], [email], [gender], [address], [mobileno], [telno], [maritalstatus], [officeaddress], [officetelno], [occlusion], [periodontalcondition], [oralhygiene], [prevhistoryofbleeding], [bloodpressure], [upper_denture], [lower_denture], [upper_since], [lower_since], [total_balance], [createdby], [lastmodifiedby], [datecreated], [datemodified]) VALUES (4, N'Delta', N'Johan', N'Quemar', N'Fox', CAST(N'1879-07-30' AS Date), 136, N'ilovefox@yahoo.com', N'Female', N'Mandaue ', N'09389628952', N'324-6578', N'Single', N'It Park', N'234-9876', N'Class II (Div.1)', N'Normal', N'Good', N'Yes', N'', N'', N'', N'', N'', 2300, N'John', N'John', CAST(N'2015-09-17 12:23:42.0000000' AS DateTime2), CAST(N'2015-09-17 00:00:00.0000000' AS DateTime2))
INSERT [clinic].[patients] ([patient_id], [username], [firstname], [lastname], [middlename], [birthdate], [age], [email], [gender], [address], [mobileno], [telno], [maritalstatus], [officeaddress], [officetelno], [occlusion], [periodontalcondition], [oralhygiene], [prevhistoryofbleeding], [bloodpressure], [upper_denture], [lower_denture], [upper_since], [lower_since], [total_balance], [createdby], [lastmodifiedby], [datecreated], [datemodified]) VALUES (5, N'Echo', N'Zerduo', N'Herrel', N'Martin', CAST(N'2009-11-12' AS Date), 5, N'mynameisgwapo@gmail.com', N'Male', N'Talamban', N'09237562396', N'546-9786', N'Single', N'', N'', N'Class I', N'Normal', N'Poor', N'No', N'', N'', N'', N'', N'', 9000, N'John', N'John', CAST(N'2015-09-17 12:25:46.0000000' AS DateTime2), CAST(N'2015-09-17 00:00:00.0000000' AS DateTime2))
INSERT [clinic].[patients] ([patient_id], [username], [firstname], [lastname], [middlename], [birthdate], [age], [email], [gender], [address], [mobileno], [telno], [maritalstatus], [officeaddress], [officetelno], [occlusion], [periodontalcondition], [oralhygiene], [prevhistoryofbleeding], [bloodpressure], [upper_denture], [lower_denture], [upper_since], [lower_since], [total_balance], [createdby], [lastmodifiedby], [datecreated], [datemodified]) VALUES (6, N'Foxtrot', N'Ariel', N'Abellanosa', N'Maye', CAST(N'1996-03-05' AS Date), 19, N'Iamamermaid@yahoo.com', N'Female', N'Banawa', N'09729836523', N'234-3829', N'Single', N'', N'', N'Class II (Div.2)', N'With Periodontal Problem', N'Good', N'Yes', N'', N'', N'', N'', N'', 2795, N'John', N'John', CAST(N'2015-09-17 12:27:30.0000000' AS DateTime2), CAST(N'2015-09-17 00:00:00.0000000' AS DateTime2))
INSERT [clinic].[patients] ([patient_id], [username], [firstname], [lastname], [middlename], [birthdate], [age], [email], [gender], [address], [mobileno], [telno], [maritalstatus], [officeaddress], [officetelno], [occlusion], [periodontalcondition], [oralhygiene], [prevhistoryofbleeding], [bloodpressure], [upper_denture], [lower_denture], [upper_since], [lower_since], [total_balance], [createdby], [lastmodifiedby], [datecreated], [datemodified]) VALUES (7, N'Goat', N'Arman', N'Oroy', N'Kadol', CAST(N'1968-06-06' AS Date), 47, N'myarmisgood@yahoo.com', N'Male', N'Liloan', N'09437824620', N'561-9089', N'Married', N'Ayala', N'', N'Class II (Div.2)', N'With Periodontal Problem', N'Poor', N'Yes', N'', N'', N'Yes', N'', N'1997', 1800, N'John', N'John', CAST(N'2015-09-17 12:30:52.0000000' AS DateTime2), CAST(N'2015-09-17 00:00:00.0000000' AS DateTime2))
INSERT [clinic].[patients] ([patient_id], [username], [firstname], [lastname], [middlename], [birthdate], [age], [email], [gender], [address], [mobileno], [telno], [maritalstatus], [officeaddress], [officetelno], [occlusion], [periodontalcondition], [oralhygiene], [prevhistoryofbleeding], [bloodpressure], [upper_denture], [lower_denture], [upper_since], [lower_since], [total_balance], [createdby], [lastmodifiedby], [datecreated], [datemodified]) VALUES (8, N'Heaven', N'Hesus', N'Hangvil', N'Justin', CAST(N'1989-09-23' AS Date), 25, N'Heavenisreal@gmail.com', N'Male', N'Mandaue', N'09237129561', N'523-8643', N'Married', N'SM', N'', N'Class III', N'Normal', N'Good', N'No', N'', N'', N'', N'', N'', 7400, N'John', N'John', CAST(N'2015-09-17 12:33:10.0000000' AS DateTime2), CAST(N'2015-09-17 00:00:00.0000000' AS DateTime2))
INSERT [clinic].[patients] ([patient_id], [username], [firstname], [lastname], [middlename], [birthdate], [age], [email], [gender], [address], [mobileno], [telno], [maritalstatus], [officeaddress], [officetelno], [occlusion], [periodontalcondition], [oralhygiene], [prevhistoryofbleeding], [bloodpressure], [upper_denture], [lower_denture], [upper_since], [lower_since], [total_balance], [createdby], [lastmodifiedby], [datecreated], [datemodified]) VALUES (9, N'India', N'Nazareen', N'Razel', N'Bobby', CAST(N'1957-04-25' AS Date), 58, N'Ugoindia@yahoo.com', N'Male', N'Guadalupe', N'09113985613', N'349-0987', N'Married', N'Gaisano', N'', N'Class III', N'Normal', N'Good', N'Yes', N'', N'Yes', N'Yes', N'1989', N'1987', 2000, N'John', N'John', CAST(N'2015-09-17 12:36:29.0000000' AS DateTime2), CAST(N'2015-09-17 00:00:00.0000000' AS DateTime2))
INSERT [clinic].[patients] ([patient_id], [username], [firstname], [lastname], [middlename], [birthdate], [age], [email], [gender], [address], [mobileno], [telno], [maritalstatus], [officeaddress], [officetelno], [occlusion], [periodontalcondition], [oralhygiene], [prevhistoryofbleeding], [bloodpressure], [upper_denture], [lower_denture], [upper_since], [lower_since], [total_balance], [createdby], [lastmodifiedby], [datecreated], [datemodified]) VALUES (10, N'January', N'Jan', N'Kidman', N'Gozi', CAST(N'1995-12-24' AS Date), 19, N'JanGodKid@yahoo.com', N'Male', N'Carcar', N'09198365813', N'213-5678', N'Single', N'', N'', N'Class I', N'Normal', N'Good', N'No', N'', N'', N'', N'', N'', 18500, N'John', N'John', CAST(N'2015-09-17 12:38:05.0000000' AS DateTime2), CAST(N'2015-09-17 00:00:00.0000000' AS DateTime2))
INSERT [clinic].[patients] ([patient_id], [username], [firstname], [lastname], [middlename], [birthdate], [age], [email], [gender], [address], [mobileno], [telno], [maritalstatus], [officeaddress], [officetelno], [occlusion], [periodontalcondition], [oralhygiene], [prevhistoryofbleeding], [bloodpressure], [upper_denture], [lower_denture], [upper_since], [lower_since], [total_balance], [createdby], [lastmodifiedby], [datecreated], [datemodified]) VALUES (11, N'Kind', N'Hans', N'Fradley', N'Dred', CAST(N'1976-06-07' AS Date), 39, N'Iamdredfulbutfradley@gmail.com', N'Male', N'Carcar', N'09798320823', N'423-0968', N'Married', N'', N'', N'Class I', N'Normal', N'Poor', N'No', N'', N'', N'', N'', N'', 2450, N'John', N'John', CAST(N'2015-09-17 12:40:07.0000000' AS DateTime2), CAST(N'2015-09-17 00:00:00.0000000' AS DateTime2))
INSERT [clinic].[patients] ([patient_id], [username], [firstname], [lastname], [middlename], [birthdate], [age], [email], [gender], [address], [mobileno], [telno], [maritalstatus], [officeaddress], [officetelno], [occlusion], [periodontalcondition], [oralhygiene], [prevhistoryofbleeding], [bloodpressure], [upper_denture], [lower_denture], [upper_since], [lower_since], [total_balance], [createdby], [lastmodifiedby], [datecreated], [datemodified]) VALUES (12, N'Love', N'Michelle', N'Belazon', N'Reffy', CAST(N'2007-03-04' AS Date), 8, N'Cellphoneisreal@yahoo.com', N'Female', N'Talamban', N'09283963289', N'', N'Single', N'', N'', N'Class I', N'Normal', N'Good', N'No', N'', N'', N'', N'', N'', 3500, N'John', N'John', CAST(N'2015-09-17 12:47:40.0000000' AS DateTime2), CAST(N'2015-09-17 00:00:00.0000000' AS DateTime2))
INSERT [clinic].[patients] ([patient_id], [username], [firstname], [lastname], [middlename], [birthdate], [age], [email], [gender], [address], [mobileno], [telno], [maritalstatus], [officeaddress], [officetelno], [occlusion], [periodontalcondition], [oralhygiene], [prevhistoryofbleeding], [bloodpressure], [upper_denture], [lower_denture], [upper_since], [lower_since], [total_balance], [createdby], [lastmodifiedby], [datecreated], [datemodified]) VALUES (13, N'Month', N'Marites', N'Gaisano', N'Jujun', CAST(N'2003-05-31' AS Date), 12, N'gogopowerrangers@gmail.com', N'Female', N'Banawa', N'09127851260', N'234-8329', N'Single', N'', N'', N'Class I', N'Normal', N'Poor', N'No', N'', N'', N'', N'', N'', 2300, N'John', N'John', CAST(N'2015-09-17 12:49:18.0000000' AS DateTime2), CAST(N'2015-09-17 00:00:00.0000000' AS DateTime2))
INSERT [clinic].[patients] ([patient_id], [username], [firstname], [lastname], [middlename], [birthdate], [age], [email], [gender], [address], [mobileno], [telno], [maritalstatus], [officeaddress], [officetelno], [occlusion], [periodontalcondition], [oralhygiene], [prevhistoryofbleeding], [bloodpressure], [upper_denture], [lower_denture], [upper_since], [lower_since], [total_balance], [createdby], [lastmodifiedby], [datecreated], [datemodified]) VALUES (14, N'November', N'Hiro', N'Kalasan', N'Jhapin', CAST(N'2010-10-10' AS Date), 4, N'Iamhiroinjapankalasanlng@yahoo.com', N'Male', N'Banilad', N'09235093273', N'367-6458', N'Single', N'', N'', N'Class II (Div.1)', N'Normal', N'Good', N'No', N'', N'', N'', N'', N'', 6050, N'John', N'John', CAST(N'2015-09-17 12:52:39.0000000' AS DateTime2), CAST(N'2015-09-17 20:29:46.0000000' AS DateTime2))
INSERT [clinic].[patients] ([patient_id], [username], [firstname], [lastname], [middlename], [birthdate], [age], [email], [gender], [address], [mobileno], [telno], [maritalstatus], [officeaddress], [officetelno], [occlusion], [periodontalcondition], [oralhygiene], [prevhistoryofbleeding], [bloodpressure], [upper_denture], [lower_denture], [upper_since], [lower_since], [total_balance], [createdby], [lastmodifiedby], [datecreated], [datemodified]) VALUES (15, N'Or', N'Yeman', N'Arteezy', N'Arouzy', CAST(N'1956-02-13' AS Date), 59, N'Iamarteezycantbeatme@gmail.com', N'Male', N'Bantayan', N'09823598232', N'254-9284', N'Married', N'It Park', N'', N'Class II (Div.2)', N'Normal', N'Poor', N'Yes', N'', N'Yes', N'', N'1999', N'', 6500, N'John', N'John', CAST(N'2015-09-17 12:54:17.0000000' AS DateTime2), CAST(N'2015-09-17 00:00:00.0000000' AS DateTime2))
INSERT [clinic].[patients] ([patient_id], [username], [firstname], [lastname], [middlename], [birthdate], [age], [email], [gender], [address], [mobileno], [telno], [maritalstatus], [officeaddress], [officetelno], [occlusion], [periodontalcondition], [oralhygiene], [prevhistoryofbleeding], [bloodpressure], [upper_denture], [lower_denture], [upper_since], [lower_since], [total_balance], [createdby], [lastmodifiedby], [datecreated], [datemodified]) VALUES (16, N'Zebra', N'Hasola', N'This Guy', N'Ayaw', CAST(N'1908-02-22' AS Date), 107, N'hasolathisguy@yahoo.com', N'Male', N'', N'09835728933', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 3000, N'', N'John', CAST(N'2015-09-17 15:28:49.0000000' AS DateTime2), CAST(N'2015-09-17 00:00:00.0000000' AS DateTime2))
INSERT [clinic].[patients] ([patient_id], [username], [firstname], [lastname], [middlename], [birthdate], [age], [email], [gender], [address], [mobileno], [telno], [maritalstatus], [officeaddress], [officetelno], [occlusion], [periodontalcondition], [oralhygiene], [prevhistoryofbleeding], [bloodpressure], [upper_denture], [lower_denture], [upper_since], [lower_since], [total_balance], [createdby], [lastmodifiedby], [datecreated], [datemodified]) VALUES (17, N'Zorro', N'Captain', N'America', N'Shield', CAST(N'1919-11-11' AS Date), 95, N'Akosicaptainamerica@yahoo.com', N'Male', N'', N'09129856127', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 2100, N'', N'John', CAST(N'2015-09-17 15:31:02.0000000' AS DateTime2), CAST(N'2015-09-17 00:00:00.0000000' AS DateTime2))
INSERT [clinic].[patients] ([patient_id], [username], [firstname], [lastname], [middlename], [birthdate], [age], [email], [gender], [address], [mobileno], [telno], [maritalstatus], [officeaddress], [officetelno], [occlusion], [periodontalcondition], [oralhygiene], [prevhistoryofbleeding], [bloodpressure], [upper_denture], [lower_denture], [upper_since], [lower_since], [total_balance], [createdby], [lastmodifiedby], [datecreated], [datemodified]) VALUES (18, N'Captain', N'Nemo', N'Sharine', N'Hebba', CAST(N'2006-11-10' AS Date), 8, N'findingnemoaw@gmail.com', N'Female', N'', N'09217659182', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 5400, N'', N'John', CAST(N'2015-09-17 15:55:50.0000000' AS DateTime2), CAST(N'2015-09-17 00:00:00.0000000' AS DateTime2))
INSERT [clinic].[patients] ([patient_id], [username], [firstname], [lastname], [middlename], [birthdate], [age], [email], [gender], [address], [mobileno], [telno], [maritalstatus], [officeaddress], [officetelno], [occlusion], [periodontalcondition], [oralhygiene], [prevhistoryofbleeding], [bloodpressure], [upper_denture], [lower_denture], [upper_since], [lower_since], [total_balance], [createdby], [lastmodifiedby], [datecreated], [datemodified]) VALUES (19, N'jIll', N'Zeredra', N'Damat', N'Aries', CAST(N'1978-03-28' AS Date), 37, N'Iamthealmitghtyaries@gmail.com', N'Female', N'Talamban', N'09831591295', N'345-8675', N'Married', N'It Park', N'214-3277', N'Class III', N'Normal', N'Good', N'No', N'', N'', N'', N'', N'', 4000, N'John', N'John', CAST(N'2015-09-17 20:10:14.0000000' AS DateTime2), CAST(N'2015-09-17 00:00:00.0000000' AS DateTime2))
INSERT [clinic].[patients] ([patient_id], [username], [firstname], [lastname], [middlename], [birthdate], [age], [email], [gender], [address], [mobileno], [telno], [maritalstatus], [officeaddress], [officetelno], [occlusion], [periodontalcondition], [oralhygiene], [prevhistoryofbleeding], [bloodpressure], [upper_denture], [lower_denture], [upper_since], [lower_since], [total_balance], [createdby], [lastmodifiedby], [datecreated], [datemodified]) VALUES (20, N'Raven', N'Jazim', N'Guzarad', N'Arab', CAST(N'1958-12-30' AS Date), 56, N'Iamarabonofyt@yahoo.com', N'Male', N'Flyover', N'09731795911', N'346-7698', N'Married', N'', N'', N'Class II (Div.2)', N'Normal', N'Poor', N'No', N'', N'Yes', N'', N'1988', N'', 2500, N'John', N'John', CAST(N'2015-09-17 20:11:48.0000000' AS DateTime2), CAST(N'2015-09-17 00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [clinic].[patients] OFF
SET IDENTITY_INSERT [clinic].[payment_history] ON 

INSERT [clinic].[payment_history] ([id], [patient_id], [type], [treatment_fee], [old_balance], [payment], [new_balance], [date], [paid_to]) VALUES (1, 6, N'Treatment Payment', 400, 0, 0, 400, CAST(N'2015-09-17' AS Date), N'John')
INSERT [clinic].[payment_history] ([id], [patient_id], [type], [treatment_fee], [old_balance], [payment], [new_balance], [date], [paid_to]) VALUES (2, 6, N'Balance Payment', 0, 400, 100, 300, CAST(N'2015-09-17' AS Date), N'John')
INSERT [clinic].[payment_history] ([id], [patient_id], [type], [treatment_fee], [old_balance], [payment], [new_balance], [date], [paid_to]) VALUES (3, 15, N'Treatment Payment', 5000, 0, 0, 5000, CAST(N'2015-09-17' AS Date), N'John')
INSERT [clinic].[payment_history] ([id], [patient_id], [type], [treatment_fee], [old_balance], [payment], [new_balance], [date], [paid_to]) VALUES (4, 15, N'Balance Payment', 0, 5000, 500, 4500, CAST(N'2015-09-17' AS Date), N'John')
INSERT [clinic].[payment_history] ([id], [patient_id], [type], [treatment_fee], [old_balance], [payment], [new_balance], [date], [paid_to]) VALUES (5, 12, N'Treatment Payment', 3000, 0, 1000, 2000, CAST(N'2015-09-17' AS Date), N'John')
INSERT [clinic].[payment_history] ([id], [patient_id], [type], [treatment_fee], [old_balance], [payment], [new_balance], [date], [paid_to]) VALUES (6, 1, N'Treatment Payment', 3500, 0, 0, 3500, CAST(N'2015-09-17' AS Date), N'John')
INSERT [clinic].[payment_history] ([id], [patient_id], [type], [treatment_fee], [old_balance], [payment], [new_balance], [date], [paid_to]) VALUES (7, 1, N'Balance Payment', 0, 3500, 200, 3300, CAST(N'2015-09-17' AS Date), N'John')
INSERT [clinic].[payment_history] ([id], [patient_id], [type], [treatment_fee], [old_balance], [payment], [new_balance], [date], [paid_to]) VALUES (8, 11, N'Treatment Payment', 700, 0, 50, 650, CAST(N'2015-09-17' AS Date), N'John')
INSERT [clinic].[payment_history] ([id], [patient_id], [type], [treatment_fee], [old_balance], [payment], [new_balance], [date], [paid_to]) VALUES (9, 11, N'Balance Payment', 0, 650, 200, 450, CAST(N'2015-09-17' AS Date), N'John')
INSERT [clinic].[payment_history] ([id], [patient_id], [type], [treatment_fee], [old_balance], [payment], [new_balance], [date], [paid_to]) VALUES (10, 13, N'Treatment Payment', 1500, 0, 0, 1500, CAST(N'2015-09-17' AS Date), N'John')
INSERT [clinic].[payment_history] ([id], [patient_id], [type], [treatment_fee], [old_balance], [payment], [new_balance], [date], [paid_to]) VALUES (11, 13, N'Balance Payment', 0, 1500, 900, 600, CAST(N'2015-09-17' AS Date), N'John')
INSERT [clinic].[payment_history] ([id], [patient_id], [type], [treatment_fee], [old_balance], [payment], [new_balance], [date], [paid_to]) VALUES (12, 3, N'Treatment Payment', 5500, 0, 0, 5500, CAST(N'2015-09-17' AS Date), N'John')
INSERT [clinic].[payment_history] ([id], [patient_id], [type], [treatment_fee], [old_balance], [payment], [new_balance], [date], [paid_to]) VALUES (13, 3, N'Balance Payment', 0, 5500, 3000, 2500, CAST(N'2015-09-17' AS Date), N'John')
INSERT [clinic].[payment_history] ([id], [patient_id], [type], [treatment_fee], [old_balance], [payment], [new_balance], [date], [paid_to]) VALUES (14, 8, N'Treatment Payment', 1000, 0, 0, 1000, CAST(N'2015-09-17' AS Date), N'John')
INSERT [clinic].[payment_history] ([id], [patient_id], [type], [treatment_fee], [old_balance], [payment], [new_balance], [date], [paid_to]) VALUES (15, 8, N'Balance Payment', 0, 1000, 100, 900, CAST(N'2015-09-17' AS Date), N'John')
INSERT [clinic].[payment_history] ([id], [patient_id], [type], [treatment_fee], [old_balance], [payment], [new_balance], [date], [paid_to]) VALUES (16, 5, N'Treatment Payment', 4500, 0, 0, 4500, CAST(N'2015-09-17' AS Date), N'John')
INSERT [clinic].[payment_history] ([id], [patient_id], [type], [treatment_fee], [old_balance], [payment], [new_balance], [date], [paid_to]) VALUES (17, 5, N'Balance Payment', 0, 4500, 2000, 2500, CAST(N'2015-09-17' AS Date), N'John')
INSERT [clinic].[payment_history] ([id], [patient_id], [type], [treatment_fee], [old_balance], [payment], [new_balance], [date], [paid_to]) VALUES (18, 14, N'Treatment Payment', 1200, 0, 0, 1200, CAST(N'2015-09-17' AS Date), N'John')
INSERT [clinic].[payment_history] ([id], [patient_id], [type], [treatment_fee], [old_balance], [payment], [new_balance], [date], [paid_to]) VALUES (19, 14, N'Balance Payment', 0, 1200, 150, 1050, CAST(N'2015-09-17' AS Date), N'John')
INSERT [clinic].[payment_history] ([id], [patient_id], [type], [treatment_fee], [old_balance], [payment], [new_balance], [date], [paid_to]) VALUES (20, 10, N'Treatment Payment', 11000, 0, 0, 11000, CAST(N'2015-09-17' AS Date), N'John')
INSERT [clinic].[payment_history] ([id], [patient_id], [type], [treatment_fee], [old_balance], [payment], [new_balance], [date], [paid_to]) VALUES (21, 10, N'Balance Payment', 0, 11000, 5000, 6000, CAST(N'2015-09-17' AS Date), N'John')
INSERT [clinic].[payment_history] ([id], [patient_id], [type], [treatment_fee], [old_balance], [payment], [new_balance], [date], [paid_to]) VALUES (22, 7, N'Treatment Payment', 1500, 0, 800, 700, CAST(N'2015-09-17' AS Date), N'John')
INSERT [clinic].[payment_history] ([id], [patient_id], [type], [treatment_fee], [old_balance], [payment], [new_balance], [date], [paid_to]) VALUES (23, 7, N'Balance Payment', 0, 700, 300, 400, CAST(N'2015-09-17' AS Date), N'John')
INSERT [clinic].[payment_history] ([id], [patient_id], [type], [treatment_fee], [old_balance], [payment], [new_balance], [date], [paid_to]) VALUES (24, 4, N'Treatment Payment', 1500, 0, 0, 1500, CAST(N'2015-09-17' AS Date), N'John')
INSERT [clinic].[payment_history] ([id], [patient_id], [type], [treatment_fee], [old_balance], [payment], [new_balance], [date], [paid_to]) VALUES (25, 4, N'Balance Payment', 0, 1500, 300, 1200, CAST(N'2015-09-17' AS Date), N'John')
INSERT [clinic].[payment_history] ([id], [patient_id], [type], [treatment_fee], [old_balance], [payment], [new_balance], [date], [paid_to]) VALUES (26, 9, N'Treatment Payment', 900, 0, 0, 900, CAST(N'2015-09-17' AS Date), N'John')
INSERT [clinic].[payment_history] ([id], [patient_id], [type], [treatment_fee], [old_balance], [payment], [new_balance], [date], [paid_to]) VALUES (27, 9, N'Balance Payment', 0, 900, 800, 100, CAST(N'2015-09-17' AS Date), N'John')
INSERT [clinic].[payment_history] ([id], [patient_id], [type], [treatment_fee], [old_balance], [payment], [new_balance], [date], [paid_to]) VALUES (28, 2, N'Treatment Payment', 3500, 0, 800, 2700, CAST(N'2015-09-17' AS Date), N'John')
INSERT [clinic].[payment_history] ([id], [patient_id], [type], [treatment_fee], [old_balance], [payment], [new_balance], [date], [paid_to]) VALUES (29, 2, N'Balance Payment', 0, 2700, 700, 2000, CAST(N'2015-09-17' AS Date), N'John')
INSERT [clinic].[payment_history] ([id], [patient_id], [type], [treatment_fee], [old_balance], [payment], [new_balance], [date], [paid_to]) VALUES (30, 6, N'Treatment Payment', 1000, 300, 0, 1300, CAST(N'2015-09-17' AS Date), N'John')
INSERT [clinic].[payment_history] ([id], [patient_id], [type], [treatment_fee], [old_balance], [payment], [new_balance], [date], [paid_to]) VALUES (31, 15, N'Treatment Payment', 5000, 4500, 3000, 6500, CAST(N'2015-09-17' AS Date), N'John')
INSERT [clinic].[payment_history] ([id], [patient_id], [type], [treatment_fee], [old_balance], [payment], [new_balance], [date], [paid_to]) VALUES (32, 12, N'Treatment Payment', 1500, 2000, 500, 3000, CAST(N'2015-09-17' AS Date), N'John')
INSERT [clinic].[payment_history] ([id], [patient_id], [type], [treatment_fee], [old_balance], [payment], [new_balance], [date], [paid_to]) VALUES (33, 11, N'Treatment Payment', 2000, 450, 0, 2450, CAST(N'2015-09-17' AS Date), N'John')
INSERT [clinic].[payment_history] ([id], [patient_id], [type], [treatment_fee], [old_balance], [payment], [new_balance], [date], [paid_to]) VALUES (34, 13, N'Treatment Payment', 1500, 600, 0, 2100, CAST(N'2015-09-17' AS Date), N'John')
INSERT [clinic].[payment_history] ([id], [patient_id], [type], [treatment_fee], [old_balance], [payment], [new_balance], [date], [paid_to]) VALUES (35, 3, N'Treatment Payment', 5000, 2500, 0, 7500, CAST(N'2015-09-17' AS Date), N'John')
INSERT [clinic].[payment_history] ([id], [patient_id], [type], [treatment_fee], [old_balance], [payment], [new_balance], [date], [paid_to]) VALUES (36, 8, N'Treatment Payment', 1500, 900, 0, 2400, CAST(N'2015-09-17' AS Date), N'John')
INSERT [clinic].[payment_history] ([id], [patient_id], [type], [treatment_fee], [old_balance], [payment], [new_balance], [date], [paid_to]) VALUES (37, 5, N'Treatment Payment', 5000, 2500, 0, 7500, CAST(N'2015-09-17' AS Date), N'John')
INSERT [clinic].[payment_history] ([id], [patient_id], [type], [treatment_fee], [old_balance], [payment], [new_balance], [date], [paid_to]) VALUES (38, 14, N'Treatment Payment', 2500, 1050, 0, 3550, CAST(N'2015-09-17' AS Date), N'John')
INSERT [clinic].[payment_history] ([id], [patient_id], [type], [treatment_fee], [old_balance], [payment], [new_balance], [date], [paid_to]) VALUES (39, 6, N'Balance Payment', 0, 1300, 5, 1295, CAST(N'2015-09-17' AS Date), N'John')
INSERT [clinic].[payment_history] ([id], [patient_id], [type], [treatment_fee], [old_balance], [payment], [new_balance], [date], [paid_to]) VALUES (40, 6, N'Treatment Payment', 1500, 1295, 0, 2795, CAST(N'2015-09-17' AS Date), N'John')
INSERT [clinic].[payment_history] ([id], [patient_id], [type], [treatment_fee], [old_balance], [payment], [new_balance], [date], [paid_to]) VALUES (41, 17, N'Treatment Payment', 200, 0, 0, 200, CAST(N'2015-09-17' AS Date), N'John')
INSERT [clinic].[payment_history] ([id], [patient_id], [type], [treatment_fee], [old_balance], [payment], [new_balance], [date], [paid_to]) VALUES (42, 17, N'Treatment Payment', 900, 200, 0, 1100, CAST(N'2015-09-17' AS Date), N'John')
INSERT [clinic].[payment_history] ([id], [patient_id], [type], [treatment_fee], [old_balance], [payment], [new_balance], [date], [paid_to]) VALUES (43, 17, N'Treatment Payment', 1000, 1100, 0, 2100, CAST(N'2015-09-17' AS Date), N'John')
INSERT [clinic].[payment_history] ([id], [patient_id], [type], [treatment_fee], [old_balance], [payment], [new_balance], [date], [paid_to]) VALUES (44, 15, N'Treatment Payment', 0, 6500, 0, 6500, CAST(N'2015-09-17' AS Date), N'John')
INSERT [clinic].[payment_history] ([id], [patient_id], [type], [treatment_fee], [old_balance], [payment], [new_balance], [date], [paid_to]) VALUES (45, 12, N'Treatment Payment', 500, 3000, 0, 3500, CAST(N'2015-09-17' AS Date), N'John')
INSERT [clinic].[payment_history] ([id], [patient_id], [type], [treatment_fee], [old_balance], [payment], [new_balance], [date], [paid_to]) VALUES (46, 19, N'Treatment Payment', 1500, 0, 0, 1500, CAST(N'2015-09-17' AS Date), N'John')
INSERT [clinic].[payment_history] ([id], [patient_id], [type], [treatment_fee], [old_balance], [payment], [new_balance], [date], [paid_to]) VALUES (47, 19, N'Treatment Payment', 500, 1500, 0, 2000, CAST(N'2015-09-17' AS Date), N'John')
INSERT [clinic].[payment_history] ([id], [patient_id], [type], [treatment_fee], [old_balance], [payment], [new_balance], [date], [paid_to]) VALUES (48, 19, N'Treatment Payment', 2000, 2000, 0, 4000, CAST(N'2015-09-17' AS Date), N'John')
INSERT [clinic].[payment_history] ([id], [patient_id], [type], [treatment_fee], [old_balance], [payment], [new_balance], [date], [paid_to]) VALUES (49, 1, N'Treatment Payment', 1000, 3300, 0, 4300, CAST(N'2015-09-17' AS Date), N'John')
INSERT [clinic].[payment_history] ([id], [patient_id], [type], [treatment_fee], [old_balance], [payment], [new_balance], [date], [paid_to]) VALUES (50, 1, N'Treatment Payment', 25000, 4300, 0, 29300, CAST(N'2015-09-17' AS Date), N'John')
INSERT [clinic].[payment_history] ([id], [patient_id], [type], [treatment_fee], [old_balance], [payment], [new_balance], [date], [paid_to]) VALUES (51, 13, N'Treatment Payment', 200, 2100, 0, 2300, CAST(N'2015-09-17' AS Date), N'John')
INSERT [clinic].[payment_history] ([id], [patient_id], [type], [treatment_fee], [old_balance], [payment], [new_balance], [date], [paid_to]) VALUES (52, 3, N'Treatment Payment', 1000, 7500, 0, 8500, CAST(N'2015-09-17' AS Date), N'John')
INSERT [clinic].[payment_history] ([id], [patient_id], [type], [treatment_fee], [old_balance], [payment], [new_balance], [date], [paid_to]) VALUES (53, 20, N'Treatment Payment', 500, 0, 0, 500, CAST(N'2015-09-17' AS Date), N'John')
INSERT [clinic].[payment_history] ([id], [patient_id], [type], [treatment_fee], [old_balance], [payment], [new_balance], [date], [paid_to]) VALUES (54, 20, N'Treatment Payment', 500, 500, 0, 1000, CAST(N'2015-09-17' AS Date), N'John')
INSERT [clinic].[payment_history] ([id], [patient_id], [type], [treatment_fee], [old_balance], [payment], [new_balance], [date], [paid_to]) VALUES (55, 20, N'Treatment Payment', 1500, 1000, 0, 2500, CAST(N'2015-09-17' AS Date), N'John')
INSERT [clinic].[payment_history] ([id], [patient_id], [type], [treatment_fee], [old_balance], [payment], [new_balance], [date], [paid_to]) VALUES (56, 8, N'Treatment Payment', 5000, 2400, 0, 7400, CAST(N'2015-09-17' AS Date), N'John')
INSERT [clinic].[payment_history] ([id], [patient_id], [type], [treatment_fee], [old_balance], [payment], [new_balance], [date], [paid_to]) VALUES (57, 5, N'Treatment Payment', 1500, 7500, 0, 9000, CAST(N'2015-09-17' AS Date), N'John')
INSERT [clinic].[payment_history] ([id], [patient_id], [type], [treatment_fee], [old_balance], [payment], [new_balance], [date], [paid_to]) VALUES (58, 14, N'Treatment Payment', 2500, 3550, 0, 6050, CAST(N'2015-09-17' AS Date), N'John')
INSERT [clinic].[payment_history] ([id], [patient_id], [type], [treatment_fee], [old_balance], [payment], [new_balance], [date], [paid_to]) VALUES (59, 10, N'Treatment Payment', 2500, 6000, 0, 8500, CAST(N'2015-09-17' AS Date), N'John')
INSERT [clinic].[payment_history] ([id], [patient_id], [type], [treatment_fee], [old_balance], [payment], [new_balance], [date], [paid_to]) VALUES (60, 10, N'Treatment Payment', 10000, 8500, 0, 18500, CAST(N'2015-09-17' AS Date), N'John')
INSERT [clinic].[payment_history] ([id], [patient_id], [type], [treatment_fee], [old_balance], [payment], [new_balance], [date], [paid_to]) VALUES (61, 7, N'Treatment Payment', 1000, 400, 0, 1400, CAST(N'2015-09-17' AS Date), N'John')
INSERT [clinic].[payment_history] ([id], [patient_id], [type], [treatment_fee], [old_balance], [payment], [new_balance], [date], [paid_to]) VALUES (62, 7, N'Treatment Payment', 400, 1400, 0, 1800, CAST(N'2015-09-17' AS Date), N'John')
INSERT [clinic].[payment_history] ([id], [patient_id], [type], [treatment_fee], [old_balance], [payment], [new_balance], [date], [paid_to]) VALUES (63, 4, N'Treatment Payment', 700, 1200, 0, 1900, CAST(N'2015-09-17' AS Date), N'John')
INSERT [clinic].[payment_history] ([id], [patient_id], [type], [treatment_fee], [old_balance], [payment], [new_balance], [date], [paid_to]) VALUES (64, 4, N'Treatment Payment', 400, 1900, 0, 2300, CAST(N'2015-09-17' AS Date), N'John')
INSERT [clinic].[payment_history] ([id], [patient_id], [type], [treatment_fee], [old_balance], [payment], [new_balance], [date], [paid_to]) VALUES (65, 9, N'Treatment Payment', 400, 100, 0, 500, CAST(N'2015-09-17' AS Date), N'John')
INSERT [clinic].[payment_history] ([id], [patient_id], [type], [treatment_fee], [old_balance], [payment], [new_balance], [date], [paid_to]) VALUES (66, 9, N'Treatment Payment', 1500, 500, 0, 2000, CAST(N'2015-09-17' AS Date), N'John')
INSERT [clinic].[payment_history] ([id], [patient_id], [type], [treatment_fee], [old_balance], [payment], [new_balance], [date], [paid_to]) VALUES (67, 18, N'Treatment Payment', 1500, 0, 0, 1500, CAST(N'2015-09-17' AS Date), N'John')
INSERT [clinic].[payment_history] ([id], [patient_id], [type], [treatment_fee], [old_balance], [payment], [new_balance], [date], [paid_to]) VALUES (68, 18, N'Treatment Payment', 3500, 1500, 0, 5000, CAST(N'2015-09-17' AS Date), N'John')
INSERT [clinic].[payment_history] ([id], [patient_id], [type], [treatment_fee], [old_balance], [payment], [new_balance], [date], [paid_to]) VALUES (69, 18, N'Treatment Payment', 400, 5000, 0, 5400, CAST(N'2015-09-17' AS Date), N'John')
INSERT [clinic].[payment_history] ([id], [patient_id], [type], [treatment_fee], [old_balance], [payment], [new_balance], [date], [paid_to]) VALUES (70, 16, N'Treatment Payment', 1500, 0, 0, 1500, CAST(N'2015-09-17' AS Date), N'John')
INSERT [clinic].[payment_history] ([id], [patient_id], [type], [treatment_fee], [old_balance], [payment], [new_balance], [date], [paid_to]) VALUES (71, 16, N'Treatment Payment', 1000, 1500, 0, 2500, CAST(N'2015-09-17' AS Date), N'John')
INSERT [clinic].[payment_history] ([id], [patient_id], [type], [treatment_fee], [old_balance], [payment], [new_balance], [date], [paid_to]) VALUES (72, 16, N'Treatment Payment', 500, 2500, 0, 3000, CAST(N'2015-09-17' AS Date), N'John')
INSERT [clinic].[payment_history] ([id], [patient_id], [type], [treatment_fee], [old_balance], [payment], [new_balance], [date], [paid_to]) VALUES (73, 2, N'Treatment Payment', 500, 2000, 0, 2500, CAST(N'2015-09-17' AS Date), N'John')
INSERT [clinic].[payment_history] ([id], [patient_id], [type], [treatment_fee], [old_balance], [payment], [new_balance], [date], [paid_to]) VALUES (74, 2, N'Treatment Payment', 1000, 2500, 0, 3500, CAST(N'2015-09-17' AS Date), N'John')
SET IDENTITY_INSERT [clinic].[payment_history] OFF
SET IDENTITY_INSERT [clinic].[services] ON 

INSERT [clinic].[services] ([id], [procedure_type], [dental_procedure], [service_fee], [type], [createdby], [datecreated], [lastmodifiedby], [datemodified], [status]) VALUES (46, N'unclassified', N'Luboton', 10, N'Prostodontic Dentistry', N'admin', CAST(N'2015-09-17 00:00:00.0000000' AS DateTime2), N'admin', CAST(N'2015-09-17 19:56:28.0000000' AS DateTime2), 1)
INSERT [clinic].[services] ([id], [procedure_type], [dental_procedure], [service_fee], [type], [createdby], [datecreated], [lastmodifiedby], [datemodified], [status]) VALUES (47, N'unclassified', N'Chula', 2, N'Orthodontic Dentistry', N'admin', CAST(N'2015-09-17 19:55:53.0000000' AS DateTime2), N'admin', CAST(N'2015-09-17 19:55:53.0000000' AS DateTime2), 1)
SET IDENTITY_INSERT [clinic].[services] OFF
SET IDENTITY_INSERT [clinic].[teethprofile] ON 

INSERT [clinic].[teethprofile] ([id], [dateupdated], [dentistincharge], [patient_id], [toothno], [toothsurface], [note]) VALUES (1, CAST(N'2015-09-17 19:38:41.0000000' AS DateTime2), N'John', 6, 14, N'd', N'putol')
INSERT [clinic].[teethprofile] ([id], [dateupdated], [dentistincharge], [patient_id], [toothno], [toothsurface], [note]) VALUES (2, CAST(N'2015-09-17 19:39:02.0000000' AS DateTime2), N'John', 6, 14, N'd', N'pasta')
SET IDENTITY_INSERT [clinic].[teethprofile] OFF
SET IDENTITY_INSERT [clinic].[timeslot] ON 

INSERT [clinic].[timeslot] ([id], [time], [type]) VALUES (1, N'7:30 AM - 8:30 AM', N'd')
INSERT [clinic].[timeslot] ([id], [time], [type]) VALUES (2, N'8:30 AM - 9:30 AM', N'd')
INSERT [clinic].[timeslot] ([id], [time], [type]) VALUES (3, N'9:30 AM - 10:30 AM', N'd')
INSERT [clinic].[timeslot] ([id], [time], [type]) VALUES (4, N'10:30 AM - 11:30 AM', N'd')
INSERT [clinic].[timeslot] ([id], [time], [type]) VALUES (5, N'1:00 PM - 2:00 PM', N'd')
INSERT [clinic].[timeslot] ([id], [time], [type]) VALUES (6, N'2:00 PM - 3:00 PM', N'd')
INSERT [clinic].[timeslot] ([id], [time], [type]) VALUES (7, N'3:00 PM - 4:00 PM', N'd')
INSERT [clinic].[timeslot] ([id], [time], [type]) VALUES (8, N'9:00 AM - 10:00 AM', N'e')
INSERT [clinic].[timeslot] ([id], [time], [type]) VALUES (9, N'10:00 AM - 11:00 AM', N'e')
INSERT [clinic].[timeslot] ([id], [time], [type]) VALUES (10, N'11:00 AM - 12:00 PM', N'e')
INSERT [clinic].[timeslot] ([id], [time], [type]) VALUES (11, N'1:00 PM - 2:00 PM', N'e')
INSERT [clinic].[timeslot] ([id], [time], [type]) VALUES (12, N'2:00 PM - 3:00 PM', N'e')
INSERT [clinic].[timeslot] ([id], [time], [type]) VALUES (13, N'3:00 PM - 4:00 PM', N'e')
SET IDENTITY_INSERT [clinic].[timeslot] OFF
SET IDENTITY_INSERT [clinic].[transaction] ON 

INSERT [clinic].[transaction] ([id], [treatment_id], [totalamount], [amountpaid], [balance]) VALUES (1, 1, 400, 0, 400)
INSERT [clinic].[transaction] ([id], [treatment_id], [totalamount], [amountpaid], [balance]) VALUES (2, 2, 5000, 0, 5000)
INSERT [clinic].[transaction] ([id], [treatment_id], [totalamount], [amountpaid], [balance]) VALUES (3, 3, 3000, 1000, 2000)
INSERT [clinic].[transaction] ([id], [treatment_id], [totalamount], [amountpaid], [balance]) VALUES (4, 4, 3500, 0, 3500)
INSERT [clinic].[transaction] ([id], [treatment_id], [totalamount], [amountpaid], [balance]) VALUES (5, 5, 700, 50, 650)
INSERT [clinic].[transaction] ([id], [treatment_id], [totalamount], [amountpaid], [balance]) VALUES (6, 6, 1500, 0, 1500)
INSERT [clinic].[transaction] ([id], [treatment_id], [totalamount], [amountpaid], [balance]) VALUES (7, 7, 5500, 0, 5500)
INSERT [clinic].[transaction] ([id], [treatment_id], [totalamount], [amountpaid], [balance]) VALUES (8, 8, 1000, 0, 1000)
INSERT [clinic].[transaction] ([id], [treatment_id], [totalamount], [amountpaid], [balance]) VALUES (9, 9, 4500, 0, 4500)
INSERT [clinic].[transaction] ([id], [treatment_id], [totalamount], [amountpaid], [balance]) VALUES (10, 10, 1200, 0, 1200)
INSERT [clinic].[transaction] ([id], [treatment_id], [totalamount], [amountpaid], [balance]) VALUES (11, 11, 11000, 0, 11000)
INSERT [clinic].[transaction] ([id], [treatment_id], [totalamount], [amountpaid], [balance]) VALUES (12, 12, 1500, 800, 700)
INSERT [clinic].[transaction] ([id], [treatment_id], [totalamount], [amountpaid], [balance]) VALUES (13, 13, 1500, 0, 1500)
INSERT [clinic].[transaction] ([id], [treatment_id], [totalamount], [amountpaid], [balance]) VALUES (14, 14, 900, 0, 900)
INSERT [clinic].[transaction] ([id], [treatment_id], [totalamount], [amountpaid], [balance]) VALUES (15, 15, 3500, 800, 2700)
INSERT [clinic].[transaction] ([id], [treatment_id], [totalamount], [amountpaid], [balance]) VALUES (16, 16, 1000, 0, 1000)
INSERT [clinic].[transaction] ([id], [treatment_id], [totalamount], [amountpaid], [balance]) VALUES (17, 17, 5000, 3000, 2000)
INSERT [clinic].[transaction] ([id], [treatment_id], [totalamount], [amountpaid], [balance]) VALUES (18, 18, 1500, 500, 1000)
INSERT [clinic].[transaction] ([id], [treatment_id], [totalamount], [amountpaid], [balance]) VALUES (19, 19, 2000, 0, 2000)
INSERT [clinic].[transaction] ([id], [treatment_id], [totalamount], [amountpaid], [balance]) VALUES (20, 20, 1500, 0, 1500)
INSERT [clinic].[transaction] ([id], [treatment_id], [totalamount], [amountpaid], [balance]) VALUES (21, 21, 5000, 0, 5000)
INSERT [clinic].[transaction] ([id], [treatment_id], [totalamount], [amountpaid], [balance]) VALUES (22, 22, 1500, 0, 1500)
INSERT [clinic].[transaction] ([id], [treatment_id], [totalamount], [amountpaid], [balance]) VALUES (23, 23, 5000, 0, 5000)
INSERT [clinic].[transaction] ([id], [treatment_id], [totalamount], [amountpaid], [balance]) VALUES (24, 24, 2500, 0, 2500)
INSERT [clinic].[transaction] ([id], [treatment_id], [totalamount], [amountpaid], [balance]) VALUES (25, 25, 1500, 0, 1500)
INSERT [clinic].[transaction] ([id], [treatment_id], [totalamount], [amountpaid], [balance]) VALUES (26, 26, 200, 0, 200)
INSERT [clinic].[transaction] ([id], [treatment_id], [totalamount], [amountpaid], [balance]) VALUES (27, 27, 900, 0, 900)
INSERT [clinic].[transaction] ([id], [treatment_id], [totalamount], [amountpaid], [balance]) VALUES (28, 28, 1000, 0, 1000)
INSERT [clinic].[transaction] ([id], [treatment_id], [totalamount], [amountpaid], [balance]) VALUES (29, 29, 0, 0, 0)
INSERT [clinic].[transaction] ([id], [treatment_id], [totalamount], [amountpaid], [balance]) VALUES (30, 30, 500, 0, 500)
INSERT [clinic].[transaction] ([id], [treatment_id], [totalamount], [amountpaid], [balance]) VALUES (31, 31, 1500, 0, 1500)
INSERT [clinic].[transaction] ([id], [treatment_id], [totalamount], [amountpaid], [balance]) VALUES (32, 32, 500, 0, 500)
INSERT [clinic].[transaction] ([id], [treatment_id], [totalamount], [amountpaid], [balance]) VALUES (33, 33, 2000, 0, 2000)
INSERT [clinic].[transaction] ([id], [treatment_id], [totalamount], [amountpaid], [balance]) VALUES (34, 34, 1000, 0, 1000)
INSERT [clinic].[transaction] ([id], [treatment_id], [totalamount], [amountpaid], [balance]) VALUES (35, 35, 25000, 0, 25000)
INSERT [clinic].[transaction] ([id], [treatment_id], [totalamount], [amountpaid], [balance]) VALUES (36, 40, 200, 0, 200)
INSERT [clinic].[transaction] ([id], [treatment_id], [totalamount], [amountpaid], [balance]) VALUES (37, 41, 1000, 0, 1000)
INSERT [clinic].[transaction] ([id], [treatment_id], [totalamount], [amountpaid], [balance]) VALUES (38, 42, 500, 0, 500)
INSERT [clinic].[transaction] ([id], [treatment_id], [totalamount], [amountpaid], [balance]) VALUES (39, 43, 500, 0, 500)
INSERT [clinic].[transaction] ([id], [treatment_id], [totalamount], [amountpaid], [balance]) VALUES (40, 44, 1500, 0, 1500)
INSERT [clinic].[transaction] ([id], [treatment_id], [totalamount], [amountpaid], [balance]) VALUES (41, 45, 5000, 0, 5000)
INSERT [clinic].[transaction] ([id], [treatment_id], [totalamount], [amountpaid], [balance]) VALUES (42, 46, 1500, 0, 1500)
INSERT [clinic].[transaction] ([id], [treatment_id], [totalamount], [amountpaid], [balance]) VALUES (43, 47, 2500, 0, 2500)
INSERT [clinic].[transaction] ([id], [treatment_id], [totalamount], [amountpaid], [balance]) VALUES (44, 48, 2500, 0, 2500)
INSERT [clinic].[transaction] ([id], [treatment_id], [totalamount], [amountpaid], [balance]) VALUES (45, 49, 10000, 0, 10000)
INSERT [clinic].[transaction] ([id], [treatment_id], [totalamount], [amountpaid], [balance]) VALUES (46, 50, 1000, 0, 1000)
INSERT [clinic].[transaction] ([id], [treatment_id], [totalamount], [amountpaid], [balance]) VALUES (47, 51, 400, 0, 400)
INSERT [clinic].[transaction] ([id], [treatment_id], [totalamount], [amountpaid], [balance]) VALUES (48, 52, 700, 0, 700)
INSERT [clinic].[transaction] ([id], [treatment_id], [totalamount], [amountpaid], [balance]) VALUES (49, 53, 400, 0, 400)
INSERT [clinic].[transaction] ([id], [treatment_id], [totalamount], [amountpaid], [balance]) VALUES (50, 54, 400, 0, 400)
INSERT [clinic].[transaction] ([id], [treatment_id], [totalamount], [amountpaid], [balance]) VALUES (51, 55, 1500, 0, 1500)
INSERT [clinic].[transaction] ([id], [treatment_id], [totalamount], [amountpaid], [balance]) VALUES (52, 56, 1500, 0, 1500)
INSERT [clinic].[transaction] ([id], [treatment_id], [totalamount], [amountpaid], [balance]) VALUES (53, 57, 3500, 0, 3500)
INSERT [clinic].[transaction] ([id], [treatment_id], [totalamount], [amountpaid], [balance]) VALUES (54, 58, 400, 0, 400)
INSERT [clinic].[transaction] ([id], [treatment_id], [totalamount], [amountpaid], [balance]) VALUES (55, 59, 1500, 0, 1500)
INSERT [clinic].[transaction] ([id], [treatment_id], [totalamount], [amountpaid], [balance]) VALUES (56, 60, 1000, 0, 1000)
INSERT [clinic].[transaction] ([id], [treatment_id], [totalamount], [amountpaid], [balance]) VALUES (57, 61, 500, 0, 500)
INSERT [clinic].[transaction] ([id], [treatment_id], [totalamount], [amountpaid], [balance]) VALUES (58, 62, 500, 0, 500)
INSERT [clinic].[transaction] ([id], [treatment_id], [totalamount], [amountpaid], [balance]) VALUES (59, 63, 1000, 0, 1000)
SET IDENTITY_INSERT [clinic].[transaction] OFF
SET IDENTITY_INSERT [clinic].[treatment] ON 

INSERT [clinic].[treatment] ([id], [patient_id], [date], [dentistincharge], [chiefcomplaint], [otherfindings]) VALUES (1, 6, CAST(N'2015-06-22' AS Date), N'John B. Gayatin', N'Toohtache', N'')
INSERT [clinic].[treatment] ([id], [patient_id], [date], [dentistincharge], [chiefcomplaint], [otherfindings]) VALUES (2, 15, CAST(N'2014-08-18' AS Date), N'Cynthia B. Gayatin', N'Sensitive Gums', N'')
INSERT [clinic].[treatment] ([id], [patient_id], [date], [dentistincharge], [chiefcomplaint], [otherfindings]) VALUES (3, 12, CAST(N'2014-11-05' AS Date), N'John B. Gayatin', N'', N'')
INSERT [clinic].[treatment] ([id], [patient_id], [date], [dentistincharge], [chiefcomplaint], [otherfindings]) VALUES (4, 1, CAST(N'2015-05-18' AS Date), N'Cynthia B. Gayatin', N'', N'')
INSERT [clinic].[treatment] ([id], [patient_id], [date], [dentistincharge], [chiefcomplaint], [otherfindings]) VALUES (5, 11, CAST(N'2014-12-22' AS Date), N'John B. Gayatin', N'', N'')
INSERT [clinic].[treatment] ([id], [patient_id], [date], [dentistincharge], [chiefcomplaint], [otherfindings]) VALUES (6, 13, CAST(N'2015-06-17' AS Date), N'Cynthia B. Gayatin', N'', N'')
INSERT [clinic].[treatment] ([id], [patient_id], [date], [dentistincharge], [chiefcomplaint], [otherfindings]) VALUES (7, 3, CAST(N'2015-04-16' AS Date), N'John B. Gayatin', N'', N'')
INSERT [clinic].[treatment] ([id], [patient_id], [date], [dentistincharge], [chiefcomplaint], [otherfindings]) VALUES (8, 8, CAST(N'2015-01-14' AS Date), N'John B. Gayatin', N'', N'')
INSERT [clinic].[treatment] ([id], [patient_id], [date], [dentistincharge], [chiefcomplaint], [otherfindings]) VALUES (9, 5, CAST(N'2015-01-20' AS Date), N'Cynthia B. Gayatin', N'', N'')
INSERT [clinic].[treatment] ([id], [patient_id], [date], [dentistincharge], [chiefcomplaint], [otherfindings]) VALUES (10, 14, CAST(N'2014-07-22' AS Date), N'John B. Gayatin', N'', N'')
INSERT [clinic].[treatment] ([id], [patient_id], [date], [dentistincharge], [chiefcomplaint], [otherfindings]) VALUES (11, 10, CAST(N'2014-12-17' AS Date), N'John B. Gayatin', N'', N'')
INSERT [clinic].[treatment] ([id], [patient_id], [date], [dentistincharge], [chiefcomplaint], [otherfindings]) VALUES (12, 7, CAST(N'2015-09-17' AS Date), N'John B. Gayatin', N'', N'')
INSERT [clinic].[treatment] ([id], [patient_id], [date], [dentistincharge], [chiefcomplaint], [otherfindings]) VALUES (13, 4, CAST(N'2015-04-14' AS Date), N'Cynthia B. Gayatin', N'', N'')
INSERT [clinic].[treatment] ([id], [patient_id], [date], [dentistincharge], [chiefcomplaint], [otherfindings]) VALUES (14, 9, CAST(N'2015-07-14' AS Date), N'Cynthia B. Gayatin', N'', N'')
INSERT [clinic].[treatment] ([id], [patient_id], [date], [dentistincharge], [chiefcomplaint], [otherfindings]) VALUES (15, 2, CAST(N'2014-11-11' AS Date), N'Cynthia B. Gayatin', N'', N'')
INSERT [clinic].[treatment] ([id], [patient_id], [date], [dentistincharge], [chiefcomplaint], [otherfindings]) VALUES (16, 6, CAST(N'2014-08-12' AS Date), N'Cynthia B. Gayatin', N'', N'')
INSERT [clinic].[treatment] ([id], [patient_id], [date], [dentistincharge], [chiefcomplaint], [otherfindings]) VALUES (17, 15, CAST(N'2014-08-14' AS Date), N'John B. Gayatin', N'', N'')
INSERT [clinic].[treatment] ([id], [patient_id], [date], [dentistincharge], [chiefcomplaint], [otherfindings]) VALUES (18, 12, CAST(N'2015-04-22' AS Date), N'John B. Gayatin', N'', N'')
INSERT [clinic].[treatment] ([id], [patient_id], [date], [dentistincharge], [chiefcomplaint], [otherfindings]) VALUES (19, 11, CAST(N'2015-03-26' AS Date), N'John B. Gayatin', N'', N'')
INSERT [clinic].[treatment] ([id], [patient_id], [date], [dentistincharge], [chiefcomplaint], [otherfindings]) VALUES (20, 13, CAST(N'2015-03-24' AS Date), N'Cynthia B. Gayatin', N'', N'')
INSERT [clinic].[treatment] ([id], [patient_id], [date], [dentistincharge], [chiefcomplaint], [otherfindings]) VALUES (21, 3, CAST(N'2014-10-14' AS Date), N'John B. Gayatin', N'', N'')
INSERT [clinic].[treatment] ([id], [patient_id], [date], [dentistincharge], [chiefcomplaint], [otherfindings]) VALUES (22, 8, CAST(N'2014-10-13' AS Date), N'John B. Gayatin', N'', N'')
INSERT [clinic].[treatment] ([id], [patient_id], [date], [dentistincharge], [chiefcomplaint], [otherfindings]) VALUES (23, 5, CAST(N'2014-01-06' AS Date), N'Cynthia B. Gayatin', N'', N'')
INSERT [clinic].[treatment] ([id], [patient_id], [date], [dentistincharge], [chiefcomplaint], [otherfindings]) VALUES (24, 14, CAST(N'2014-03-11' AS Date), N'Cynthia B. Gayatin', N'', N'')
INSERT [clinic].[treatment] ([id], [patient_id], [date], [dentistincharge], [chiefcomplaint], [otherfindings]) VALUES (25, 6, CAST(N'2015-09-17' AS Date), N'John B. Gayatin', N'', N'')
INSERT [clinic].[treatment] ([id], [patient_id], [date], [dentistincharge], [chiefcomplaint], [otherfindings]) VALUES (26, 17, CAST(N'2015-09-17' AS Date), N'John B. Gayatin', N'', N'')
INSERT [clinic].[treatment] ([id], [patient_id], [date], [dentistincharge], [chiefcomplaint], [otherfindings]) VALUES (27, 17, CAST(N'2015-09-17' AS Date), N'John B. Gayatin', N'', N'')
INSERT [clinic].[treatment] ([id], [patient_id], [date], [dentistincharge], [chiefcomplaint], [otherfindings]) VALUES (28, 17, CAST(N'2015-09-17' AS Date), N'Cynthia B. Gayatin', N'', N'')
INSERT [clinic].[treatment] ([id], [patient_id], [date], [dentistincharge], [chiefcomplaint], [otherfindings]) VALUES (29, 15, CAST(N'2015-09-17' AS Date), N'Cynthia B. Gayatin', N'', N'')
INSERT [clinic].[treatment] ([id], [patient_id], [date], [dentistincharge], [chiefcomplaint], [otherfindings]) VALUES (30, 12, CAST(N'2015-09-17' AS Date), N'John B. Gayatin', N'', N'')
INSERT [clinic].[treatment] ([id], [patient_id], [date], [dentistincharge], [chiefcomplaint], [otherfindings]) VALUES (31, 19, CAST(N'2015-09-17' AS Date), N'John B. Gayatin', N'', N'')
INSERT [clinic].[treatment] ([id], [patient_id], [date], [dentistincharge], [chiefcomplaint], [otherfindings]) VALUES (32, 19, CAST(N'2015-09-17' AS Date), N'Cynthia B. Gayatin', N'', N'')
INSERT [clinic].[treatment] ([id], [patient_id], [date], [dentistincharge], [chiefcomplaint], [otherfindings]) VALUES (33, 19, CAST(N'2015-09-17' AS Date), N'John B. Gayatin', N'', N'')
INSERT [clinic].[treatment] ([id], [patient_id], [date], [dentistincharge], [chiefcomplaint], [otherfindings]) VALUES (34, 1, CAST(N'2015-09-17' AS Date), N'John B. Gayatin', N'', N'')
INSERT [clinic].[treatment] ([id], [patient_id], [date], [dentistincharge], [chiefcomplaint], [otherfindings]) VALUES (35, 1, CAST(N'2015-09-17' AS Date), N'Cynthia B. Gayatin', N'', N'')
INSERT [clinic].[treatment] ([id], [patient_id], [date], [dentistincharge], [chiefcomplaint], [otherfindings]) VALUES (36, 11, CAST(N'2015-09-17' AS Date), N'John B. Gayatin', N'', N'')
INSERT [clinic].[treatment] ([id], [patient_id], [date], [dentistincharge], [chiefcomplaint], [otherfindings]) VALUES (37, 11, CAST(N'2015-09-17' AS Date), N'John B. Gayatin', N'', N'')
INSERT [clinic].[treatment] ([id], [patient_id], [date], [dentistincharge], [chiefcomplaint], [otherfindings]) VALUES (38, 11, CAST(N'2015-09-17' AS Date), N'John B. Gayatin', N'', N'')
INSERT [clinic].[treatment] ([id], [patient_id], [date], [dentistincharge], [chiefcomplaint], [otherfindings]) VALUES (39, 11, CAST(N'2015-09-17' AS Date), N'John B. Gayatin', N'', N'')
INSERT [clinic].[treatment] ([id], [patient_id], [date], [dentistincharge], [chiefcomplaint], [otherfindings]) VALUES (40, 13, CAST(N'2015-09-17' AS Date), N'John B. Gayatin', N'', N'')
INSERT [clinic].[treatment] ([id], [patient_id], [date], [dentistincharge], [chiefcomplaint], [otherfindings]) VALUES (41, 3, CAST(N'2015-09-17' AS Date), N'John B. Gayatin', N'', N'')
INSERT [clinic].[treatment] ([id], [patient_id], [date], [dentistincharge], [chiefcomplaint], [otherfindings]) VALUES (42, 20, CAST(N'2015-09-17' AS Date), N'Cynthia B. Gayatin', N'', N'')
INSERT [clinic].[treatment] ([id], [patient_id], [date], [dentistincharge], [chiefcomplaint], [otherfindings]) VALUES (43, 20, CAST(N'2015-09-17' AS Date), N'Cynthia B. Gayatin', N'', N'')
INSERT [clinic].[treatment] ([id], [patient_id], [date], [dentistincharge], [chiefcomplaint], [otherfindings]) VALUES (44, 20, CAST(N'2015-09-17' AS Date), N'Cynthia B. Gayatin', N'', N'')
INSERT [clinic].[treatment] ([id], [patient_id], [date], [dentistincharge], [chiefcomplaint], [otherfindings]) VALUES (45, 8, CAST(N'2015-09-17' AS Date), N'Cynthia B. Gayatin', N'', N'')
INSERT [clinic].[treatment] ([id], [patient_id], [date], [dentistincharge], [chiefcomplaint], [otherfindings]) VALUES (46, 5, CAST(N'2015-09-17' AS Date), N'John B. Gayatin', N'', N'')
INSERT [clinic].[treatment] ([id], [patient_id], [date], [dentistincharge], [chiefcomplaint], [otherfindings]) VALUES (47, 14, CAST(N'2015-09-17' AS Date), N'John B. Gayatin', N'', N'')
INSERT [clinic].[treatment] ([id], [patient_id], [date], [dentistincharge], [chiefcomplaint], [otherfindings]) VALUES (48, 10, CAST(N'2015-09-17' AS Date), N'Cynthia B. Gayatin', N'', N'')
INSERT [clinic].[treatment] ([id], [patient_id], [date], [dentistincharge], [chiefcomplaint], [otherfindings]) VALUES (49, 10, CAST(N'2015-09-17' AS Date), N'John B. Gayatin', N'', N'')
INSERT [clinic].[treatment] ([id], [patient_id], [date], [dentistincharge], [chiefcomplaint], [otherfindings]) VALUES (50, 7, CAST(N'2015-09-17' AS Date), N'John B. Gayatin', N'', N'')
INSERT [clinic].[treatment] ([id], [patient_id], [date], [dentistincharge], [chiefcomplaint], [otherfindings]) VALUES (51, 7, CAST(N'2015-09-17' AS Date), N'John B. Gayatin', N'', N'')
INSERT [clinic].[treatment] ([id], [patient_id], [date], [dentistincharge], [chiefcomplaint], [otherfindings]) VALUES (52, 4, CAST(N'2015-09-17' AS Date), N'Cynthia B. Gayatin', N'', N'')
INSERT [clinic].[treatment] ([id], [patient_id], [date], [dentistincharge], [chiefcomplaint], [otherfindings]) VALUES (53, 4, CAST(N'2015-09-17' AS Date), N'Cynthia B. Gayatin', N'', N'')
INSERT [clinic].[treatment] ([id], [patient_id], [date], [dentistincharge], [chiefcomplaint], [otherfindings]) VALUES (54, 9, CAST(N'2015-09-17' AS Date), N'Cynthia B. Gayatin', N'', N'')
INSERT [clinic].[treatment] ([id], [patient_id], [date], [dentistincharge], [chiefcomplaint], [otherfindings]) VALUES (55, 9, CAST(N'2015-09-17' AS Date), N'John B. Gayatin', N'', N'')
INSERT [clinic].[treatment] ([id], [patient_id], [date], [dentistincharge], [chiefcomplaint], [otherfindings]) VALUES (56, 18, CAST(N'2015-09-17' AS Date), N'John B. Gayatin', N'', N'')
INSERT [clinic].[treatment] ([id], [patient_id], [date], [dentistincharge], [chiefcomplaint], [otherfindings]) VALUES (57, 18, CAST(N'2015-09-17' AS Date), N'John B. Gayatin', N'', N'')
INSERT [clinic].[treatment] ([id], [patient_id], [date], [dentistincharge], [chiefcomplaint], [otherfindings]) VALUES (58, 18, CAST(N'2015-09-17' AS Date), N'Cynthia B. Gayatin', N'', N'')
INSERT [clinic].[treatment] ([id], [patient_id], [date], [dentistincharge], [chiefcomplaint], [otherfindings]) VALUES (59, 16, CAST(N'2015-09-17' AS Date), N'John B. Gayatin', N'', N'')
INSERT [clinic].[treatment] ([id], [patient_id], [date], [dentistincharge], [chiefcomplaint], [otherfindings]) VALUES (60, 16, CAST(N'2015-09-17' AS Date), N'John B. Gayatin', N'', N'')
INSERT [clinic].[treatment] ([id], [patient_id], [date], [dentistincharge], [chiefcomplaint], [otherfindings]) VALUES (61, 16, CAST(N'2015-09-17' AS Date), N'John B. Gayatin', N'', N'')
INSERT [clinic].[treatment] ([id], [patient_id], [date], [dentistincharge], [chiefcomplaint], [otherfindings]) VALUES (62, 2, CAST(N'2015-09-17' AS Date), N'John B. Gayatin', N'', N'')
INSERT [clinic].[treatment] ([id], [patient_id], [date], [dentistincharge], [chiefcomplaint], [otherfindings]) VALUES (63, 2, CAST(N'2015-09-17' AS Date), N'Cynthia B. Gayatin', N'', N'')
SET IDENTITY_INSERT [clinic].[treatment] OFF
SET IDENTITY_INSERT [clinic].[treatment_record] ON 

INSERT [clinic].[treatment_record] ([id], [treatment_id], [type], [treatment], [toothno], [toothsurface], [price]) VALUES (1, 1, N'Tooth', N'Temporary Fillings', 13, N'Mesial', 200)
INSERT [clinic].[treatment_record] ([id], [treatment_id], [type], [treatment], [toothno], [toothsurface], [price]) VALUES (2, 1, N'Unit', N'Recementation of Jacket Crowns,Inlays/Onlays', 47, N'', 200)
INSERT [clinic].[treatment_record] ([id], [treatment_id], [type], [treatment], [toothno], [toothsurface], [price]) VALUES (3, 2, N'Arch', N'Mouth Guard –rubberized / acrylic', 11, N'', 2500)
INSERT [clinic].[treatment_record] ([id], [treatment_id], [type], [treatment], [toothno], [toothsurface], [price]) VALUES (4, 3, N'Appliance', N'Retainer Functional', 0, N'Upper', 2500)
INSERT [clinic].[treatment_record] ([id], [treatment_id], [type], [treatment], [toothno], [toothsurface], [price]) VALUES (5, 3, N'Tooth', N'Tooth Lamination', 45, N'Mesial', 500)
INSERT [clinic].[treatment_record] ([id], [treatment_id], [type], [treatment], [toothno], [toothsurface], [price]) VALUES (6, 4, N'Post', N'Screw Dowel Post', 32, N'', 1000)
INSERT [clinic].[treatment_record] ([id], [treatment_id], [type], [treatment], [toothno], [toothsurface], [price]) VALUES (7, 4, N'Unit', N'Plastic / Acrylic Jacket Crown', 32, N'', 2500)
INSERT [clinic].[treatment_record] ([id], [treatment_id], [type], [treatment], [toothno], [toothsurface], [price]) VALUES (8, 5, N'Tooth', N'Temporary Fillings', 37, N'Mesial', 200)
INSERT [clinic].[treatment_record] ([id], [treatment_id], [type], [treatment], [toothno], [toothsurface], [price]) VALUES (9, 5, N'Quadrant', N'Oral Prophylaxis - light to heavy', 0, N'All', 500)
INSERT [clinic].[treatment_record] ([id], [treatment_id], [type], [treatment], [toothno], [toothsurface], [price]) VALUES (10, 6, N'Canal', N'Root Canal Treatment', 27, N'', 1500)
INSERT [clinic].[treatment_record] ([id], [treatment_id], [type], [treatment], [toothno], [toothsurface], [price]) VALUES (11, 7, N'Appliance', N'Myobrace / EF Braces', 0, N'Upper', 5000)
INSERT [clinic].[treatment_record] ([id], [treatment_id], [type], [treatment], [toothno], [toothsurface], [price]) VALUES (12, 7, N'Quadrant', N'Oral Prophylaxis - light to heavy', 0, N'Upper right', 500)
INSERT [clinic].[treatment_record] ([id], [treatment_id], [type], [treatment], [toothno], [toothsurface], [price]) VALUES (13, 8, N'Post', N'Screw Dowel Post', 18, N'', 1000)
INSERT [clinic].[treatment_record] ([id], [treatment_id], [type], [treatment], [toothno], [toothsurface], [price]) VALUES (14, 9, N'Appliance', N'Retainer Non-Functional', 0, N'Lower', 2000)
INSERT [clinic].[treatment_record] ([id], [treatment_id], [type], [treatment], [toothno], [toothsurface], [price]) VALUES (15, 9, N'Appliance', N'Retainer Functional', 0, N'Upper', 2500)
INSERT [clinic].[treatment_record] ([id], [treatment_id], [type], [treatment], [toothno], [toothsurface], [price]) VALUES (16, 10, N'Unclassified', N'Treatment of Oral Lessions, Sores', 0, N'', 200)
INSERT [clinic].[treatment_record] ([id], [treatment_id], [type], [treatment], [toothno], [toothsurface], [price]) VALUES (17, 10, N'Unclassified', N'Denture Relining', 0, N'', 1000)
INSERT [clinic].[treatment_record] ([id], [treatment_id], [type], [treatment], [toothno], [toothsurface], [price]) VALUES (18, 11, N'Unit', N'Pure Ceramic/ Inceram Crown', 35, N'', 10000)
INSERT [clinic].[treatment_record] ([id], [treatment_id], [type], [treatment], [toothno], [toothsurface], [price]) VALUES (19, 11, N'Post', N'Casted Dowel Post', 35, N'', 1000)
INSERT [clinic].[treatment_record] ([id], [treatment_id], [type], [treatment], [toothno], [toothsurface], [price]) VALUES (20, 12, N'Unclassified', N'Consultation/Dental Examination', 0, N'', 0)
INSERT [clinic].[treatment_record] ([id], [treatment_id], [type], [treatment], [toothno], [toothsurface], [price]) VALUES (21, 12, N'Unclassified', N'Simple Repair of Dentures', 0, N'', 500)
INSERT [clinic].[treatment_record] ([id], [treatment_id], [type], [treatment], [toothno], [toothsurface], [price]) VALUES (22, 12, N'Unclassified', N'Denture Relining', 0, N'', 1000)
INSERT [clinic].[treatment_record] ([id], [treatment_id], [type], [treatment], [toothno], [toothsurface], [price]) VALUES (23, 13, N'Canal', N'Root Canal Treatment', 18, N'', 1500)
INSERT [clinic].[treatment_record] ([id], [treatment_id], [type], [treatment], [toothno], [toothsurface], [price]) VALUES (24, 14, N'Quadrant', N'Oral Prophylaxis - light to heavy', 0, N'Upper right', 500)
INSERT [clinic].[treatment_record] ([id], [treatment_id], [type], [treatment], [toothno], [toothsurface], [price]) VALUES (25, 14, N'Quadrant', N'Flouride Treatment', 0, N'Upper right', 400)
INSERT [clinic].[treatment_record] ([id], [treatment_id], [type], [treatment], [toothno], [toothsurface], [price]) VALUES (26, 15, N'Appliance', N'Retainer Functional', 0, N'Upper', 2500)
INSERT [clinic].[treatment_record] ([id], [treatment_id], [type], [treatment], [toothno], [toothsurface], [price]) VALUES (27, 15, N'Post', N'Casted Dowel Post', 18, N'', 1000)
INSERT [clinic].[treatment_record] ([id], [treatment_id], [type], [treatment], [toothno], [toothsurface], [price]) VALUES (28, 16, N'Post', N'Screw Dowel Post', 47, N'', 1000)
INSERT [clinic].[treatment_record] ([id], [treatment_id], [type], [treatment], [toothno], [toothsurface], [price]) VALUES (29, 17, N'Appliance', N'TMJ Appliance', 0, N'Upper', 5000)
INSERT [clinic].[treatment_record] ([id], [treatment_id], [type], [treatment], [toothno], [toothsurface], [price]) VALUES (30, 18, N'Canal', N'Root Canal Treatment', 47, N'', 1500)
INSERT [clinic].[treatment_record] ([id], [treatment_id], [type], [treatment], [toothno], [toothsurface], [price]) VALUES (31, 19, N'Appliance', N'Retainer Non-Functional', 0, N'Upper', 2000)
INSERT [clinic].[treatment_record] ([id], [treatment_id], [type], [treatment], [toothno], [toothsurface], [price]) VALUES (32, 20, N'Canal', N'Root Canal Treatment', 44, N'', 1500)
INSERT [clinic].[treatment_record] ([id], [treatment_id], [type], [treatment], [toothno], [toothsurface], [price]) VALUES (33, 21, N'Appliance', N'Myobrace / EF Braces', 0, N'Upper', 5000)
INSERT [clinic].[treatment_record] ([id], [treatment_id], [type], [treatment], [toothno], [toothsurface], [price]) VALUES (34, 22, N'Unclassified', N'Consultation/Dental Examination', 0, N'', 0)
INSERT [clinic].[treatment_record] ([id], [treatment_id], [type], [treatment], [toothno], [toothsurface], [price]) VALUES (35, 22, N'Unclassified', N'Denture Relining', 0, N'', 1000)
INSERT [clinic].[treatment_record] ([id], [treatment_id], [type], [treatment], [toothno], [toothsurface], [price]) VALUES (36, 22, N'Unclassified', N'Simple Repair of Dentures', 0, N'', 500)
INSERT [clinic].[treatment_record] ([id], [treatment_id], [type], [treatment], [toothno], [toothsurface], [price]) VALUES (37, 23, N'Unit', N'Ceramic Inlay', 48, N'', 5000)
INSERT [clinic].[treatment_record] ([id], [treatment_id], [type], [treatment], [toothno], [toothsurface], [price]) VALUES (38, 24, N'Arch', N'Mouth Guard –rubberized / acrylic', 18, N'', 2500)
INSERT [clinic].[treatment_record] ([id], [treatment_id], [type], [treatment], [toothno], [toothsurface], [price]) VALUES (39, 25, N'Canal', N'Root Canal Treatment', 31, N'', 1500)
INSERT [clinic].[treatment_record] ([id], [treatment_id], [type], [treatment], [toothno], [toothsurface], [price]) VALUES (40, 26, N'Tooth', N'Temporary Fillings', 31, N'Mesial', 200)
INSERT [clinic].[treatment_record] ([id], [treatment_id], [type], [treatment], [toothno], [toothsurface], [price]) VALUES (41, 27, N'Quadrant', N'Oral Prophylaxis - light to heavy', 0, N'Upper right', 500)
INSERT [clinic].[treatment_record] ([id], [treatment_id], [type], [treatment], [toothno], [toothsurface], [price]) VALUES (42, 27, N'Quadrant', N'Flouride Treatment', 0, N'Upper right', 400)
INSERT [clinic].[treatment_record] ([id], [treatment_id], [type], [treatment], [toothno], [toothsurface], [price]) VALUES (43, 28, N'Post', N'Screw Dowel Post', 48, N'', 1000)
INSERT [clinic].[treatment_record] ([id], [treatment_id], [type], [treatment], [toothno], [toothsurface], [price]) VALUES (44, 29, N'Unclassified', N'Change Dressing', 0, N'', 0)
INSERT [clinic].[treatment_record] ([id], [treatment_id], [type], [treatment], [toothno], [toothsurface], [price]) VALUES (45, 30, N'Quadrant', N'Oral Prophylaxis - light to heavy', 0, N'Upper left', 500)
INSERT [clinic].[treatment_record] ([id], [treatment_id], [type], [treatment], [toothno], [toothsurface], [price]) VALUES (46, 31, N'Unclassified', N'Simple Repair of Dentures', 0, N'', 500)
INSERT [clinic].[treatment_record] ([id], [treatment_id], [type], [treatment], [toothno], [toothsurface], [price]) VALUES (47, 31, N'Unclassified', N'Denture Relining', 0, N'', 1000)
INSERT [clinic].[treatment_record] ([id], [treatment_id], [type], [treatment], [toothno], [toothsurface], [price]) VALUES (48, 32, N'Quadrant', N'Oral Prophylaxis - light to heavy', 0, N'All', 500)
INSERT [clinic].[treatment_record] ([id], [treatment_id], [type], [treatment], [toothno], [toothsurface], [price]) VALUES (49, 33, N'Post', N'Casted Dowel Post', 41, N'', 1000)
INSERT [clinic].[treatment_record] ([id], [treatment_id], [type], [treatment], [toothno], [toothsurface], [price]) VALUES (50, 33, N'Post', N'Casted Dowel Post', 13, N'', 1000)
INSERT [clinic].[treatment_record] ([id], [treatment_id], [type], [treatment], [toothno], [toothsurface], [price]) VALUES (51, 34, N'Post', N'Screw Dowel Post', 14, N'', 1000)
INSERT [clinic].[treatment_record] ([id], [treatment_id], [type], [treatment], [toothno], [toothsurface], [price]) VALUES (52, 35, N'Unit', N'Porcelain Fused to Gold Crown', 26, N'', 25000)
INSERT [clinic].[treatment_record] ([id], [treatment_id], [type], [treatment], [toothno], [toothsurface], [price]) VALUES (53, 36, N'Appliance', N'TMJ Appliance', 0, N'Upper', 5000)
INSERT [clinic].[treatment_record] ([id], [treatment_id], [type], [treatment], [toothno], [toothsurface], [price]) VALUES (54, 37, N'Appliance', N'TMJ Appliance', 0, N'Upper', 5000)
INSERT [clinic].[treatment_record] ([id], [treatment_id], [type], [treatment], [toothno], [toothsurface], [price]) VALUES (55, 38, N'Appliance', N'TMJ Appliance', 0, N'Upper', 5000)
INSERT [clinic].[treatment_record] ([id], [treatment_id], [type], [treatment], [toothno], [toothsurface], [price]) VALUES (56, 39, N'Appliance', N'TMJ Appliance', 0, N'Upper', 5000)
INSERT [clinic].[treatment_record] ([id], [treatment_id], [type], [treatment], [toothno], [toothsurface], [price]) VALUES (57, 40, N'Unclassified', N'Treatment of Oral Lessions, Sores', 0, N'', 200)
INSERT [clinic].[treatment_record] ([id], [treatment_id], [type], [treatment], [toothno], [toothsurface], [price]) VALUES (58, 40, N'Unclassified', N'Removal of Sutures', 0, N'', 0)
INSERT [clinic].[treatment_record] ([id], [treatment_id], [type], [treatment], [toothno], [toothsurface], [price]) VALUES (59, 41, N'Post', N'Screw Dowel Post', 13, N'', 1000)
INSERT [clinic].[treatment_record] ([id], [treatment_id], [type], [treatment], [toothno], [toothsurface], [price]) VALUES (60, 42, N'Quadrant', N'Oral Prophylaxis - light to heavy', 0, N'Lower left', 500)
INSERT [clinic].[treatment_record] ([id], [treatment_id], [type], [treatment], [toothno], [toothsurface], [price]) VALUES (61, 43, N'Quadrant', N'Oral Prophylaxis - light to heavy', 0, N'All', 500)
INSERT [clinic].[treatment_record] ([id], [treatment_id], [type], [treatment], [toothno], [toothsurface], [price]) VALUES (62, 44, N'Unclassified', N'Denture Relining', 0, N'', 1000)
INSERT [clinic].[treatment_record] ([id], [treatment_id], [type], [treatment], [toothno], [toothsurface], [price]) VALUES (63, 44, N'Unclassified', N'Simple Repair of Dentures', 0, N'', 500)
INSERT [clinic].[treatment_record] ([id], [treatment_id], [type], [treatment], [toothno], [toothsurface], [price]) VALUES (64, 45, N'Unit', N'Porcelain Fused to Metal Crown', 14, N'', 5000)
INSERT [clinic].[treatment_record] ([id], [treatment_id], [type], [treatment], [toothno], [toothsurface], [price]) VALUES (65, 46, N'Canal', N'Root Canal Treatment', 16, N'', 1500)
INSERT [clinic].[treatment_record] ([id], [treatment_id], [type], [treatment], [toothno], [toothsurface], [price]) VALUES (66, 47, N'Appliance', N'Retainer Functional', 0, N'Whole', 2500)
INSERT [clinic].[treatment_record] ([id], [treatment_id], [type], [treatment], [toothno], [toothsurface], [price]) VALUES (67, 48, N'Appliance', N'Retainer Functional', 0, N'Whole', 2500)
INSERT [clinic].[treatment_record] ([id], [treatment_id], [type], [treatment], [toothno], [toothsurface], [price]) VALUES (68, 49, N'Arch', N'SuperSoft Complete Denture', 18, N'', 10000)
INSERT [clinic].[treatment_record] ([id], [treatment_id], [type], [treatment], [toothno], [toothsurface], [price]) VALUES (69, 50, N'Post', N'Casted Dowel Post', 17, N'', 1000)
INSERT [clinic].[treatment_record] ([id], [treatment_id], [type], [treatment], [toothno], [toothsurface], [price]) VALUES (70, 51, N'Tooth', N'Pits and Fissure Sealant', 24, N'Labial', 400)
INSERT [clinic].[treatment_record] ([id], [treatment_id], [type], [treatment], [toothno], [toothsurface], [price]) VALUES (71, 52, N'Tooth', N'Simple Tooth Extraction –anterior/posterior', 25, N'Mesial', 500)
INSERT [clinic].[treatment_record] ([id], [treatment_id], [type], [treatment], [toothno], [toothsurface], [price]) VALUES (72, 52, N'Tooth', N'Temporary Fillings', 15, N'Mesial', 200)
INSERT [clinic].[treatment_record] ([id], [treatment_id], [type], [treatment], [toothno], [toothsurface], [price]) VALUES (73, 53, N'Tooth', N'Light Cure Composite Fillings', 16, N'Mesial', 400)
INSERT [clinic].[treatment_record] ([id], [treatment_id], [type], [treatment], [toothno], [toothsurface], [price]) VALUES (74, 54, N'Tooth', N'Pits and Fissure Sealant', 15, N'Mesial', 400)
INSERT [clinic].[treatment_record] ([id], [treatment_id], [type], [treatment], [toothno], [toothsurface], [price]) VALUES (75, 55, N'Unclassified', N'Simple Repair of Dentures', 0, N'', 500)
INSERT [clinic].[treatment_record] ([id], [treatment_id], [type], [treatment], [toothno], [toothsurface], [price]) VALUES (76, 55, N'Unclassified', N'Denture Relining', 0, N'', 1000)
INSERT [clinic].[treatment_record] ([id], [treatment_id], [type], [treatment], [toothno], [toothsurface], [price]) VALUES (77, 56, N'Canal', N'Root Canal Treatment', 16, N'', 1500)
INSERT [clinic].[treatment_record] ([id], [treatment_id], [type], [treatment], [toothno], [toothsurface], [price]) VALUES (78, 57, N'Arch', N'Complete/Full Denture -plastic pontic', 28, N'', 3500)
INSERT [clinic].[treatment_record] ([id], [treatment_id], [type], [treatment], [toothno], [toothsurface], [price]) VALUES (79, 58, N'Quadrant', N'Flouride Treatment', 0, N'All', 400)
INSERT [clinic].[treatment_record] ([id], [treatment_id], [type], [treatment], [toothno], [toothsurface], [price]) VALUES (80, 59, N'Canal', N'Root Canal Treatment', 26, N'', 1500)
INSERT [clinic].[treatment_record] ([id], [treatment_id], [type], [treatment], [toothno], [toothsurface], [price]) VALUES (81, 60, N'Post', N'Screw Dowel Post', 16, N'', 1000)
INSERT [clinic].[treatment_record] ([id], [treatment_id], [type], [treatment], [toothno], [toothsurface], [price]) VALUES (82, 61, N'Tooth', N'Tooth Lamination', 31, N'Mesial', 500)
INSERT [clinic].[treatment_record] ([id], [treatment_id], [type], [treatment], [toothno], [toothsurface], [price]) VALUES (83, 62, N'Quadrant', N'Oral Prophylaxis - light to heavy', 0, N'All', 500)
INSERT [clinic].[treatment_record] ([id], [treatment_id], [type], [treatment], [toothno], [toothsurface], [price]) VALUES (84, 63, N'Post', N'Casted Dowel Post', 47, N'', 1000)
SET IDENTITY_INSERT [clinic].[treatment_record] OFF
SET IDENTITY_INSERT [clinic].[users] ON 

INSERT [clinic].[users] ([user_id], [username], [password], [firstname], [middlename], [lastname], [type]) VALUES (1, N'admin', N'21232f297a57a5a743894a0e4a801fc3', N'John', N'The', N'Doe', 2)
INSERT [clinic].[users] ([user_id], [username], [password], [firstname], [middlename], [lastname], [type]) VALUES (10, N'johng', N'5f4dcc3b5aa765d61d8327deb882cf99', N'John', N'B', N'Gayatin', 0)
INSERT [clinic].[users] ([user_id], [username], [password], [firstname], [middlename], [lastname], [type]) VALUES (11, N'cynhtiag', N'5f4dcc3b5aa765d61d8327deb882cf99', N'Cynthia', N'B', N'Gayatin', 0)
INSERT [clinic].[users] ([user_id], [username], [password], [firstname], [middlename], [lastname], [type]) VALUES (12, N'liza', N'5f4dcc3b5aa765d61d8327deb882cf99', N'Liza', N'Sobs', N'Gungpilartian', 1)
SET IDENTITY_INSERT [clinic].[users] OFF
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'allergies' , @level0type=N'SCHEMA',@level0name=N'clinic', @level1type=N'TABLE',@level1name=N'allergies'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'appointment' , @level0type=N'SCHEMA',@level0name=N'clinic', @level1type=N'TABLE',@level1name=N'appointment'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'chronicailments' , @level0type=N'SCHEMA',@level0name=N'clinic', @level1type=N'TABLE',@level1name=N'chronicailments'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'closeddates' , @level0type=N'SCHEMA',@level0name=N'clinic', @level1type=N'TABLE',@level1name=N'closeddates'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'drugstaken' , @level0type=N'SCHEMA',@level0name=N'clinic', @level1type=N'TABLE',@level1name=N'drugstaken'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'patients' , @level0type=N'SCHEMA',@level0name=N'clinic', @level1type=N'TABLE',@level1name=N'patients'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'payment_history' , @level0type=N'SCHEMA',@level0name=N'clinic', @level1type=N'TABLE',@level1name=N'payment_history'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'services' , @level0type=N'SCHEMA',@level0name=N'clinic', @level1type=N'TABLE',@level1name=N'services'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'teethprofile' , @level0type=N'SCHEMA',@level0name=N'clinic', @level1type=N'TABLE',@level1name=N'teethprofile'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'timeslot' , @level0type=N'SCHEMA',@level0name=N'clinic', @level1type=N'TABLE',@level1name=N'timeslot'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'transaction' , @level0type=N'SCHEMA',@level0name=N'clinic', @level1type=N'TABLE',@level1name=N'transaction'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'treatment' , @level0type=N'SCHEMA',@level0name=N'clinic', @level1type=N'TABLE',@level1name=N'treatment'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'treatment_record' , @level0type=N'SCHEMA',@level0name=N'clinic', @level1type=N'TABLE',@level1name=N'treatment_record'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'users' , @level0type=N'SCHEMA',@level0name=N'clinic', @level1type=N'TABLE',@level1name=N'users'
GO
