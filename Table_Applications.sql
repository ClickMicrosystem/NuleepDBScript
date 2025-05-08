USE [Nuleep_db]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Applications](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedAt] [datetime] NOT NULL,
	[Status] [nvarchar](50) NOT NULL,
	[JobId] [int] NOT NULL,
	[ProfileId] [int] NOT NULL,
	[IsSaved] [bit] NULL,
	[IsArchived] [bit] NULL,
	[IsRemoved] [bit] NULL,
	[CoverLetter] [nvarchar](max) NULL,
	[Timeline] [nvarchar](max) NULL,
	[Skills] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[Applications] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO

ALTER TABLE [dbo].[Applications] ADD  DEFAULT ('Submitted') FOR [Status]
GO

ALTER TABLE [dbo].[Applications] ADD  DEFAULT ((0)) FOR [IsSaved]
GO

ALTER TABLE [dbo].[Applications] ADD  DEFAULT ((0)) FOR [IsArchived]
GO

ALTER TABLE [dbo].[Applications] ADD  DEFAULT ((0)) FOR [IsRemoved]
GO

ALTER TABLE [dbo].[Applications]  WITH CHECK ADD CHECK  (([Status]='Disqualified' OR [Status]='Offer Accepted' OR [Status]='Offer Made' OR [Status]='Interviewed' OR [Status]='Screened' OR [Status]='Submitted'))
GO


