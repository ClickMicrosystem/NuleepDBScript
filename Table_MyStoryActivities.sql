USE [Nuleep_db]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[MyStoryActivities](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MyStoryId] [int] NOT NULL,
	[Title] [nvarchar](255) NULL,
	[ImageBlobName] [nvarchar](255) NULL,
	[ImageFullUrl] [nvarchar](1024) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[MyStoryActivities]  WITH CHECK ADD  CONSTRAINT [FK_MyStoryActivities_MyStory] FOREIGN KEY([MyStoryId])
REFERENCES [dbo].[MyStory] ([Id])
GO

ALTER TABLE [dbo].[MyStoryActivities] CHECK CONSTRAINT [FK_MyStoryActivities_MyStory]
GO


