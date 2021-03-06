USE [TMF656]
GO

/****** Object:  Table [dbo].[Party]    Script Date: 10/30/2020 9:10:42 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Party](
	[id] [uniqueidentifier] NOT NULL,
	[name] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Party] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

ALTER TABLE [dbo].[Party] ADD  CONSTRAINT [DF_Party_id]  DEFAULT (newid()) FOR [id]
GO

