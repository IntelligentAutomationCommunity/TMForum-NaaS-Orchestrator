USE [TMF656]
GO

/****** Object:  Table [dbo].[Event]    Script Date: 10/30/2020 9:05:30 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Event](
	[id] [uniqueidentifier] NOT NULL,
	[eventTime] [datetime] NOT NULL,
	[eventType] [varchar](max) NOT NULL,
	[notification] [varchar](max) NOT NULL,
	[fieldPath] [varchar](50) NULL,
	[resourcePath] [varchar](50) NULL,
	[row] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Event] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

ALTER TABLE [dbo].[Event] ADD  CONSTRAINT [DF_Event_id]  DEFAULT (newid()) FOR [id]
GO

ALTER TABLE [dbo].[Event] ADD  CONSTRAINT [DF_Event_eventTime]  DEFAULT (sysdatetime()) FOR [eventTime]
GO

