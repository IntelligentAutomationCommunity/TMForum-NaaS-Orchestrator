USE [TMF656]
GO

/****** Object:  Table [dbo].[Listener]    Script Date: 10/30/2020 9:07:28 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Listener](
	[id] [uniqueidentifier] NOT NULL,
	[callback] [varchar](max) NOT NULL,
	[query] [varchar](max) NOT NULL,
	[insertTime] [datetime2](7) NOT NULL,
	[deleteTime] [datetime2](7) NULL,
 CONSTRAINT [PK_Listener] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

ALTER TABLE [dbo].[Listener] ADD  CONSTRAINT [DF_Listeners_id]  DEFAULT (newid()) FOR [id]
GO

ALTER TABLE [dbo].[Listener] ADD  CONSTRAINT [DF_Listener_insertTime]  DEFAULT (sysdatetime()) FOR [insertTime]
GO

