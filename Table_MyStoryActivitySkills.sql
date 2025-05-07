USE [Nuleep_db]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[MyStoryActivitySkills](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ActivityId] [int] NOT NULL,
	[Skill] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[MyStoryActivitySkills]  WITH CHECK ADD  CONSTRAINT [FK_MyStoryActivitySkills_Activity] FOREIGN KEY([ActivityId])
REFERENCES [dbo].[MyStoryActivities] ([Id])
GO

ALTER TABLE [dbo].[MyStoryActivitySkills] CHECK CONSTRAINT [FK_MyStoryActivitySkills_Activity]
GO


