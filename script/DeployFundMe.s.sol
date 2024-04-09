//SPDX-License-Identifier: MIT

pragma solidity ^0.8.25;

import {script} from "forge-std/Script.sol";
import  {FundMe} from "../src/FundMe.sol";
import {HelperConfig} from "./HelperConfig.s.sol";

contract deploy FundMe is Script{
    function run() external return (fundMe){
        HelperConfig helperConfig = new helperConfig();
        address ethUsdPriceFeed = helperConfig.activeNetworkConfig();
        
        vm.StartBroadcast();
        // Mock
        new FundMe(ethUsdPriceFeed);
        vm.stopBroadcast();
        return fundMe;
    }

}