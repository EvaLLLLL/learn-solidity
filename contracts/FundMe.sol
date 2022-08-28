// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

import "./PriceConverter.sol";

contract FundMe {
    using PriceConverter for uint256;

    uint256 public minimumUsd = 50 * (10**18);
    address[] public funders;
    mapping(address => uint256) public addressToAmountFounded;

    function fund() public payable {
        require(
            msg.value.getConversionRate() >= minimumUsd,
            "Didn't send enough!"
        ); // 18 decimals
        funders.push(msg.sender);
        addressToAmountFounded[msg.sender] = msg.value;
    }

    // function withdraw() {}
}
