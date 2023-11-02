//SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;
contract Todos {
    address public owner;
 constructor () {
    owner = msg.sender;
 }
 modifier OnlyOwner () {
    require(owner == msg.sender);
    _;
 }
 function transformOwnership(address _newOwner) public OnlyOwner {
   owner = _newOwner;
 }
 struct Todo {
   string text;
   bool complete;
 }
 Todo[] public todo;
 function create(string calldata _text) public{
   todo.push(Todo(_text, false));
 }
 function get() public view {}
 function updateText() public{}
 function toggleCompeleted() public{}
}