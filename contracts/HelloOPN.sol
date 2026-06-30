// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/// @title HelloOPN
/// @notice A simple Solidity smart contract for Web3 learning and testnet practice.
contract HelloOPN {
    string public message;
    address public owner;

    event MessageChanged(string oldMessage, string newMessage);

    constructor(string memory initialMessage) {
        message = initialMessage;
        owner = msg.sender;
    }

    function setMessage(string memory newMessage) public {
        require(msg.sender == owner, "Only owner can change the message");

        string memory oldMessage = message;
        message = newMessage;

        emit MessageChanged(oldMessage, newMessage);
    }

    function getMessage() public view returns (string memory) {
        return message;
    }
}Add HelloOPN Solidity smart contract
