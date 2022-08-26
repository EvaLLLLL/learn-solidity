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
    uint256 favoriteNumber;

    struct People {
        uint256 favoriteNumber;
        string name;
    }

    uint256[] public favoriteNumberList;
    People[] public people;

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    // view, pure functions for read state, no gas cost
    function retrieve() public view returns (uint256) {
        return favoriteNumber;
    }

    // strucks, mappings, arrays need to be given
    // string is a secret array
    // calldata: only exist during transaction, but can't be modified
    // memory: only exist during transaction, but can be modified
    // storage: permanent variables that can be modified
    function addPerson(string calldata _name, uint256 _favoriteNumber) public {
        // People memory newPerson = People({favoriteNumber: _favoriteNumber, name: _name});
        // People memory newPerson = People(_favoriteNumber, _name);
        people.push(People(_favoriteNumber, _name));
    }
}

// 0xd9145CCE52D386f254917e481eB44e9943F39138
