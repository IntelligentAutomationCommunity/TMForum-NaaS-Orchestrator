USE [TMF-Catalyst]
GO

/****** Object:  Table [dbo].[Alarms]    Script Date: 10/30/2020 9:16:12 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Alarms](
	[alarmType] [varchar](max) NOT NULL,
	[deviceid] [varchar](max) NOT NULL,
	[portid] [varchar](max) NOT NULL,
	[nmsid] [varchar](max) NOT NULL,
	[serviceproblemid] [uniqueidentifier] NOT NULL,
	[timeraised] [datetime] NOT NULL,
	[timecleared] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

