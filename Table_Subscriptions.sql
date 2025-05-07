USE [Nuleep_db]
GO

/****** Object:  Table [dbo].[Subscriptions]    Script Date: 07-May-25 12:33:02 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Subscriptions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[Customer_Id] [nvarchar](255) NULL,
	[Period_Start] [datetime] NULL,
	[Period_End] [datetime] NULL,
	[Status] [nvarchar](50) NULL,
	[Plan_Id] [nvarchar](100) NULL,
	[Trial_Start] [datetime] NULL,
	[Trial_End] [datetime] NULL,
	[Billing_Cycle_Anchor] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Subscriptions]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO


