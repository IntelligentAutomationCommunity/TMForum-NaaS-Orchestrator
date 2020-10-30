USE [TMF-Catalyst]
GO

/****** Object:  Table [dbo].[Inventory]    Script Date: 10/30/2020 9:16:39 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Inventory](
	[UnderlyingResourceType] [varchar](max) NOT NULL,
	[UnderlyingResourceId] [varchar](max) NOT NULL,
	[AffectedObjectType] [varchar](max) NOT NULL,
	[AffectedObjectId] [varchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

