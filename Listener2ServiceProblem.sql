USE [TMF656]
GO

/****** Object:  Table [dbo].[Listener2ServiceProblem]    Script Date: 10/30/2020 9:09:29 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Listener2ServiceProblem](
	[id] [uniqueidentifier] NOT NULL,
	[Listener] [uniqueidentifier] NOT NULL,
	[ServiceProblem] [uniqueidentifier] NOT NULL,
	[RelationshipType] [varchar](50) NULL,
 CONSTRAINT [PK_Listener2ServiceProblem] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Listener2ServiceProblem] ADD  CONSTRAINT [DF_Listener2ServiceProblem_id]  DEFAULT (newid()) FOR [id]
GO

