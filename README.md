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



# How to configure node and test BP
- Create data-dir folder for you node, for example /opt/jungleTestnet  
- Download files config.ini and genesis.json in this folder  
- Edit path to data-dr/genesis.json file in coonfig.ini
- Choose your producer name (any jungle animal ;) and create own EOS key pair.
- Add you producer name and your keys in your config
- Connect your node to network
- Please inform in <a target="_blank" href="https://t.me/jungletestnet">telegram channel</a> your node info: Server geographic location, Organisation/Website, node ip/domain, http port, p2p port, producer name, your public key
- After providing information and node synchronization, let us know in <a target="_blank" href="https://t.me/jungletestnet">telegram channel</a> to activate your account as BP.

If you hvae compiled scripts already, you can download and use prepared data-folder <a href="http://imgs.cryptolions.io/Jungle3TestnetNode.tar.gz"> Jungle3TestnetNode.tar.gz </a>. Place files like in archive and edit config with your parametrs - ports, producer name and keys



# BP Information
| BP Name | Address | Port (http) | Port (p2p) | Location | Organisation |
|---------|---------|-------------|------------|----------|--------------|
| eosio | jungle.cryptolions.io | 8900	| 9899	 | Ukraine, Kyiv | CryptoLions.io |
| Lion | jungle.cryptolions.io | 8898	| 9886 | Ukraine, Kyiv | CryptoLions.io |
| Tiger | 193.93.219.219 | 8889	| 9877 | Ukraine, Lviv | CryptoLions.io |
| Bat | ctestnet.eosio.se | 8062 | 6602 | Sweden | EOSio.se |
