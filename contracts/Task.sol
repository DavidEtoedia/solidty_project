// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.10;

contract HelloWorld{
 
  string public memberName;
  uint public age;
  string public greetingPrefix = "Welcome";

  constructor(string memory initialName){
        memberName = initialName;
 }
     

   function setName(string memory _newName) public{
       memberName = _newName;
   }  

   function setAge(uint _newAge) public{
       age = _newAge;
   } 

   function getName() public view returns(string memory){
       return string (abi.encodePacked(greetingPrefix,memberName));
   } 

   function getAge() public view returns(uint){
       return age;
   } 

}

