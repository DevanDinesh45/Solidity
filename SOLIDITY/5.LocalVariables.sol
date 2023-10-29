// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract LocalVariables{
    uint public i;
    uint public b;
    address public myAddress;

    function foo() external{
        uint a=123;
        bool f=false;
        a += 45;
        f = true;

        // state var

        i=124;
        b=756;
        myAddress = address(1);
    }
}