import re
from textwrap import dedent

def dedent_strip(input_string):
    return dedent(input_string.strip())

def camel_to_snake_case(input_string):
    return re.sub(r"([a-z0-9])([A-Z])", r"\1_\2", input_string).lower()
