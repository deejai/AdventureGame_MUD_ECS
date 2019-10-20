USE [AdventureGame]
GO

/****** Object:  Table [dbo].[ComponentData_Description]    Script Date: 10/19/2019 3:23:46 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ComponentData_Description](
	[component_data_id] [int] IDENTITY(1,1) NOT NULL,
	[name] varchar(256) NOT NULL,
	[summary] varchar(256) NOT NULL
 CONSTRAINT [PK_ComponentData_Description_component_data_id] PRIMARY KEY CLUSTERED 
(
	[component_data_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

