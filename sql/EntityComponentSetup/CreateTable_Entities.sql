USE [AdventureGame]
GO

/****** Object:  Table [dbo].[Entities]    Script Date: 10/19/2019 1:22:18 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Entities](
	[entity_id] [int] IDENTITY(1,1) NOT NULL,
	[description] [type_LongString] NOT NULL,
 CONSTRAINT [PK_Entities_entity_id] PRIMARY KEY CLUSTERED 
(
	[entity_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


