// SPDX-License-Identifier: MIT

pragma solidity 0.8.19;

import {Script} from "forge-std/Script.sol";
import {SimpleStorage} from "../src/SimpleStorage.sol";

contract DeploySimpleStorage is Script {
    // a function to deploy the SimpleStorage contract
    function run() external returns (SimpleStorage) {
        vm.startBroadcast(); // sends everything here to the rpc
        SimpleStorage simpleStorage = new SimpleStorage();
        vm.stopBroadcast(); // stops sending everything to the rpc
        return simpleStorage;
    }
}
