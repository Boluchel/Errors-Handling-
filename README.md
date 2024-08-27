# Errors

## Overview
This contract demonstrates the use of error handling mechanisms in Solidity, including require, revert, and assert.

## Description
The contract includes three functions, each showcasing a different error handling approach:
* testRequire: Uses require to validate input and revert if the condition is not met.
* testRevert: Uses revert to explicitly revert the transaction if the condition is not met.
* testAssert: Uses assert to validate a condition and revert if it's not met.

## Getting Started

### Installation
```
git clone https://github.com/Boluchel/Errors-Handling-.git
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
testRequire(uint256 _amount)
* Access: External Pure
* Description: Tests the require statement by validating if _amount is greater than zero.
  
testRevert(uint256 _amount)
* Access: External Pure
* Description: Tests the revert statement by validating if _amount is greater than zero.
  
testAssert(uint256 _amount)
* Access: External Pure
* Description: Tests the assert statement by validating if _amount is greater than two after incrementing it.

## Authors
Banwo Boluwatife

## License

This project is licensed under the MIT License
