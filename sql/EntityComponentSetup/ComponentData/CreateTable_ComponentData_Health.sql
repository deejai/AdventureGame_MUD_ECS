-- Automatically generated by setup script

USE [AdventureGame]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ComponentData_Health](

    [component_data_health_id] [int] IDENTITY(1,1) NOT NULL,
    [Current] [int] not null,
    [Max] [int] not null,
    [OverhealMax] [int] not null,

CONSTRAINT [PK_ComponentData_Health_component_data_health_id] PRIMARY KEY CLUSTERED
(
    [component_data_health_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

