## Install
```
npm install
```

## Write Contract
go to `./contracts`, put your contracts here


## Setup Environment
1. Replace private key(kovan) with the dummy string

```
 # .env.example

 KOVAN_PRIVATE_KEY="123YourPrivateKeyHere"

```
2. create new .env file
```
cp .env.example .env
```
3. overwrite migration file
```
# ./migrations/2_deploy_contracts.js
# modify the contract source file
```

## Setup local Ethereum testnet 
1. install ganacha
```
# https://github.com/trufflesuite/ganache-cli

npm install -g ganache-cli
```
2. run testnet

```
ganache-cli
```

## Deploy
```
truffle migrate --network kovan --reset
```

## Run test
```
truffle test --network development
```