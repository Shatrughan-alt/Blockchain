// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;  //this is solidity version


contract SimpleStorage {

// Basic datatypes: boolean,uint(unsigned integer value means no fraction or no decimal value),int(whole number positive negative value ),address,byted


// default value for uint is 0 if no value is given
// uint256 public f;   //we add public just to change the visibility

uint256 f;


struct Person{
    uint256 favoritenumber;//this is of index 0 
    string name;//this is of index 1;
}

// Person public myfriend=Person(7,"Pat"); or we can write it like the below one also



// Person public pat=Person({favoritenumber:7,name:"Pat"});
// Person public mariah=Person({favoritenumber:16,name:"Mariah"});
// Person public jon=Person({favoritenumber:12,name:"Jon"});

// If there is more than one data which we have to store in Person then wwe can use the array also.


Person[] public listofpeople;//any size of array but if it is[3] then we can say uptil 3 value array

mapping(string=>uint256)public nametofavoritenumber;

uint256[] listoffavoritenumbers;  //[0,78,90]
function store(uint256 _f) public{
    f=_f;
}

// view means read state from the blockchain and disallow updating state
function retrieve() public view returns(uint256){
    return f;
}
// pure means it cannot read also from the blockchain
// function kch() public pure returns(uint256){
//     return 7;
// }


//memory,storage,calldata: can only make variable of these types
function addperson(string memory _name,uint256 _favoritenumber) public{//inside () variable is temporary so we use memmory there not storage but we cant use memory for uint256 values
    // Person memory newPerson=Person(_favoritenumber,_name);
    // listofpeople.push(newPerson);

    // _name="cat";  //this we can done of string type is memory else not
    listofpeople.push(Person(_favoritenumber,_name));
    nametofavoritenumber[_name]=_favoritenumber;
}


}




// Function visibility specifier of 4 types
// public-visible internally and externallymeans we can use it in the current as well as other contracts also
//  private-only visible in current contract
//   internal-only visible internally
//    external only visible externally(only for functions)
// default is internal


// update the state of blockchain costs gas


/*Solidity arrays and structs

*/

/*Errors and Warning
we can use phind to resolve error and warning.
*/


/*Memoy storage and call data
EVM(Ethernum Virtual Machine) can access and store information in six places:
a)Stack
b)Memory : the data is available for short period of time it is temporary available.and memory can be manupulated or changed
c)Storage : it is permanent variable that can be modified
d)Calldata : the data is available for short period of time it is temporary available.and memory can not be manupulated or changed
e)Code
f)Logs
*/


//sapholia,eters.an.io to check the details of contract like input data and all
