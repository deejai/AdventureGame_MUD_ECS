-- Automatically generated by setup script

USE [AdventureGame]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ComponentData_DestinationType](

    [component_data_destination_type_id] [int] IDENTITY(1,1) NOT NULL,
    [Label] [type_ShortString] not null,
    [Name] [type_MediumString] not null,

CONSTRAINT [PK_ComponentData_DestinationType_component_data_destination_type_id] PRIMARY KEY CLUSTERED
(
    [component_data_destination_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

