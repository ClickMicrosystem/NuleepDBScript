USE [Nuleep_db]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[JobSeekers](
	[Id] [int] NOT NULL,
	[Bio] [nvarchar](max) NULL,
	[HeaderImageFileName] [nvarchar](255) NULL,
	[HeaderImageBlobName] [nvarchar](255) NULL,
	[HeaderImageFullUrl] [nvarchar](max) NULL,
	[CurrentCompany] [nvarchar](255) NULL,
	[Remote] [bit] NULL,
	[WebsiteUrl] [nvarchar](255) NULL,
	[CareerPath] [nvarchar](255) NULL,
	[StreetAddress] [nvarchar](255) NULL,
	[CountryRegion] [nvarchar](100) NULL,
	[City] [nvarchar](100) NULL,
	[StateProvince] [nvarchar](100) NULL,
	[ZipPostal] [nvarchar](20) NULL,
	[Skills] [nvarchar](max) NULL,
	[classes] [varchar](50) NULL,
	[ProfileId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[JobSeekers] ADD  DEFAULT ((0)) FOR [Remote]
GO

ALTER TABLE [dbo].[JobSeekers]  WITH CHECK ADD  CONSTRAINT [FK_JobSeekers_Profile] FOREIGN KEY([ProfileId])
REFERENCES [dbo].[Profile] ([Id])
GO

ALTER TABLE [dbo].[JobSeekers] CHECK CONSTRAINT [FK_JobSeekers_Profile]
GO


