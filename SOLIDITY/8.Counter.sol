// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;
//we can inc and dec a counter inside a smart contract

contract Counter{
    // writing the var as public we'll have the read access after the contract is deployed
    uint public count;// it stores the count 
    //create 2 func one to inc and other to dec
    //external means we can call the func after the contract is deployed.
    function inc() external{
        count += 1;
    }
    function dec() external{
        count -= 1;
    }

}