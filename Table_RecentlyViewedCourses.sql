USE [Nuleep_db]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[RecentlyViewedCourses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProfileId] [int] NOT NULL,
	[CourseId] [int] NULL,
	[Title] [nvarchar](255) NULL,
	[Image] [nvarchar](1024) NULL,
	[Url] [nvarchar](1024) NULL,
	[Rating] [float] NULL,
	[Duration] [nvarchar](50) NULL,
	[Provider] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RecentlyViewedCourses]  WITH CHECK ADD  CONSTRAINT [FK_RecentlyViewedCourses_Profile] FOREIGN KEY([ProfileId])
REFERENCES [dbo].[Profile] ([Id])
GO

ALTER TABLE [dbo].[RecentlyViewedCourses] CHECK CONSTRAINT [FK_RecentlyViewedCourses_Profile]
GO


