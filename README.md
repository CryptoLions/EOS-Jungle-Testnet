# Welcome to the EOS Jungle Testnet
EOS public test network: Jungle   
Based on: dawn-v3.0.0 release  
by: <a target="_blank" href="http://CryptoLions.io">CryptoLions.io</a>  


Check the Nodes status in <a target="_blank" href="http://jungle.cryptolions.io:9898/monitor/">Network Monitor</a>

To participate as block producer please contact us in <a target="_blank" href="https://t.me/jungletestnet">telegram channel</a>


# Howto Install EOS node:  
  

mkdir /home/eos-dawn-v3.0.0  
cd /home/eos-dawn-v3.0.0  
git clone https://github.com/eosio/eos --recursive    
cd eos  
git checkout dawn-v3.0.0  
git submodule update --recursive  
./eosio_build.sh  
cd build  
make install


# How to configure node and test BP
- Create data-dir folder for you node:
  mkdir /opt/JungleTestnet  
- Download files config.ini, genesis.json, start.sh, stop.sh and put in this folder /opt/JungleTestnet
- All paths in files are binded to this data folder
- add execution rights  
  chmod 777 /opt/JungleTestnet/start.sh  
  chmod 777 /opt/JungleTestnet/stop.sh  
  
- Choose your producer name (any jungle animal ;) and create own EOS key pair  
  you can create key pair using cleos command ./cleos create key or <a target="_blank" href="https://nadejde.github.io/eos-token-sale/">here</a>.
- Edit config.ini with your producer name and created key pair
- Open http and p2p Ports on your firewall/router
- Connect your node, run ./start.sh
- Check if you can access you node using link http://you_server:your_http_port/v1/chain/get_info (<a href="http://jungle.cryptolions.io:8888/v1/chain/get_info" target="_blank">Example</a>)

- if your node is connected and synced -  **Send Request** in <a target="_blank" href="https://t.me/jungletestnet">telegram channel</a> with next information:  
    
| Server Location | Organisation | node ip/domain, | Port (http) |  Port (p2p) | producer name | your public key|
|-----------------|--------------|-----------------|-------------|-------------|---------------|----------------|

- After receving your requst, node will be added to monitor, as Block producer.  
  Account will be created and initial EOS will be sent.  
  
  


# BP Nodes Information
| BP Name | Address | Port (http) | Port (p2p) | Location | Organisation |
|---------|---------|-------------|------------|----------|--------------|
| volcano | jungle.cryptolions.io | 8888	| 9876	 | Ukraine, Kyiv | CryptoLions.io |
| Lion | jungle.cryptolions.io | 8890	| 9890 | Ukraine, Kyiv | CryptoLions.io |
| Tiger | 193.93.219.219 | 8888	| 9876 | Ukraine, Lviv | CryptoLions.io |


# Nodes waiting to be connected
| BP Name | Address | Port (http) | Port (p2p) | Location | Organisation |
|---------|---------|-------------|------------|----------|--------------|
| Rhino | 220.241.204.237	 | 8888 | 9876 | Hong Kong | HKEOS |
| Panda | 218.18.171.81	 | 8888 | 9876 | Taiwan | EOS Taiwan	 |
| Mosquito | mosquito.prometeos.io | 8889 | 9877 |  Spain | IberEOS |
| Bat | ctestnet.eosio.se | 8062 | 6602 | Sweden | EOSio.se |
| Kangaroo | jungle.eosphere.io | 8888 | 9876 |  Australia | EOSphere.io |
| Panther | bp4-d3.eos42.io | 8888 | 9876 |  London  | EOS42.io |
| Beaver | 54.200.153.106 | 8888 | 9876 |  Canada, Calgary  | EOS Calgary |
| Wolf | eosbrazil.com | 8884 | 9873 |  Brazil  | EOSbrazil.co |
| Langurs | eosgreen.uk.to | 8888 | 9876 |  UK | EOSgreen.io |
| Galapago | 95.216.20.181 | 7010 | 7015 |  Germany | bitcoineos.fun |
| Whale | eoscalgary.com | 8888 | 9876 | Canada | EOS.Cafe |
| Fox | eosrio.entropia.in | 8889 | 9876 |  Brazil, Rio de Janeiro  | EOS Rio |
| Sloth | 188.166.226.110 | 8888 | 9876 |  Singapore  | EOS Botetourt |
| Wombat | pearls.capital | 8889 | 9877 |  russia, moscow | pearls.capital |
| Elephant | 18.188.52.250 | 8877  | 9898 | USA | Blockpro.one |
| Gorilla | v3gorilla.jungle.eosnottingham.io | 8427 | 9927 |  UK | EOSnottingham.io |
| Mowgli | mowgli.jungle3.eos.roelandp.nl | 8765 | 9876 | Germany | roelandp.nl/eos |
| Mpenjati | mpenjati.eosio.africa	 | 8851 | 9821 | Africa | EOS.IO Africa |
| Wolverine | 35.182.46.236	 | 9879 | 6879 | Canada, Monreal | BP Node |
| Cheetah | cheetah.jungle3.bptn.eosamsterdam.net	 | 8888 | 9876 | Amsterdam | EOS Amsterdam |
| Tokki | bpseoul.eosnodeone.io	 | 8888 | 9876 | Seoul | eosnodeone.io |
| Snake | testnet.eosindia.io	 | 8888 | 9876 | India | EOSIndia |
| Honeybadger | 35.189.107.125	| 8888 | 9876 | Uk, London | EOS42 |

# Nodes
| Address | Port (http) | Port (p2p) | Location | Organisation |
|---------|-------------|------------|----------|--------------|
| 34.206.54.155 |	8888 | 9876 |	Brazil, Rio de Janeiro | EOS Rio |

