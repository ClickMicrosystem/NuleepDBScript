USE [Nuleep_db]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Recruiters](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Phone] [nvarchar](50) NULL,
	[CreatedAt] [datetime] NULL,
	[About] [nvarchar](max) NULL,
	[Bio] [nvarchar](max) NULL,
	[StreetAddress] [nvarchar](255) NULL,
	[Title] [nvarchar](255) NULL,
	[OrganizationRole] [nvarchar](50) NULL,
	[OrganizationApproved] [bit] NULL,
	[ProfileId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[Recruiters] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO

ALTER TABLE [dbo].[Recruiters] ADD  DEFAULT ('unapproved') FOR [OrganizationRole]
GO

ALTER TABLE [dbo].[Recruiters] ADD  DEFAULT ((0)) FOR [OrganizationApproved]
GO

ALTER TABLE [dbo].[Recruiters]  WITH CHECK ADD  CONSTRAINT [FK_Recruiters_Profile] FOREIGN KEY([ProfileId])
REFERENCES [dbo].[Profile] ([Id])
GO

ALTER TABLE [dbo].[Recruiters] CHECK CONSTRAINT [FK_Recruiters_Profile]
GO

ALTER TABLE [dbo].[Recruiters]  WITH CHECK ADD CHECK  (([OrganizationRole]='unapproved' OR [OrganizationRole]='user' OR [OrganizationRole]='admin'))
GO


