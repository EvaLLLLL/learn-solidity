// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract SimpleStorage {
    // boolean, string, unit, init, address, bytes
    // bool hasFavoriteNumber = false;
    // int favoriteInt = -5;
    // string favoriteNumerInText = "asd";
    // address myAddress = 0xe517D83252e97056B4DA137EDDFeb1C4C5B687fF;
    // bytes32 favoriteBytes = "cat";

    // This gets initialized to zero!
    uint256 public favoriteNumber;

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
        uint256 testVar = 5;
    }

    // view, pure functions for read state, no gas cost
    function retrieve() public view returns (uint256) {
        return favoriteNumber;
    }

    function add() public pure returns (uint256) {
        return (1 + 1);
    }
}

// 0xd9145CCE52D386f254917e481eB44e9943F39138
