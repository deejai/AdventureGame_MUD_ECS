-- Automatically generated by setup script

USE [AdventureGame]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ComponentData_Response](

    [component_data_response_id] [int] IDENTITY(1,1) NOT NULL,
    [OptionText] [type_MediumString] not null,
    [FollowUpText] [type_LongString] not null,
    [GoTo] [fk_component_data_go_to_id] not null,
    [Trigger] [fk_component_data_trigger_id] not null,

CONSTRAINT [PK_ComponentData_Response_component_data_response_id] PRIMARY KEY CLUSTERED
(
    [component_data_response_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


ALTER TABLE [dbo].[ComponentData_Response] WITH CHECK ADD CONSTRAINT [FK_Entity_ComponentData_Response_GoTo] FOREIGN KEY([GoTo])
REFERENCES [dbo].[ComponentData_GoTo] ([component_data_go_to_id])
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[ComponentData_Response] WITH CHECK ADD CONSTRAINT [FK_Entity_ComponentData_Response_Trigger] FOREIGN KEY([Trigger])
REFERENCES [dbo].[ComponentData_Trigger] ([component_data_trigger_id])
ON DELETE CASCADE
GO