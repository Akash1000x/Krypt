// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Require {
    bool public flag;

    function check1(uint8 a) public {
        flag = true;
        require(a % 2 == 0, "not even number");
    }

    function check2(uint8 a) public returns (string memory) {
        if (a % 2 == 0) {
            flag = true;
        } else {
            return "not even number";
        }
    }

    //this two function are not same because in check function whene the condition is false it will revert
    // and throw a error but in check2 function it will return a string message it will not throw an error
    // in this condition the transaction is not fail
    //but in check function the transaction is fail

    //so use carefully require and if else condition according to your requirement
}
