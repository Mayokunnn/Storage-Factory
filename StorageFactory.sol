// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;
import { SimpleStorage } from "./SimpleStorage.sol";

contract StorageFactory{

    //type visibility name
    SimpleStorage[] public listOfSimpleStorageContracts;
    address public deployedAddress;
    
    function createSimpleStorageContract() public {
        //How does the storage factory know what SimpleStorage looks like
        SimpleStorage newSimpleStorageContract = new SimpleStorage();
        deployedAddress = address(newSimpleStorageContract);
        listOfSimpleStorageContracts.push(newSimpleStorageContract);
        
    }

    function sfStore (uint256 _simpleStorageIndex, uint256 _newSimpleStorageNumber) public {
        //Address
        //Application Binary Interface 
        listOfSimpleStorageContracts[_simpleStorageIndex].store(_newSimpleStorageNumber);
    }

    function sfGet (uint256 _simpleStorageIndex) public view returns(uint256) {
        return listOfSimpleStorageContracts[_simpleStorageIndex].retrieve();
    }
}