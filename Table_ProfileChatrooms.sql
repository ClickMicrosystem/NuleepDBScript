USE [Nuleep_db]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ProfileChatrooms](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProfileId] [int] NOT NULL,
	[ChatroomId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[ProfileChatrooms]  WITH CHECK ADD  CONSTRAINT [FK_ProfileChatrooms_Chatroom] FOREIGN KEY([ChatroomId])
REFERENCES [dbo].[Chatrooms] ([Id])
GO

ALTER TABLE [dbo].[ProfileChatrooms] CHECK CONSTRAINT [FK_ProfileChatrooms_Chatroom]
GO

ALTER TABLE [dbo].[ProfileChatrooms]  WITH CHECK ADD  CONSTRAINT [FK_ProfileChatrooms_Profile] FOREIGN KEY([ProfileId])
REFERENCES [dbo].[Profile] ([Id])
GO

ALTER TABLE [dbo].[ProfileChatrooms] CHECK CONSTRAINT [FK_ProfileChatrooms_Profile]
GO


