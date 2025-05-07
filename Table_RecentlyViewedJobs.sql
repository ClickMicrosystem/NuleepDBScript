USE [Nuleep_db]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[RecentlyViewedJobs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProfileId] [int] NOT NULL,
	[JobId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RecentlyViewedJobs]  WITH CHECK ADD  CONSTRAINT [FK_RecentlyViewedJobs_Job] FOREIGN KEY([JobId])
REFERENCES [dbo].[Jobs] ([Id])
GO

ALTER TABLE [dbo].[RecentlyViewedJobs] CHECK CONSTRAINT [FK_RecentlyViewedJobs_Job]
GO

ALTER TABLE [dbo].[RecentlyViewedJobs]  WITH CHECK ADD  CONSTRAINT [FK_RecentlyViewedJobs_Profile] FOREIGN KEY([ProfileId])
REFERENCES [dbo].[Profile] ([Id])
GO

ALTER TABLE [dbo].[RecentlyViewedJobs] CHECK CONSTRAINT [FK_RecentlyViewedJobs_Profile]
GO


