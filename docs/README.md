# 更新添加内容

修改配置文件brownie-config.yaml来启动特殊功能

## use_cache 使用缓存构建合约

启动时跳过合约编译，使用上次缓存的编译结构重新构建合约对象，要求之前已经至少编译过一次
上次缓存的结果保存在 build/output.json
```yaml
compiler:
  solc:
    version: 0.6.12
    remappings:
      - '@openzeppelin=OpenZeppelin/openzeppelin-contracts@3.4.0'
    use_cache: True
```

## no_generate 跳过合约对象构建

启动时，跳过合约构建，进入控制台时将不再有合约对象可以直接使用，用于测试或者在控制台手动构建合约
```yaml
compiler:
  solc:
    version: 0.6.12
    remappings:
      - '@openzeppelin=OpenZeppelin/openzeppelin-contracts@3.4.0'
    no_generate: True
```


## remote_development 使用远程网络

原brownie的开发者模式development只能连接本地网络，启用下面的配置，可以使得brownie能以开发者模式连接远程的ganache或geth网络  
mnemonic可以指定账户，如果不配置将默认使用下面的助记词生成账户  

```yaml
networks:
  default: test-ganache
remote_development:
  use_remote: True
  mnemonic: 'season turtle oblige language winner purpose call engine thunder pepper cactus base'
```
要使上面配置生效，要先添加远程测试网络test-ganache

```bash
brownie networks add Development test-ganache cmd="ganache-cli" host="http://47.243.92.131"  port=9545
```