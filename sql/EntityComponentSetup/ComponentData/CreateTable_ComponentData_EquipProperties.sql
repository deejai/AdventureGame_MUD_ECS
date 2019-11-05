-- Automatically generated by setup script

USE [AdventureGame]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ComponentData_EquipProperties](
    [component_data_equip_properties_id] [int] IDENTITY(1,1) NOT NULL,

    [AgilityModifier] [int] not null,
    [IntelligenceModifier] [int] not null,
    [StrengthModifier] [int] not null,
    [EquipSlot] [type_ShortString] not null

CONSTRAINT [PK_ComponentData_EquipProperties_component_data_equip_properties_id] PRIMARY KEY CLUSTERED
(
    [component_data_equip_properties_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

