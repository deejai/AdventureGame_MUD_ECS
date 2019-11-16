import os
import shutil
from textwrap import dedent
from mockup_utils import WEBSITE_PATH, get_location_data

def empty_web_folder():
    for the_file in os.listdir(WEBSITE_PATH):
        file_path = os.path.join(WEBSITE_PATH, the_file)
        try:
            if os.path.isfile(file_path):
                os.unlink(file_path)
            elif os.path.isdir(file_path): shutil.rmtree(file_path)
        except Exception as e:
            print(e)

def generate_html(name, transitions, header=""):
    ul_indent = "                    "
    trans_strings = []
    for transition in transitions:
        trans_label = transition["goto"]
        trans_desc = transition["description"]
        trans_string = f"<li><a href=\"{trans_label}.html\">{trans_desc}</a></li>"
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
                <h2>{header}</h2>
                <ul>
                    {trans_block}
                </ul>
            </body>
        </html>""")

    return html_string

def generate():
    data = get_location_data("rat_manor")
    start = data["start"]
    rooms = data["rooms"]

    with open(WEBSITE_PATH + "index.html", "w+") as f:
        f.writelines(generate_html("Main Menu", [{"description": "New Game", "goto": start}]))

    for room in rooms:
        room_name = room["name"]
        room_transitions = room["transitions"]
        with open(WEBSITE_PATH + room["label"] + ".html", "w+") as f:
            f.writelines(generate_html(room_name, room_transitions, "You see..."))


def main():
    empty_web_folder()
    generate()

if __name__ == "__main__":
    main()