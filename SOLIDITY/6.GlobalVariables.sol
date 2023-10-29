// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract GlobalVariables{
    // view func can read data from state var and global var
    function globalvars() external view returns (address,uint,uint){
        // it is a global var that stores the address that called this func
        address sender = msg.sender;
        //it stores the unique timestamp when the func is called
        uint timestamp = block.timestamp;
        //it stores the current block number
        uint blocknum = block.number;
        return (sender,timestamp,blocknum);
    }
}