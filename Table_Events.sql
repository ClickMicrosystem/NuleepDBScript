USE [Nuleep_db]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Events](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](255) NULL,
	[Summary] [nvarchar](255) NULL,
	[Description] [nvarchar](max) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[Price] [decimal](18, 2) NULL,
	[TeleconferenceLink] [nvarchar](255) NULL,
	[EventPhysicalAddress] [nvarchar](255) NULL,
	[Location] [nvarchar](255) NULL,
	[EventImgFileName] [nvarchar](255) NULL,
	[EventImgBlobName] [nvarchar](255) NULL,
	[EventImgFullUrl] [nvarchar](255) NULL,
	[IsDelete] [bit] NULL,
	[IsNotify] [bit] NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[Events] ADD  DEFAULT ((0)) FOR [IsDelete]
GO

ALTER TABLE [dbo].[Events] ADD  DEFAULT ((0)) FOR [IsNotify]
GO

ALTER TABLE [dbo].[Events] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO

ALTER TABLE [dbo].[Events] ADD  DEFAULT (getdate()) FOR [UpdatedAt]
GO


