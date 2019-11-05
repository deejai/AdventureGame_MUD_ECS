-- Automatically generated by setup script

USE [AdventureGame]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ComponentData_Attributes](
    [component_data_attributes_id] [int] IDENTITY(1,1) NOT NULL,

    [Strength] [int] not null,
    [Agility] [int] not null,
    [Intelligence] [int] not null,
    [NaturalDamage] [int] not null

CONSTRAINT [PK_ComponentData_Attributes_component_data_attributes_id] PRIMARY KEY CLUSTERED
(
    [component_data_attributes_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

