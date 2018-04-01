# Welcome to the Jungle3 Testnet
EOS public test network: Jungle3   
Based on: DAWN-2018-03-30-ALPHA  
by: <a target="_blank" href="http://CryptoLions.io">CryptoLions.io</a>  


Check the Nodes status in <a target="_blank" href="http://jungle.cryptolions.io:9898/monitor3/">Network Monitor</a>

To participate as block producer please contact us in <a target="_blank" href="https://t.me/jungletestnet">telegram channel</a>


# Howto Install EOS node:  
  

mkdir /home/eos-DAWN-2018-03-30-ALPHA  
cd /home/eos-DAWN-2018-03-30-ALPHA  
git clone https://github.com/eosio/eos --recursive    
cd eos  
git checkout DAWN-2018-03-30-ALPHA  
git submodule update --recursive  
./eosio_build.sh  
cd build  
make install


# How to configure node and test BP
- Create data-dir folder for you node:
  mkdir /opt/Jungle3Testnet  
- Download files config.ini, genesis.json, start.sh, stop.sh and put in this folder /opt/Jungle3Testnet
- All paths in files are binded to this data folder
- add execution rights  
  chmod 777 /opt/Jungle3Testnet/start.sh  
  chmod 777 /opt/Jungle3Testnet/stop.sh  
  
- Choose your producer name (any jungle animal ;) and create own EOS key pair  
  you can create key pair using cleos command ./cleos create key or <a target="_blank" href="https://nadejde.github.io/eos-token-sale/">here</a>.
- Edit config.ini with your producer name and created key pair
- Open http and p2p Ports on your firewall/router
- Connect your node, run ./start.sh
- if your node is connected and synced -  **Send Request** in <a target="_blank" href="https://t.me/jungletestnet">telegram channel</a> with next information:  
    
| Server Location | Organisation | node ip/domain, | Port (http) |  Port (p2p) | producer name | your public key|
|-----------------|--------------|-----------------|-------------|-------------|---------------|----------------|

- After receving your requst, node will be added to monitor, as Block producer.  
  Account will be created and initial EOS will be sent.  
  
  
<!---If you hvae compiled scripts already, you can download and use prepared data-folder <a href="http://imgs.cryptolions.io/Jungle3TestnetNode.tar.gz"> Jungle3TestnetNode.tar.gz </a>. Place files like in archive and edit config with your parametrs - ports, producer name and keys --->



# BP Nodes Information
| BP Name | Address | Port (http) | Port (p2p) | Location | Organisation |
|---------|---------|-------------|------------|----------|--------------|
| volcano | jungle.cryptolions.io | 8900	| 9899	 | Ukraine, Kyiv | CryptoLions.io |
| Lion | jungle.cryptolions.io | 8898	| 9886 | Ukraine, Kyiv | CryptoLions.io |
| Tiger | 193.93.219.219 | 8889	| 9877 | Ukraine, Lviv | CryptoLions.io |
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

# Processing update:
| BP Name | Address | Port (http) | Port (p2p) | Location | Organisation |
|---------|---------|-------------|------------|----------|--------------|
| Gorilla | v3gorilla.jungle.eosnottingham.io | 8427 | 9927 |  UK | EOSnottingham.io |
| Elephant | 18.188.52.250 | 8877  | 9898 | USA | Blockpro.one |

# Nodes
| Address | Port (http) | Port (p2p) | Location | Organisation |
|---------|-------------|------------|----------|--------------|
| 34.206.54.155 |	8888 | 9876 |	Brazil, Rio de Janeiro | EOS Rio |

