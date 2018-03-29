# Welcome to the Jungle3 Testnet
EOS public test network: Jungle3   
Based on: DAWN-2018-03-29-ALPHA  
by: <a target="_blank" href="http://CryptoLions.io">CryptoLions.io</a>  


Check the Nodes status in <a target="_blank" href="http://jungle.cryptolions.io:9898/monitor3/">Network Monitor</a>

To participate as block producer please contact us in <a target="_blank" href="https://t.me/jungletestnet">telegram channel</a>


# Howto Install EOS node:  
  
git clone https://github.com/eosio/eos --recursive  
cd eos  
git checkout DAWN-2018-03-29-ALPHA  
git submodule update --recursive  
./eosio_build.sh
cd build  
make install



# How to configure node
- Create data-dir folder for you node, for example /opt/jungleTestnet  
- Download files config.ini and genesis.json in this folder  
- Edit path to data-dr/genesis.json file in coonfig.ini
- Choose a name (any animal) and create own EOS key
- Add you producer name and your keys in config


# BP Information
| BP Name | Address | Port (http) | Port (p2p) | Location | Organisation |
|---------|---------|-------------|------------|----------|--------------|
| Lion | jungle.cryptolions.io | 8889 | 9877 | Ukraine, Kyiv | CryptoLions.io |
