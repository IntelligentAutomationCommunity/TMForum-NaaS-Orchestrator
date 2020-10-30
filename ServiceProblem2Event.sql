USE [TMF656]
GO

/****** Object:  Table [dbo].[ServiceProblem2Event]    Script Date: 10/30/2020 9:13:12 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ServiceProblem2Event](
	[id] [uniqueidentifier] NOT NULL,
	[ServiceProblem] [uniqueidentifier] NOT NULL,
	[Event] [uniqueidentifier] NULL,
	[external_id] [varchar](max) NULL,
	[external_href] [varchar](max) NULL,
	[RelationshipType] [varchar](max) NOT NULL,
 CONSTRAINT [PK_ServiceProblem2Event] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

ALTER TABLE [dbo].[ServiceProblem2Event] ADD  CONSTRAINT [DF_ServiceProblem2Event_id]  DEFAULT (newid()) FOR [id]
GO

