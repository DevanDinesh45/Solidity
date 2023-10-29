// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

//require, revert, assert
// -gas refund, state updates are reverted
// custom error - save gas
// if an error is thrown gas will be refunded and any
// state var that were updated will be reverted.
contract Error{
    function testRequire(uint _i) public pure{
        //require is mostly used to validate input and for 
        // access control controlling who gets to call the function
        // in the above case we are doing input validation. checking 
        // the input less than or equal to 10
        require(_i <= 10, "i > 10");
        // if the input validation passes we can have more code over here
        //code here
    }
// revert is best since it can be used for nested statements execution.
    function testRevert(uint _i) public pure{
        if(_i>1){
            //code here
            if(_i>2){
                //code here
                if(_i>10){
                    revert("i > 10");
                }
            }
        }
    }

// ASSERT it is used to check for condition that should always be true.
 // if condition turns out to be false it means that 
 //there is some bug in the smart contract   
    uint public num=123;
    function testAssert() public view{
        assert(num == 123);
    }
//In the above program we have initially assigned the state var num with
//123 and in the function to testassert we given num == 123 if that turns
// to be false then there is some error in that.
    function foo(uint _i) public{
        //accidently update num
        num +=1;
        require(_i<10);
    }
    // if the function is called the num value will be changed and the 
    // value of state var is changed assert will give u false that means
    // an BUG!~~
}

//Custom errors are used to save gas it is cheaper than to use require 
// with some error message.
// longer the error msg higher gas used.

//Custom error/
// in the below code if an error arises we will see the revert condition
// and print the custom error
// the custom error will be the address of the msg sender and the uint _i
error MyError(address caller, uint i);
function testCustomError(uint _i) view{
    if(_i> 10){
        revert MyError(msg.sender, _i);
    }
}