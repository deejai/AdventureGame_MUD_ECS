import json
import os

from textwrap import dedent, indent

from root_dir import ROOT_DIR
import custom_utilities as cu
from project_config import __database_name as database_name

__component_data_file_path = ROOT_DIR + "data\\components.json"

def generate_component_data_table_scripts():
    with open(__component_data_file_path) as input_file:
        data = json.load(input_file)
        table_scripts = []
        component_skipped = True
        while(component_skipped == True):
            component_skipped = False
            for component in data:
                table_scripts = __add_table_script_with_dependencies(table_scripts, component, data)

    return table_scripts

def __component_exists(table_scripts, component):
    return True if component in [c["component"] for c in table_scripts] else False

def __add_table_script_with_dependencies(table_scripts, component, data):
    if(__component_exists(table_scripts, component)):
        return table_scripts

    variables_json = data[component]
    for variable_name in variables_json:
        variable_type = variables_json[variable_name]
        if(is_foreign_key_for_component(variable_type)):
            foreign_component = cu.snake_to_camel_case(variable_type[len("fk_component_data_"):len(variable_type)-len("_id")])
            print(f"{component} depends on {foreign_component}")
            if(__component_exists(table_scripts, foreign_component) == False):
                print(f"Have to add {foreign_component} before {component}")
                __add_table_script_with_dependencies(table_scripts, foreign_component, data)

    table_script = __create_table_script(component, variables_json)
    table_scripts.append({
        "script": table_script,
        "component": component
    })

    return table_scripts

def is_foreign_key_for_component(variable_type):
    return variable_type[0:18] == "fk_component_data_"

def __create_table_script(table_name, variables_json):
    print(f"Adding {table_name}")
    table_name_snake_case = cu.camel_to_snake_case(table_name)
    variable_declaration_strings = []
    foreign_key_alters = []

    for variable_name in variables_json:
        variable_type = variables_json[variable_name]
        variable_declaration_string = f"{variable_name} {variable_type} not null"
        variable_declaration_strings.append(variable_declaration_string)

        if(is_foreign_key_for_component(variable_type)):
            foreign_variable_name = variable_type[3:]
            foreign_table_name = cu.snake_to_camel_case(variable_type[len("fk_component_data_"):len(variable_type)-len("_id")])
            foreign_key_alter = dedent(f'''
                ALTER TABLE [dbo].[ComponentData_{table_name}] WITH CHECK ADD CONSTRAINT [FK_Entity_ComponentData_{table_name}_{variable_name}] FOREIGN KEY([{variable_name}])
                REFERENCES [dbo].[ComponentData_{foreign_table_name}] ([{foreign_variable_name}])
                ON DELETE CASCADE
                GO''')
            foreign_key_alters.append(foreign_key_alter)

    indent_str = "    "
    variable_declarations_block = f"\n{indent_str}{indent_str}{indent_str}".join(variable_declaration_strings)
    foreign_key_alters_block = f"\n{indent_str}{indent_str}".join([indent(s, f"{indent_str}{indent_str}") for s in foreign_key_alters])

    table_script = dedent(f'''
        USE [{database_name}]
        GO

        SET ANSI_NULLS ON
        GO

        SET QUOTED_IDENTIFIER ON
        GO

        CREATE TABLE [dbo].[ComponentData_{table_name}](
            [component_data_{table_name_snake_case}_id] [int] IDENTITY(1,1) NOT NULL,

            {variable_declarations_block}

        CONSTRAINT [PK_ComponentData_{table_name}_component_data_{table_name_snake_case}_id] PRIMARY KEY CLUSTERED
        (
            [component_data_{table_name_snake_case}_id] ASC
        )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
        ) ON [PRIMARY]
        GO

        {foreign_key_alters_block}'''
    )

    return table_script
