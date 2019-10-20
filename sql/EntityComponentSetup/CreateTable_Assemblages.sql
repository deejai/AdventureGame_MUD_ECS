USE [AdventureGame]
GO

/****** Object:  Table [dbo].[Assemblages]    Script Date: 10/19/2019 1:23:28 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Assemblages](
	[assemblage_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](256) NOT NULL,
	[description] [varchar](256) NOT NULL,
 CONSTRAINT [PK_Assemblages_assemblage_id] PRIMARY KEY CLUSTERED 
(
	[assemblage_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


