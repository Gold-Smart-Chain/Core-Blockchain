# Gold Smart Chain

[![N|Solid](https://faucet.goldsmartchain.com/assets/img/GoldSmartChainFavicon.png)](https://goldsmartchain.com)



[![Build Status](https://travis-ci.org/joemccann/dillinger.svg?branch=master)](https://goldsmartchain.com)

## Instructions to setup Validator node

`GoldSmartChain Validator Node` is very easy to install and deploy in a Docker container. This requires [Docker](https://docs.docker.com/engine/install/) and [Docker Compose](https://docs.docker.com/compose/install/) to run. 

### Step 1: Install Docker
```sh
sudo apt install docker && sudo apt install docker-compose
```

### Step 2: Clone the Github repository

```sh
git clone https://github.com/Gold-Smart-Chain/Core-Blockchain.git
```

### Step 3: Navigate into the directory where you've cloned this repository

```sh
cd Core-Blockchain/
```

### Step 4: Add your wallet's address, private key and password to docker-compose.yml file
There are `environment` & `args` on the line number 5 & 12 respectively, There are fields in `key: value` format
Simply copy paste your values save the file. 

- Open the docker-compose.yml file `nano docker-compose.yml` or you can use any other editor as well.
- Find the code snippet shown as below and add your wallet's private key and the password. 
- To paste in the `nano` editor you'll need to use this keyboard shortcut - `ctrl + shift + v`
- Now to save and exit from `nano` editor please do it this way - `ctrl + x`, press `y` and just hit `enter`

( ***For MAC users please use cmd instead of ctrl*** )

#### sample snippets
Add your wallet address in the environment as shown below
```
environment:
      address=921343c8cfW30d8caa70488884d532Ece203c045
```

then add the private key and the password as shown below
```
args:
        privatekey: f8fe0Fff5189aYYfd61fY753e8064E4fd6e6f8617b25MdcD7b4bD724f26f5
        password: 123456
```

### Step 5: Initiate tmux session
To avoid unexpected termination of the running validator node, let's use tmux to keep the process running in the background

#### For the first time, do simply run `tmux`
```sh
tmux
```

#### Check the already running tmux sessions
```sh
tmux ls
```

#### Attach the tmux session
```sh
tmux attach -t 0
```
Note: zero (0) in above command is the id number of the tmux session.

### Step 5: Run the docker composer

```sh
sudo docker-compose up --build
```
Now wait for the docker image to be built and up...

### Step 6: Add peer
When the building process done successfully and the validator prompt running then you'll have to add the peer
as shown below. Get the enode and use it here.

```
admin.addPeer("enode://e66231bd62775d93371175dc6c54da8307b8f578391f730111823ed25dfff1223d7df6cd6b5e78a48e059d3c7f26a175749211d113822abb813ec44e8a161467@167.99.239.227:32668")
```

You can directly paste in the running terminal using `ctrl + v` or `cmd + v` (for mac) and hit `enter`

### Step 7: Start RPC Node if not, and authorized this validator

And that's all.
