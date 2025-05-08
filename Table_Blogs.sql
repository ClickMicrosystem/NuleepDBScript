USE [Nuleep_db]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Blogs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](255) NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
	[EditedById] [int] NULL,
	[BlogImg_FileName] [nvarchar](255) NULL,
	[BlogImg_BlobName] [nvarchar](255) NULL,
	[BlogImg_FullUrl] [nvarchar](255) NULL,
	[ContentMark] [nvarchar](50) NOT NULL,
	[IsPublished] [bit] NOT NULL,
	[PublishDate] [datetime] NULL,
	[CreatedAt] [datetime] NOT NULL,
	[UpdatedAt] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[Blogs] ADD  DEFAULT ('both') FOR [ContentMark]
GO

ALTER TABLE [dbo].[Blogs] ADD  DEFAULT ((0)) FOR [IsPublished]
GO

ALTER TABLE [dbo].[Blogs] ADD  DEFAULT (getutcdate()) FOR [CreatedAt]
GO

ALTER TABLE [dbo].[Blogs] ADD  DEFAULT (getutcdate()) FOR [UpdatedAt]
GO

ALTER TABLE [dbo].[Blogs]  WITH CHECK ADD  CONSTRAINT [FK_Blogs_ProfileId] FOREIGN KEY([EditedById])
REFERENCES [dbo].[Profile] ([Id])
GO

ALTER TABLE [dbo].[Blogs] CHECK CONSTRAINT [FK_Blogs_ProfileId]
GO


