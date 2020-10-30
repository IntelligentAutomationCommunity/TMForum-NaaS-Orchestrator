USE [TMF656]
GO

/****** Object:  Table [dbo].[ServiceProblem2Alarm]    Script Date: 10/30/2020 9:12:47 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ServiceProblem2Alarm](
	[id] [uniqueidentifier] NOT NULL,
	[ServiceProblem] [uniqueidentifier] NOT NULL,
	[external_id] [varchar](max) NOT NULL,
	[external_href] [varchar](max) NOT NULL,
	[RelationshipType] [varchar](max) NOT NULL,
 CONSTRAINT [PK_ServiceProblem2Alarm] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

ALTER TABLE [dbo].[ServiceProblem2Alarm] ADD  CONSTRAINT [DF_ServiceProblem2Alarm_id]  DEFAULT (newid()) FOR [id]
GO

ALTER TABLE [dbo].[ServiceProblem2Alarm]  WITH CHECK ADD  CONSTRAINT [FK_ServiceProblem2Alarm_ServiceProblem] FOREIGN KEY([ServiceProblem])
REFERENCES [dbo].[ServiceProblem] ([id])
GO

ALTER TABLE [dbo].[ServiceProblem2Alarm] CHECK CONSTRAINT [FK_ServiceProblem2Alarm_ServiceProblem]
GO

