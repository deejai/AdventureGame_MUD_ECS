USE [AdventureGame]
GO

/****** Object:  Table [dbo].[ComponentData_Value]    Script Date: 10/19/2019 5:07:16 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ComponentData_Value](
	[component_data_id] [int] IDENTITY(1,1) NOT NULL,
	[gold] int NOT NULL,
	is_sellable bit not null,
	
 CONSTRAINT [PK_ComponentData_Value_component_data_id] PRIMARY KEY CLUSTERED 
(
	[component_data_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


