USE [Nuleep_db]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CareerJourneyExperience](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CareerJourneyId] [int] NOT NULL,
	[Experience] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[CareerJourneyExperience]  WITH CHECK ADD  CONSTRAINT [FK_CareerJourneyExperience_CJ] FOREIGN KEY([CareerJourneyId])
REFERENCES [dbo].[CareerJourney] ([Id])
GO

ALTER TABLE [dbo].[CareerJourneyExperience] CHECK CONSTRAINT [FK_CareerJourneyExperience_CJ]
GO


