// SPDX-License-Identifier: MIT
pragma solidity 0.8.25;

contract Errors {
    address owner;

    constructor() {
        owner = msg.sender;
    }

    function testRequire(uint256 _amount) external pure returns (string memory) {
        require(_amount > 0, "Amount must be greater than zero");
        return "Successful";
    }

    function testRevert(uint256 _amount) external pure returns (string memory){
        if (_amount <= 0) {
            revert("Amount must be greater than zero");
        }
        return "Successful";
    }

    function testAssert(uint256 _amount) external pure returns (string memory){
        _amount++;
        assert(_amount > 2);
        return "Successful";
    }
}
