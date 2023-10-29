// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

//Two types of Data types Values & data types

//Value- data stores a value like int boolean stores some values.

//References - donot store a value they store a reference to a word
//where data is stored. like array

//Values

contract ValueTypes{
    bool public b = true;
    uint public u=123;// uint = uint256 0 to 2**256
    //uint only supports positive int for using -ve numbers we need
    // too use int
    int public i = -123;// int = int256 0 to 2**256
    // to find the min value of int we does the following.
    int public minInt = type(int).min;
    //Similarly max int can be found.
    int public maxInt = type(int).max;
    //another value type is address.
    address public addr = 0x5B38Da6a701c5685454dCfcB03FcB875f56beddC4;
    bytes32 public b32 = 0f830f20bc75deea721a430dc907f7d09;

}