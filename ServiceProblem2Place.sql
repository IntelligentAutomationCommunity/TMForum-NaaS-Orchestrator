USE [TMF656]
GO

/****** Object:  Table [dbo].[ServiceProblem2Place]    Script Date: 10/30/2020 9:14:07 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ServiceProblem2Place](
	[id] [uniqueidentifier] NOT NULL,
	[ServiceProblem] [uniqueidentifier] NOT NULL,
	[Place] [uniqueidentifier] NULL,
	[RelationshipType] [varchar](50) NOT NULL,
	[external_id] [varchar](max) NULL,
	[external_href] [varchar](max) NULL,
 CONSTRAINT [PK_ServiceProblem2AffectedLocation] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

ALTER TABLE [dbo].[ServiceProblem2Place] ADD  CONSTRAINT [DF_ServiceProblem2AffectedLocation_id]  DEFAULT (newid()) FOR [id]
GO

ALTER TABLE [dbo].[ServiceProblem2Place]  WITH CHECK ADD  CONSTRAINT [FK_ServiceProblem2AffectedLocation_Place] FOREIGN KEY([Place])
REFERENCES [dbo].[Place] ([id])
GO

ALTER TABLE [dbo].[ServiceProblem2Place] CHECK CONSTRAINT [FK_ServiceProblem2AffectedLocation_Place]
GO

ALTER TABLE [dbo].[ServiceProblem2Place]  WITH CHECK ADD  CONSTRAINT [FK_ServiceProblem2AffectedLocation_ServiceProblem] FOREIGN KEY([ServiceProblem])
REFERENCES [dbo].[ServiceProblem] ([id])
GO

ALTER TABLE [dbo].[ServiceProblem2Place] CHECK CONSTRAINT [FK_ServiceProblem2AffectedLocation_ServiceProblem]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Values allowed; AFFECTED_LOCATION' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ServiceProblem2Place', @level2type=N'COLUMN',@level2name=N'RelationshipType'
GO

