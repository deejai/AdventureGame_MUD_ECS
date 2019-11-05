-- Automatically generated by setup script

USE [AdventureGame]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ComponentData_Disposition](
    [component_data_disposition_id] [int] IDENTITY(1,1) NOT NULL,

    [CategoryTagId] [fk_component_data_category_id] not null,
    [DispositionValue] [int] not null

CONSTRAINT [PK_ComponentData_Disposition_component_data_disposition_id] PRIMARY KEY CLUSTERED
(
    [component_data_disposition_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


ALTER TABLE [dbo].[ComponentData_Disposition] WITH CHECK ADD CONSTRAINT [FK_Entity_ComponentData_Disposition_CategoryTagId] FOREIGN KEY([CategoryTagId])
REFERENCES [dbo].[ComponentData_Category] ([component_data_category_id])
ON DELETE CASCADE
GO