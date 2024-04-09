//SPDX-License-Identifier: MIT

pragma solidity ^0.8.25;

import {script} from "forge-std/Script.sol";
import  {FundMe} from "../src/FundMe.sol";

contract deploy FundMe is Script{
    function run() external return (fundMe){
        vm.StartBroadcast();
        // Mock
        new FundMe(0x694AA1769357215DE4FAC081bf1f309aDC325306);
        vm.stopBroadcast();
        return fundMe;
    }

}