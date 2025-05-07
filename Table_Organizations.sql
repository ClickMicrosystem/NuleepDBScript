USE [Nuleep_db]
GO

/****** Object:  Table [dbo].[Organizations]    Script Date: 07-May-25 03:47:35 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Organizations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[OrgCode] [nvarchar](50) NULL,
	[About] [nvarchar](max) NULL,
	[StreetAddress] [nvarchar](255) NULL,
	[CountryRegion] [nvarchar](100) NULL,
	[StateProvince] [nvarchar](100) NULL,
	[ZipPostal] [nvarchar](20) NULL,
	[City] [nvarchar](100) NULL,
	[Email] [nvarchar](255) NOT NULL,
	[Tel] [nvarchar](50) NULL,
	[Culture] [nvarchar](max) NULL,
	[Mission] [nvarchar](max) NULL,
	[TeamSize] [nvarchar](50) NULL,
	[Verified] [bit] NULL,
	[SendOwnership] [bit] NULL,
	[OrgImageFileName] [nvarchar](255) NULL,
	[OrgImageBlobName] [nvarchar](255) NULL,
	[OrgImageFullUrl] [nvarchar](max) NULL,
	[ProfileId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[Organizations] ADD  DEFAULT ((0)) FOR [Verified]
GO

ALTER TABLE [dbo].[Organizations] ADD  DEFAULT ((0)) FOR [SendOwnership]
GO

ALTER TABLE [dbo].[Organizations]  WITH CHECK ADD  CONSTRAINT [FK_Organizations_Profile] FOREIGN KEY([ProfileId])
REFERENCES [dbo].[Profile] ([Id])
GO

ALTER TABLE [dbo].[Organizations] CHECK CONSTRAINT [FK_Organizations_Profile]
GO


