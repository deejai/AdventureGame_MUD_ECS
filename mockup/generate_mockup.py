import json
import os
from textwrap import dedent

ROOT_DIR = os.path.dirname(os.path.abspath(__file__)) + "\\..\\"
MOCKUP_PATH = ROOT_DIR + "mockup/"
WEBSITE_PATH = MOCKUP_PATH + "website/"

def generate_html(name, transitions):
    ul_indent = "                    "
    trans_strings = []
    for transition in transitions:
        trans_url = transition["goto"]
        trans_desc = transition["description"]
        trans_string = f"<li><a href=\"{trans_url}\">{trans_desc}</a></li>"
        trans_strings.append(trans_string)

    trans_block = f"\n{ul_indent}".join(trans_strings)

    html_string = dedent(f"""
        <html>
            <head>
                <title>
                    Rat Game
                </title>
            </head>
            <body>
                <h1>
                    {name}
                </h1>
                <h2>You see...</h2>
                <ul>
                    {trans_block}
                </ul>
            </body>
        </html>""")

    return html_string

def get_data():
    data = None
    with open(MOCKUP_PATH + "rat_manor.json") as f:
        data = json.load(f)

    return data

def generate():
    data = get_data()
    start = data["start"]
    rooms = data["rooms"]

    with open(WEBSITE_PATH + "index.html", "w+") as f:
        f.writelines(generate_html("Main Menu", [{"description": "New Game", "goto": start}]))

    for room in rooms:
        room_name = room["name"]
        room_transitions = room["transitions"]
        with open(WEBSITE_PATH + room["url"], "w+") as f:
            f.writelines(generate_html(room_name, room_transitions))


def main():
    generate()

if __name__ == "__main__":
    main()