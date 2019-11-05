-- Automatically generated by setup script

USE [AdventureGame]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ComponentData_GoTo](

    [component_data_go_to_id] [int] IDENTITY(1,1) NOT NULL,
    [DestinationId] [int] not null,
    [DestinationType] [fk_component_data_destination_type_id] not null

CONSTRAINT [PK_ComponentData_GoTo_component_data_go_to_id] PRIMARY KEY CLUSTERED
(
    [component_data_go_to_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


ALTER TABLE [dbo].[ComponentData_GoTo] WITH CHECK ADD CONSTRAINT [FK_Entity_ComponentData_GoTo_DestinationType] FOREIGN KEY([DestinationType])
REFERENCES [dbo].[ComponentData_DestinationType] ([component_data_destination_type_id])
ON DELETE CASCADE
GO