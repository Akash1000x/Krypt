// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Function {
    uint statevariable = 5;
    uint public num1 = 3;

    //constructor is used to initialize the state variable or it automatically called when the contract is deployed
    constructor() {
        statevariable = 40;
    }

    //not using any state variable so the function is pure function
    function addition() public pure {
        uint a = 10;
        uint b = 20;
        uint c;
        c = a + b;
    }

    //if return any value than specify it in the function
    function subtraction() public pure returns (uint) {
        return 10 + 2;
    }

    //view function is used to read the state variable
    //using state variable so the function is view function
    function multiplication() public view returns (uint) {
        return statevariable * 5;
    }

    //pure function is used to perform some operation without reading or writing the state variable
    function division(uint a, uint b) public pure returns (uint) {
        return a * b;
    }

    //function to change the state variable in this not have to write pure or view
    function changeState() public {
        statevariable = 4; //writing the state variable
    }
}
