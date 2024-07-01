// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Require {
    uint16 public num1;

    //it is like a middleware in solidity
    modifier iswrite(uint8 num) {
        require(num % 2 == 0, "a is an odd number");
        _; //this is for the rest of the function code in the respective function
    }

    function check1(uint8 num) public iswrite(num) {
        num1 = 100;
    }

    function check2(uint8 num) public iswrite(num) {
        num1 = 200;
    }

    function check3(uint8 num) public iswrite(num) {
        num1 = 300;
    }

    function check4(uint8 num) public iswrite(num) {
        num1 = 400;
    }
}
