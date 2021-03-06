-- Automatically generated by setup script

USE [AdventureGame]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ComponentData_DialogueState](

    [component_data_dialogue_state_id] [int] IDENTITY(1,1) NOT NULL,
    [Prompt] [fk_component_data_prompt_id] not null,
    [Responses] [fk_component_data_response_list_id] not null,

CONSTRAINT [PK_ComponentData_DialogueState_component_data_dialogue_state_id] PRIMARY KEY CLUSTERED
(
    [component_data_dialogue_state_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


ALTER TABLE [dbo].[ComponentData_DialogueState] WITH CHECK ADD CONSTRAINT [FK_Entity_ComponentData_DialogueState_Prompt] FOREIGN KEY([Prompt])
REFERENCES [dbo].[ComponentData_Prompt] ([component_data_prompt_id])
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[ComponentData_DialogueState] WITH CHECK ADD CONSTRAINT [FK_Entity_ComponentData_DialogueState_Responses] FOREIGN KEY([Responses])
REFERENCES [dbo].[ComponentData_ResponseList] ([component_data_response_list_id])
ON DELETE CASCADE
GO