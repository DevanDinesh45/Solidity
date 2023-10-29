// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract FunctionIntro{
    //function to add two numbers
    // external means when we deploy the contract we can call the function
    //pure it means the func is read only func
    function sum(uint a, uint b) external pure returns (uint) {
        return a+b;
    }
    function sub(uint x, uint y) external pure returns (uint){
        return x-y;
    }
}