// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract ForAndWhileLoops{
    function loops() external pure{
        for(uint i=0;i<10;i++){
            //code here
            //if we want to continue one iteration we use the keyword
            // continue is used 
            // for i =1 and i=2 the more code part will be executed.
            // now for the i==3 condition the more code condition will not be
            // executed the next loop is found and that is i==4 is checked and 
            // executes the more code condition.
            // continue is used to skip the current iteration.
            if (i==3){
                continue;
            }
            //more code
            //BREAK is used to exit the loop on a given condition..
            if(i==5){
                break;
            }
        }
        
        uint j=0;
        while(j<10){
            //code
            j++;
        }
    }
// function to return sum of 1 to n numbers.
    function sum(uint _n) external pure returns (uint) {
        uint s;
        for (uint i=1;i<= _n;i++){
            s +=i;
        }
        return s;
    }
}

//The number of loops that a condition runs in solidity should be considered
//the bigger the no of loops higher the cost of gas used . So keep the number of loops low.