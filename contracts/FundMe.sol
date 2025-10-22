// Get funds from the user
// Widthdraw funds
// Set a minimum value in USD

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {AggregatorV3Interface} from "@chainlink/contracts@1.4.0/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";


contract FundMe {

    uint256 public minimumUsd  = 5;

    function fund() public payable  {
        // Allow users to send money
        // Have a minimum $5 sent
        // 1. How so we send ETH to this contract?
        require(msg.value >= minimumUsd, "didn't send enough ETH"); // 1e18 = 1 ETH = 1000000000000000000 = 1 * 10 ** 18
        // What is a revert?
        // Undo any actions that have been done, and send the remaining gas back

    }

    function getPrice() public  {
        // Network - Sepolia Testnet
        // Address 0x694AA1769357215DE4FAC081bf1f309aDC325306
        
        // ABI
        // Interface
    }

    function getConversionRate() public  {

    }

    function getVersion() public view returns(uint256) {
       return AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306).version();
    }

    // function withdraw() public {

    // }
}