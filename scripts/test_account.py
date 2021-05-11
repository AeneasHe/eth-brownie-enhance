import brownie.network as network

print(network.accounts)

network.accounts.add("0x0b4e7160e4b5b5681648357c293c305308b2cbb160a80a44ce8825158312d778")

print(type(network.accounts[0]))


acc = network.accounts[0]

acc.transfer("0xf3c0dc19128db8070e268e12a4a3659ccab9731c", "1 ether")
