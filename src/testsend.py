from op_return import *
from peercoin_rpc import Client

node = Client(port=19902)

send(node, 'mvyiYPvgnDGywEJJYLqFQTseNZQp1q3t9s', 10, ' Peercoin community is the best! ')
