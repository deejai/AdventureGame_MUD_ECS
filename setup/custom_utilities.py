import re
from textwrap import dedent

def count_regex(pattern, input_string):
  return re.subn(pattern, '', input_string)[1]

def format_script(input_string):
    min_indents = count_regex(r"\n\t+")
    return re.sub(r"", r"", input_string)

def camel_to_snake_case(input_string):
    return re.sub(r"([a-z0-9])([A-Z])", r"\1_\2", input_string).lower()
