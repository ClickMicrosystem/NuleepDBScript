USE [Nuleep_db]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Jobs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PositionTitle] [nvarchar](255) NOT NULL,
	[Experience] [nvarchar](255) NULL,
	[Location] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Department] [nvarchar](255) NULL,
	[Requirements] [nvarchar](max) NULL,
	[SkillKeywords] [nvarchar](max) NOT NULL,
	[JobType] [nvarchar](255) NULL,
	[SalaryType] [nvarchar](255) NULL,
	[Salary] [decimal](18, 2) NULL,
	[Remote] [nvarchar](255) NULL,
	[RequisitionNumber] [nvarchar](255) NULL,
	[PostingDate] [datetime] NULL,
	[ClosingDate] [datetime] NULL,
	[CompanyContact] [nvarchar](255) NULL,
	[CompanyEmail] [nvarchar](255) NULL,
	[OrganizationId] [int] NULL,
	[RecruiterId] [int] NULL,
	[Program] [nvarchar](255) NULL,
	[ExperienceLevel] [nvarchar](255) NULL,
	[NuleepID] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[Jobs]  WITH CHECK ADD  CONSTRAINT [FK_Jobs_RecruiterId] FOREIGN KEY([RecruiterId])
REFERENCES [dbo].[Recruiters] ([Id])
GO

ALTER TABLE [dbo].[Jobs] CHECK CONSTRAINT [FK_Jobs_RecruiterId]
GO


