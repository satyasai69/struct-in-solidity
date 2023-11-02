//SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;
contract Todo {
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
}