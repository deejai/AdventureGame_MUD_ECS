USE [AdventureGame]
GO

/****** Object:  Table [dbo].[ComponentData_CombatEffect]    Script Date: 10/19/2019 3:23:46 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ComponentData_CombatEffect](
	[component_data_id] [int] IDENTITY(1,1) NOT NULL,

	[label] [type_shortString] NOT NULL,
    [name] [type_mediumString] NOT NULL,
	[description] [type_longString] NOT NULL,
    [value] int NOT NULL,
	[duration] int NOT NULL,

 CONSTRAINT [PK_ComponentData_CombatEffect_component_data_id] PRIMARY KEY CLUSTERED 
(
	[component_data_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

