// EVM, Ethereum Virtual Machine
// Ethereum, Polygon, Arbitrum, Optimism, Zksynk

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract SimpleStorage {
    uint256 public myFavoriteNumber; // 0

    // Function store
    function store(uint256 _favoriteNumber) public virtual {
        myFavoriteNumber = _favoriteNumber;
    }

    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    // Dictionary where strings will map to a number (name -> favoriteNumber)
    mapping(string => uint256) public nameToFavoriteNumber;

    // Dynamic array
    Person[] public listOfPersons;

    // Retrieve favorite Number
    // view, pure do not send a tx
    // (in other words they don't spend gas)
    function retrieve() public view returns(uint256) {
        return myFavoriteNumber;
    }

    // calldata, memory -> (temp) storage -> persistent
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPersons.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}