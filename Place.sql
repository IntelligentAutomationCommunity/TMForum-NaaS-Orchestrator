USE [TMF656]
GO

/****** Object:  Table [dbo].[Place]    Script Date: 10/30/2020 9:11:07 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Place](
	[id] [uniqueidentifier] NOT NULL,
	[name] [varchar](max) NOT NULL,
	[role] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Place] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

ALTER TABLE [dbo].[Place] ADD  CONSTRAINT [DF_Place_id]  DEFAULT (newid()) FOR [id]
GO

