// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;



import {SimpleStorage} from "./SimpleStorage.sol"; //if there is more than one contract in a file.
// import "./SimpleStorage.sol";
contract StorageFactory{

//uint256 public favoritenumber
//type visibility name
// SimpleStorage public simplestorage;

SimpleStorage[] public listofsimplestoragecontracts;
// address[] public listofsimplestoragecontracts;

function createSimpleStorageContract()public {
    // simplestorage=new SimpleStorage(); //for one variable
    SimpleStorage newsimplestoragecontract=new SimpleStorage();  //for array   ( with the help of new keyword we can deploy one contract into other contract)
    listofsimplestoragecontracts.push(newsimplestoragecontract);

}

function sfStore(uint256 _simplestorageindex,uint256 _newsimplestoragenumber)public{
    // Address
    // ABI-Application Binary Interface(technically a lie, you just need the function selector)
            //   the abi part is given below
    SimpleStorage mysimplestorage=listofsimplestoragecontracts[_simplestorageindex];

    // SimpleStorage mysimplestorage=SimpleStorage(listofsimplestoragecontracts[_simplestorageindex]);
    mysimplestorage.store(_newsimplestoragenumber);
}

function sfGet(uint256 _simplestorageindex) public view returns(uint256){
    return listofsimplestoragecontracts[_simplestorageindex].retrieve();
} 

}



// address[] public listofsimplestoragecontracts;  =>  SimpleStorage mysimplestorage=SimpleStorage(listofsimplestoragecontracts[_simplestorageindex]);
