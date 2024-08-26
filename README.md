# EtherBank

## Overview
EtherBank is a simple Ethereum smart contract that demonstrates the use of require, assert, and revert statements. It allows users to deposit and withdraw Ether, showcasing basic banking functionality.

## Description
This project highlights the importance of input validation and error handling in smart contract development. The contract utilizes the following statements:
* require: Ensures conditions are met before executing code.
* assert: Validates state conditions, useful for debugging.
* revert: Rolls back transactions when errors occur.

## Getting Started

### Installation
```
git clone https://github.com/Boluchel/EtherBank.git
npm install
```
### Deployment
```
npx hardhat compile
```

## Contract Details
* Contract Name: EtherBank
* Functions:
    * deposit(): Deposits Ether into the contract.
    * withdraw(uint256 _amount): Withdraws Ether from the contract.
    * totalBalance(): Returns the contract's total Ether balance.


## Functions
### deposit()
* Access: External
* Description: Deposits Ether into the contract, requiring a minimum of 1 Ether.

### withdraw(uint256 _amount)
* Access: External
* Description: Withdraws Ether from the contract, ensuring sufficient balance.

### totalBalance()
* Access: External View
* Description:  Returns the contract's total Ether balance.

## Authors
Banwo Boluwatife

## License

This project is licensed under the MIT License
