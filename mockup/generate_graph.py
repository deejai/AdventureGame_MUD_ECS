from graphviz import Digraph
from mockup_utils import get_location_data

def generate_graph(location_data):
    g = Digraph("test", filename="test.gv")
    g.graph_attr["splines"] = "ortho"
    g.node_attr["shape"] = "rectangle"
    g.edge("Hi", "Bye")
    g.edge("Hi", "Hello")
    g.edge("Hello", "Oy")
    g.edge("Bye", "Ey")
    g.edge("Oy", "Ey")
    g.edge("Hello", "Ay")
    g.edge("Ay", "Oy")
    g.view()

def test():
    generate_graph(get_location_data("rat_manor"))

test()