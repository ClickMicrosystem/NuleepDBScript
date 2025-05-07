USE [Nuleep_db]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CareerJourney](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NextRole] [nvarchar](255) NULL,
	[Description] [nvarchar](max) NULL,
	[JobSeekerId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[CareerJourney]  WITH CHECK ADD  CONSTRAINT [FK_CareerJourney_JobSeeker] FOREIGN KEY([JobSeekerId])
REFERENCES [dbo].[JobSeekers] ([Id])
GO

ALTER TABLE [dbo].[CareerJourney] CHECK CONSTRAINT [FK_CareerJourney_JobSeeker]
GO


