USE [TMF656]
GO

/****** Object:  Table [dbo].[ServiceProblem2ServiceProblem]    Script Date: 10/30/2020 9:15:30 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ServiceProblem2ServiceProblem](
	[id] [uniqueidentifier] NOT NULL,
	[ParentProblem] [uniqueidentifier] NULL,
	[UnderlyingProblem] [uniqueidentifier] NULL,
	[parent_external_id] [varchar](max) NULL,
	[parent_external_href] [varchar](max) NULL,
	[underlying_external_id] [varchar](max) NULL,
	[underlying_external_href] [varchar](max) NULL,
 CONSTRAINT [PK_ServiceProblem2ServiceProblem] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

ALTER TABLE [dbo].[ServiceProblem2ServiceProblem] ADD  CONSTRAINT [DF_ServiceProblem2ServiceProblem_id]  DEFAULT (newid()) FOR [id]
GO

ALTER TABLE [dbo].[ServiceProblem2ServiceProblem]  WITH CHECK ADD  CONSTRAINT [FK_ServiceProblem2ServiceProblem_ServiceProblem] FOREIGN KEY([ParentProblem])
REFERENCES [dbo].[ServiceProblem] ([id])
GO

ALTER TABLE [dbo].[ServiceProblem2ServiceProblem] CHECK CONSTRAINT [FK_ServiceProblem2ServiceProblem_ServiceProblem]
GO

ALTER TABLE [dbo].[ServiceProblem2ServiceProblem]  WITH CHECK ADD  CONSTRAINT [FK_ServiceProblem2ServiceProblem_ServiceProblem1] FOREIGN KEY([UnderlyingProblem])
REFERENCES [dbo].[ServiceProblem] ([id])
GO

ALTER TABLE [dbo].[ServiceProblem2ServiceProblem] CHECK CONSTRAINT [FK_ServiceProblem2ServiceProblem_ServiceProblem1]
GO

