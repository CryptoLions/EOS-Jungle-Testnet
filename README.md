# Welcome to the EOS Jungle Testnet


Based on tag: v1.4.1
Please join out Jungle testnet <a target="_blank" href="https://t.me/jungletestnet">telegram channel</a>  
Network Monitor: http://jungle.cryptolions.io/#  

# !!! If you are Not synced, you need to downgrade to v1.1.0 sync node and upgrade:
1. stop node.  
2. downgrade to v1.1.0  
3. remove blocks/reverrsible folder.   
4. disable bnet /mongo plugin  
5. update peers in config  
6.  ./start.sh --hard-replay --truncate-at-block 10421900  
7. on 10 mln block when it stop syncing, please stop a node, upgrade to v1.4.1, and start without replay flag.    


# BP node Registartion (auto installer script)  
To get auto installer script please register:  
http://jungle.cryptolions.io/#register  

Pin in registartion is your password to update node info later.  

After registration will be created personal intallation script for you. It will download and compile EOS, create testnet and wallet folders, create start/stop/etc scripts, create all configs and examples how to register as producer, stake and vote.


# Updating sources to new version  

stop your nodeos before  
```
./stop.sh
cd ../eos-source  
git pull
git checkout v1.4.1 
git submodule update --init --recursive    

./eosio_build.sh -s EOS   

```  


# Manual installation

## Install EOS
Lets get sources, change token symbol from SYS to EOS and compile

```
mkdir /home/eos-v1.0  
cd /home/eos-v1.0  

git clone https://github.com/eosio/eos --recursive    
cd eos  

git checkout v1.4.1  
git submodule update --init --recursive   

./eosio_build.sh -s EOS
```  

## Configuring Node
- Create data-dir folder for you node:
  ```
  mkdir /opt/JungleTestnet 
  ```
- Clone all files from this repo:
  ```
  cd /opt/JungleTestnet
  git clone https://github.com/CryptoLions/EOS-Jungle-Testnet.git ./ 
  ```   
- add execution rights  
  ```
  chmod +x ./*.sh   
  chmod +x ./Wallet/*.sh 
  ```  

- If you use different data-dir folders -> edit all paths in files cleos.sh, start.sh, stop.sh, config.ini, Wallet/start_wallet.sh, Wallet/stop_wallet.sh:
Also please change limits for your system, add in your start.sh:
```
  ulimit -n 65535
  ulimit -s 64000
```

- Choose your producer name (12 symbols length a-z 1-5) and create own EOS key pair  
  you can create key pair using cleos command ./cleos.sh create key or <a target="_blank" href="https://nadejde.github.io/eos-token-sale/">here</a>.  
- Register account for your producer using created key:  
  http://jungle.cryptolions.io/#account  
  
- Edit in config.ini next parameters:  
  - server address: p2p-server-address = YOUR_NODE_IP_ADDRESS:9876  
  - your producer name: producer-name = YOUR_BP_NAME  
  - created producer keypair: private-key = ["YOUR_PUBKEY","YOUR_PRIVKEY"]  
  - replace p2p-peer-address list with fresh generated on monitor site: http://jungle.cryptolions.io/#p2p  
  - Check chain-state-db-size-mb value in config, it should be not bigger than you have RAM:  
    chain-state-db-size-mb = 32768
  
- Open http and p2p Ports on your firewall/router  
- Connect your node, run 
```
./start.sh  
```
- Start wallet, run 
```
./Wallet/start_wallet.sh  
```
- Create your wallet 
```
./cleos.sh wallet create -n <YOUR_WALLET_NAME>
```
rember the password,it will be used when unlock wallet
- Unlock your wallet 
```
./cleos.sh wallet unlock -n <YOUR_WALLET_NAME>
```
enter the wallet password.
- Import your key 
```
./cleos.sh wallet -n <YOUR_WALLET_NAME> import <YOUR_PRIVKEY>
```


**First run should be with --delete-all-blocks and --genesis-json**  
```
./start.sh --delete-all-blocks --genesis-json genesis.json
```  

- Check if you can access you node using link http://you_server:your_http_port/v1/chain/get_info (<a href="http://jungle.cryptolions.io:38888/v1/chain/get_info" target="_blank">Example</a>)


If you installed and synced and would like to see your node in monitor - just <a traget="_blank" href="http://jungle.cryptolions.io/#register  ">register </a> with you node data and skip step 2.

# last snapshot (17.5Mi blocks, chain-state-db-size-mb = 32768, reversible-blocks-db-size-mb = 2048): 
Blocks: http://jungle.cryptolions.io/blocks/blocks-Jungle-2018_10_03-11_02.tar.gz  
State: http://jungle.cryptolions.io/blocks/state-Jungle-2018_10_03-11_02.tar.gz  
  
# Get test EOS tokens:
  http://jungle.cryptolions.io/#faucet


# Other Tools/Examples
- In scripts folder you can find examples how to register as producer, stake, vote, claimrewards, etc
- You can use testnet monitor for preparing vote command: https://t.me/jungletestnet/19081
- Cleos commands:  

Send EOS
```
./cleos.sh transfer <your account>  <receiver account> "1.0000 EOS" "test memo text"
```
Get Balance  
```
./cleos.sh get currency balance eosio.token <account name>
```
Create account  
```
./cleos.sh system newaccount --stake-net "10.0000 EOS" --stake-cpu "10.0000 EOS" --buy-ram-bytes 4096 <your accountr> <new account> <pkey1> <pkey2>
```  
List registered producers (-l <limit>)  
```
./cleos.sh get table eosio eosio producers -l 100  
```
List your last action (use -h to get help, do not work now)  
```
./cleos.sh get actions <account name>
```
  
List staked/delegated  
```
./cleos.sh system listbw <account>   
```
 
 Full history node (filter-on = *):  
http://junglehistory.cryptolions.io:18888/v1/chain/get_info  
Esio history node (filte-on = eosio*):  
https://api.jungle.alohaeos.com  

by: <a target="_blank" href="http://CryptoLions.io">CryptoLions.io</a>  

Keybase account: cryptolions  
  
    
================== History: BPs participating in dawn2/3 ======================

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


