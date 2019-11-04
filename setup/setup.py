import generate_table_scripts as gts

def main():
    component_data_tables = gts.generate_component_data_tables()
    print(component_data_tables[0])

if __name__ == "__main__":
    main()