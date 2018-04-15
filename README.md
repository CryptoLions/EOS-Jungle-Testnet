# Welcome to the EOS Jungle Testnet
EOS public test network: Jungle   
Based on: master <!--dawn-v3.0.0 release-->
by: <a target="_blank" href="http://CryptoLions.io">CryptoLions.io</a>  


Check the Nodes status in <a target="_blank" href="http://jungle.cryptolions.io:9898/monitor/">Network Monitor</a>

To participate as block producer please contact us in <a target="_blank" href="https://t.me/jungletestnet">telegram channel</a>


# Howto Install EOS node:  
  

mkdir /home/eos-dawn-v3.0.0  
cd /home/eos-dawn-v3.0.0  
git clone https://github.com/eosio/eos --recursive    
cd eos  
<!--git checkout master  
git pull  
git submodule update --init --recursive --> 
git checkout dawn-v3.0.0  
git submodule update --recursive  
./eosio_build.sh  
cd build  
make install  

If You have problems with Boost - please edit 114 line in eosio_build_ubuntu.sh and  change:  
tar xf boost_1.66.0.tar.bz2 -> tar xf boost_1_66_0.tar.bz2  

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
| Volcano | jungle.cryptolions.io | 8888	| 9876	 | Ukraine, Kyiv | CryptoLions.io |
| Lion | jungle.cryptolions.io | 8890	| 9890 | Ukraine, Kyiv | CryptoLions.io |
| Tiger | 193.93.219.219 | 8888	| 9876 | Ukraine, Lviv | CryptoLions.io |
| Jaguar | jungle.eosnewyork.io | 8888 | 9876 | Central Canada | EOS New York |  
| Bat | ctestnet.eosio.se | 8062 | 6602 | Sweden | EOSio.se |
| Mowgli | mowgli.jungle3.eos.roelandp.nl | 8765 | 9876 | Germany | roelandp.nl/eos |
| Dragonfly | 93.176.188.7 | 8888 | 9876 | Barcelona | EOSbcn |
| Elephant | 18.188.52.250	| 8877  | 9876 | USA | Blockpro.one |
| Mosquito | mosquito.prometeos.io | 8889 | 9877 |  Spain | IberEOS |
| Fox | eosrio.entropia.in | 8887 | 9875 |  Brazil, Rio de Janeiro  | EOS Rio |
| Gorilla | v3gorilla.jungle.eosnottingham.io	| 8427 | 9927 |  UK | EOSnottingham.io |
| Honeybadger | 35.189.107.125	| 8888 | 9876 | Uk, London | EOS42 |
| Wombat | pearls.capital | 8888 | 9876 |  russia, moscow | pearls.capital |
| Sloth | 188.166.226.110 | 8888 | 9876 |  Singapore  | EOS Botetourt |
| Langurs | eosgreen.uk.to | 8888 | 9876 |  UK | EOSgreen.io |
| Tokki | bpseoul.eosnodeone.io	 | 8888 | 9876 | Seoul | eosnodeone.io |
| Whale | whale.eoscalgary.com | 80 | 9876 | Canada | EOS.Cafe |
| Panther | bp4-d3.eos42.io | 8888 | 9876 |  London  | EOS42.io |
| Tortoise | 149.202.201.27 | 8888 | 9876 |  France  | EOSdac.io |
| Galapago | 95.216.20.181 | 7010 | 7015 |  Germany | bitcoineos.fun |
| Mpenjati | mpenjati.eosio.africa	 | 8888 | 9876 | Africa | EOS.IO Africa |
| Cougars | testnet01.eoseoul.io	 | 8801 | 9901 | Korea, Seoul | EOSeoul.io |
| Ladybird | 159.65.86.74 | 8888 | 9876 | Barcelona | EOSbcn |
| Giraffe | 154.48.249.19	| 8888 | 9876 | Hongkong | Niuchain |
| Rhino | 218.253.69.190	| 8888 | 9876 | Hong Kong | HKEOS |
| Cheetah | cheetah.jungle3.bptn.eosamsterdam.net	 | 8888 | 9876 | Amsterdam | EOS Amsterdam |
| Termite | robotikalis.ddns.net	| 8888 | 9876 | London | EOS-East	 |
| Snake | testnet.eosindia.io		| 8888 | 9876 | India | EOSIndia	 |
| Tapir | 195.201.131.218	| 8888 | 9876 | Germany | 0xc0ffee	 |
| Boar | 138.68.238.129	 | 8890  | 9876 | USA,  San Francisco | EOSBR |
| Spider | 211.159.182.240	| 8888 | 9876 | China , Beijing | 北京星云比特科技有限公司		 |
| Koala | jungle.genereos.io | 8888 | 9876 | Australia, Sydney  | GenerEOS |
| Beaver | 54.200.153.106 | 8888 | 9876 |  Canada, Calgary  | EOS Calgary |
| Unicorn | 39.108.231.157 | 8888 | 9876 |  China  | SuperONE.io |
| Scorpion | 139.198.3.99 | 8888 | 9876 |  China, Peking  | EOS Zodiac |
| Hummingbird | jungle.eoseco.net | 8888 | 9876 |  China, Shanghai  | EOSeco |
| Kangaroo | jungle.eosphere.io | 8888 | 9876 |  Australia | EOSphere.io |
| Dragon | 185.244.150.11		 | 8888 | 9876 | Netherlands | Massive Dibamics |
| Macaw | 52.44.113.122		 | 80 | 9876 | USA | EOSMX |
| Parrot | testchain.jscut.org	| 8888 | 9876 | USA, Virginia | Todd Fleming	 |
| Pug | 120.79.155.118	| 8888 | 9876 | China, Shenzhen | ViaBTC |
| Capybara | testnet.eosdublin.io		| 8444 | 9878 | Dublin | EOSDublin.com	 |
| Bear | eosslc.com	| 8889 | 9877 | USA, Bluffdale, UT | EOS SLC		 |
| Hedgehog | jungle.worbli.io	| 8888 | 9876 | USA, Ohio | Worbli		 |
| Crow | 47.92.97.56 | 8888  | 9876 | China | EOS UIP |
| Wildcat | stealthbp.ddns.net | 8800  | 6600 | Seoul | EOS Asia |
| Elk | 47.52.18.70	 | 8388  | 3389 | Hong Kong | EOS Gravity	 |
| Tarsier | jungle.eos.blckchnd.com	 | 8888  | 9876 | Germany, Falkenstein | blckchnd.com	 |
| Toucan | 128.1.133.206	 | 8888  | 9876 | Hong Kong | wancloud |
| Bull | 47.52.64.9		| 8888  | 9876 | China | EOS.Hedging	 |
| Doppelganger | 52.37.122.21	 | 8888  | 9876 | USA, Oregon | James Sutherland	|
| Eagle | eosbeijing.one		 | 8888  | 9876 | Hongkong |EOS Beijing		|
| Wolverine | 35.182.46.236	 | 9879 | 6879 | Canada, Monreal | BP Node |
| Raven | 52.58.245.131	 | 8888 | 9876 | Frankfurt | EOS NL |

