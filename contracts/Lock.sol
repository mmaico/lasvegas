// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

// Import this file to use console.log
import "hardhat/console.sol";

contract Lock {
    uint public unlockTime;
    address payable public owner;
    address public test;
    event Withdrawal(uint amount, uint when);

    constructor(uint _unlockTime) payable {
        console.log("###################################################");
        console.log(_unlockTime);
        console.log("###################################################");
        require(
            block.timestamp < _unlockTime,
            "Unlock time should be in the future"
        );

        unlockTime = _unlockTime;
        owner = payable(msg.sender);
        test = msg.sender;
    }

    function withdraw() public {
        // Uncomment this line to print a log in your terminal
        // console.log("Unlock time is %o and block timestamp is %o", unlockTime, block.timestamp);

        require(block.timestamp >= unlockTime, "You can't withdraw yet");
        require(msg.sender == owner, "You aren't the owner");

        emit Withdrawal(address(this).balance, block.timestamp);
        
        owner.transfer(address(this).balance);
    }
}