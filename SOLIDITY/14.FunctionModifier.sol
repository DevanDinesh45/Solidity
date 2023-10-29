// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

//function modifier - reuse code before and / or after function
// Basic inputs sandwich

contract FucntionModifier{
    bool public paused;
    uint public count;
// it is a simple contract that stores the internal count
// it can be incremented by calling inc() and decremented by
// calling dec() ** these two func can only be called if the 
// contract is not paused.
    function setPause(bool _paused) external {
        paused = _paused;
    }
// "_;" the underscore tells the solidity to call the actual func
// that this func modifier wraps. the last of using func modifier is to
// declare it inside the func signature
    modifier WhenNotPaused(){
        require(!paused, "Paused");
        _;
    }
// below we called the similar condition twice meaning use of extra gas
// so we can modify to use the same function that can only be called
// if the contract is not paused.
    // function inc() external {
    //     require(!paused, "Paused");
    //     count += 1;
    // }

    // function dec() external {
    //     require(!paused, "Paused");
    //     count -= 1;
    // }

// the same above codes can be written using the funciton modifiers as below:

    function inc() external WhenNotPaused{
        count += 1;
    }
    function dec() external WhenNotPaused{
        count -= 1;
    }
//function modifiers can also take inputs.

    modifier cap(uint _x){
        require(_x < 100, "x>=100");
        _;
    }
    function incBy(uint _x) external WhenNotPaused cap(_x){
        count += _x;
    }

// function modifier that sandwiches a function
// means that some code will be executed inside the func modifier
// the acutal func will be called and afterwards it will execute more code
// inside the function modifier.

    modifier sandwich(){
        //code here
        count +=10;
        _;
        //more code here
        count *=2;
    }
    function foo() external sandwich{
        count +=1;
    }

}
