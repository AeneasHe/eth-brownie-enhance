import os
import shutil

raw_path = "/Library/Frameworks/Python.framework/Versions/3.9/lib/python3.9/site-packages/eth_brownie-1.15.0-py3.9.egg/brownie/project/brownie_project"
install_path = "/Users/aeneas/.brownie/packages/brownie/brownie_project@0.1"

shutil.rmtree(install_path)
# os.makedirs(install_path)
shutil.copytree(raw_path, install_path)