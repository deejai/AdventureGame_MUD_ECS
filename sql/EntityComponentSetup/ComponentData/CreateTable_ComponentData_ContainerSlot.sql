-- Automatically generated by setup script

USE [AdventureGame]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ComponentData_ContainerSlot](

    [component_data_container_slot_id] [int] IDENTITY(1,1) NOT NULL,
    [DropsOnDeath] [bit] not null,
    [EquipSlot] [type_ShortString] not null,
    [ItemId] [fk_entity_data_item_id] not null,

CONSTRAINT [PK_ComponentData_ContainerSlot_component_data_container_slot_id] PRIMARY KEY CLUSTERED
(
    [component_data_container_slot_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
