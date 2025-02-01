//SPDX-License-Identifier: MIT
pragma solidity ^0.8.18; //stating our version

contract SimpleStorage {
    //Basic Types: Boolean , uint, int, address, bytes
    // uint256[] listOfFavoriteNumbers; //[0, 78, 4]
    uint256 myFavoriteNumber;

    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    Person[] public listOfPeople ;

    mapping(string => uint256) public nameToFavoriteNumber;

    // Person public pat = Person({favoriteNumber: 7, name: "Patrick"});
    // Person public mariah = Person({favoriteNumber: 12, name: "Mariaj"});

    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }

    //0xd9145CCE52D386f254917e481eB44e9943F39138   address

    //view, pure
    function retrieve() public view returns (uint256) {
        return myFavoriteNumber;
    }

    //calldata, memory and storage
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person( _favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}