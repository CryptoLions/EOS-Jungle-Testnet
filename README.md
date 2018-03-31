# Welcome to the Jungle3 Testnet
EOS public test network: Jungle3   
Based on: DAWN-2018-03-30-ALPHA  
by: <a target="_blank" href="http://CryptoLions.io">CryptoLions.io</a>  


Check the Nodes status in <a target="_blank" href="http://jungle.cryptolions.io:9898/monitor3/">Network Monitor</a>

To participate as block producer please contact us in <a target="_blank" href="https://t.me/jungletestnet">telegram channel</a>


# Howto Install EOS node:  
  
git clone https://github.com/eosio/eos --recursive  
cd eos  
git checkout DAWN-2018-03-30-ALPHA  
git submodule update --recursive  
./eosio_build.sh  
cd build  
make install



# How to configure node and test BP
- Create data-dir folder for you node, for example /opt/jungleTestnet  
- Download files config.ini and genesis.json in this folder  
- Edit path to data-dr/genesis.json file in coonfig.ini
- Choose your producer name (any jungle animal ;) and create own EOS key pair (you can create key pair using cleos command ./cleos create key or <a target="_blank" href="https://nadejde.github.io/eos-token-sale/">here</a>.
- Add you producer name and your keys in your config
- Connect your node to network
- Please inform in <a target="_blank" href="https://t.me/jungletestnet">telegram channel</a> your node info: Server geographic location, Organisation/Website, node ip/domain, http port, p2p port, producer name, your public key
- After providing information and node synchronization, let us know in <a target="_blank" href="https://t.me/jungletestnet">telegram channel</a> to activate your account as BP.
  
Remember to open/forward ports on your firewall
  
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

# Processing update:
| BP Name | Address | Port (http) | Port (p2p) | Location | Organisation |
|---------|---------|-------------|------------|----------|--------------|
| Whale | eoscalgary.com | 8888 | 9876 | Canada | EOS.Cafe |
| Wolf | eosbrazil.com | 8884 | 9873 |  Brazil  | EOSbrazil.co |
| Sloth | 188.166.226.110 | 8888 | 9876 |  Singapore  | EOS Botetourt |
| Fox | eosrio.entropia.in | 8889 | 9876 |  Brazil, Rio de Janeiro  | EOS Rio |
| Wombat | pearls.capital | 8889 | 9877 |  russia, moscow | pearls.capital |
| Galapago | 5.189.151.46 | 6010 | 6020 |  Germany | bitcoineos.fun |
| Langurs | eosgreen.uk.to | 8888 | 9876 |  UK | EOSgreen.io |
| Gorilla | v3gorilla.jungle.eosnottingham.io | 8427 | 9927 |  UK | EOSnottingham.io |

# Nodes
| Address | Port (http) | Port (p2p) | Location | Organisation |
|---------|-------------|------------|----------|--------------|
| 34.206.54.155 |	8888 | 9876 |	Brazil, Rio de Janeiro | EOS Rio |

