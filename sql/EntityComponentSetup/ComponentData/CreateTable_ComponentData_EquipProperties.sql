USE [AdventureGame]
GO

/****** Object:  Table [dbo].[ComponentData_EquipProperties]    Script Date: 10/19/2019 3:23:46 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ComponentData_EquipProperties](
	[component_data_id] [int] IDENTITY(1,1) NOT NULL,
	 
	[equip_slot] int not null,
	[strength_modifier] int not null,
	[agility_modifier] int not null,
	[intelligence_modifier] int not null,

CONSTRAINT [PK_ComponentData_EquipProperties_component_data_id] PRIMARY KEY CLUSTERED 
(
	[component_data_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO