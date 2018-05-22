# Welcome to the EOS Jungle Testnet

Based on: dawn4.1 bnet tag 

To register you node in dawn4 use this link:
http://dev.cryptolions.io/#register  
Jungle <a target="_blank" href="https://t.me/jungletestnet">telegram channel</a>

In case manual compilation please change token symbol from SYS to EOS in CMakeLists.txt or run this command in EOS sources folder

```
git clone https://github.com/eosio/eos --recursive    
cd eos  

git checkout bnet  
git submodule update --init --recursive   


sed -i.bak '16i set( CORE_SYMBOL_NAME "EOS" )' CMakeLists.txt  

#upgrade Boost to 1_67
sed -i -e 's/1_66/1_67/g' scripts/eosio_build_ubuntu.sh
sed -i -e 's/1.66/1.67/g' scripts/eosio_build_ubuntu.sh
sed -i -e 's/1_66/1_67/g' eosio_build.sh

./eosio_build.sh   
```



===================================Outdated manual===================

EOS public test network: Jungle     
Based on: DAWN-2018-04-27-ALPHA <!--dawn-v3.0.0 release-->  
by: <a target="_blank" href="http://CryptoLions.io">CryptoLions.io</a>  


Check the Nodes status in <a target="_blank" href="http://jungle.cryptolions.io:9898/monitor/">Network Monitor</a>

To participate as block producer please contact us in <a target="_blank" href="https://t.me/jungletestnet">telegram channel</a>


# Howto Install EOS node:  
  

mkdir /home/eos-dawn-v3.0.0  
cd /home/eos-dawn-v3.0.0  
git clone https://github.com/eosio/eos --recursive    
cd eos  

git checkout DAWN-2018-04-27-ALPHA  
git submodule update --init --recursive  
./eosio_build.sh  
cd build  
make install  

# How to configure node and test BP
- Create data-dir folder for you node:
  mkdir /opt/JungleTestnet  
- Clone all files from this repository, ru:
  cd /opt/JungleTestnet
  git clone https://github.com/CryptoLions/EOS-Jungle-Testnet.git ./
- add execution rights  
  chmod -R 777 ./\*.sh   
  chmod -R 777 ./Wallet/\*.sh  

- Id you use different folder then in example -> edit all paths in files cleos.sh, start.sh, stop.sh, config.ini (path to genesis), Wallet/start_wallet.sh, Wallet/stop_wallet.sh:

- Choose your producer name (any jungle animal ;) and create own EOS key pair  
  you can create key pair using cleos command ./cleos.sh create key or <a target="_blank" href="https://nadejde.github.io/eos-token-sale/">here</a>.  
- Register account for your producer using created key:  
  http://jungle.cryptolions.io:9898/monitor/#account  
  
- Edit in config.ini next parameters:  
  - server address: p2p-server-address = YOUR_NODE_IP_ADDRESS:9876  
  - your producer name: producer-name = YOUR_BP_NAME  
  - created producer keypair: private-key = ["YOUR_PUBKEY","YOUR_PRIVKEY"]  
  - replace p2p-peer-address list with fresh generated on monitor site: http://jungle.cryptolions.io:9898/monitor/#p2p  
  
- Open http and p2p Ports on your firewall/router  
- Connect your node, run ./start.sh  
- Start wallet, run ./Wallet/start_wallet.sh  
- Import your address ./cleos.sh wallet import <YOUR_PRIVKEY>

- Check if you can access you node using link http://you_server:your_http_port/v1/chain/get_info (<a href="http://jungle.cryptolions.io:8888/v1/chain/get_info" target="_blank">Example</a>)

- if your node is connected and synced -  **Send Request** in <a target="_blank" href="https://t.me/jungletestnet">telegram channel</a> with next information:  
    
| Server Location | Organisation | node ip/domain, | Port (http) |  Port (p2p) | producer name | your public key|
|-----------------|--------------|-----------------|-------------|-------------|---------------|----------------|

- After receving your requst, node will be added to monitor, as Block producer.  
  Account will be created and initial EOS will be sent.  
  
 - Get test EOS tokens:
  http://jungle.cryptolions.io:9898/monitor/#faucet

