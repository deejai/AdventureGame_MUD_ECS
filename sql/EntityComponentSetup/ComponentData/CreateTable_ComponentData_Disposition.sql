USE [AdventureGame]
GO

/****** Object:  Table [dbo].[ComponentData_Disposition]    Script Date: 10/19/2019 3:23:46 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ComponentData_Disposition](
	[component_data_id] [int] IDENTITY(1,1) NOT NULL,

	[category_id] int NOT NULL,
    [disposition_value] int NOT NULL

 CONSTRAINT [PK_ComponentData_Disposition_component_data_id] PRIMARY KEY CLUSTERED 
(
	[component_data_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [AdventureGame]
GO

ALTER TABLE [dbo].[ComponentData_Disposition]  WITH CHECK ADD  CONSTRAINT [FK_Entity_ComponentData_Disposition_category_id] FOREIGN KEY([category_id])
REFERENCES [dbo].[ComponentData_Category] ([component_data_id])
ON DELETE CASCADE
GO
