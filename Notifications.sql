USE [TMF656]
GO

/****** Object:  Table [dbo].[Notifications]    Script Date: 10/30/2020 9:09:53 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Notifications](
	[id] [uniqueidentifier] NOT NULL,
	[timereceived] [datetime] NOT NULL,
	[eventId] [varchar](50) NULL,
	[eventTime] [varchar](50) NULL,
	[eventType] [varchar](max) NULL,
	[fieldPath] [varchar](max) NULL,
	[resourcePath] [varchar](max) NULL,
	[event] [varchar](max) NULL,
	[listener] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Notifications] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

ALTER TABLE [dbo].[Notifications] ADD  CONSTRAINT [DF_Notifications_id]  DEFAULT (newid()) FOR [id]
GO

