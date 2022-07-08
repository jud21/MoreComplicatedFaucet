// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract owned {
    address owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner {
        require(msg.sender == owner, "You must own the contract to call this function.");
        _;
    }
}