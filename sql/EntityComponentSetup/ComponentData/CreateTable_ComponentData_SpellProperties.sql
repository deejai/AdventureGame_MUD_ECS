-- Automatically generated by setup script

USE [AdventureGame]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ComponentData_SpellProperties](

    [component_data_spell_properties_id] [int] IDENTITY(1,1) NOT NULL,
    [CombatEffectList] [fk_component_data_combat_effect_list_id] not null,
    [Duration] [int] not null,
    [SpellLevel] [int] not null,
    [TargetType] [fk_component_data_target_type_id] not null,

CONSTRAINT [PK_ComponentData_SpellProperties_component_data_spell_properties_id] PRIMARY KEY CLUSTERED
(
    [component_data_spell_properties_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


ALTER TABLE [dbo].[ComponentData_SpellProperties] WITH CHECK ADD CONSTRAINT [FK_Entity_ComponentData_SpellProperties_CombatEffectList] FOREIGN KEY([CombatEffectList])
REFERENCES [dbo].[ComponentData_CombatEffectList] ([component_data_combat_effect_list_id])
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[ComponentData_SpellProperties] WITH CHECK ADD CONSTRAINT [FK_Entity_ComponentData_SpellProperties_TargetType] FOREIGN KEY([TargetType])
REFERENCES [dbo].[ComponentData_TargetType] ([component_data_target_type_id])
ON DELETE CASCADE
GO