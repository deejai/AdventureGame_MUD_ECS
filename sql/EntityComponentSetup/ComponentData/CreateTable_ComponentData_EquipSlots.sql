USE [AdventureGame]
GO

/****** Object:  Table [dbo].[ComponentData_EquipSlots]    Script Date: 10/19/2019 3:23:46 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ComponentData_EquipSlots](
	[component_data_id] [int] IDENTITY(1,1) NOT NULL,

	[head] int NOT NULL,
	[chest] int NOT NULL,
	[arms] int NOT NULL,
	[legs] int NOT NULL,
	[main_hand] int NOT NULL,
	[off_hand] int NOT NULL,
	[trinket] int NOT NULL

 CONSTRAINT [PK_ComponentData_EquipSlots_component_data_id] PRIMARY KEY CLUSTERED 
(
	[component_data_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [AdventureGame]
GO

ALTER TABLE [dbo].[ComponentData_EquipSlots]  WITH CHECK ADD  CONSTRAINT [FK_Entity_ComponentData_EquipSlots_head] FOREIGN KEY([head])
REFERENCES [dbo].[ComponentData_Equipment] ([component_data_id])
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[ComponentData_EquipSlots]  WITH CHECK ADD  CONSTRAINT [FK_Entity_ComponentData_EquipSlots_chest] FOREIGN KEY([chest])
REFERENCES [dbo].[ComponentData_Equipment] ([component_data_id])
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[ComponentData_EquipSlots]  WITH CHECK ADD  CONSTRAINT [FK_Entity_ComponentData_EquipSlots_arms] FOREIGN KEY([arms])
REFERENCES [dbo].[ComponentData_Equipment] ([component_data_id])
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[ComponentData_EquipSlots]  WITH CHECK ADD  CONSTRAINT [FK_Entity_ComponentData_EquipSlots_legs] FOREIGN KEY([legs])
REFERENCES [dbo].[ComponentData_Equipment] ([component_data_id])
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[ComponentData_EquipSlots]  WITH CHECK ADD  CONSTRAINT [FK_Entity_ComponentData_EquipSlots_main_hand] FOREIGN KEY([main_hand])
REFERENCES [dbo].[ComponentData_Equipment] ([component_data_id])
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[ComponentData_EquipSlots]  WITH CHECK ADD  CONSTRAINT [FK_Entity_ComponentData_EquipSlots_off_hand] FOREIGN KEY([off_hand])
REFERENCES [dbo].[ComponentData_Equipment] ([component_data_id])
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[ComponentData_EquipSlots]  WITH CHECK ADD  CONSTRAINT [FK_Entity_ComponentData_EquipSlots_trinket] FOREIGN KEY([trinket])
REFERENCES [dbo].[ComponentData_Equipment] ([component_data_id])
ON DELETE CASCADE
GO
