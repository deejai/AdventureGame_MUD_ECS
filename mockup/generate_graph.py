from graphviz import Digraph
from mockup_utils import get_location_data

def generate_graph(location_data):
    graph_attr = {"":""
        ,"splines": "ortho"
        ,"concentrate": "true"
        ,"pad": "0.2"
        ,"nodesep": "1"
        ,"ranksep": "1"
    }

    node_attr = {"":""
        ,"shape": "rectangle"
    }

    g = Digraph(location_data["name"], filename="test.gv", graph_attr=graph_attr, node_attr=node_attr)

    rooms = location_data["rooms"]

    for room in rooms:
        label = room["label"]
        transitions = room["transitions"]
        for transition in transitions:
            g.edge(label, transition["goto"])

    g.view()

def test():
    location_data = get_location_data("rat_manor")
    generate_graph(location_data)

test()