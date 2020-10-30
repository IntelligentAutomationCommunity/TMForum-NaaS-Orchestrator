USE [TMF656]
GO

/****** Object:  Table [dbo].[ServiceProblem2Resource]    Script Date: 10/30/2020 9:14:41 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ServiceProblem2Resource](
	[id] [uniqueidentifier] NOT NULL,
	[ServiceProblem] [uniqueidentifier] NOT NULL,
	[Resource] [uniqueidentifier] NULL,
	[RelationshipType] [varchar](50) NOT NULL,
	[external_id] [varchar](max) NULL,
	[external_href] [varchar](max) NULL,
 CONSTRAINT [PK_ServiceProblem2AffectedResource] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

ALTER TABLE [dbo].[ServiceProblem2Resource] ADD  CONSTRAINT [DF_ServiceProblem2AffectedResource_id]  DEFAULT (newid()) FOR [id]
GO

ALTER TABLE [dbo].[ServiceProblem2Resource]  WITH CHECK ADD  CONSTRAINT [FK_ServiceProblem2Resource_Resource] FOREIGN KEY([Resource])
REFERENCES [dbo].[Resource] ([id])
GO

ALTER TABLE [dbo].[ServiceProblem2Resource] CHECK CONSTRAINT [FK_ServiceProblem2Resource_Resource]
GO

ALTER TABLE [dbo].[ServiceProblem2Resource]  WITH CHECK ADD  CONSTRAINT [FK_ServiceProblem2Resource_ServiceProblem] FOREIGN KEY([ServiceProblem])
REFERENCES [dbo].[ServiceProblem] ([id])
GO

ALTER TABLE [dbo].[ServiceProblem2Resource] CHECK CONSTRAINT [FK_ServiceProblem2Resource_ServiceProblem]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'AFFECTED or ROOT_CAUSE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ServiceProblem2Resource', @level2type=N'COLUMN',@level2name=N'RelationshipType'
GO

