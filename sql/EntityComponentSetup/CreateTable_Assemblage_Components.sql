USE [AdventureGame]
GO

/****** Object:  Table [dbo].[Assemblage_Components]    Script Date: 10/19/2019 1:12:51 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Assemblage_Components](
	[assemblage_componenet_id] [int] IDENTITY(1,1) NOT NULL,
	[assemblage_id] [int] NOT NULL,
	[component_id] [int] NOT NULL,
 CONSTRAINT [PK_Assemblage_Components_assemblage_componenet_id] PRIMARY KEY CLUSTERED 
(
	[assemblage_componenet_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Assemblage_Components]  WITH CHECK ADD  CONSTRAINT [FK_Assemblage_Components_assemblage_id] FOREIGN KEY([assemblage_id])
REFERENCES [dbo].[Assemblages] ([assemblage_id])
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[Assemblage_Components] CHECK CONSTRAINT [FK_Assemblage_Components_assemblage_id]
GO

ALTER TABLE [dbo].[Assemblage_Components]  WITH CHECK ADD  CONSTRAINT [FK_Assemblage_Components_component_id] FOREIGN KEY([component_id])
REFERENCES [dbo].[Components] ([component_id])
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[Assemblage_Components] CHECK CONSTRAINT [FK_Assemblage_Components_component_id]
GO