# Nodes
| Address | Port (http) | Port (p2p) | Location | Organisation |
|---------|-------------|------------|----------|--------------|
| 54.233.222.22 |	8886 | 9874 |	Brazil, Rio de Janeiro | EOS Rio |
| 193.93.219.219 |	6888 | 7876 |	CryptoLions.io | Ukraine, Lviv |


# Nodes waiting to be connected
| BP Name | Address | Port (http) | Port (p2p) | Location | Organisation |
|---------|---------|-------------|------------|----------|--------------|
| Panda | 218.18.171.81	 | 8888 | 9876 | Taiwan | CIGEOS |
| Wolf | eosbrazil.com | 8884 | 9873 |  Brazil  | EOSbrazil.co |
| Snake | testnet.eosindia.io	 | 8888 | 9876 | India | EOSIndia |
| Leopard | hlathi.eosio.africa | 8888  | 9877 | Africa | EOSio.africa |
| Zebra | jungle.eosnewyork.io | 8888  | 9876 | Canada, Montreal | EOS New York |
| Python |  python.prometeos.io | 8888 | 9876 | Spain | Prometeos.io |
| Wolf | eosbrazil.com | 8890  | 9878 | Brazil, Sao Paulo | EOS Brazil  |
| Lizard | processing | ....  | .... | India | EOS India |
| Ant | robotikalis.ddns.net	| 8888 | 9876 | London | EOS-East	 |