# Non BP node
To run non producing node just comment out in config.ini    
 producer-name = YOUR_BP_NAME  
 private-key = ["YOUR_PUBKEY","YOUR_PRIVKEY"]  

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
| Elephant2 | 18.188.52.250	| 8877  | 9876 | USA | Blockpro.one |
| Mosquito | mosquito.prometeos.io | 8889 | 9877 |  Spain | IberEOS |
| Fox | eosrio.entropia.in | 8887 | 9875 |  Brazil, Rio de Janeiro  | EOS Rio |
| Gorilla | Jungle.eosuk.io	| 8427 | 9927 |  UK | EOS UK |
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
| Leaf | 185.244.150.11		 | 8888 | 9876 | Netherlands | Massive Dibamics |
| Macaw | 52.44.113.122		 | 80 | 9876 | USA | EOSMX |
| Parrot | testchain.jscut.org	| 8888 | 9876 | USA, Virginia | Todd Fleming	 |
| Pug | 120.79.155.118	| 8888 | 9876 | China, Shenzhen | ViaBTC |
| Capybara | testnet.eosdublin.io		| 8444 | 9878 | Dublin | EOSDublin.com	 |
| Bear | eosslc.com	| 8889 | 9877 | USA, Bluffdale, UT | EOS SLC		 |
| Hedgehog | jungle.worbli.io	| 8888 | 9876 | USA, Ohio | Worbli		 |
| Crow | 47.92.97.56 | 8888  | 9876 | China | EOS UIP |
| Wildcat | stealthbp.ddns.net | 8800  | 6600 | Korea, Seoul | EOS Asia |
| Elk | 47.52.18.70	 | 8388  | 3389 | Hong Kong | EOS Gravity	 |
| Tarsier | jungle.eos.blckchnd.com	 | 8888  | 9876 | Germany, Falkenstein | blckchnd.com	 |
| Toucan | 128.1.133.206	 | 8888  | 9876 | Hong Kong | wancloud |
| Bull | 47.52.64.9		| 8888  | 9876 | China | EOS.Hedging	 |
| Doppelganger | 52.37.122.21	 | 8888  | 9876 | USA, Oregon | James Sutherland	|
| Eagle | eosbeijing.one		 | 8888  | 9876 | Hongkong |EOS Beijing		|
| Wolverine | 35.182.46.236	 | 9879 | 6879 | Canada, Monreal | BP Node |
| Raven | 52.58.245.131	 | 8888 | 9876 | Frankfurt | EOS NL |
| Gazelle | 198.58.114.211		 | 8888 | 9876 | USA | BlockSmith |
| Marten | 217.115.85.26	 | 8888 | 9876 | Russia | TestNode |
| Hippo | 107.150.102.38		 | 8888 | 9876 | USA, Los Angeles | EOSBlock.co	 |
| Racoon | 188.117.144.164	 | 8889 | 9877 | Poland | eosemerge.io	 |
| Quokka | quokka.eosreal.io		 | 8868 | 9886 | Mumbai-AWS | EOSREAL |
| Rabbit | 119.3.22.124		 | 8888 | 9876 | China | EOS Cannon |
| Mamba | 5280.duckdns.org	 | 8888 | 9876 | USA, Denver, CO | Mamba |
| Monkey | meow.eoslaomao.com | 80 | 9876 | Japan, Tokyo | EOSLaoMao.com |
| Glowwarm | dev.chainpool.io | 7780 | 7781 | Japan, Tokyo | ChainPool |
| Frog | eos-bp.bitfinex.com | 8888 | 9876 | Switzerland, Zurich | Bitfinex |
| Dolphin | 34.251.121.82 | 8888 | 9876 | Ireland | EOSEOS |
| Lamb | 173.212.227.190 | 8888 | 9876 | Germany, Kassel | EOSVibes |
| Alligator | bp-test.ono.chat | 8888 | 9876 | Japan, Tokyo | eosONO |
| Ocelot | avocado-toast.sandwich.farm | 8888 | 9876 | NL, Amsterdam | sandwich.farm |
| Koalabear | 18.219.28.205 | 8886 | 9876 | Singapore | EosLove |
| Croc | 34.209.174.121 | 8888 | 9876 | USA, Oregon | EOS Floripa |
| Duck | test.eosys.io | 8888 | 9874 | Korea, Seoul | EOSYS |
| Pony | 13.114.33.147 | 8888 | 9876 | Japan | www.eoshuobipool.com	 |
| Orca | 113.208.116.110 | 8888 | 9876 | China | EOS Galaxy	 |
| Earthworm | 35.192.58.50 | 8888 | 9876 | USA | 	EOS Plane | 
| Toad | bptn.eosraychain.com	 | 80 | 9888 | Hong Kong | 	eosraychain.com |
| Shark | 13.211.63.122	 | 8888 | 9876 | Newzealand | EOSNz	 |
| Puffin | 54.189.199.39 | 8888 | 9876 | Canada, Vancouver | eosvan.com		 |
| Fatmouse | eos.shangtv.cn	 | 28888 | 29876 | China | 	EOS HDTap |
| Dogo | n2.eosargentina.io	 | 8888 | 9876 | USA, Miami | eosargentina.io	 |
| Pelican | jungle.eossv.org	 | 8888 | 9876 | USA, Oregon | EOS Silicon Valley	 |
| Turtle | 13.209.32.21	 | 8888 | 9876 | Korea, Seoul | EOS R	 |
| Baboon | eos.blockmatrix.network	 | 8888 | 9876 | UK, London | Block Matrix	 |
| Mole | 159.89.124.54	 | 8888 | 9876 | Canada, Toronto | Eos Land	 |
| Cariboo | 159.89.124.54	 | 8888 | 9876 | Canada, Toronto | EOS Nation	 |
| Meerkat | 211.222.107.234	 | 8888 | 9876 | Korea, Incheon | IBCT.io	 |



# Nodes
| Address | Port (http) | Port (p2p) | Location | Organisation |
|---------|-------------|------------|----------|--------------|
| 54.233.222.22 |	8886 | 9874 |	Brazil, Rio de Janeiro | EOS Rio |
| node-d3.eos42.io	|	6888 | 9876 |	EOS42 | UK, London |
| node2-d3.eos42.io		|	8888 | 9876 |	EOS42 | UK, London |
| axolotl.eoscalgary.com	|	80 | 9878 |	EOS.Cafe	 | Canada |


# Nodes waiting to be connected
| BP Name | Address | Port (http) | Port (p2p) | Location | Organisation |
|---------|---------|-------------|------------|----------|--------------|
| Panda | 218.18.171.81	 | 8888 | 9876 | Taiwan | CIGEOS |
| Wolf | eosbrazil.com | 8884 | 9873 |  Brazil  | EOSbrazil.co |
| Snake | testnet.eosindia.io	 | 8888 | 9876 | India | EOSIndia |
| Leopard | hlathi.eosio.africa | 8888  | 9877 | Africa | EOSio.africa |
| Zebra | jungle.eosnewyork.io | 8888  | 9876 | Canada, Montreal | EOS New York |
| Python |  python.prometeos.io | 8888 | 9876 | Spain | Prometeos.io |
| Lizard | processing | ....  | .... | India | EOS India |
| Ant | robotikalis.ddns.net	| 8888 | 9876 | London | EOS-East	 |


