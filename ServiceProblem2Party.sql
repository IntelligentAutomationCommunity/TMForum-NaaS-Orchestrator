USE [TMF656]
GO

/****** Object:  Table [dbo].[ServiceProblem2Party]    Script Date: 10/30/2020 9:13:38 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ServiceProblem2Party](
	[id] [uniqueidentifier] NOT NULL,
	[ServiceProblem] [uniqueidentifier] NOT NULL,
	[Party] [uniqueidentifier] NULL,
	[RelationshipType] [varchar](max) NOT NULL,
	[external_id] [varchar](max) NULL,
	[external_href] [varchar](max) NULL,
 CONSTRAINT [PK_ServiceProblem2Party] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

ALTER TABLE [dbo].[ServiceProblem2Party] ADD  CONSTRAINT [DF_ServiceProblem2Party_id]  DEFAULT (newid()) FOR [id]
GO

ALTER TABLE [dbo].[ServiceProblem2Party]  WITH CHECK ADD  CONSTRAINT [FK_ServiceProblem2Party_Party] FOREIGN KEY([Party])
REFERENCES [dbo].[Party] ([id])
GO

ALTER TABLE [dbo].[ServiceProblem2Party] CHECK CONSTRAINT [FK_ServiceProblem2Party_Party]
GO

ALTER TABLE [dbo].[ServiceProblem2Party]  WITH CHECK ADD  CONSTRAINT [FK_ServiceProblem2Party_ServiceProblem] FOREIGN KEY([ServiceProblem])
REFERENCES [dbo].[ServiceProblem] ([id])
GO

ALTER TABLE [dbo].[ServiceProblem2Party] CHECK CONSTRAINT [FK_ServiceProblem2Party_ServiceProblem]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Values allowed: ORIGINATOR, RELATED, RESPONSIBLE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ServiceProblem2Party', @level2type=N'COLUMN',@level2name=N'RelationshipType'
GO

