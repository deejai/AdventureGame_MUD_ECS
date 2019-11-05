-- Automatically generated by setup script

USE [AdventureGame]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ComponentData_Prompt](
    [component_data_prompt_id] [int] IDENTITY(1,1) NOT NULL,

    [Text] [type_LongString] not null

CONSTRAINT [PK_ComponentData_Prompt_component_data_prompt_id] PRIMARY KEY CLUSTERED
(
    [component_data_prompt_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

