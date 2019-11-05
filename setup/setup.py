import generate_tables as gts
from root_dir import ROOT_DIR

__ComponentData_Root = ROOT_DIR + "sql/EntityComponentSetup/ComponentData/"
__auto_gen_prefix = "-- Automatically generated by setup script\n"

def main():
    component_data_table_scripts = gts.generate_component_data_table_scripts()
    for s in component_data_table_scripts:
        script = s["script"]
        component = s["component"]
        with open(f"{__ComponentData_Root}CreateTable_ComponentData_{component}.sql", "w+") as out_file:
            out_file.write(f"{__auto_gen_prefix}{script}")

    component_data_insert_script = gts.generate_component_data_insert_script(component_data_table_scripts)
    with open(__ComponentData_Root + "Insert_Components.sql", "w+") as out_file:
        out_file.write(f"{__auto_gen_prefix}{component_data_insert_script}")

if __name__ == "__main__":
    main()
