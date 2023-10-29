// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract ViewAndPureFunctions{
    //view func can read data from blockchain
    //pure func can not read data from blockchain like state var and anyother info from blockchain
    uint public num;
    
    function viewFunc() external view returns (uint){
        return num;
        // it reads data from state variable (that is stored in blockchain)
    }

    function pureFunc() external pure returns (uint){
        return 1;
        //it does not read any data from blockchain and it doesnot modify anything on the blockchain.
    }

    function addtwonum(uint x) external view returns (uint){
        return num + x;
    }

    function add(uint x, uint y) external pure returns (uint){
        return x+y;
    }
}