// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "./owned.sol";

contract deleter is owned {
    function destroy() public onlyOwner {
        selfdestruct(payable(msg.sender));
    }
}