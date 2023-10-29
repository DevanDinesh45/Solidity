// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract StateVariable {
    //local state and global state variables.
    // state variables store data on blockchain
    // if an data is stored on state variable it is permanently a stored
    // state variable is declared inside a contract but outside a func.
    uint public myUint=123;//state variable

    //local variable

    function foo() pure external{
        string notstate="hello";
        // it is a local var if a function foo is called the var only 
        //exists untill a function is executed but not after that is executed.
        
    }

}