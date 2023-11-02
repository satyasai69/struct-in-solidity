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
   bool completed;
 }
 Todo[] public todos;
 function create(string calldata _text) public{
   todos.push(Todo(_text, false));
 }
 function get(uint _index) public view returns (string memory text, bool completed) {
   Todo storage todo = todos[_index];
   return (todo.text, todo.completed);
 }
 function updateText() public{}
 function toggleCompeleted() public{}
}