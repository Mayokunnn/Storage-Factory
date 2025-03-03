// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;
import { SimpleStorage } from "./SimpleStorage.sol";

contract StorageFactory{

    //type visibility name
    SimpleStorage public simpleStorage;
    
    function createSimpleStorageContract() public {
        //How does the storage factory know what SimpleStorage looks like
        simpleStorage = new SimpleStorage();
          
        
    }

}