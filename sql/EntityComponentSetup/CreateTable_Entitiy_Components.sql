USE [AdventureGame]
GO

/****** Object:  Table [dbo].[Entity_Components]    Script Date: 10/19/2019 1:22:48 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Entity_Components](
	[entity_componenet_id] [int] IDENTITY(1,1) NOT NULL,
	[entity_id] [int] NOT NULL,
	[component_id] [int] NOT NULL,
 CONSTRAINT [PK_Entity_Components_entity_componenet_id] PRIMARY KEY CLUSTERED 
(
	[entity_componenet_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Entity_Components]  WITH CHECK ADD  CONSTRAINT [FK_Entity_Components_component_id] FOREIGN KEY([component_id])
REFERENCES [dbo].[Components] ([component_id])
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[Entity_Components] CHECK CONSTRAINT [FK_Entity_Components_component_id]
GO

ALTER TABLE [dbo].[Entity_Components]  WITH CHECK ADD  CONSTRAINT [FK_Entity_Components_entity_id] FOREIGN KEY([entity_id])
REFERENCES [dbo].[Entities] ([entity_id])
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[Entity_Components] CHECK CONSTRAINT [FK_Entity_Components_entity_id]
GO


