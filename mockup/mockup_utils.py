import os
import json

ROOT_DIR = os.path.dirname(os.path.abspath(__file__)) + "\\..\\"
MOCKUP_PATH = ROOT_DIR + "mockup/"
WEBSITE_PATH = MOCKUP_PATH + "website/"

def get_location_data(location_name):
    data = None
    with open(MOCKUP_PATH + f"{location_name}.json") as f:
        data = json.load(f)

    return data