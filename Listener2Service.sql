USE [TMF656]
GO

/****** Object:  Table [dbo].[Listener2Service]    Script Date: 10/30/2020 9:08:55 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Listener2Service](
	[id] [uniqueidentifier] NOT NULL,
	[Listener] [uniqueidentifier] NOT NULL,
	[Service] [uniqueidentifier] NOT NULL,
	[RelationshipType] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Listener2Service] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Listener2Service] ADD  CONSTRAINT [DF_Listener2Service_id]  DEFAULT (newid()) FOR [id]
GO

