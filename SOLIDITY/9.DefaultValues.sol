// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract DefaultValues{
    //state and local var in solidity have default values.
    bool public t;// default val for bool is false
    uint public i;// default val for uint is 0
    int public a;// default val for int is 0
    address public d;// default val for address is 0(i.e, 40 0's sequence)
    bytes32 public b32;// default val is 32 byte 0's
    // some other data types are
    // mapping, structs, enums, fixed sized arrays
}