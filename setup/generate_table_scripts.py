import json
import os

__root_dir = ".\\"
__component_data_file_path = __root_dir + "data\\components.json"

def init_path():
    ROOT_DIR = os.path.dirname(os.path.abspath(__file__)) + "\\..\\"

def generate_component_data_tables():
    with open(__component_data_file_path) as input_file:
        data = json.load(input_file)
        for component in data:
            print(component)
            for component_data in data[component]:
                print(f"\t{component_data}: {data[component][component_data]}")
            print()

def main():
    init_path()
    generate_component_data_tables()

if __name__ == "__main__":
    main()
