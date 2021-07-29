from typing import Callable, Dict, List, Optional
from collections import OrderedDict
import threading
import time
import json
from wpath import *
from hexbytes import HexBytes

from web3 import Web3
from web3.exceptions import (
    InvalidEventABI,
    LogTopicError,
    MismatchedABI,
)
from brownie.network.middlewares import BrownieMiddlewareABC
from brownie import project
from brownie._config import CONFIG
from web3._utils.events import get_event_data


def get_contract_by_address(active_project, address):
    for contract_name in active_project.keys():
        contracts = active_project.dict()[contract_name]
        for contract in contracts:
            if contract.address == address:
                return contract
    return None


request_duty = 6

message_event_abi = {
    "anonymous": False,
    "inputs": [
        {
            "indexed": False,
            "internalType": "string",
            "name": "msg",
            "type": "string",
        }
    ],
    "name": "Message",
    "type": "event",
}


def parse_log(
    w3,
    log,
):
    codec = w3.codec
    try:
        evt = get_event_data(codec, message_event_abi, log)
        print(f'\n{color_y("console.log:")} {color_r(str(evt["args"]["msg"]))}')
    except MismatchedABI:
        pass
    except Exception as e:
        print_m(type(e))
        print_r(f"error:{e}")


class EventSubscribeMiddleware(BrownieMiddlewareABC):
    def __init__(self, w3: Web3) -> None:
        self.w3 = w3

        latest = w3.eth.get_block("latest")

        self.last_block = latest.hash
        self.last_block_seen = latest.timestamp
        self.last_request = 0.0

        self.last_request = 0.0
        self.event_cache: OrderedDict = OrderedDict()
        self.event_filter = w3.eth.filter({"topics": []})

        self.lock = threading.Lock()
        self.event = threading.Event()
        self.is_killed = False
        self.active_project = project.get_loaded_projects()[0]

        threading.Thread(target=self.event_filter_loop, daemon=True).start()

    @classmethod
    def get_layer(cls, w3: Web3, network_type: str) -> Optional[int]:
        return 0

    def get_contract_by_address(self, address):
        return get_contract_by_address(self.active_project, address)

    def event_filter_loop(self) -> None:
        n = 0
        while not self.is_killed:
            n += 1
            #print_y(f"===>event_filter_loop {n}")

            # if the last RPC request was > 60 seconds ago, reduce the rate of updates.
            # we eventually settle at one query per minute after 10 minutes of no requests.
            with self.lock:
                # print('----> lock 11')
                if self.time_since > request_duty:
                    self.event_cache.clear()
                    self.event.clear()

            if self.time_since > request_duty:
                self.event.wait(min(self.time_since / 10, request_duty))

            # query the filter for new blocks
            with self.lock:
                # print('----> lock 12')

                # 获取新事件
                try:
                    new_events = self.event_filter.get_new_entries()
                except (AttributeError, ValueError):
                    # web3 has disconnected, or the filter has expired from inactivity
                    if self.w3.isConnected():
                        self.event_filter = self.w3.eth.filter({"topics": []})
                        continue
                    else:
                        return

                # 如果获取新事件成功
                if new_events:
                    for event in new_events:
                        if CONFIG.settings.get("show_all_events"):
                            print_r(f"\n---->event:{event}" )

                        parse_log(self.w3, event)

                        # contract_address = event["address"]
                        # _contract = self.get_contract_by_address(contract_address)
                        # if _contract:

                        # tx_hash = event["transactionHash"]
                        # receipt = self.w3.eth.get_transaction_receipt(tx_hash)

                        # # print('---->get_contract success')

                        # contract = self.w3.eth.contract(
                        #     address=_contract.address, abi=_contract.abi
                        # )

                        # # contract = self.w3.eth.contract(abi=_contract.abi)
                        # message_event = contract.events.Message()

                        # # print("====>message_event:", message_event)

                        # processed_logs = message_event.processReceipt(receipt)
                        # if CONFIG.settings.get("show_parsed_events"):
                        #     print("\n---->parsed event:", processed_logs)

                        # for log in processed_logs:
                        #     try:
                        #         print("\n---->msg:", log["args"]["msg"])
                        #     except Exception as e:
                        #         print("parse msg error\n", e)

            if new_events and self.time_since < 15:
                # if this update found a new block and we've been querying
                # frequently, we can wait a few seconds before the next update
                time.sleep(5)
            elif time.time() - self.last_block_seen < 15:
                # if it's been less than 15 seconds since the last block, wait 2 seconds
                time.sleep(2)
            else:
                # if it's been more than 15 seconds, only wait 1 second
                time.sleep(1)

    @property
    def time_since(self) -> float:
        return time.time() - self.last_request

    def process_request(self, make_request: Callable, method: str, params: List) -> Dict:
        result = make_request(method, params)
        if method in ("eth_call", "eth_estimateGas"):
            if "error" in result:
                raise ValueError(result["error"])
        return result

    def uninstall(self) -> None:
        self.is_killed = True
        if self.w3.isConnected():
            self.w3.eth.uninstallFilter(self.event_filter.filter_id)
