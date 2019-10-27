import json
import os

__root_dir = ".\\"
__component_data_file_path = __root_dir + "data\\components.json"

def init_path():
    ROOT_DIR = os.path.dirname(os.path.abspath(__file__)) + "\\..\\"

def generate_component_data_tables():
    with open(__component_data_file_path) as input_file:
        data = json.load(input_file)
        for thing in data:
            print(thing)
            for smaller_thing in data[thing]:
                print(f"{smaller_thing}: {data[thing][smaller_thing]}")
            print()

def main():
    init_path()
    generate_component_data_tables()

if __name__ == "__main__":
    main()
