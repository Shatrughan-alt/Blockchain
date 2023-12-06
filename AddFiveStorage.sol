// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {SimpleStorage} from "./SimpleStorage.sol";


//Inheritance:- Inhertited the SimpleStorage file in AddFiveStorage
contract AddFiveStorage is SimpleStorage{


    // function sayHello() public pure returns(string memory){
    //     return "Hello";
    // }

//if i want to add 5 in simplestorage function then i need to override the function and in override there are two things comes out:-  virtual and override

    function store(uint256 _newNumber) public override {
        f=_newNumber+5;
    }

}
