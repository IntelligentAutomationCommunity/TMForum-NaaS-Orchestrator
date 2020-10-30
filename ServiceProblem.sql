USE [TMF656]
GO

/****** Object:  Table [dbo].[ServiceProblem]    Script Date: 10/30/2020 9:12:21 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ServiceProblem](
	[id] [uniqueidentifier] NOT NULL,
	[category] [varchar](max) NOT NULL,
	[correlationId] [varchar](max) NULL,
	[description] [varchar](max) NOT NULL,
	[impactImportanceFactor] [varchar](max) NULL,
	[originatingSystem] [varchar](max) NOT NULL,
	[priority] [int] NOT NULL,
	[problemEscalation] [varchar](50) NULL,
	[reason] [varchar](max) NULL,
	[resolutionDate] [datetime2](7) NULL,
	[status] [varchar](50) NOT NULL,
	[statusChangeDate] [datetime] NOT NULL,
	[statusChangeReason] [varchar](max) NOT NULL,
	[timeChanged] [datetime] NULL,
	[timeRaised] [datetime] NOT NULL,
	[type] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ServiceProblem] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

ALTER TABLE [dbo].[ServiceProblem] ADD  CONSTRAINT [DF_ServiceProblem_id]  DEFAULT (newid()) FOR [id]
GO

ALTER TABLE [dbo].[ServiceProblem] ADD  CONSTRAINT [DF_ServiceProblem_status]  DEFAULT ('SUBMITTED') FOR [status]
GO

ALTER TABLE [dbo].[ServiceProblem] ADD  CONSTRAINT [DF_ServiceProblem_statusChangeDate]  DEFAULT (sysdatetime()) FOR [statusChangeDate]
GO

ALTER TABLE [dbo].[ServiceProblem] ADD  CONSTRAINT [DF_ServiceProblem_timeRaised]  DEFAULT (sysdatetime()) FOR [timeRaised]
GO

