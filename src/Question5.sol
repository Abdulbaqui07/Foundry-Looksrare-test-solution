// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Question5 {
    mapping(address => uint256) public balanceOf;

    function deposit() external payable {
        balanceOf[msg.sender] += msg.value;
    }

    function withdraw() external {
        uint256 balance = balanceOf[msg.sender];
        require(balance != 0, "Insufficient balance");
        (bool success,) = msg.sender.call{value: balance}("");
        require(success, "Failed to send Ether");
        balanceOf[msg.sender] = 0;
    }
}
