import json
import os

from textwrap import dedent

from root_dir import ROOT_DIR
import custom_utilities as cu
from project_config import __database_name as database_name

__component_data_file_path = ROOT_DIR + "data\\components.json"

def generate_component_data_tables():
    with open(__component_data_file_path) as input_file:
        data = json.load(input_file)
        for component in data:
            print(component)
            for component_data in data[component]:
                print(f"\t{component_data}: {data[component][component_data]}")
            print()

def main():
    generate_component_data_tables()

if __name__ == "__main__":
    main()

def create_table_script(table_name, variables_json):
    table_name_snake_case = cu.camel_to_snake_case(table_name)
    variable_declaration_strings = []

    for variable_name in variables_json:
        variable_type = variables_json[variable_name]
        variable_declaration_string = f"{variable_name} {variable_type} not null"
        variable_declaration_strings.append(variable_declaration_string)

    cu.dedent_strip(f'''
        USE [{database_name}]
        GO

        SET ANSI_NULLS ON
        GO

        SET QUOTED_IDENTIFIER ON
        GO

        CREATE TABLE [dbo].[ComponentData_{table_name}](
            [component_data_{table_name_snake_case}_id] [int] IDENTITY(1,1) NOT NULL,

            {",\n\t".join(variable_declaration_strings)}

        CONSTRAINT [PK_ComponentData_{table_name}_component_data_{table_name_snake_case}_id] PRIMARY KEY CLUSTERED 
        (
            [component_data_{table_name_snake_case}_id] ASC
        )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
        ) ON [PRIMARY]
        GO
        '''
    )
