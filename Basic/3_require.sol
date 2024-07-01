// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

// Condition checking
// true - next line will be executed
// false - revert back transaction and throw an error

contract Require {
    bool public num1;

    function isEvenNumber(uint8 num) public {
        num1 = true;
        require(num % 2 == 0, "not even number");
    }
}
