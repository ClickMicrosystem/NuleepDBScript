USE [Nuleep_db]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[RegisteredUsers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EventId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[PaymentId] [nvarchar](255) NULL,
	[IsRefunded] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RegisteredUsers] ADD  DEFAULT ((0)) FOR [IsRefunded]
GO

ALTER TABLE [dbo].[RegisteredUsers]  WITH CHECK ADD  CONSTRAINT [FK_RegisteredUsers_Events] FOREIGN KEY([EventId])
REFERENCES [dbo].[Events] ([Id])
GO

ALTER TABLE [dbo].[RegisteredUsers] CHECK CONSTRAINT [FK_RegisteredUsers_Events]
GO

ALTER TABLE [dbo].[RegisteredUsers]  WITH CHECK ADD  CONSTRAINT [FK_RegisteredUsers_Profile] FOREIGN KEY([UserId])
REFERENCES [dbo].[Profile] ([Id])
GO

ALTER TABLE [dbo].[RegisteredUsers] CHECK CONSTRAINT [FK_RegisteredUsers_Profile]
GO


