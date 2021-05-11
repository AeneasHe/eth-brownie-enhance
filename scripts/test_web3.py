import wpath
from web3 import Web3
from web3 import Web3, HTTPProvider, IPCProvider, WebsocketProvider


def get_web3_by_http_rpc():
    address = "http://47.243.92.131:8545"

    print("===>address:", address)
    p = HTTPProvider(address)
    web3 = Web3(p)
    return web3


w3 = get_web3_by_http_rpc()
eth = w3.eth

r = eth.getBalance("0x3d32aA995FdD334c671C2d276345DE6fe2F46D88")

print(r)
