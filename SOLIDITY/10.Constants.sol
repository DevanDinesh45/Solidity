// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;
//378 gas is used in the constants
contract Constants{
    // if we know an state var val doesnot change we can declare it as a constant
    address public constant MY_ADDRESS= 0x9f1D2B8Aabb7c9a788888909d3aAbeFCffF3bBBB;
    // if a state var is decalared constant we can save the gas when func is called
    // syntax: datatype public constant varname= value;
    // A constant state var is always declared starting caps.
    uint public constant MY_UINT=123;
}
// 	307 gas is used in the Var
contract Var{
    address public MY_ADDRESS= 0x9f1D2B8Aabb7c9a788888909d3aAbeFCffF3bBBB;
    

}