//SPDX-License-Identifier: MIT

pragma solidity ^0.8.25;

import {Script} from "forge-std/Script.sol";
import {FundMe} from "../src/FundMe.sol";

contract HelperConfig {

    NetworkConfig public = activeNetworkConfig;

    struct NetworkConfig{
        address priceFeed;
    }

    function getSepoliaEthConfig() public pure returns (NetworkConfig memory){
    NetworkConfig memory sepoliaConfig = NetworkConfig({
        priceFeed: 0x694AA1769357215DE4FAC081bf1f309aDC325306;
    })
    }

    function getAnvilEthConfig() public pure returns (NetworkConfig memory){
    }


}
