import re
from textwrap import dedent

def count_regex(pattern, input_string):
  return re.subn(pattern, '', input_string)[1]

def camel_to_snake_case(input_string):
  return re.sub(r"([a-z0-9])([A-Z])", r"\1_\2", input_string).lower()

def snake_to_camel_case(input_string):
  return re.sub(r"(^|_)(?P<s>[a-zA-Z])", lambda m: m.group(2).upper(), input_string)
