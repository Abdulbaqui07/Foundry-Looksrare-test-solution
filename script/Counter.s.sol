// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

// import "forge-std/Script.sol";
import "../lib/forge-std/src/Script.sol";

contract CounterScript is Script {
    function setUp() public {}

    function run() public {
        vm.broadcast();
    }
}
